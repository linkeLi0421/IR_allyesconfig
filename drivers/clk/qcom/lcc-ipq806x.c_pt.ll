; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/lcc-ipq806x.c_pt.bc'
source_filename = "../drivers/clk/qcom/lcc-ipq806x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.clk_pll = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pll_config = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_rcg = type { i32, i32, %struct.mn, %struct.pre_div, %struct.src_sel, ptr, %struct.clk_regmap }
%struct.mn = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.pre_div = type { i8, i8 }
%struct.src_sel = type { i8, ptr }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_regmap_div = type { i32, i32, i32, %struct.clk_regmap }
%struct.clk_regmap_mux = type { i32, i32, i32, ptr, %struct.clk_regmap }
%struct.parent_map = type { i8, i8 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_lcc_ipq806x__170_454_lcc_ipq806x_driver_init6 = internal global ptr @lcc_ipq806x_driver_init, section ".initcall6.init", align 4
@lcc_ipq806x_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lcc_ipq806x_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lcc_ipq806x_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lcc_ipq806x_driver_exit = internal global ptr @lcc_ipq806x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [48 x i8] c"lcc_ipq806x.description=QCOM LCC IPQ806x Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [46 x i8] c"lcc_ipq806x.file=drivers/clk/qcom/lcc-ipq806x\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [27 x i8] c"lcc_ipq806x.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias174 = internal constant [39 x i8] c"lcc_ipq806x.alias=platform:lcc-ipq806x\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lcc-ipq806x\00", [20 x i8] zeroinitializer }, align 32
@lcc_ipq806x_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,lcc-ipq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lcc_ipq806x_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @lcc_ipq806x_regmap_config, ptr @lcc_ipq806x_clks, i32 12, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pll4 = internal global { %struct.clk_pll, [36 x i8] } { %struct.clk_pll { i32 4, i32 8, i32 12, i32 20, i32 0, i32 24, i8 16, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 }, ptr null, i32 0, i32 0, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@pll4_config = internal constant { %struct.pll_config, [48 x i8] } { %struct.pll_config { i16 15, i32 145, i32 199, i32 0, i32 196608, i32 0, i32 524288, i32 0, i32 3145728, i32 4194304, i32 8388608, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lcc_ipq806x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@lcc_ipq806x_clks = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr getelementptr (i8, ptr @pll4, i64 32), ptr getelementptr (i8, ptr @mi2s_osr_src, i64 32), ptr getelementptr (i8, ptr @mi2s_osr_clk, i64 12), ptr getelementptr (i8, ptr @mi2s_div_clk, i64 12), ptr getelementptr (i8, ptr @mi2s_bit_div_clk, i64 12), ptr getelementptr (i8, ptr @mi2s_bit_clk, i64 16), ptr getelementptr (i8, ptr @pcm_src, i64 32), ptr getelementptr (i8, ptr @pcm_clk_out, i64 12), ptr getelementptr (i8, ptr @pcm_clk, i64 16), ptr getelementptr (i8, ptr @spdif_src, i64 32), ptr getelementptr (i8, ptr @spdif_clk, i64 12), ptr getelementptr (i8, ptr @ahbix_clk, i64 32)], [48 x i8] zeroinitializer }, align 32
@mi2s_osr_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 72, i32 76, %struct.mn { i8 8, i8 7, i8 5, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @lcc_pxo_pll4_map }, ptr @clk_tbl_aif_mi2s, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, ptr null, i32 72, i32 512, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@mi2s_osr_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 80, i8 0, i8 1, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 }, ptr null, i32 72, i32 131072, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mi2s_div_clk = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 72, i32 10, i32 4, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.7 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mi2s_bit_div_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 80, i8 0, i8 0, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 }, ptr null, i32 72, i32 32768, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mi2s_bit_clk = internal global { %struct.clk_regmap_mux, [52 x i8] } { %struct.clk_regmap_mux { i32 72, i32 14, i32 1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, ptr null, i32 0, i32 0, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@pcm_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 84, i32 88, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @lcc_pxo_pll4_map }, ptr @clk_tbl_pcm, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.16 }, ptr null, i32 84, i32 512, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@pcm_clk_out = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 92, i8 0, i8 0, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, ptr null, i32 84, i32 2048, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@pcm_clk = internal global { %struct.clk_regmap_mux, [52 x i8] } { %struct.clk_regmap_mux { i32 84, i32 10, i32 1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 }, ptr null, i32 0, i32 0, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@spdif_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 204, i32 208, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @lcc_pxo_pll4_map }, ptr @clk_tbl_aif_osr, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null, i32 204, i32 512, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@spdif_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 212, i8 0, i8 1, i8 1, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 }, ptr null, i32 204, i32 4096, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@ahbix_clk = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 56, i32 60, %struct.mn { i8 8, i8 7, i8 5, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @lcc_pxo_pll4_map }, ptr @clk_tbl_ahbix, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 }, ptr null, i32 56, i32 2048, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@lcc_pxo_pll4_map = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 2 }], [28 x i8] zeroinitializer }, align 32
@clk_tbl_aif_mi2s = internal global { [34 x %struct.freq_tbl], [104 x i8] } { [34 x %struct.freq_tbl] [%struct.freq_tbl { i32 1024000, i8 1, i8 4, i16 1, i16 96 }, %struct.freq_tbl { i32 1411200, i8 1, i8 4, i16 2, i16 139 }, %struct.freq_tbl { i32 1536000, i8 1, i8 4, i16 1, i16 64 }, %struct.freq_tbl { i32 2048000, i8 1, i8 4, i16 1, i16 48 }, %struct.freq_tbl { i32 2116800, i8 1, i8 4, i16 2, i16 93 }, %struct.freq_tbl { i32 2304000, i8 1, i8 4, i16 2, i16 85 }, %struct.freq_tbl { i32 2822400, i8 1, i8 4, i16 6, i16 209 }, %struct.freq_tbl { i32 3072000, i8 1, i8 4, i16 1, i16 32 }, %struct.freq_tbl { i32 3175200, i8 1, i8 4, i16 1, i16 31 }, %struct.freq_tbl { i32 4096000, i8 1, i8 4, i16 1, i16 24 }, %struct.freq_tbl { i32 4233600, i8 1, i8 4, i16 9, i16 209 }, %struct.freq_tbl { i32 4608000, i8 1, i8 4, i16 3, i16 64 }, %struct.freq_tbl { i32 5644800, i8 1, i8 4, i16 12, i16 209 }, %struct.freq_tbl { i32 6144000, i8 1, i8 4, i16 1, i16 16 }, %struct.freq_tbl { i32 6350400, i8 1, i8 4, i16 2, i16 31 }, %struct.freq_tbl { i32 8192000, i8 1, i8 4, i16 1, i16 12 }, %struct.freq_tbl { i32 8467200, i8 1, i8 4, i16 18, i16 209 }, %struct.freq_tbl { i32 9216000, i8 1, i8 4, i16 3, i16 32 }, %struct.freq_tbl { i32 11289600, i8 1, i8 4, i16 24, i16 209 }, %struct.freq_tbl { i32 12288000, i8 1, i8 4, i16 1, i16 8 }, %struct.freq_tbl { i32 12700800, i8 1, i8 4, i16 27, i16 209 }, %struct.freq_tbl { i32 13824000, i8 1, i8 4, i16 9, i16 64 }, %struct.freq_tbl { i32 16384000, i8 1, i8 4, i16 1, i16 6 }, %struct.freq_tbl { i32 16934400, i8 1, i8 4, i16 41, i16 238 }, %struct.freq_tbl { i32 18432000, i8 1, i8 4, i16 3, i16 16 }, %struct.freq_tbl { i32 22579200, i8 1, i8 2, i16 24, i16 209 }, %struct.freq_tbl { i32 24576000, i8 1, i8 4, i16 1, i16 4 }, %struct.freq_tbl { i32 27648000, i8 1, i8 4, i16 9, i16 32 }, %struct.freq_tbl { i32 33868800, i8 1, i8 4, i16 41, i16 119 }, %struct.freq_tbl { i32 36864000, i8 1, i8 4, i16 3, i16 8 }, %struct.freq_tbl { i32 45158400, i8 1, i8 1, i16 24, i16 209 }, %struct.freq_tbl { i32 49152000, i8 1, i8 4, i16 1, i16 2 }, %struct.freq_tbl { i32 50803200, i8 1, i8 1, i16 27, i16 209 }, %struct.freq_tbl zeroinitializer], [104 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mi2s_osr_src\00", [19 x i8] zeroinitializer }, align 32
@clk_rcg_ops = external dso_local constant %struct.clk_ops, align 4
@lcc_pxo_pll4 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_rcg_ops, ptr @lcc_pxo_pll4, ptr null, ptr null, i8 2, i32 1 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pxo\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll4_vote\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mi2s_osr_clk\00", [19 x i8] zeroinitializer }, align 32
@clk_branch_ops = external dso_local constant %struct.clk_ops, align 4
@lcc_mi2s_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.1], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.4, ptr @clk_branch_ops, ptr @lcc_mi2s_parents, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mi2s_div_clk\00", [19 x i8] zeroinitializer }, align 32
@clk_regmap_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.7 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @clk_regmap_div_ops, ptr @lcc_mi2s_parents, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mi2s_bit_div_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.8, ptr @clk_branch_ops, ptr @.compoundliteral.9, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mi2s_bit_clk\00", [19 x i8] zeroinitializer }, align 32
@clk_regmap_mux_closest_ops = external dso_local constant %struct.clk_ops, align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mi2s_codec_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.8, ptr @.str.12], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.11, ptr @clk_regmap_mux_closest_ops, ptr @.compoundliteral.13, ptr null, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_pcm = internal global { [7 x %struct.freq_tbl], [44 x i8] } { [7 x %struct.freq_tbl] [%struct.freq_tbl { i32 64000, i8 1, i8 4, i16 1, i16 1536 }, %struct.freq_tbl { i32 128000, i8 1, i8 4, i16 1, i16 768 }, %struct.freq_tbl { i32 256000, i8 1, i8 4, i16 1, i16 384 }, %struct.freq_tbl { i32 512000, i8 1, i8 4, i16 1, i16 192 }, %struct.freq_tbl { i32 1024000, i8 1, i8 4, i16 1, i16 96 }, %struct.freq_tbl { i32 2048000, i8 1, i8 4, i16 1, i16 48 }, %struct.freq_tbl zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcm_src\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.15, ptr @clk_rcg_ops, ptr @lcc_pxo_pll4, ptr null, ptr null, i8 2, i32 1 }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcm_clk_out\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.15], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.17, ptr @clk_branch_ops, ptr @.compoundliteral.18, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcm_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcm_codec_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.21], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @clk_regmap_mux_closest_ops, ptr @.compoundliteral.22, ptr null, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_aif_osr = internal global { [9 x %struct.freq_tbl], [52 x i8] } { [9 x %struct.freq_tbl] [%struct.freq_tbl { i32 2822400, i8 1, i8 1, i16 147, i16 20480 }, %struct.freq_tbl { i32 4096000, i8 1, i8 1, i16 1, i16 96 }, %struct.freq_tbl { i32 5644800, i8 1, i8 1, i16 147, i16 10240 }, %struct.freq_tbl { i32 6144000, i8 1, i8 1, i16 1, i16 64 }, %struct.freq_tbl { i32 11289600, i8 1, i8 1, i16 147, i16 5120 }, %struct.freq_tbl { i32 12288000, i8 1, i8 1, i16 1, i16 32 }, %struct.freq_tbl { i32 22579200, i8 1, i8 1, i16 147, i16 2560 }, %struct.freq_tbl { i32 24576000, i8 1, i8 1, i16 1, i16 16 }, %struct.freq_tbl zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_src\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @clk_rcg_ops, ptr @lcc_pxo_pll4, ptr null, ptr null, i8 2, i32 1 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_clk\00", [22 x i8] zeroinitializer }, align 32
@lcc_spdif_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @clk_branch_ops, ptr @lcc_spdif_parents, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_ahbix = internal global { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 131072000, i8 1, i8 1, i16 1, i16 3 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ahbix\00", [26 x i8] zeroinitializer }, align 32
@clk_rcg_lcc_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.29 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.28, ptr @clk_rcg_lcc_ops, ptr @lcc_pxo_pll4, ptr null, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll4\00", [27 x i8] zeroinitializer }, align 32
@clk_pll_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.31 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.30, ptr @clk_pll_ops, ptr @.compoundliteral.31, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"lcc_ipq806x_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 447, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 450, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"lcc_ipq806x_match_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 422, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"lcc_ipq806x_desc\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 416, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [5 x i8] c"pll4\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 26, i32 23 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"pll4_config\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 42, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant [26 x i8] c"lcc_ipq806x_regmap_config\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 408, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"lcc_ipq806x_clks\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 393, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"mi2s_osr_src\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 108, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"mi2s_osr_clk\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 145, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"mi2s_div_clk\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 162, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"mi2s_bit_div_clk\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 176, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"mi2s_bit_clk\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 194, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [8 x i8] c"pcm_src\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 222, i32 23 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"pcm_clk_out\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 255, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant [8 x i8] c"pcm_clk\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 272, i32 30 }
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"spdif_src\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 302, i32 23 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"spdif_clk\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 339, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"ahbix_clk\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 361, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"lcc_pxo_pll4_map\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 61, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"clk_tbl_aif_mi2s\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 71, i32 24 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 132, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"lcc_pxo_pll4\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 66, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 67, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 68, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 153, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"lcc_mi2s_parents\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 141, i32 27 }
@___asan_gen_.115 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 168, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 184, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 200, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 203, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"clk_tbl_pcm\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 212, i32 24 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 246, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 263, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 278, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 281, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"clk_tbl_aif_osr\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 290, i32 24 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 326, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 347, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"lcc_spdif_parents\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 335, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [14 x i8] c"clk_tbl_ahbix\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 356, i32 24 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 385, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [34 x i8] c"../drivers/clk/qcom/lcc-ipq806x.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 35, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_alias174, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_lcc_ipq806x_driver_exit, ptr @__initcall__kmod_lcc_ipq806x__170_454_lcc_ipq806x_driver_init6, ptr @lcc_ipq806x_driver_exit, ptr @lcc_ipq806x_driver, ptr @.str, ptr @lcc_ipq806x_match_table, ptr @lcc_ipq806x_desc, ptr @pll4, ptr @pll4_config, ptr @lcc_ipq806x_regmap_config, ptr @lcc_ipq806x_clks, ptr @mi2s_osr_src, ptr @mi2s_osr_clk, ptr @mi2s_div_clk, ptr @mi2s_bit_div_clk, ptr @mi2s_bit_clk, ptr @pcm_src, ptr @pcm_clk_out, ptr @pcm_clk, ptr @spdif_src, ptr @spdif_clk, ptr @ahbix_clk, ptr @lcc_pxo_pll4_map, ptr @clk_tbl_aif_mi2s, ptr @.str.1, ptr @lcc_pxo_pll4, ptr @.compoundliteral, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @lcc_mi2s_parents, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @clk_tbl_pcm, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @clk_tbl_aif_osr, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @lcc_spdif_parents, ptr @.compoundliteral.27, ptr @clk_tbl_ahbix, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_ipq806x_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_ipq806x_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_ipq806x_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll4_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_ipq806x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_ipq806x_clks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi2s_osr_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi2s_osr_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi2s_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi2s_bit_div_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi2s_bit_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_clk_out to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahbix_clk to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_pxo_pll4_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_aif_mi2s to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_pxo_pll4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_mi2s_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_pcm to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_aif_osr to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcc_spdif_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_ahbix to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lcc_ipq806x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lcc_ipq806x_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lcc_ipq806x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @lcc_ipq806x_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcc_ipq806x_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !105
  %call = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @lcc_ipq806x_desc) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @regmap_read(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %val) #4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @clk_pll_configure_sr(ptr noundef nonnull @pll4, ptr noundef %call, ptr noundef nonnull @pll4_config, i1 noundef zeroext true) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = call i32 @regmap_write(ptr noundef %call, i32 noundef 196, i32 noundef 1) #4
  %call7 = call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @lcc_ipq806x_desc, ptr noundef %call) #4
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
declare dso_local void @clk_pll_configure_sr(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_lcc_ipq806x__170_454_lcc_ipq806x_driver_init6, !1, !"__initcall__kmod_lcc_ipq806x__170_454_lcc_ipq806x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 454, i32 1}
!2 = !{ptr @__exitcall_lcc_ipq806x_driver_exit, !1, !"__exitcall_lcc_ipq806x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 456, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 457, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias174, !9, !"__UNIQUE_ID_alias174", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 458, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 450, i32 11}
!12 = !{ptr @lcc_ipq806x_driver, !13, !"lcc_ipq806x_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 447, i32 31}
!14 = !{ptr @lcc_ipq806x_desc, !15, !"lcc_ipq806x_desc", i1 false, i1 false}
!15 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 416, i32 34}
!16 = !{ptr @lcc_ipq806x_regmap_config, !17, !"lcc_ipq806x_regmap_config", i1 false, i1 false}
!17 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 408, i32 35}
!18 = !{ptr @lcc_ipq806x_clks, !19, !"lcc_ipq806x_clks", i1 false, i1 false}
!19 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 393, i32 27}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 132, i32 12}
!22 = !{ptr @mi2s_osr_src, !23, !"mi2s_osr_src", i1 false, i1 false}
!23 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 108, i32 23}
!24 = !{ptr @lcc_pxo_pll4_map, !25, !"lcc_pxo_pll4_map", i1 false, i1 false}
!25 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 61, i32 32}
!26 = !{ptr @clk_tbl_aif_mi2s, !27, !"clk_tbl_aif_mi2s", i1 false, i1 false}
!27 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 71, i32 24}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 67, i32 2}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 68, i32 2}
!32 = !{ptr @lcc_pxo_pll4, !33, !"lcc_pxo_pll4", i1 false, i1 false}
!33 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 66, i32 27}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 153, i32 12}
!36 = !{ptr @mi2s_osr_clk, !37, !"mi2s_osr_clk", i1 false, i1 false}
!37 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 145, i32 26}
!38 = !{ptr @lcc_mi2s_parents, !39, !"lcc_mi2s_parents", i1 false, i1 false}
!39 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 141, i32 27}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 168, i32 12}
!42 = !{ptr @mi2s_div_clk, !43, !"mi2s_div_clk", i1 false, i1 false}
!43 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 162, i32 30}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 184, i32 12}
!46 = !{ptr @mi2s_bit_div_clk, !47, !"mi2s_bit_div_clk", i1 false, i1 false}
!47 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 176, i32 26}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 200, i32 12}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 203, i32 5}
!52 = !{ptr @mi2s_bit_clk, !53, !"mi2s_bit_clk", i1 false, i1 false}
!53 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 194, i32 30}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 246, i32 12}
!56 = !{ptr @pcm_src, !57, !"pcm_src", i1 false, i1 false}
!57 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 222, i32 23}
!58 = !{ptr @clk_tbl_pcm, !59, !"clk_tbl_pcm", i1 false, i1 false}
!59 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 212, i32 24}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 263, i32 12}
!62 = !{ptr @pcm_clk_out, !63, !"pcm_clk_out", i1 false, i1 false}
!63 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 255, i32 26}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 278, i32 12}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 281, i32 5}
!68 = !{ptr @pcm_clk, !69, !"pcm_clk", i1 false, i1 false}
!69 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 272, i32 30}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 326, i32 12}
!72 = !{ptr @spdif_src, !73, !"spdif_src", i1 false, i1 false}
!73 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 302, i32 23}
!74 = !{ptr @clk_tbl_aif_osr, !75, !"clk_tbl_aif_osr", i1 false, i1 false}
!75 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 290, i32 24}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 347, i32 12}
!78 = !{ptr @spdif_clk, !79, !"spdif_clk", i1 false, i1 false}
!79 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 339, i32 26}
!80 = !{ptr @lcc_spdif_parents, !81, !"lcc_spdif_parents", i1 false, i1 false}
!81 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 335, i32 27}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 385, i32 12}
!84 = !{ptr @ahbix_clk, !85, !"ahbix_clk", i1 false, i1 false}
!85 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 361, i32 23}
!86 = !{ptr @clk_tbl_ahbix, !87, !"clk_tbl_ahbix", i1 false, i1 false}
!87 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 356, i32 24}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 35, i32 11}
!90 = !{ptr @pll4, !91, !"pll4", i1 false, i1 false}
!91 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 26, i32 23}
!92 = !{ptr @pll4_config, !93, !"pll4_config", i1 false, i1 false}
!93 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 42, i32 32}
!94 = !{ptr @lcc_ipq806x_match_table, !95, !"lcc_ipq806x_match_table", i1 false, i1 false}
!95 = !{!"../drivers/clk/qcom/lcc-ipq806x.c", i32 422, i32 34}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"auto-init"}
