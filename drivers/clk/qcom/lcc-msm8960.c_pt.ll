; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/lcc-msm8960.c_pt.bc'
source_filename = "../drivers/clk/qcom/lcc-msm8960.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.clk_rcg = type { i32, i32, %struct.mn, %struct.pre_div, %struct.src_sel, ptr, %struct.clk_regmap }
%struct.mn = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.pre_div = type { i8, i8 }
%struct.src_sel = type { i8, ptr }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_pll = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.clk_regmap }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_regmap_div = type { i32, i32, i32, %struct.clk_regmap }
%struct.clk_regmap_mux = type { i32, i32, i32, ptr, %struct.clk_regmap }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.parent_map = type { i8, i8 }

@__initcall__kmod_lcc_msm8960__170_567_lcc_msm8960_driver_init6 = internal global ptr @lcc_msm8960_driver_init, section ".initcall6.init", align 4
@lcc_msm8960_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lcc_msm8960_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lcc_msm8960_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lcc_msm8960_driver_exit = internal global ptr @lcc_msm8960_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [48 x i8] c"lcc_msm8960.description=QCOM LCC MSM8960 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [46 x i8] c"lcc_msm8960.file=drivers/clk/qcom/lcc-msm8960\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [27 x i8] c"lcc_msm8960.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias174 = internal constant [39 x i8] c"lcc_msm8960.alias=platform:lcc-msm8960\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lcc-msm8960\00", [20 x i8] zeroinitializer }, align 32
@lcc_msm8960_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,lcc-msm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,lcc-apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lcc_msm8960_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @lcc_msm8960_regmap_config, ptr @lcc_msm8960_clks, i32 32, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@clk_tbl_aif_osr_492 = internal global { [13 x %struct.freq_tbl], [36 x i8] } { [13 x %struct.freq_tbl] [%struct.freq_tbl { i32 512000, i8 1, i8 4, i16 1, i16 240 }, %struct.freq_tbl { i32 768000, i8 1, i8 4, i16 1, i16 160 }, %struct.freq_tbl { i32 1024000, i8 1, i8 4, i16 1, i16 120 }, %struct.freq_tbl { i32 1536000, i8 1, i8 4, i16 1, i16 80 }, %struct.freq_tbl { i32 2048000, i8 1, i8 4, i16 1, i16 60 }, %struct.freq_tbl { i32 3072000, i8 1, i8 4, i16 1, i16 40 }, %struct.freq_tbl { i32 4096000, i8 1, i8 4, i16 1, i16 30 }, %struct.freq_tbl { i32 6144000, i8 1, i8 4, i16 1, i16 20 }, %struct.freq_tbl { i32 8192000, i8 1, i8 4, i16 1, i16 15 }, %struct.freq_tbl { i32 12288000, i8 1, i8 4, i16 1, i16 10 }, %struct.freq_tbl { i32 24576000, i8 1, i8 4, i16 1, i16 5 }, %struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [36 x i8] zeroinitializer }, align 32
@slimbus_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 204, i32 208, %struct.mn { i8 8, i8 7, i8 5, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @lcc_pxo_pll4_map }, ptr @clk_tbl_aif_osr_393, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 }, ptr null, i32 204, i32 512, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@mi2s_osr_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 72, i32 76, %struct.mn { i8 8, i8 7, i8 5, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @lcc_pxo_pll4_map }, ptr @clk_tbl_aif_osr_393, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 }, ptr null, i32 72, i32 512, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@codec_i2s_mic_osr_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 96, i32 100, %struct.mn { i8 8, i8 7, i8 5, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @lcc_pxo_pll4_map }, ptr @clk_tbl_aif_osr_393, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.80 }, ptr null, i32 96, i32 512, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@spare_i2s_mic_osr_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 120, i32 124, %struct.mn { i8 8, i8 7, i8 5, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @lcc_pxo_pll4_map }, ptr @clk_tbl_aif_osr_393, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.81 }, ptr null, i32 120, i32 512, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@codec_i2s_spkr_osr_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 108, i32 112, %struct.mn { i8 8, i8 7, i8 5, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @lcc_pxo_pll4_map }, ptr @clk_tbl_aif_osr_393, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 }, ptr null, i32 108, i32 512, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@spare_i2s_spkr_osr_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 132, i32 136, %struct.mn { i8 8, i8 7, i8 5, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @lcc_pxo_pll4_map }, ptr @clk_tbl_aif_osr_393, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.83 }, ptr null, i32 132, i32 512, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_pcm_492 = internal global { [14 x %struct.freq_tbl], [56 x i8] } { [14 x %struct.freq_tbl] [%struct.freq_tbl { i32 256000, i8 1, i8 4, i16 1, i16 480 }, %struct.freq_tbl { i32 512000, i8 1, i8 4, i16 1, i16 240 }, %struct.freq_tbl { i32 768000, i8 1, i8 4, i16 1, i16 160 }, %struct.freq_tbl { i32 1024000, i8 1, i8 4, i16 1, i16 120 }, %struct.freq_tbl { i32 1536000, i8 1, i8 4, i16 1, i16 80 }, %struct.freq_tbl { i32 2048000, i8 1, i8 4, i16 1, i16 60 }, %struct.freq_tbl { i32 3072000, i8 1, i8 4, i16 1, i16 40 }, %struct.freq_tbl { i32 4096000, i8 1, i8 4, i16 1, i16 30 }, %struct.freq_tbl { i32 6144000, i8 1, i8 4, i16 1, i16 20 }, %struct.freq_tbl { i32 8192000, i8 1, i8 4, i16 1, i16 15 }, %struct.freq_tbl { i32 12288000, i8 1, i8 4, i16 1, i16 10 }, %struct.freq_tbl { i32 24576000, i8 1, i8 4, i16 1, i16 5 }, %struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@pcm_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 84, i32 88, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @lcc_pxo_pll4_map }, ptr @clk_tbl_pcm_393, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.84 }, ptr null, i32 84, i32 512, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@lcc_msm8960_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@lcc_msm8960_clks = internal global { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr getelementptr (i8, ptr @pll4, i64 32), ptr getelementptr (i8, ptr @mi2s_osr_src, i64 32), ptr getelementptr (i8, ptr @mi2s_osr_clk, i64 12), ptr getelementptr (i8, ptr @mi2s_div_clk, i64 12), ptr getelementptr (i8, ptr @mi2s_bit_div_clk, i64 12), ptr getelementptr (i8, ptr @mi2s_bit_clk, i64 16), ptr getelementptr (i8, ptr @pcm_src, i64 32), ptr getelementptr (i8, ptr @pcm_clk_out, i64 12), ptr getelementptr (i8, ptr @pcm_clk, i64 16), ptr getelementptr (i8, ptr @slimbus_src, i64 32), ptr getelementptr (i8, ptr @audio_slimbus_clk, i64 12), ptr getelementptr (i8, ptr @sps_slimbus_clk, i64 12), ptr getelementptr (i8, ptr @codec_i2s_mic_osr_src, i64 32), ptr getelementptr (i8, ptr @codec_i2s_mic_osr_clk, i64 12), ptr getelementptr (i8, ptr @codec_i2s_mic_div_clk, i64 12), ptr getelementptr (i8, ptr @codec_i2s_mic_bit_div_clk, i64 12), ptr getelementptr (i8, ptr @codec_i2s_mic_bit_clk, i64 16), ptr getelementptr (i8, ptr @spare_i2s_mic_osr_src, i64 32), ptr getelementptr (i8, ptr @spare_i2s_mic_osr_clk, i64 12), ptr getelementptr (i8, ptr @spare_i2s_mic_div_clk, i64 12), ptr getelementptr (i8, ptr @spare_i2s_mic_bit_div_clk, i64 12), ptr getelementptr (i8, ptr @spare_i2s_mic_bit_clk, i64 16), ptr getelementptr (i8, ptr @codec_i2s_spkr_osr_src, i64 32), ptr getelementptr (i8, ptr @codec_i2s_spkr_osr_clk, i64 12), ptr getelementptr (i8, ptr @codec_i2s_spkr_div_clk, i64 12), ptr getelementptr (i8, ptr @codec_i2s_spkr_bit_div_clk, i64 12), ptr getelementptr (i8, ptr @codec_i2s_spkr_bit_clk, i64 16), ptr getelementptr (i8, ptr @spare_i2s_spkr_osr_src, i64 32), ptr getelementptr (i8, ptr @spare_i2s_spkr_osr_clk, i64 12), ptr getelementptr (i8, ptr @spare_i2s_spkr_div_clk, i64 12), ptr getelementptr (i8, ptr @spare_i2s_spkr_bit_div_clk, i64 12), ptr getelementptr (i8, ptr @spare_i2s_spkr_bit_clk, i64 16)], [32 x i8] zeroinitializer }, align 32
@pll4 = internal global { %struct.clk_pll, [36 x i8] } { %struct.clk_pll { i32 4, i32 8, i32 12, i32 20, i32 0, i32 24, i8 16, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.3 }, ptr null, i32 0, i32 0, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@mi2s_osr_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 80, i8 0, i8 1, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 }, ptr null, i32 72, i32 131072, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mi2s_div_clk = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 72, i32 10, i32 4, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 }, ptr null, i32 72, i32 32768, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mi2s_bit_div_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 80, i8 0, i8 0, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 }, ptr null, i32 72, i32 32768, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mi2s_bit_clk = internal global { %struct.clk_regmap_mux, [52 x i8] } { %struct.clk_regmap_mux { i32 72, i32 14, i32 1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 }, ptr null, i32 0, i32 0, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@pcm_clk_out = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 92, i8 0, i8 0, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, ptr null, i32 84, i32 2048, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@pcm_clk = internal global { %struct.clk_regmap_mux, [52 x i8] } { %struct.clk_regmap_mux { i32 84, i32 10, i32 1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 }, ptr null, i32 0, i32 0, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@audio_slimbus_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 212, i8 0, i8 0, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null, i32 204, i32 1024, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@sps_slimbus_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 212, i8 0, i8 1, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, ptr null, i32 204, i32 4096, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@codec_i2s_mic_osr_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 104, i8 0, i8 1, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.30 }, ptr null, i32 96, i32 2097152, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@codec_i2s_mic_div_clk = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 96, i32 10, i32 8, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@codec_i2s_mic_bit_div_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 104, i8 0, i8 0, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.36 }, ptr null, i32 96, i32 524288, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@codec_i2s_mic_bit_clk = internal global { %struct.clk_regmap_mux, [52 x i8] } { %struct.clk_regmap_mux { i32 96, i32 18, i32 1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 }, ptr null, i32 0, i32 0, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@spare_i2s_mic_osr_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 128, i8 0, i8 1, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.42 }, ptr null, i32 120, i32 2097152, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@spare_i2s_mic_div_clk = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 120, i32 10, i32 8, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.45 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@spare_i2s_mic_bit_div_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 128, i8 0, i8 0, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.48 }, ptr null, i32 120, i32 524288, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@spare_i2s_mic_bit_clk = internal global { %struct.clk_regmap_mux, [52 x i8] } { %struct.clk_regmap_mux { i32 120, i32 18, i32 1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 }, ptr null, i32 0, i32 0, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@codec_i2s_spkr_osr_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 116, i8 0, i8 1, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 }, ptr null, i32 108, i32 2097152, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@codec_i2s_spkr_div_clk = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 108, i32 10, i32 8, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.57 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@codec_i2s_spkr_bit_div_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 116, i8 0, i8 0, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.60 }, ptr null, i32 108, i32 524288, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@codec_i2s_spkr_bit_clk = internal global { %struct.clk_regmap_mux, [52 x i8] } { %struct.clk_regmap_mux { i32 108, i32 18, i32 1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 }, ptr null, i32 0, i32 0, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@spare_i2s_spkr_osr_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 140, i8 0, i8 1, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.66 }, ptr null, i32 132, i32 2097152, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@spare_i2s_spkr_div_clk = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 132, i32 10, i32 8, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@spare_i2s_spkr_bit_div_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 140, i8 0, i8 0, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.72 }, ptr null, i32 132, i32 524288, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@spare_i2s_spkr_bit_clk = internal global { %struct.clk_regmap_mux, [52 x i8] } { %struct.clk_regmap_mux { i32 132, i32 18, i32 1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.76 }, ptr null, i32 0, i32 0, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll4\00", [27 x i8] zeroinitializer }, align 32
@clk_pll_ops = external dso_local constant %struct.clk_ops, align 4
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pxo\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_pll_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mi2s_osr_clk\00", [19 x i8] zeroinitializer }, align 32
@clk_branch_ops = external dso_local constant %struct.clk_ops, align 4
@lcc_mi2s_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.4, ptr @clk_branch_ops, ptr @lcc_mi2s_parents, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mi2s_osr_src\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mi2s_div_clk\00", [19 x i8] zeroinitializer }, align 32
@clk_regmap_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.8 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @clk_regmap_div_ops, ptr @lcc_mi2s_parents, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mi2s_bit_div_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.9, ptr @clk_branch_ops, ptr @.compoundliteral.10, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mi2s_bit_clk\00", [19 x i8] zeroinitializer }, align 32
@clk_regmap_mux_closest_ops = external dso_local constant %struct.clk_ops, align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mi2s_codec_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.9, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @clk_regmap_mux_closest_ops, ptr @.compoundliteral.14, ptr null, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcm_clk_out\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcm_src\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.17], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @clk_branch_ops, ptr @.compoundliteral.18, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcm_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcm_codec_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.21], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @clk_regmap_mux_closest_ops, ptr @.compoundliteral.22, ptr null, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_slimbus_clk\00", [46 x i8] zeroinitializer }, align 32
@lcc_slimbus_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @clk_branch_ops, ptr @lcc_slimbus_parents, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slimbus_src\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sps_slimbus_clk\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.27, ptr @clk_branch_ops, ptr @lcc_slimbus_parents, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"codec_i2s_mic_osr_clk\00", [42 x i8] zeroinitializer }, align 32
@lcc_codec_i2s_mic_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.31], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.29, ptr @clk_branch_ops, ptr @lcc_codec_i2s_mic_parents, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"codec_i2s_mic_osr_src\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"codec_i2s_mic_div_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.32, ptr @clk_regmap_div_ops, ptr @lcc_codec_i2s_mic_parents, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"codec_i2s_mic_bit_div_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.32], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.34, ptr @clk_branch_ops, ptr @.compoundliteral.35, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"codec_i2s_mic_bit_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"codec_i2s_mic_codec_clk\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.34, ptr @.str.38], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.37, ptr @clk_regmap_mux_closest_ops, ptr @.compoundliteral.39, ptr null, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spare_i2s_mic_osr_clk\00", [42 x i8] zeroinitializer }, align 32
@lcc_spare_i2s_mic_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.41, ptr @clk_branch_ops, ptr @lcc_spare_i2s_mic_parents, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spare_i2s_mic_osr_src\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spare_i2s_mic_div_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.44, ptr @clk_regmap_div_ops, ptr @lcc_spare_i2s_mic_parents, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spare_i2s_mic_bit_div_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.44], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.46, ptr @clk_branch_ops, ptr @.compoundliteral.47, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spare_i2s_mic_bit_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spare_i2s_mic_codec_clk\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.46, ptr @.str.50], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.49, ptr @clk_regmap_mux_closest_ops, ptr @.compoundliteral.51, ptr null, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"codec_i2s_spkr_osr_clk\00", [41 x i8] zeroinitializer }, align 32
@lcc_codec_i2s_spkr_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.55], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.53, ptr @clk_branch_ops, ptr @lcc_codec_i2s_spkr_parents, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"codec_i2s_spkr_osr_src\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"codec_i2s_spkr_div_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.56, ptr @clk_regmap_div_ops, ptr @lcc_codec_i2s_spkr_parents, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"codec_i2s_spkr_bit_div_clk\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.58, ptr @clk_branch_ops, ptr @.compoundliteral.59, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"codec_i2s_spkr_bit_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"codec_i2s_spkr_codec_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.58, ptr @.str.62], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.61, ptr @clk_regmap_mux_closest_ops, ptr @.compoundliteral.63, ptr null, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spare_i2s_spkr_osr_clk\00", [41 x i8] zeroinitializer }, align 32
@lcc_spare_i2s_spkr_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.67], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.65, ptr @clk_branch_ops, ptr @lcc_spare_i2s_spkr_parents, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spare_i2s_spkr_osr_src\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spare_i2s_spkr_div_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.68, ptr @clk_regmap_div_ops, ptr @lcc_spare_i2s_spkr_parents, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"spare_i2s_spkr_bit_div_clk\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.68], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.70, ptr @clk_branch_ops, ptr @.compoundliteral.71, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spare_i2s_spkr_bit_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spare_i2s_spkr_codec_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.70, ptr @.str.74], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.73, ptr @clk_regmap_mux_closest_ops, ptr @.compoundliteral.75, ptr null, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@lcc_pxo_pll4_map = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 2 }], [28 x i8] zeroinitializer }, align 32
@clk_tbl_aif_osr_393 = internal global { [13 x %struct.freq_tbl], [36 x i8] } { [13 x %struct.freq_tbl] [%struct.freq_tbl { i32 512000, i8 1, i8 4, i16 1, i16 192 }, %struct.freq_tbl { i32 768000, i8 1, i8 4, i16 1, i16 128 }, %struct.freq_tbl { i32 1024000, i8 1, i8 4, i16 1, i16 96 }, %struct.freq_tbl { i32 1536000, i8 1, i8 4, i16 1, i16 64 }, %struct.freq_tbl { i32 2048000, i8 1, i8 4, i16 1, i16 48 }, %struct.freq_tbl { i32 3072000, i8 1, i8 4, i16 1, i16 32 }, %struct.freq_tbl { i32 4096000, i8 1, i8 4, i16 1, i16 24 }, %struct.freq_tbl { i32 6144000, i8 1, i8 4, i16 1, i16 16 }, %struct.freq_tbl { i32 8192000, i8 1, i8 4, i16 1, i16 12 }, %struct.freq_tbl { i32 12288000, i8 1, i8 4, i16 1, i16 8 }, %struct.freq_tbl { i32 24576000, i8 1, i8 4, i16 1, i16 4 }, %struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [36 x i8] zeroinitializer }, align 32
@clk_rcg_ops = external dso_local constant %struct.clk_ops, align 4
@lcc_pxo_pll4 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.78], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @clk_rcg_ops, ptr @lcc_pxo_pll4, ptr null, ptr null, i8 2, i32 1 }, [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll4_vote\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @clk_rcg_ops, ptr @lcc_pxo_pll4, ptr null, ptr null, i8 2, i32 1 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.31, ptr @clk_rcg_ops, ptr @lcc_pxo_pll4, ptr null, ptr null, i8 2, i32 1 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.43, ptr @clk_rcg_ops, ptr @lcc_pxo_pll4, ptr null, ptr null, i8 2, i32 1 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @clk_rcg_ops, ptr @lcc_pxo_pll4, ptr null, ptr null, i8 2, i32 1 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.67, ptr @clk_rcg_ops, ptr @lcc_pxo_pll4, ptr null, ptr null, i8 2, i32 1 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_pcm_393 = internal global { [14 x %struct.freq_tbl], [56 x i8] } { [14 x %struct.freq_tbl] [%struct.freq_tbl { i32 256000, i8 1, i8 4, i16 1, i16 384 }, %struct.freq_tbl { i32 512000, i8 1, i8 4, i16 1, i16 192 }, %struct.freq_tbl { i32 768000, i8 1, i8 4, i16 1, i16 128 }, %struct.freq_tbl { i32 1024000, i8 1, i8 4, i16 1, i16 96 }, %struct.freq_tbl { i32 1536000, i8 1, i8 4, i16 1, i16 64 }, %struct.freq_tbl { i32 2048000, i8 1, i8 4, i16 1, i16 48 }, %struct.freq_tbl { i32 3072000, i8 1, i8 4, i16 1, i16 32 }, %struct.freq_tbl { i32 4096000, i8 1, i8 4, i16 1, i16 24 }, %struct.freq_tbl { i32 6144000, i8 1, i8 4, i16 1, i16 16 }, %struct.freq_tbl { i32 8192000, i8 1, i8 4, i16 1, i16 12 }, %struct.freq_tbl { i32 12288000, i8 1, i8 4, i16 1, i16 8 }, %struct.freq_tbl { i32 24576000, i8 1, i8 4, i16 1, i16 4 }, %struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.17, ptr @clk_rcg_ops, ptr @lcc_pxo_pll4, ptr null, ptr null, i8 2, i32 1 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"lcc_msm8960_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 560, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 563, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"lcc_msm8960_match_table\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 527, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"lcc_msm8960_desc\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 521, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"clk_tbl_aif_osr_492\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 57, i32 24 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"slimbus_src\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 407, i32 23 }
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"mi2s_osr_src\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 89, i32 23 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"codec_i2s_mic_osr_src\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"spare_i2s_mic_osr_src\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"codec_i2s_spkr_osr_src\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [23 x i8] c"spare_i2s_spkr_osr_src\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"clk_tbl_pcm_492\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 305, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant [8 x i8] c"pcm_src\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 339, i32 23 }
@___asan_gen_.124 = private unnamed_addr constant [26 x i8] c"lcc_msm8960_regmap_config\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 513, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"lcc_msm8960_clks\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 478, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant [5 x i8] c"pll4\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 26, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"mi2s_osr_clk\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 126, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"mi2s_div_clk\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 143, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"mi2s_bit_div_clk\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 159, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant [13 x i8] c"mi2s_bit_clk\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 176, i32 30 }
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"pcm_clk_out\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 372, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant [8 x i8] c"pcm_clk\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 389, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"audio_slimbus_clk\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 444, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant [16 x i8] c"sps_slimbus_clk\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 461, i32 26 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"codec_i2s_mic_osr_clk\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [22 x i8] c"codec_i2s_mic_div_clk\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [26 x i8] c"codec_i2s_mic_bit_div_clk\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [22 x i8] c"codec_i2s_mic_bit_clk\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"spare_i2s_mic_osr_clk\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [22 x i8] c"spare_i2s_mic_div_clk\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [26 x i8] c"spare_i2s_mic_bit_div_clk\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [22 x i8] c"spare_i2s_mic_bit_clk\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [23 x i8] c"codec_i2s_spkr_osr_clk\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [23 x i8] c"codec_i2s_spkr_div_clk\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [27 x i8] c"codec_i2s_spkr_bit_div_clk\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [23 x i8] c"codec_i2s_spkr_bit_clk\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [23 x i8] c"spare_i2s_spkr_osr_clk\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [23 x i8] c"spare_i2s_spkr_div_clk\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"spare_i2s_spkr_bit_div_clk\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [23 x i8] c"spare_i2s_spkr_bit_clk\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 35, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 36, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 134, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"lcc_mi2s_parents\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 122, i32 27 }
@___asan_gen_.219 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 123, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 151, i32 12 }
@___asan_gen_.226 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 167, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 182, i32 12 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 185, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 380, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 381, i32 38 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 395, i32 12 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 398, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 452, i32 12 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c"lcc_slimbus_parents\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 440, i32 27 }
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 441, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 469, i32 12 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [26 x i8] c"lcc_codec_i2s_mic_parents\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 300, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [26 x i8] c"lcc_spare_i2s_mic_parents\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 301, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [27 x i8] c"lcc_codec_i2s_spkr_parents\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 302, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [27 x i8] c"lcc_spare_i2s_spkr_parents\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 303, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [17 x i8] c"lcc_pxo_pll4_map\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 47, i32 32 }
@___asan_gen_.381 = private unnamed_addr constant [20 x i8] c"clk_tbl_aif_osr_393\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 73, i32 24 }
@___asan_gen_.384 = private unnamed_addr constant [13 x i8] c"lcc_pxo_pll4\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 52, i32 27 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 54, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [16 x i8] c"clk_tbl_pcm_393\00", align 1
@___asan_gen_.397 = private constant [34 x i8] c"../drivers/clk/qcom/lcc-msm8960.c\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 322, i32 24 }
@___asan_gen_.399 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@llvm.compiler.used = appending global [142 x ptr] [ptr @__UNIQUE_ID_alias174, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_lcc_msm8960_driver_exit, ptr @__initcall__kmod_lcc_msm8960__170_567_lcc_msm8960_driver_init6, ptr @lcc_msm8960_driver_exit, ptr @lcc_msm8960_driver, ptr @.str, ptr @lcc_msm8960_match_table, ptr @lcc_msm8960_desc, ptr @clk_tbl_aif_osr_492, ptr @slimbus_src, ptr @mi2s_osr_src, ptr @codec_i2s_mic_osr_src, ptr @spare_i2s_mic_osr_src, ptr @codec_i2s_spkr_osr_src, ptr @spare_i2s_spkr_osr_src, ptr @clk_tbl_pcm_492, ptr @pcm_src, ptr @lcc_msm8960_regmap_config, ptr @lcc_msm8960_clks, ptr @pll4, ptr @mi2s_osr_clk, ptr @mi2s_div_clk, ptr @mi2s_bit_div_clk, ptr @mi2s_bit_clk, ptr @pcm_clk_out, ptr @pcm_clk, ptr @audio_slimbus_clk, ptr @sps_slimbus_clk, ptr @codec_i2s_mic_osr_clk, ptr @codec_i2s_mic_div_clk, ptr @codec_i2s_mic_bit_div_clk, ptr @codec_i2s_mic_bit_clk, ptr @spare_i2s_mic_osr_clk, ptr @spare_i2s_mic_div_clk, ptr @spare_i2s_mic_bit_div_clk, ptr @spare_i2s_mic_bit_clk, ptr @codec_i2s_spkr_osr_clk, ptr @codec_i2s_spkr_div_clk, ptr @codec_i2s_spkr_bit_div_clk, ptr @codec_i2s_spkr_bit_clk, ptr @spare_i2s_spkr_osr_clk, ptr @spare_i2s_spkr_div_clk, ptr @spare_i2s_spkr_bit_div_clk, ptr @spare_i2s_spkr_bit_clk, ptr @.str.1, ptr @.str.2, ptr @.compoundliteral, ptr @.compoundliteral.3, ptr @.str.4, ptr @lcc_mi2s_parents, ptr @.compoundliteral.5, ptr @.str.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @lcc_slimbus_parents, ptr @.compoundliteral.25, ptr @.str.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @lcc_codec_i2s_mic_parents, ptr @.compoundliteral.30, ptr @.str.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @lcc_spare_i2s_mic_parents, ptr @.compoundliteral.42, ptr @.str.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @lcc_codec_i2s_spkr_parents, ptr @.compoundliteral.54, ptr @.str.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @lcc_spare_i2s_spkr_parents, ptr @.compoundliteral.66, ptr @.str.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @lcc_pxo_pll4_map, ptr @clk_tbl_aif_osr_393, ptr @lcc_pxo_pll4, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.compoundliteral.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83, ptr @clk_tbl_pcm_393, ptr @.compoundliteral.84], section "llvm.metadata"
@0 = internal global [135 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_msm8960_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_msm8960_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_msm8960_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_aif_osr_492 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slimbus_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi2s_osr_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_i2s_mic_osr_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_i2s_mic_osr_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_i2s_spkr_osr_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_i2s_spkr_osr_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_pcm_492 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_msm8960_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_msm8960_clks to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi2s_osr_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi2s_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi2s_bit_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi2s_bit_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_clk_out to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_slimbus_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sps_slimbus_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_i2s_mic_osr_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_i2s_mic_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_i2s_mic_bit_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_i2s_mic_bit_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_i2s_mic_osr_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_i2s_mic_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_i2s_mic_bit_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_i2s_mic_bit_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_i2s_spkr_osr_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_i2s_spkr_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_i2s_spkr_bit_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_i2s_spkr_bit_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_i2s_spkr_osr_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_i2s_spkr_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_i2s_spkr_bit_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_i2s_spkr_bit_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_mi2s_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_slimbus_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_codec_i2s_mic_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_spare_i2s_mic_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_codec_i2s_spkr_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_spare_i2s_spkr_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_pxo_pll4_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_aif_osr_393 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_pxo_pll4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_pcm_393 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lcc_msm8960_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lcc_msm8960_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lcc_msm8960_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @lcc_msm8960_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcc_msm8960_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @lcc_msm8960_desc) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @regmap_read(ptr noundef %call, i32 noundef 4, ptr noundef nonnull %val) #4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %3)
  %cmp = icmp eq i32 %3, 18
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store ptr @clk_tbl_aif_osr_492, ptr getelementptr inbounds (%struct.clk_rcg, ptr @slimbus_src, i32 0, i32 5), align 4
  store ptr @clk_tbl_aif_osr_492, ptr getelementptr inbounds (%struct.clk_rcg, ptr @mi2s_osr_src, i32 0, i32 5), align 4
  store ptr @clk_tbl_aif_osr_492, ptr getelementptr inbounds (%struct.clk_rcg, ptr @codec_i2s_mic_osr_src, i32 0, i32 5), align 4
  store ptr @clk_tbl_aif_osr_492, ptr getelementptr inbounds (%struct.clk_rcg, ptr @spare_i2s_mic_osr_src, i32 0, i32 5), align 4
  store ptr @clk_tbl_aif_osr_492, ptr getelementptr inbounds (%struct.clk_rcg, ptr @codec_i2s_spkr_osr_src, i32 0, i32 5), align 4
  store ptr @clk_tbl_aif_osr_492, ptr getelementptr inbounds (%struct.clk_rcg, ptr @spare_i2s_spkr_osr_src, i32 0, i32 5), align 4
  store ptr @clk_tbl_pcm_492, ptr getelementptr inbounds (%struct.clk_rcg, ptr @pcm_src, i32 0, i32 5), align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = call i32 @regmap_write(ptr noundef %call, i32 noundef 196, i32 noundef 1) #4
  %call7 = call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @lcc_msm8960_desc, ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call7, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !137, !138, !140, !142, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__initcall__kmod_lcc_msm8960__170_567_lcc_msm8960_driver_init6, !1, !"__initcall__kmod_lcc_msm8960__170_567_lcc_msm8960_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 567, i32 1}
!2 = !{ptr @__exitcall_lcc_msm8960_driver_exit, !1, !"__exitcall_lcc_msm8960_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 569, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 570, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias174, !9, !"__UNIQUE_ID_alias174", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 571, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 563, i32 11}
!12 = !{ptr @lcc_msm8960_driver, !13, !"lcc_msm8960_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 560, i32 31}
!14 = !{ptr @lcc_msm8960_desc, !15, !"lcc_msm8960_desc", i1 false, i1 false}
!15 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 521, i32 34}
!16 = !{ptr @lcc_msm8960_regmap_config, !17, !"lcc_msm8960_regmap_config", i1 false, i1 false}
!17 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 513, i32 35}
!18 = !{ptr @lcc_msm8960_clks, !19, !"lcc_msm8960_clks", i1 false, i1 false}
!19 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 478, i32 27}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 35, i32 11}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 36, i32 37}
!24 = !{ptr @pll4, !25, !"pll4", i1 false, i1 false}
!25 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 26, i32 23}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 134, i32 12}
!28 = !{ptr @mi2s_osr_clk, !29, !"mi2s_osr_clk", i1 false, i1 false}
!29 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 126, i32 26}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 123, i32 2}
!32 = !{ptr @lcc_mi2s_parents, !33, !"lcc_mi2s_parents", i1 false, i1 false}
!33 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 122, i32 27}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 151, i32 12}
!36 = !{ptr @mi2s_div_clk, !37, !"mi2s_div_clk", i1 false, i1 false}
!37 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 143, i32 30}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 167, i32 12}
!40 = !{ptr @mi2s_bit_div_clk, !41, !"mi2s_bit_div_clk", i1 false, i1 false}
!41 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 159, i32 26}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 182, i32 12}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 185, i32 5}
!46 = !{ptr @mi2s_bit_clk, !47, !"mi2s_bit_clk", i1 false, i1 false}
!47 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 176, i32 30}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 380, i32 12}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 381, i32 38}
!52 = !{ptr @pcm_clk_out, !53, !"pcm_clk_out", i1 false, i1 false}
!53 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 372, i32 26}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 395, i32 12}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 398, i32 5}
!58 = !{ptr @pcm_clk, !59, !"pcm_clk", i1 false, i1 false}
!59 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 389, i32 30}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 452, i32 12}
!62 = !{ptr @audio_slimbus_clk, !63, !"audio_slimbus_clk", i1 false, i1 false}
!63 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 444, i32 26}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 441, i32 2}
!66 = !{ptr @lcc_slimbus_parents, !67, !"lcc_slimbus_parents", i1 false, i1 false}
!67 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 440, i32 27}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 469, i32 12}
!70 = !{ptr @sps_slimbus_clk, !71, !"sps_slimbus_clk", i1 false, i1 false}
!71 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 461, i32 26}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 300, i32 1}
!74 = !{ptr @codec_i2s_mic_osr_clk, !73, !"codec_i2s_mic_osr_clk", i1 false, i1 false}
!75 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @lcc_codec_i2s_mic_parents, !73, !"lcc_codec_i2s_mic_parents", i1 false, i1 false}
!77 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @codec_i2s_mic_div_clk, !73, !"codec_i2s_mic_div_clk", i1 false, i1 false}
!79 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @codec_i2s_mic_bit_div_clk, !73, !"codec_i2s_mic_bit_div_clk", i1 false, i1 false}
!81 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @codec_i2s_mic_bit_clk, !73, !"codec_i2s_mic_bit_clk", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 301, i32 1}
!86 = !{ptr @spare_i2s_mic_osr_clk, !85, !"spare_i2s_mic_osr_clk", i1 false, i1 false}
!87 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @lcc_spare_i2s_mic_parents, !85, !"lcc_spare_i2s_mic_parents", i1 false, i1 false}
!89 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @spare_i2s_mic_div_clk, !85, !"spare_i2s_mic_div_clk", i1 false, i1 false}
!91 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @spare_i2s_mic_bit_div_clk, !85, !"spare_i2s_mic_bit_div_clk", i1 false, i1 false}
!93 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @spare_i2s_mic_bit_clk, !85, !"spare_i2s_mic_bit_clk", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 302, i32 1}
!98 = !{ptr @codec_i2s_spkr_osr_clk, !97, !"codec_i2s_spkr_osr_clk", i1 false, i1 false}
!99 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @lcc_codec_i2s_spkr_parents, !97, !"lcc_codec_i2s_spkr_parents", i1 false, i1 false}
!101 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @codec_i2s_spkr_div_clk, !97, !"codec_i2s_spkr_div_clk", i1 false, i1 false}
!103 = !{ptr @.str.58, !97, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @codec_i2s_spkr_bit_div_clk, !97, !"codec_i2s_spkr_bit_div_clk", i1 false, i1 false}
!105 = !{ptr @.str.61, !97, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.62, !97, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @codec_i2s_spkr_bit_clk, !97, !"codec_i2s_spkr_bit_clk", i1 false, i1 false}
!108 = !{ptr @.str.65, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 303, i32 1}
!110 = !{ptr @spare_i2s_spkr_osr_clk, !109, !"spare_i2s_spkr_osr_clk", i1 false, i1 false}
!111 = !{ptr @.str.67, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @lcc_spare_i2s_spkr_parents, !109, !"lcc_spare_i2s_spkr_parents", i1 false, i1 false}
!113 = !{ptr @.str.68, !109, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @spare_i2s_spkr_div_clk, !109, !"spare_i2s_spkr_div_clk", i1 false, i1 false}
!115 = !{ptr @.str.70, !109, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @spare_i2s_spkr_bit_div_clk, !109, !"spare_i2s_spkr_bit_div_clk", i1 false, i1 false}
!117 = !{ptr @.str.73, !109, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.74, !109, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @spare_i2s_spkr_bit_clk, !109, !"spare_i2s_spkr_bit_clk", i1 false, i1 false}
!120 = !{ptr @clk_tbl_aif_osr_492, !121, !"clk_tbl_aif_osr_492", i1 false, i1 false}
!121 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 57, i32 24}
!122 = !{ptr @slimbus_src, !123, !"slimbus_src", i1 false, i1 false}
!123 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 407, i32 23}
!124 = !{ptr @lcc_pxo_pll4_map, !125, !"lcc_pxo_pll4_map", i1 false, i1 false}
!125 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 47, i32 32}
!126 = !{ptr @clk_tbl_aif_osr_393, !127, !"clk_tbl_aif_osr_393", i1 false, i1 false}
!127 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 73, i32 24}
!128 = !{ptr @.str.78, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 54, i32 2}
!130 = !{ptr @lcc_pxo_pll4, !131, !"lcc_pxo_pll4", i1 false, i1 false}
!131 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 52, i32 27}
!132 = !{ptr @mi2s_osr_src, !133, !"mi2s_osr_src", i1 false, i1 false}
!133 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 89, i32 23}
!134 = !{ptr @codec_i2s_mic_osr_src, !73, !"codec_i2s_mic_osr_src", i1 false, i1 false}
!135 = !{ptr @spare_i2s_mic_osr_src, !85, !"spare_i2s_mic_osr_src", i1 false, i1 false}
!136 = !{ptr @codec_i2s_spkr_osr_src, !97, !"codec_i2s_spkr_osr_src", i1 false, i1 false}
!137 = !{ptr @spare_i2s_spkr_osr_src, !109, !"spare_i2s_spkr_osr_src", i1 false, i1 false}
!138 = !{ptr @clk_tbl_pcm_492, !139, !"clk_tbl_pcm_492", i1 false, i1 false}
!139 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 305, i32 24}
!140 = !{ptr @pcm_src, !141, !"pcm_src", i1 false, i1 false}
!141 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 339, i32 23}
!142 = !{ptr @clk_tbl_pcm_393, !143, !"clk_tbl_pcm_393", i1 false, i1 false}
!143 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 322, i32 24}
!144 = !{ptr @lcc_msm8960_match_table, !145, !"lcc_msm8960_match_table", i1 false, i1 false}
!145 = !{!"../drivers/clk/qcom/lcc-msm8960.c", i32 527, i32 34}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"auto-init"}
