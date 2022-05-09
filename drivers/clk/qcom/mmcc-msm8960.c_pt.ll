; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/mmcc-msm8960.c_pt.bc'
source_filename = "../drivers/clk/qcom/mmcc-msm8960.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.clk_dyn_rcg = type { [2 x i32], [2 x i32], i32, i8, [2 x %struct.mn], [2 x %struct.pre_div], [2 x %struct.src_sel], ptr, %struct.clk_regmap }
%struct.mn = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.pre_div = type { i8, i8 }
%struct.src_sel = type { i8, ptr }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.parent_map = type { i8, i8 }
%struct.clk_pll = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.clk_regmap }
%struct.pll_config = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.qcom_reset_map = type { i32, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_rcg = type { i32, i32, %struct.mn, %struct.pre_div, %struct.src_sel, ptr, %struct.clk_regmap }
%struct.clk_pix_rdi = type { i32, i32, i32, i32, %struct.clk_regmap }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_mmcc_msm8960__170_3058_mmcc_msm8960_driver_init6 = internal global ptr @mmcc_msm8960_driver_init, section ".initcall6.init", align 4
@mmcc_msm8960_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mmcc_msm8960_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmcc_msm8960_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mmcc_msm8960_driver_exit = internal global ptr @mmcc_msm8960_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [50 x i8] c"mmcc_msm8960.description=QCOM MMCC MSM8960 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [48 x i8] c"mmcc_msm8960.file=drivers/clk/qcom/mmcc-msm8960\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [28 x i8] c"mmcc_msm8960.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias174 = internal constant [41 x i8] c"mmcc_msm8960.alias=platform:mmcc-msm8960\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmcc-msm8960\00", [19 x i8] zeroinitializer }, align 32
@mmcc_msm8960_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mmcc-msm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmcc_msm8960_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mmcc-apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmcc_apq8064_desc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,mmcc-apq8064\00", [46 x i8] zeroinitializer }, align 32
@clk_tbl_gfx3d_8064 = internal global { [18 x %struct.freq_tbl], [40 x i8] } { [18 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 0, i16 0, i16 0 }, %struct.freq_tbl { i32 48000000, i8 1, i8 0, i16 1, i16 8 }, %struct.freq_tbl { i32 54857000, i8 1, i8 0, i16 1, i16 7 }, %struct.freq_tbl { i32 64000000, i8 1, i8 0, i16 1, i16 6 }, %struct.freq_tbl { i32 76800000, i8 1, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 96000000, i8 1, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 128000000, i8 1, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 145455000, i8 2, i8 0, i16 2, i16 11 }, %struct.freq_tbl { i32 160000000, i8 2, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 177778000, i8 2, i8 0, i16 2, i16 9 }, %struct.freq_tbl { i32 192000000, i8 1, i8 0, i16 1, i16 2 }, %struct.freq_tbl { i32 200000000, i8 2, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 228571000, i8 2, i8 0, i16 2, i16 7 }, %struct.freq_tbl { i32 266667000, i8 2, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 320000000, i8 2, i8 0, i16 2, i16 5 }, %struct.freq_tbl { i32 400000000, i8 2, i8 0, i16 1, i16 2 }, %struct.freq_tbl { i32 450000000, i8 4, i8 0, i16 1, i16 2 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gfx3d_src = internal global { %struct.clk_dyn_rcg, [40 x i8] } { %struct.clk_dyn_rcg { [2 x i32] [i32 140, i32 140], [2 x i32] [i32 132, i32 136], i32 128, i8 11, [2 x %struct.mn] [%struct.mn { i8 8, i8 25, i8 9, i8 18, i8 4, i8 4, i8 0 }, %struct.mn { i8 5, i8 24, i8 6, i8 14, i8 4, i8 4, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 3, ptr @mmcc_pxo_pll8_pll2_pll3_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_pll3_map }], ptr @clk_tbl_gfx3d, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, ptr null, i32 128, i32 4, i8 0 } }, [40 x i8] zeroinitializer }, align 32
@gfx3d_8064_init = internal constant { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.2, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2_pll15, ptr null, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mmcc_pxo_pll8_pll2_pll15_map = internal constant { [4 x %struct.parent_map], [24 x i8] } { [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 2 }, %struct.parent_map { i8 2, i8 1 }, %struct.parent_map { i8 4, i8 3 }], [24 x i8] zeroinitializer }, align 32
@pll15 = internal global { %struct.clk_pll, [36 x i8] } { %struct.clk_pll { i32 828, i32 832, i32 836, i32 840, i32 824, i32 848, i8 16, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 }, ptr null, i32 0, i32 0, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@pll15_config = internal constant { %struct.pll_config, [48 x i8] } { %struct.pll_config { i16 33, i32 1, i32 3, i32 131072, i32 196608, i32 0, i32 524288, i32 0, i32 3145728, i32 4194304, i32 8388608, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mmcc_pxo_pll8_pll2_pll3_map = internal constant { [4 x %struct.parent_map], [24 x i8] } { [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 2 }, %struct.parent_map { i8 2, i8 1 }, %struct.parent_map { i8 3, i8 3 }], [24 x i8] zeroinitializer }, align 32
@clk_tbl_gfx3d = internal global { [17 x %struct.freq_tbl], [52 x i8] } { [17 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 0, i16 1, i16 0 }, %struct.freq_tbl { i32 48000000, i8 1, i8 0, i16 1, i16 8 }, %struct.freq_tbl { i32 54857000, i8 1, i8 0, i16 1, i16 7 }, %struct.freq_tbl { i32 64000000, i8 1, i8 0, i16 1, i16 6 }, %struct.freq_tbl { i32 76800000, i8 1, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 96000000, i8 1, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 128000000, i8 1, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 145455000, i8 2, i8 0, i16 2, i16 11 }, %struct.freq_tbl { i32 160000000, i8 2, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 177778000, i8 2, i8 0, i16 2, i16 9 }, %struct.freq_tbl { i32 200000000, i8 2, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 228571000, i8 2, i8 0, i16 2, i16 7 }, %struct.freq_tbl { i32 266667000, i8 2, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 300000000, i8 3, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 320000000, i8 2, i8 0, i16 2, i16 5 }, %struct.freq_tbl { i32 400000000, i8 2, i8 0, i16 1, i16 2 }, %struct.freq_tbl zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx3d_src\00", [22 x i8] zeroinitializer }, align 32
@clk_dyn_rcg_ops = external dso_local constant %struct.clk_ops, align 4
@mmcc_pxo_pll8_pll2_pll3 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.2, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2_pll3, ptr null, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pxo\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll8_vote\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll3\00", [27 x i8] zeroinitializer }, align 32
@mmcc_pxo_pll8_pll2_pll15 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll15\00", [26 x i8] zeroinitializer }, align 32
@clk_pll_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.8 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @clk_pll_ops, ptr @.compoundliteral.8, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mmcc_msm8960_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @mmcc_msm8960_regmap_config, ptr @mmcc_msm8960_clks, i32 119, ptr @mmcc_msm8960_resets, i32 75, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mmcc_apq8064_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @mmcc_apq8064_regmap_config, ptr @mmcc_apq8064_clks, i32 127, ptr @mmcc_apq8064_resets, i32 83, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mmcc_msm8960_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 820, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mmcc_msm8960_clks = internal global { [119 x ptr], [100 x i8] } { [119 x ptr] [ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @tv_enc_ahb_clk, i64 12), ptr getelementptr (i8, ptr @amp_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @jpegd_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gfx2d0_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vpe_ahb_clk, i64 12), ptr getelementptr (i8, ptr @smmu_ahb_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vfe_ahb_clk, i64 12), ptr getelementptr (i8, ptr @rot_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_ahb_clk, i64 12), ptr getelementptr (i8, ptr @mdp_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @csi_ahb_clk, i64 12), ptr getelementptr (i8, ptr @mmss_imem_ahb_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_ahb_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gfx2d1_ahb_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @jpegd_axi_clk, i64 12), ptr getelementptr (i8, ptr @gmem_axi_clk, i64 12), ptr getelementptr (i8, ptr @mdp_axi_clk, i64 12), ptr getelementptr (i8, ptr @mmss_imem_axi_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_axi_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_axi_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_clk, i64 12), ptr getelementptr (i8, ptr @vfe_axi_clk, i64 12), ptr getelementptr (i8, ptr @vpe_axi_clk, i64 12), ptr getelementptr (i8, ptr @rot_axi_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_a_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_b_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @csi0_src, i64 32), ptr getelementptr (i8, ptr @csi0_clk, i64 12), ptr getelementptr (i8, ptr @csi0_phy_clk, i64 12), ptr getelementptr (i8, ptr @csi1_src, i64 32), ptr getelementptr (i8, ptr @csi1_clk, i64 12), ptr getelementptr (i8, ptr @csi1_phy_clk, i64 12), ptr getelementptr (i8, ptr @csi2_src, i64 32), ptr getelementptr (i8, ptr @csi2_clk, i64 12), ptr getelementptr (i8, ptr @csi2_phy_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_src, i64 32), ptr getelementptr (i8, ptr @dsi1_clk, i64 12), ptr getelementptr (i8, ptr @csi_pix_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi_clk, i64 16), ptr getelementptr (i8, ptr @mdp_vsync_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @hdmi_app_clk, i64 12), ptr getelementptr (i8, ptr @csi_pix1_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi2_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi1_clk, i64 16), ptr getelementptr (i8, ptr @gfx2d0_src, i64 60), ptr getelementptr (i8, ptr @gfx2d0_clk, i64 12), ptr getelementptr (i8, ptr @gfx2d1_src, i64 60), ptr getelementptr (i8, ptr @gfx2d1_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_src, i64 60), ptr getelementptr (i8, ptr @gfx3d_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_src, i64 32), ptr getelementptr (i8, ptr @ijpeg_clk, i64 12), ptr getelementptr (i8, ptr @jpegd_src, i64 32), ptr getelementptr (i8, ptr @jpegd_clk, i64 12), ptr getelementptr (i8, ptr @mdp_src, i64 60), ptr getelementptr (i8, ptr @mdp_clk, i64 12), ptr getelementptr (i8, ptr @mdp_lut_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_pixel_src, i64 32), ptr getelementptr (i8, ptr @dsi2_pixel_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_src, i64 32), ptr getelementptr (i8, ptr @dsi2_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_byte_src, i64 32), ptr getelementptr (i8, ptr @dsi1_byte_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_byte_src, i64 32), ptr getelementptr (i8, ptr @dsi2_byte_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_esc_src, i64 32), ptr getelementptr (i8, ptr @dsi1_esc_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_esc_src, i64 32), ptr getelementptr (i8, ptr @dsi2_esc_clk, i64 12), ptr getelementptr (i8, ptr @rot_src, i64 60), ptr getelementptr (i8, ptr @rot_clk, i64 12), ptr getelementptr (i8, ptr @tv_enc_clk, i64 12), ptr getelementptr (i8, ptr @tv_dac_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_tv_clk, i64 12), ptr getelementptr (i8, ptr @mdp_tv_clk, i64 12), ptr getelementptr (i8, ptr @tv_src, i64 32), ptr getelementptr (i8, ptr @vcodec_src, i64 60), ptr getelementptr (i8, ptr @vcodec_clk, i64 12), ptr getelementptr (i8, ptr @vfe_src, i64 32), ptr getelementptr (i8, ptr @vfe_clk, i64 12), ptr getelementptr (i8, ptr @vfe_csi_clk, i64 12), ptr getelementptr (i8, ptr @vpe_src, i64 32), ptr getelementptr (i8, ptr @vpe_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_pixel_src, i64 32), ptr getelementptr (i8, ptr @dsi1_pixel_clk, i64 12), ptr getelementptr (i8, ptr @camclk0_src, i64 32), ptr getelementptr (i8, ptr @camclk0_clk, i64 12), ptr getelementptr (i8, ptr @camclk1_src, i64 32), ptr getelementptr (i8, ptr @camclk1_clk, i64 12), ptr getelementptr (i8, ptr @camclk2_src, i64 32), ptr getelementptr (i8, ptr @camclk2_clk, i64 12), ptr getelementptr (i8, ptr @csiphytimer_src, i64 32), ptr getelementptr (i8, ptr @csiphy2_timer_clk, i64 12), ptr getelementptr (i8, ptr @csiphy1_timer_clk, i64 12), ptr getelementptr (i8, ptr @csiphy0_timer_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @pll2, i64 32)], [100 x i8] zeroinitializer }, align 32
@mmcc_msm8960_resets = internal constant { [75 x %struct.qcom_reset_map], [136 x i8] } { [75 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 520, i8 15 }, %struct.qcom_reset_map { i32 520, i8 14 }, %struct.qcom_reset_map { i32 520, i8 13 }, %struct.qcom_reset_map { i32 520, i8 9 }, %struct.qcom_reset_map { i32 520, i8 8 }, %struct.qcom_reset_map { i32 520, i8 7 }, %struct.qcom_reset_map { i32 520, i8 6 }, %struct.qcom_reset_map { i32 520, i8 5 }, %struct.qcom_reset_map { i32 520, i8 4 }, %struct.qcom_reset_map { i32 520, i8 3 }, %struct.qcom_reset_map { i32 520, i8 2 }, %struct.qcom_reset_map { i32 520, i8 1 }, %struct.qcom_reset_map { i32 520, i8 0 }, %struct.qcom_reset_map { i32 524, i8 31 }, %struct.qcom_reset_map { i32 524, i8 30 }, %struct.qcom_reset_map { i32 524, i8 29 }, %struct.qcom_reset_map { i32 524, i8 28 }, %struct.qcom_reset_map { i32 524, i8 27 }, %struct.qcom_reset_map { i32 524, i8 26 }, %struct.qcom_reset_map { i32 524, i8 25 }, %struct.qcom_reset_map { i32 524, i8 24 }, %struct.qcom_reset_map { i32 524, i8 23 }, %struct.qcom_reset_map { i32 524, i8 22 }, %struct.qcom_reset_map { i32 524, i8 21 }, %struct.qcom_reset_map { i32 524, i8 20 }, %struct.qcom_reset_map { i32 524, i8 18 }, %struct.qcom_reset_map { i32 524, i8 17 }, %struct.qcom_reset_map { i32 524, i8 15 }, %struct.qcom_reset_map { i32 524, i8 14 }, %struct.qcom_reset_map { i32 524, i8 13 }, %struct.qcom_reset_map { i32 524, i8 12 }, %struct.qcom_reset_map { i32 524, i8 11 }, %struct.qcom_reset_map { i32 524, i8 10 }, %struct.qcom_reset_map { i32 524, i8 9 }, %struct.qcom_reset_map { i32 524, i8 8 }, %struct.qcom_reset_map { i32 524, i8 7 }, %struct.qcom_reset_map { i32 524, i8 6 }, %struct.qcom_reset_map { i32 524, i8 5 }, %struct.qcom_reset_map { i32 524, i8 4 }, %struct.qcom_reset_map { i32 524, i8 3 }, %struct.qcom_reset_map { i32 524, i8 2 }, %struct.qcom_reset_map { i32 524, i8 1 }, %struct.qcom_reset_map { i32 524, i8 0 }, %struct.qcom_reset_map { i32 528, i8 31 }, %struct.qcom_reset_map { i32 528, i8 30 }, %struct.qcom_reset_map { i32 528, i8 29 }, %struct.qcom_reset_map { i32 528, i8 28 }, %struct.qcom_reset_map { i32 528, i8 27 }, %struct.qcom_reset_map { i32 528, i8 26 }, %struct.qcom_reset_map { i32 528, i8 25 }, %struct.qcom_reset_map { i32 528, i8 24 }, %struct.qcom_reset_map { i32 528, i8 21 }, %struct.qcom_reset_map { i32 528, i8 20 }, %struct.qcom_reset_map { i32 528, i8 19 }, %struct.qcom_reset_map { i32 528, i8 18 }, %struct.qcom_reset_map { i32 528, i8 17 }, %struct.qcom_reset_map { i32 528, i8 16 }, %struct.qcom_reset_map { i32 528, i8 15 }, %struct.qcom_reset_map { i32 528, i8 14 }, %struct.qcom_reset_map { i32 528, i8 13 }, %struct.qcom_reset_map { i32 528, i8 12 }, %struct.qcom_reset_map { i32 528, i8 11 }, %struct.qcom_reset_map { i32 528, i8 10 }, %struct.qcom_reset_map { i32 528, i8 9 }, %struct.qcom_reset_map { i32 528, i8 8 }, %struct.qcom_reset_map { i32 528, i8 7 }, %struct.qcom_reset_map { i32 528, i8 6 }, %struct.qcom_reset_map { i32 528, i8 4 }, %struct.qcom_reset_map { i32 528, i8 3 }, %struct.qcom_reset_map { i32 528, i8 2 }, %struct.qcom_reset_map { i32 528, i8 1 }, %struct.qcom_reset_map { i32 528, i8 0 }, %struct.qcom_reset_map { i32 532, i8 2 }, %struct.qcom_reset_map { i32 532, i8 1 }, %struct.qcom_reset_map { i32 532, i8 0 }], [136 x i8] zeroinitializer }, align 32
@tv_enc_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 476, i8 0, i8 23, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 }, ptr null, i32 8, i32 33554432, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@amp_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 476, i8 0, i8 18, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 }, ptr null, i32 8, i32 16777216, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi2_s_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 56, i32 476, i8 15, i8 20, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 }, ptr null, i32 8, i32 4194304, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@jpegd_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 476, i8 0, i8 7, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 }, ptr null, i32 8, i32 2097152, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gfx2d0_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 56, i32 476, i8 28, i8 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, ptr null, i32 8, i32 524288, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi_s_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 56, i32 476, i8 20, i8 21, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 }, ptr null, i32 8, i32 262144, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi2_m_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 472, i8 0, i8 18, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 }, ptr null, i32 8, i32 131072, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vpe_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 476, i8 0, i8 15, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null, i32 8, i32 65536, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@smmu_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 8, i32 476, i8 26, i8 22, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 }, ptr null, i32 8, i32 32768, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@hdmi_m_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 56, i32 476, i8 21, i8 5, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 }, ptr null, i32 8, i32 16384, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vfe_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 476, i8 0, i8 14, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 }, ptr null, i32 8, i32 8192, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@rot_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 476, i8 0, i8 13, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 }, ptr null, i32 8, i32 4096, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vcodec_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 56, i32 476, i8 26, i8 12, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.35 }, ptr null, i32 8, i32 2048, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mdp_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 476, i8 0, i8 11, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 }, ptr null, i32 8, i32 1024, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi_m_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 476, i8 0, i8 19, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.39 }, ptr null, i32 8, i32 512, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csi_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 476, i8 0, i8 16, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 }, ptr null, i32 8, i32 128, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mmss_imem_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 56, i32 476, i8 12, i8 10, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.43 }, ptr null, i32 8, i32 64, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@ijpeg_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 476, i8 0, i8 9, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.45 }, ptr null, i32 8, i32 32, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@hdmi_s_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 56, i32 476, i8 22, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.47 }, ptr null, i32 8, i32 16, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gfx3d_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 56, i32 476, i8 27, i8 4, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 }, ptr null, i32 8, i32 8, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gfx2d1_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 56, i32 476, i8 29, i8 3, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.51 }, ptr null, i32 8, i32 4, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@jpegd_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 472, i8 0, i8 5, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.53 }, ptr null, i32 24, i32 33554432, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gmem_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 472, i8 0, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.55 }, ptr null, i32 24, i32 16777216, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mdp_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 24, i32 472, i8 16, i8 8, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.57 }, ptr null, i32 24, i32 8388608, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mmss_imem_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 24, i32 472, i8 15, i8 7, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.59 }, ptr null, i32 24, i32 4194304, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@ijpeg_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 24, i32 472, i8 11, i8 4, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 }, ptr null, i32 24, i32 2097152, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gfx3d_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 580, i32 576, i8 24, i8 30, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.63 }, ptr null, i32 580, i32 33554432, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vcodec_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 24, i32 472, i8 13, i8 3, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.65 }, ptr null, i32 24, i32 524288, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vfe_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 472, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.67 }, ptr null, i32 24, i32 262144, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vpe_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 32, i32 472, i8 27, i8 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 }, ptr null, i32 32, i32 67108864, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@rot_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 32, i32 472, i8 25, i8 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.71 }, ptr null, i32 32, i32 16777216, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vcodec_axi_a_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 276, i32 488, i8 24, i8 26, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.73 }, ptr null, i32 276, i32 33554432, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vcodec_axi_b_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 276, i32 488, i8 22, i8 25, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.75 }, ptr null, i32 276, i32 8388608, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csi0_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 72, i32 68, %struct.mn { i8 5, i8 7, i8 6, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_csi, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 }, ptr null, i32 64, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@csi0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 460, i8 0, i8 13, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.80 }, ptr null, i32 64, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csi0_phy_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 9, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.83 }, ptr null, i32 64, i32 256, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csi1_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 16, i32 40, %struct.mn { i8 5, i8 7, i8 6, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_csi, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 }, ptr null, i32 36, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@csi1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 460, i8 0, i8 14, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.88 }, ptr null, i32 36, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csi1_phy_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 10, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.91 }, ptr null, i32 36, i32 256, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csi2_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 564, i32 556, %struct.mn { i8 5, i8 7, i8 6, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_csi, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.93 }, ptr null, i32 556, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@csi2_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 460, i8 0, i8 29, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.96 }, ptr null, i32 556, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csi2_phy_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 29, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.99 }, ptr null, i32 556, i32 256, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi1_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 84, i32 80, %struct.mn { i8 5, i8 7, i8 6, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi2_dsi1_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.101 }, ptr null, i32 76, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@dsi1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 464, i8 0, i8 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.106 }, ptr null, i32 76, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csi_pix_clk = internal global { %struct.clk_pix_rdi, [52 x i8] } { %struct.clk_pix_rdi { i32 88, i32 33554432, i32 568, i32 8192, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.108 }, ptr null, i32 88, i32 67108864, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@csi_rdi_clk = internal global { %struct.clk_pix_rdi, [52 x i8] } { %struct.clk_pix_rdi { i32 88, i32 4096, i32 568, i32 4096, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.110 }, ptr null, i32 88, i32 8192, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@mdp_vsync_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 460, i8 0, i8 22, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 }, ptr null, i32 88, i32 64, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@hdmi_app_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 460, i8 0, i8 25, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 }, ptr null, i32 92, i32 2048, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csi_pix1_clk = internal global { %struct.clk_pix_rdi, [52 x i8] } { %struct.clk_pix_rdi { i32 568, i32 256, i32 568, i32 512, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.118 }, ptr null, i32 568, i32 1024, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@csi_rdi2_clk = internal global { %struct.clk_pix_rdi, [52 x i8] } { %struct.clk_pix_rdi { i32 568, i32 16, i32 568, i32 32, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.120 }, ptr null, i32 568, i32 64, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@csi_rdi1_clk = internal global { %struct.clk_pix_rdi, [52 x i8] } { %struct.clk_pix_rdi { i32 568, i32 1, i32 568, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 }, ptr null, i32 568, i32 4, i8 0 } }, [52 x i8] zeroinitializer }, align 32
@gfx2d0_src = internal global { %struct.clk_dyn_rcg, [40 x i8] } { %struct.clk_dyn_rcg { [2 x i32] [i32 112, i32 112], [2 x i32] [i32 100, i32 104], i32 96, i8 11, [2 x %struct.mn] [%struct.mn { i8 8, i8 25, i8 9, i8 20, i8 4, i8 4, i8 0 }, %struct.mn { i8 5, i8 24, i8 6, i8 16, i8 4, i8 4, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 3, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_gfx2d, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.124 }, ptr null, i32 96, i32 4, i8 0 } }, [40 x i8] zeroinitializer }, align 32
@gfx2d0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 456, i8 0, i8 9, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.127 }, ptr null, i32 96, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gfx2d1_src = internal global { %struct.clk_dyn_rcg, [40 x i8] } { %struct.clk_dyn_rcg { [2 x i32] [i32 124, i32 124], [2 x i32] [i32 120, i32 108], i32 116, i8 11, [2 x %struct.mn] [%struct.mn { i8 8, i8 25, i8 9, i8 20, i8 4, i8 4, i8 0 }, %struct.mn { i8 5, i8 24, i8 6, i8 16, i8 4, i8 4, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 3, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_gfx2d, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.129 }, ptr null, i32 116, i32 4, i8 0 } }, [40 x i8] zeroinitializer }, align 32
@gfx2d1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 456, i8 0, i8 14, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.132 }, ptr null, i32 116, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@gfx3d_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 456, i8 0, i8 4, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.135 }, ptr null, i32 128, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@ijpeg_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 160, i32 156, %struct.mn { i8 5, i8 7, i8 6, i8 16, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 12, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_ijpeg, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.137 }, ptr null, i32 152, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@ijpeg_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 456, i8 0, i8 24, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.140 }, ptr null, i32 152, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@jpegd_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 172, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_jpegd, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.142 }, ptr null, i32 164, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@jpegd_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 456, i8 0, i8 19, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.145 }, ptr null, i32 164, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mdp_src = internal global { %struct.clk_dyn_rcg, [40 x i8] } { %struct.clk_dyn_rcg { [2 x i32] [i32 208, i32 208], [2 x i32] [i32 196, i32 200], i32 192, i8 11, [2 x %struct.mn] [%struct.mn { i8 8, i8 31, i8 9, i8 22, i8 8, i8 8, i8 0 }, %struct.mn { i8 5, i8 30, i8 6, i8 14, i8 8, i8 8, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 3, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_mdp, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.147 }, ptr null, i32 192, i32 4, i8 0 } }, [40 x i8] zeroinitializer }, align 32
@mdp_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 464, i8 0, i8 10, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.150 }, ptr null, i32 192, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mdp_lut_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 13, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.153 }, ptr null, i32 364, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi2_pixel_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 228, i32 184, %struct.mn { i8 5, i8 7, i8 6, i8 16, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi2_dsi1_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.155 }, ptr null, i32 148, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@dsi2_pixel_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 464, i8 0, i8 19, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.158 }, ptr null, i32 148, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi2_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 300, i32 168, %struct.mn { i8 5, i8 7, i8 6, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi2_dsi1_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.160 }, ptr null, i32 60, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@dsi2_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 464, i8 0, i8 20, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.163 }, ptr null, i32 60, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi1_byte_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 176, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi1_dsi2_byte_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.165 }, ptr null, i32 144, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@dsi1_byte_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 460, i8 0, i8 21, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.170 }, ptr null, i32 144, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi2_byte_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 300, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi1_dsi2_byte_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.172 }, ptr null, i32 304, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@dsi2_byte_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 460, i8 0, i8 20, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.175 }, ptr null, i32 180, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi1_esc_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 284, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi1_dsi2_byte_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.177 }, ptr null, i32 204, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@dsi1_esc_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.180 }, ptr null, i32 204, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi2_esc_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 336, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi1_dsi2_byte_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.182 }, ptr null, i32 316, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@dsi2_esc_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 3, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.185 }, ptr null, i32 316, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@rot_src = internal global { %struct.clk_dyn_rcg, [40 x i8] } { %struct.clk_dyn_rcg { [2 x i32] [i32 232, i32 232], [2 x i32] zeroinitializer, i32 232, i8 30, [2 x %struct.mn] zeroinitializer, [2 x %struct.pre_div] [%struct.pre_div { i8 22, i8 4 }, %struct.pre_div { i8 26, i8 4 }], [2 x %struct.src_sel] [%struct.src_sel { i8 16, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 19, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_rot, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.187 }, ptr null, i32 224, i32 4, i8 0 } }, [40 x i8] zeroinitializer }, align 32
@rot_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 464, i8 0, i8 15, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.190 }, ptr null, i32 224, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@tv_enc_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 468, i8 0, i8 9, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.192 }, ptr null, i32 236, i32 256, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@tv_dac_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 468, i8 0, i8 10, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.195 }, ptr null, i32 236, i32 1024, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@hdmi_tv_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 468, i8 0, i8 11, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.197 }, ptr null, i32 236, i32 4096, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@mdp_tv_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 468, i8 0, i8 12, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.199 }, ptr null, i32 236, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@tv_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 244, i32 240, %struct.mn { i8 5, i8 7, i8 6, i8 16, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_hdmi_map }, ptr @clk_tbl_tv, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.200 }, ptr null, i32 236, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@vcodec_src = internal global { %struct.clk_dyn_rcg, [40 x i8] } { %struct.clk_dyn_rcg { [2 x i32] [i32 256, i32 256], [2 x i32] [i32 252, i32 296], i32 248, i8 13, [2 x %struct.mn] [%struct.mn { i8 5, i8 31, i8 6, i8 11, i8 8, i8 8, i8 0 }, %struct.mn { i8 10, i8 30, i8 11, i8 19, i8 8, i8 8, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 27, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_vcodec, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.203 }, ptr null, i32 248, i32 4, i8 0 } }, [40 x i8] zeroinitializer }, align 32
@vcodec_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 464, i8 0, i8 29, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.206 }, ptr null, i32 248, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vfe_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 264, i32 0, %struct.mn { i8 5, i8 7, i8 6, i8 16, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 10, i8 1 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_vfe, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.208 }, ptr null, i32 260, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@vfe_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 460, i8 0, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.211 }, ptr null, i32 260, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vfe_csi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 460, i8 0, i8 8, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.214 }, ptr null, i32 260, i32 4096, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vpe_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 280, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_vpe, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.216 }, ptr null, i32 272, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@vpe_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 456, i8 0, i8 28, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.219 }, ptr null, i32 272, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@dsi1_pixel_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 312, i32 308, %struct.mn { i8 5, i8 7, i8 6, i8 16, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi2_dsi1_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.221 }, ptr null, i32 304, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@dsi1_pixel_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 464, i8 0, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.224 }, ptr null, i32 304, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@camclk0_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 328, i32 324, %struct.mn { i8 5, i8 8, i8 6, i8 24, i8 8, i8 8, i8 1 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_cam, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.226 }, ptr null, i32 320, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@camclk0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 15, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.229 }, ptr null, i32 320, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@camclk1_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 348, i32 344, %struct.mn { i8 5, i8 8, i8 6, i8 24, i8 8, i8 8, i8 1 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_cam, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.231 }, ptr null, i32 340, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@camclk1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 16, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.234 }, ptr null, i32 340, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@camclk2_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 552, i32 548, %struct.mn { i8 5, i8 8, i8 6, i8 24, i8 8, i8 8, i8 1 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_cam, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.236 }, ptr null, i32 544, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@camclk2_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 16, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.239 }, ptr null, i32 544, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csiphytimer_src = internal global { %struct.clk_rcg, [36 x i8] } { %struct.clk_rcg { i32 360, i32 356, %struct.mn { i8 5, i8 8, i8 6, i8 24, i8 8, i8 8, i8 1 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_csiphytimer, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.241 }, ptr null, i32 352, i32 4, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@csiphy2_timer_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 30, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.243 }, ptr null, i32 352, i32 2048, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csiphy1_timer_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 18, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.245 }, ptr null, i32 352, i32 512, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@csiphy0_timer_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 488, i8 0, i8 17, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.247 }, ptr null, i32 352, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@pll2 = internal global { %struct.clk_pll, [36 x i8] } { %struct.clk_pll { i32 800, i32 804, i32 808, i32 812, i32 796, i32 820, i8 16, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.249 }, ptr null, i32 0, i32 0, i8 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tv_enc_ahb_clk\00", [17 x i8] zeroinitializer }, align 32
@clk_branch_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.11 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.10, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amp_ahb_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsi2_s_ahb_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.14, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jpegd_ahb_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gfx2d0_ahb_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi_s_ahb_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsi2_m_ahb_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.22, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vpe_ahb_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smmu_ahb_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmi_m_ahb_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.28, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vfe_ahb_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.30, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rot_ahb_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.32, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vcodec_ahb_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.34, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mdp_ahb_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.36, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi_m_ahb_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.38, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"csi_ahb_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.40, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmss_imem_ahb_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.42, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ijpeg_ahb_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.44, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmi_s_ahb_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.46, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gfx3d_ahb_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.48, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gfx2d1_ahb_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.50, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jpegd_axi_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.52, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gmem_axi_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.54, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mdp_axi_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.56, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmss_imem_axi_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.58, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ijpeg_axi_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.60, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gfx3d_axi_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.62, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vcodec_axi_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.64, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vfe_axi_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.66, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vpe_axi_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.68, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rot_axi_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.70, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vcodec_axi_a_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.72, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vcodec_axi_b_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.74, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mmcc_pxo_pll8_pll2_map = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 2 }, %struct.parent_map { i8 2, i8 1 }], [26 x i8] zeroinitializer }, align 32
@clk_tbl_csi = internal global { [4 x %struct.freq_tbl], [48 x i8] } { [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 85330000, i8 1, i8 1, i16 2, i16 9 }, %struct.freq_tbl { i32 177780000, i8 2, i8 1, i16 2, i16 9 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi0_src\00", [23 x i8] zeroinitializer }, align 32
@clk_rcg_ops = external dso_local constant %struct.clk_ops, align 4
@mmcc_pxo_pll8_pll2 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.76, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi0_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.76], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.78, ptr @clk_branch_ops, ptr @.compoundliteral.79, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi0_phy_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.76], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.81, ptr @clk_branch_ops, ptr @.compoundliteral.82, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi1_src\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.84, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi1_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.84], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.86, ptr @clk_branch_ops, ptr @.compoundliteral.87, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi1_phy_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.84], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.89, ptr @clk_branch_ops, ptr @.compoundliteral.90, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi2_src\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.92, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi2_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.92], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.94, ptr @clk_branch_ops, ptr @.compoundliteral.95, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi2_phy_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.92], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.97, ptr @clk_branch_ops, ptr @.compoundliteral.98, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@mmcc_pxo_dsi2_dsi1_map = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 7, i8 1 }, %struct.parent_map { i8 6, i8 3 }], [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi1_src\00", [23 x i8] zeroinitializer }, align 32
@clk_rcg_bypass2_ops = external dso_local constant %struct.clk_ops, align 4
@mmcc_pxo_dsi2_dsi1 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.3, ptr @.str.102, ptr @.str.103], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.100, ptr @clk_rcg_bypass2_ops, ptr @mmcc_pxo_dsi2_dsi1, ptr null, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi2pll\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi1pll\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi1_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.104, ptr @clk_branch_ops, ptr @.compoundliteral.105, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"csi_pix_clk\00", [20 x i8] zeroinitializer }, align 32
@clk_ops_pix_rdi = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_enable_regmap, ptr @clk_disable_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @pix_rdi_set_parent, ptr @pix_rdi_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pix_rdi_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.78, ptr @.str.86, ptr @.str.94], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.107, ptr @clk_ops_pix_rdi, ptr @pix_rdi_parents, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"csi_rdi_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.109, ptr @clk_ops_pix_rdi, ptr @pix_rdi_parents, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mdp_vsync_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.111, ptr @clk_branch_ops, ptr @.compoundliteral.112, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdmi_app_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.114, ptr @clk_branch_ops, ptr @.compoundliteral.115, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi_pix1_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.117, ptr @clk_ops_pix_rdi, ptr @pix_rdi_parents, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi_rdi2_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.119, ptr @clk_ops_pix_rdi, ptr @pix_rdi_parents, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi_rdi1_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.121, ptr @clk_ops_pix_rdi, ptr @pix_rdi_parents, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_gfx2d = internal global { [13 x %struct.freq_tbl], [36 x i8] } { [13 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 0, i16 1, i16 0 }, %struct.freq_tbl { i32 48000000, i8 1, i8 0, i16 1, i16 8 }, %struct.freq_tbl { i32 54857000, i8 1, i8 0, i16 1, i16 7 }, %struct.freq_tbl { i32 64000000, i8 1, i8 0, i16 1, i16 6 }, %struct.freq_tbl { i32 76800000, i8 1, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 96000000, i8 1, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 128000000, i8 1, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 145455000, i8 2, i8 0, i16 2, i16 11 }, %struct.freq_tbl { i32 160000000, i8 2, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 177778000, i8 2, i8 0, i16 2, i16 9 }, %struct.freq_tbl { i32 200000000, i8 2, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 228571000, i8 2, i8 0, i16 2, i16 7 }, %struct.freq_tbl zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfx2d0_src\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.123, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfx2d0_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.123], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.125, ptr @clk_branch_ops, ptr @.compoundliteral.126, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfx2d1_src\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.128, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfx2d1_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.128], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.130, ptr @clk_branch_ops, ptr @.compoundliteral.131, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx3d_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.133, ptr @clk_branch_ops, ptr @.compoundliteral.134, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_ijpeg = internal global { [12 x %struct.freq_tbl], [48 x i8] } { [12 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 36570000, i8 1, i8 1, i16 2, i16 21 }, %struct.freq_tbl { i32 54860000, i8 1, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 109710000, i8 1, i8 1, i16 2, i16 7 }, %struct.freq_tbl { i32 128000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 153600000, i8 1, i8 1, i16 2, i16 5 }, %struct.freq_tbl { i32 200000000, i8 2, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 228571000, i8 2, i8 1, i16 2, i16 7 }, %struct.freq_tbl { i32 266667000, i8 2, i8 1, i16 1, i16 3 }, %struct.freq_tbl { i32 320000000, i8 2, i8 1, i16 2, i16 5 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ijpeg_src\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.136, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ijpeg_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.136], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.138, ptr @clk_branch_ops, ptr @.compoundliteral.139, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_jpegd = internal global { [6 x %struct.freq_tbl], [56 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 64000000, i8 1, i8 6, i16 0, i16 0 }, %struct.freq_tbl { i32 76800000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 160000000, i8 2, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 2, i8 4, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jpegd_src\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.141, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jpegd_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.141], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.143, ptr @clk_branch_ops, ptr @.compoundliteral.144, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_mdp = internal global { [17 x %struct.freq_tbl], [52 x i8] } { [17 x %struct.freq_tbl] [%struct.freq_tbl { i32 9600000, i8 1, i8 1, i16 1, i16 40 }, %struct.freq_tbl { i32 13710000, i8 1, i8 1, i16 1, i16 28 }, %struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 29540000, i8 1, i8 1, i16 1, i16 13 }, %struct.freq_tbl { i32 34910000, i8 1, i8 1, i16 1, i16 11 }, %struct.freq_tbl { i32 38400000, i8 1, i8 1, i16 1, i16 10 }, %struct.freq_tbl { i32 59080000, i8 1, i8 1, i16 2, i16 13 }, %struct.freq_tbl { i32 76800000, i8 1, i8 1, i16 1, i16 5 }, %struct.freq_tbl { i32 85330000, i8 1, i8 1, i16 2, i16 9 }, %struct.freq_tbl { i32 96000000, i8 1, i8 1, i16 1, i16 4 }, %struct.freq_tbl { i32 128000000, i8 1, i8 1, i16 1, i16 3 }, %struct.freq_tbl { i32 160000000, i8 2, i8 1, i16 1, i16 5 }, %struct.freq_tbl { i32 177780000, i8 2, i8 1, i16 2, i16 9 }, %struct.freq_tbl { i32 200000000, i8 2, i8 1, i16 1, i16 4 }, %struct.freq_tbl { i32 228571000, i8 2, i8 1, i16 2, i16 7 }, %struct.freq_tbl { i32 266667000, i8 2, i8 1, i16 1, i16 3 }, %struct.freq_tbl zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mdp_src\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.146, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mdp_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.146], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.148, ptr @clk_branch_ops, ptr @.compoundliteral.149, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mdp_lut_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.146], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.151, ptr @clk_branch_ops, ptr @.compoundliteral.152, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsi2_pixel_src\00", [17 x i8] zeroinitializer }, align 32
@clk_rcg_pixel_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.155 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.154, ptr @clk_rcg_pixel_ops, ptr @mmcc_pxo_dsi2_dsi1, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mdp_pclk2_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.154], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.156, ptr @clk_branch_ops, ptr @.compoundliteral.157, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi2_src\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.159, ptr @clk_rcg_bypass2_ops, ptr @mmcc_pxo_dsi2_dsi1, ptr null, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi2_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.159], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.161, ptr @clk_branch_ops, ptr @.compoundliteral.162, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@mmcc_pxo_dsi1_dsi2_byte_map = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 8, i8 1 }, %struct.parent_map { i8 9, i8 2 }], [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi1_byte_src\00", [18 x i8] zeroinitializer }, align 32
@mmcc_pxo_dsi1_dsi2_byte = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.3, ptr @.str.166, ptr @.str.167], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.164, ptr @clk_rcg_bypass2_ops, ptr @mmcc_pxo_dsi1_dsi2_byte, ptr null, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsi1pllbyte\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsi2pllbyte\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi1_byte_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.164], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.168, ptr @clk_branch_ops, ptr @.compoundliteral.169, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi2_byte_src\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.171, ptr @clk_rcg_bypass2_ops, ptr @mmcc_pxo_dsi1_dsi2_byte, ptr null, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi2_byte_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.171], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.173, ptr @clk_branch_ops, ptr @.compoundliteral.174, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi1_esc_src\00", [19 x i8] zeroinitializer }, align 32
@clk_rcg_esc_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.177 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.176, ptr @clk_rcg_esc_ops, ptr @mmcc_pxo_dsi1_dsi2_byte, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi1_esc_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.176], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.178, ptr @clk_branch_ops, ptr @.compoundliteral.179, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi2_esc_src\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.181, ptr @clk_rcg_esc_ops, ptr @mmcc_pxo_dsi1_dsi2_byte, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi2_esc_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.181], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.183, ptr @clk_branch_ops, ptr @.compoundliteral.184, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_rot = internal global { [15 x %struct.freq_tbl], [44 x i8] } { [15 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 29540000, i8 1, i8 13, i16 0, i16 0 }, %struct.freq_tbl { i32 32000000, i8 1, i8 12, i16 0, i16 0 }, %struct.freq_tbl { i32 38400000, i8 1, i8 10, i16 0, i16 0 }, %struct.freq_tbl { i32 48000000, i8 1, i8 8, i16 0, i16 0 }, %struct.freq_tbl { i32 54860000, i8 1, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 64000000, i8 1, i8 6, i16 0, i16 0 }, %struct.freq_tbl { i32 76800000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 2, i8 8, i16 0, i16 0 }, %struct.freq_tbl { i32 114290000, i8 2, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 133330000, i8 2, i8 6, i16 0, i16 0 }, %struct.freq_tbl { i32 160000000, i8 2, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 2, i8 4, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rot_src\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.186, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rot_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.186], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.188, ptr @clk_branch_ops, ptr @.compoundliteral.189, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tv_enc_clk\00", [21 x i8] zeroinitializer }, align 32
@tv_src_name = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.193], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.191, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tv_src\00", [25 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tv_dac_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.194, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hdmi_tv_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.196, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mdp_tv_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.198, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@mmcc_pxo_hdmi_map = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 5, i8 3 }], [28 x i8] zeroinitializer }, align 32
@clk_tbl_tv = internal global { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 0, i8 5, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@clk_rcg_bypass_ops = external dso_local constant %struct.clk_ops, align 4
@mmcc_pxo_hdmi = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.201], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.193, ptr @clk_rcg_bypass_ops, ptr @mmcc_pxo_hdmi, ptr null, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_pll\00", [23 x i8] zeroinitializer }, align 32
@clk_tbl_vcodec = internal global { [10 x %struct.freq_tbl], [40 x i8] } { [10 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 0, i16 1, i16 0 }, %struct.freq_tbl { i32 32000000, i8 1, i8 0, i16 1, i16 12 }, %struct.freq_tbl { i32 48000000, i8 1, i8 0, i16 1, i16 8 }, %struct.freq_tbl { i32 54860000, i8 1, i8 0, i16 1, i16 7 }, %struct.freq_tbl { i32 96000000, i8 1, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 133330000, i8 2, i8 0, i16 1, i16 6 }, %struct.freq_tbl { i32 200000000, i8 2, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 228570000, i8 2, i8 0, i16 2, i16 7 }, %struct.freq_tbl { i32 266670000, i8 2, i8 0, i16 1, i16 3 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vcodec_src\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.202, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vcodec_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.202], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.206 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.204, ptr @clk_branch_ops, ptr @.compoundliteral.205, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_vfe = internal global { [18 x %struct.freq_tbl], [40 x i8] } { [18 x %struct.freq_tbl] [%struct.freq_tbl { i32 13960000, i8 1, i8 1, i16 2, i16 55 }, %struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 36570000, i8 1, i8 1, i16 2, i16 21 }, %struct.freq_tbl { i32 38400000, i8 1, i8 2, i16 1, i16 5 }, %struct.freq_tbl { i32 45180000, i8 1, i8 1, i16 2, i16 17 }, %struct.freq_tbl { i32 48000000, i8 1, i8 2, i16 1, i16 4 }, %struct.freq_tbl { i32 54860000, i8 1, i8 1, i16 1, i16 7 }, %struct.freq_tbl { i32 64000000, i8 1, i8 2, i16 1, i16 3 }, %struct.freq_tbl { i32 76800000, i8 1, i8 1, i16 1, i16 5 }, %struct.freq_tbl { i32 96000000, i8 1, i8 2, i16 1, i16 2 }, %struct.freq_tbl { i32 109710000, i8 1, i8 1, i16 2, i16 7 }, %struct.freq_tbl { i32 128000000, i8 1, i8 1, i16 1, i16 3 }, %struct.freq_tbl { i32 153600000, i8 1, i8 1, i16 2, i16 5 }, %struct.freq_tbl { i32 200000000, i8 2, i8 2, i16 1, i16 2 }, %struct.freq_tbl { i32 228570000, i8 2, i8 1, i16 2, i16 7 }, %struct.freq_tbl { i32 266667000, i8 2, i8 1, i16 1, i16 3 }, %struct.freq_tbl { i32 320000000, i8 2, i8 1, i16 2, i16 5 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vfe_src\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.208 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.207, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vfe_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.210 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.207], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.209, ptr @clk_branch_ops, ptr @.compoundliteral.210, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vfe_csi_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.207], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.214 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.212, ptr @clk_branch_ops, ptr @.compoundliteral.213, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_vpe = internal global { [9 x %struct.freq_tbl], [52 x i8] } { [9 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 34909000, i8 1, i8 11, i16 0, i16 0 }, %struct.freq_tbl { i32 38400000, i8 1, i8 10, i16 0, i16 0 }, %struct.freq_tbl { i32 64000000, i8 1, i8 6, i16 0, i16 0 }, %struct.freq_tbl { i32 76800000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 2, i8 8, i16 0, i16 0 }, %struct.freq_tbl { i32 160000000, i8 2, i8 5, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpe_src\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.216 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.215, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpe_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.218 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.215], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.219 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.217, ptr @clk_branch_ops, ptr @.compoundliteral.218, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsi1_pixel_src\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.221 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.220, ptr @clk_rcg_pixel_ops, ptr @mmcc_pxo_dsi2_dsi1, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mdp_pclk1_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.223 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.220], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.224 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.222, ptr @clk_branch_ops, ptr @.compoundliteral.223, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_cam = internal global { [12 x %struct.freq_tbl], [48 x i8] } { [12 x %struct.freq_tbl] [%struct.freq_tbl { i32 6000000, i8 1, i8 4, i16 1, i16 16 }, %struct.freq_tbl { i32 8000000, i8 1, i8 4, i16 1, i16 12 }, %struct.freq_tbl { i32 12000000, i8 1, i8 4, i16 1, i16 8 }, %struct.freq_tbl { i32 16000000, i8 1, i8 4, i16 1, i16 6 }, %struct.freq_tbl { i32 19200000, i8 1, i8 4, i16 1, i16 5 }, %struct.freq_tbl { i32 24000000, i8 1, i8 4, i16 1, i16 4 }, %struct.freq_tbl { i32 32000000, i8 1, i8 4, i16 1, i16 3 }, %struct.freq_tbl { i32 48000000, i8 1, i8 4, i16 1, i16 2 }, %struct.freq_tbl { i32 64000000, i8 1, i8 3, i16 1, i16 2 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 128000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"camclk0_src\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.226 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.225, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"camclk0_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.228 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.225], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.229 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.227, ptr @clk_branch_ops, ptr @.compoundliteral.228, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"camclk1_src\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.230, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"camclk1_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.230], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.234 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.232, ptr @clk_branch_ops, ptr @.compoundliteral.233, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"camclk2_src\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.236 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.235, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"camclk2_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.238 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.235], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.237, ptr @clk_branch_ops, ptr @.compoundliteral.238, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_csiphytimer = internal global { [3 x %struct.freq_tbl], [60 x i8] } { [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 85330000, i8 1, i8 1, i16 2, i16 9 }, %struct.freq_tbl { i32 177780000, i8 2, i8 1, i16 2, i16 9 }, %struct.freq_tbl zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csiphytimer_src\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.241 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.240, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csiphy2_timer_clk\00", [46 x i8] zeroinitializer }, align 32
@csixphy_timer_src = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.240], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.242, ptr @clk_branch_ops, ptr @csixphy_timer_src, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csiphy1_timer_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.244, ptr @clk_branch_ops, ptr @csixphy_timer_src, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csiphy0_timer_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.246, ptr @clk_branch_ops, ptr @csixphy_timer_src, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.5, ptr @clk_pll_ops, ptr @.compoundliteral.248, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mmcc_apq8064_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 848, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mmcc_apq8064_clks = internal global { [127 x ptr], [100 x i8] } { [127 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @amp_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @jpegd_ahb_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @dsi_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vpe_ahb_clk, i64 12), ptr getelementptr (i8, ptr @smmu_ahb_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vfe_ahb_clk, i64 12), ptr getelementptr (i8, ptr @rot_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_ahb_clk, i64 12), ptr getelementptr (i8, ptr @mdp_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @csi_ahb_clk, i64 12), ptr getelementptr (i8, ptr @mmss_imem_ahb_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_ahb_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_ahb_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @jpegd_axi_clk, i64 12), ptr getelementptr (i8, ptr @gmem_axi_clk, i64 12), ptr getelementptr (i8, ptr @mdp_axi_clk, i64 12), ptr getelementptr (i8, ptr @mmss_imem_axi_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_axi_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_axi_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_clk, i64 12), ptr getelementptr (i8, ptr @vfe_axi_clk, i64 12), ptr getelementptr (i8, ptr @vpe_axi_clk, i64 12), ptr getelementptr (i8, ptr @rot_axi_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_a_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_b_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @csi0_src, i64 32), ptr getelementptr (i8, ptr @csi0_clk, i64 12), ptr getelementptr (i8, ptr @csi0_phy_clk, i64 12), ptr getelementptr (i8, ptr @csi1_src, i64 32), ptr getelementptr (i8, ptr @csi1_clk, i64 12), ptr getelementptr (i8, ptr @csi1_phy_clk, i64 12), ptr getelementptr (i8, ptr @csi2_src, i64 32), ptr getelementptr (i8, ptr @csi2_clk, i64 12), ptr getelementptr (i8, ptr @csi2_phy_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_src, i64 32), ptr getelementptr (i8, ptr @dsi1_clk, i64 12), ptr getelementptr (i8, ptr @csi_pix_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi_clk, i64 16), ptr getelementptr (i8, ptr @mdp_vsync_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @hdmi_app_clk, i64 12), ptr getelementptr (i8, ptr @csi_pix1_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi2_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi1_clk, i64 16), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gfx3d_src, i64 60), ptr getelementptr (i8, ptr @gfx3d_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_src, i64 32), ptr getelementptr (i8, ptr @ijpeg_clk, i64 12), ptr getelementptr (i8, ptr @jpegd_src, i64 32), ptr getelementptr (i8, ptr @jpegd_clk, i64 12), ptr getelementptr (i8, ptr @mdp_src, i64 60), ptr getelementptr (i8, ptr @mdp_clk, i64 12), ptr getelementptr (i8, ptr @mdp_lut_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_pixel_src, i64 32), ptr getelementptr (i8, ptr @dsi2_pixel_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_src, i64 32), ptr getelementptr (i8, ptr @dsi2_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_byte_src, i64 32), ptr getelementptr (i8, ptr @dsi1_byte_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_byte_src, i64 32), ptr getelementptr (i8, ptr @dsi2_byte_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_esc_src, i64 32), ptr getelementptr (i8, ptr @dsi1_esc_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_esc_src, i64 32), ptr getelementptr (i8, ptr @dsi2_esc_clk, i64 12), ptr getelementptr (i8, ptr @rot_src, i64 60), ptr getelementptr (i8, ptr @rot_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @tv_dac_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_tv_clk, i64 12), ptr getelementptr (i8, ptr @mdp_tv_clk, i64 12), ptr getelementptr (i8, ptr @tv_src, i64 32), ptr getelementptr (i8, ptr @vcodec_src, i64 60), ptr getelementptr (i8, ptr @vcodec_clk, i64 12), ptr getelementptr (i8, ptr @vfe_src, i64 32), ptr getelementptr (i8, ptr @vfe_clk, i64 12), ptr getelementptr (i8, ptr @vfe_csi_clk, i64 12), ptr getelementptr (i8, ptr @vpe_src, i64 32), ptr getelementptr (i8, ptr @vpe_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_pixel_src, i64 32), ptr getelementptr (i8, ptr @dsi1_pixel_clk, i64 12), ptr getelementptr (i8, ptr @camclk0_src, i64 32), ptr getelementptr (i8, ptr @camclk0_clk, i64 12), ptr getelementptr (i8, ptr @camclk1_src, i64 32), ptr getelementptr (i8, ptr @camclk1_clk, i64 12), ptr getelementptr (i8, ptr @camclk2_src, i64 32), ptr getelementptr (i8, ptr @camclk2_clk, i64 12), ptr getelementptr (i8, ptr @csiphytimer_src, i64 32), ptr getelementptr (i8, ptr @csiphy2_timer_clk, i64 12), ptr getelementptr (i8, ptr @csiphy1_timer_clk, i64 12), ptr getelementptr (i8, ptr @csiphy0_timer_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @pll2, i64 32), ptr getelementptr (i8, ptr @rgb_tv_clk, i64 12), ptr getelementptr (i8, ptr @npl_tv_clk, i64 12), ptr getelementptr (i8, ptr @vcap_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vcap_axi_clk, i64 12), ptr getelementptr (i8, ptr @vcap_src, i64 60), ptr getelementptr (i8, ptr @vcap_clk, i64 12), ptr getelementptr (i8, ptr @vcap_npl_clk, i64 12), ptr getelementptr (i8, ptr @pll15, i64 32)], [100 x i8] zeroinitializer }, align 32
@mmcc_apq8064_resets = internal constant { [83 x %struct.qcom_reset_map], [168 x i8] } { [83 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 520, i8 15 }, %struct.qcom_reset_map { i32 520, i8 14 }, %struct.qcom_reset_map { i32 520, i8 13 }, %struct.qcom_reset_map { i32 520, i8 9 }, %struct.qcom_reset_map { i32 520, i8 8 }, %struct.qcom_reset_map { i32 520, i8 7 }, %struct.qcom_reset_map { i32 520, i8 6 }, %struct.qcom_reset_map { i32 520, i8 5 }, %struct.qcom_reset_map { i32 520, i8 4 }, %struct.qcom_reset_map { i32 520, i8 3 }, %struct.qcom_reset_map { i32 520, i8 2 }, %struct.qcom_reset_map { i32 520, i8 1 }, %struct.qcom_reset_map { i32 520, i8 0 }, %struct.qcom_reset_map { i32 524, i8 31 }, %struct.qcom_reset_map { i32 524, i8 30 }, %struct.qcom_reset_map { i32 524, i8 29 }, %struct.qcom_reset_map { i32 524, i8 28 }, %struct.qcom_reset_map { i32 524, i8 27 }, %struct.qcom_reset_map { i32 524, i8 26 }, %struct.qcom_reset_map { i32 524, i8 25 }, %struct.qcom_reset_map { i32 524, i8 24 }, %struct.qcom_reset_map { i32 524, i8 23 }, %struct.qcom_reset_map { i32 524, i8 22 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 524, i8 18 }, %struct.qcom_reset_map { i32 524, i8 17 }, %struct.qcom_reset_map { i32 524, i8 15 }, %struct.qcom_reset_map { i32 524, i8 14 }, %struct.qcom_reset_map { i32 524, i8 13 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 524, i8 10 }, %struct.qcom_reset_map { i32 524, i8 9 }, %struct.qcom_reset_map { i32 524, i8 8 }, %struct.qcom_reset_map { i32 524, i8 7 }, %struct.qcom_reset_map { i32 524, i8 6 }, %struct.qcom_reset_map { i32 524, i8 5 }, %struct.qcom_reset_map { i32 524, i8 4 }, %struct.qcom_reset_map { i32 524, i8 3 }, %struct.qcom_reset_map { i32 524, i8 2 }, %struct.qcom_reset_map { i32 524, i8 1 }, %struct.qcom_reset_map { i32 524, i8 0 }, %struct.qcom_reset_map { i32 512, i8 1 }, %struct.qcom_reset_map { i32 512, i8 0 }, %struct.qcom_reset_map { i32 528, i8 31 }, %struct.qcom_reset_map { i32 528, i8 30 }, %struct.qcom_reset_map { i32 528, i8 29 }, %struct.qcom_reset_map { i32 528, i8 28 }, %struct.qcom_reset_map { i32 528, i8 25 }, %struct.qcom_reset_map { i32 528, i8 24 }, %struct.qcom_reset_map { i32 528, i8 21 }, %struct.qcom_reset_map { i32 528, i8 20 }, %struct.qcom_reset_map { i32 528, i8 19 }, %struct.qcom_reset_map { i32 528, i8 18 }, %struct.qcom_reset_map { i32 528, i8 17 }, %struct.qcom_reset_map { i32 528, i8 16 }, %struct.qcom_reset_map { i32 528, i8 15 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 528, i8 12 }, %struct.qcom_reset_map { i32 528, i8 11 }, %struct.qcom_reset_map { i32 528, i8 10 }, %struct.qcom_reset_map { i32 528, i8 9 }, %struct.qcom_reset_map { i32 528, i8 8 }, %struct.qcom_reset_map { i32 528, i8 7 }, %struct.qcom_reset_map { i32 528, i8 6 }, %struct.qcom_reset_map { i32 528, i8 4 }, %struct.qcom_reset_map { i32 528, i8 3 }, %struct.qcom_reset_map { i32 528, i8 2 }, %struct.qcom_reset_map { i32 528, i8 1 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 532, i8 2 }, %struct.qcom_reset_map { i32 532, i8 1 }, %struct.qcom_reset_map { i32 532, i8 0 }, %struct.qcom_reset_map { i32 520, i8 17 }, %struct.qcom_reset_map { i32 520, i8 16 }, %struct.qcom_reset_map { i32 512, i8 3 }, %struct.qcom_reset_map { i32 512, i8 2 }, %struct.qcom_reset_map { i32 528, i8 27 }, %struct.qcom_reset_map { i32 528, i8 26 }, %struct.qcom_reset_map { i32 532, i8 4 }, %struct.qcom_reset_map { i32 532, i8 3 }], [168 x i8] zeroinitializer }, align 32
@rgb_tv_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 576, i8 0, i8 27, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.251 }, ptr null, i32 292, i32 16384, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@npl_tv_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 576, i8 0, i8 26, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.253 }, ptr null, i32 292, i32 65536, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vcap_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 576, i8 0, i8 23, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.255 }, ptr null, i32 584, i32 2, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vcap_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 580, i32 576, i8 11, i8 20, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.257 }, ptr null, i32 580, i32 4096, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vcap_src = internal global { %struct.clk_dyn_rcg, [40 x i8] } { %struct.clk_dyn_rcg { [2 x i32] [i32 540, i32 540], [2 x i32] [i32 492, i32 536], i32 376, i8 11, [2 x %struct.mn] [%struct.mn { i8 8, i8 23, i8 9, i8 18, i8 4, i8 4, i8 0 }, %struct.mn { i8 5, i8 22, i8 6, i8 14, i8 4, i8 4, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 3, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_vcap, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.259 }, ptr null, i32 376, i32 4, i8 0 } }, [40 x i8] zeroinitializer }, align 32
@vcap_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 576, i8 0, i8 15, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.262 }, ptr null, i32 376, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@vcap_npl_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 576, i8 0, i8 25, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.265 }, ptr null, i32 376, i32 8192, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgb_tv_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.250, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"npl_tv_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.252, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vcap_ahb_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.254, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vcap_axi_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.256, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@clk_tbl_vcap = internal global { [8 x %struct.freq_tbl], [32 x i8] } { [8 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 0, i16 0, i16 0 }, %struct.freq_tbl { i32 54860000, i8 1, i8 0, i16 1, i16 7 }, %struct.freq_tbl { i32 64000000, i8 1, i8 0, i16 1, i16 6 }, %struct.freq_tbl { i32 76800000, i8 1, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 128000000, i8 1, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 160000000, i8 2, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 200000000, i8 2, i8 0, i16 1, i16 4 }, %struct.freq_tbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vcap_src\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.258, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vcap_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.258], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.260, ptr @clk_branch_ops, ptr @.compoundliteral.261, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vcap_npl_clk\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.258], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.263, ptr @clk_branch_ops, ptr @.compoundliteral.264, ptr null, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c"mmcc_msm8960_driver\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 3050, i32 31 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 3053, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant [25 x i8] c"mmcc_msm8960_match_table\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 3015, i32 34 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 3033, i32 50 }
@___asan_gen_.278 = private unnamed_addr constant [19 x i8] c"clk_tbl_gfx3d_8064\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 941, i32 24 }
@___asan_gen_.281 = private unnamed_addr constant [10 x i8] c"gfx3d_src\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 962, i32 27 }
@___asan_gen_.284 = private unnamed_addr constant [16 x i8] c"gfx3d_8064_init\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1006, i32 35 }
@___asan_gen_.287 = private unnamed_addr constant [29 x i8] c"mmcc_pxo_pll8_pll2_pll15_map\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 70, i32 32 }
@___asan_gen_.290 = private unnamed_addr constant [6 x i8] c"pll15\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 124, i32 23 }
@___asan_gen_.293 = private unnamed_addr constant [13 x i8] c"pll15_config\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 140, i32 32 }
@___asan_gen_.296 = private unnamed_addr constant [28 x i8] c"mmcc_pxo_pll8_pll2_pll3_map\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 56, i32 32 }
@___asan_gen_.299 = private unnamed_addr constant [14 x i8] c"clk_tbl_gfx3d\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 921, i32 24 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 998, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant [24 x i8] c"mmcc_pxo_pll8_pll2_pll3\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 77, i32 27 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 78, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 79, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 80, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 81, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [25 x i8] c"mmcc_pxo_pll8_pll2_pll15\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 63, i32 27 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 67, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [18 x i8] c"mmcc_msm8960_desc\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2999, i32 34 }
@___asan_gen_.332 = private unnamed_addr constant [18 x i8] c"mmcc_apq8064_desc\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 3007, i32 34 }
@___asan_gen_.335 = private unnamed_addr constant [27 x i8] c"mmcc_msm8960_regmap_config\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2983, i32 35 }
@___asan_gen_.338 = private unnamed_addr constant [18 x i8] c"mmcc_msm8960_clks\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2614, i32 27 }
@___asan_gen_.341 = private unnamed_addr constant [20 x i8] c"mmcc_msm8960_resets\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2720, i32 36 }
@___asan_gen_.344 = private unnamed_addr constant [15 x i8] c"tv_enc_ahb_clk\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2547, i32 26 }
@___asan_gen_.347 = private unnamed_addr constant [12 x i8] c"amp_ahb_clk\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1964, i32 26 }
@___asan_gen_.350 = private unnamed_addr constant [15 x i8] c"dsi2_s_ahb_clk\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2031, i32 26 }
@___asan_gen_.353 = private unnamed_addr constant [14 x i8] c"jpegd_ahb_clk\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2493, i32 26 }
@___asan_gen_.356 = private unnamed_addr constant [15 x i8] c"gfx2d0_ahb_clk\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2390, i32 26 }
@___asan_gen_.359 = private unnamed_addr constant [14 x i8] c"dsi_s_ahb_clk\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2003, i32 26 }
@___asan_gen_.362 = private unnamed_addr constant [15 x i8] c"dsi2_m_ahb_clk\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2018, i32 26 }
@___asan_gen_.365 = private unnamed_addr constant [12 x i8] c"vpe_ahb_clk\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2601, i32 26 }
@___asan_gen_.368 = private unnamed_addr constant [13 x i8] c"smmu_ahb_clk\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2532, i32 26 }
@___asan_gen_.371 = private unnamed_addr constant [15 x i8] c"hdmi_m_ahb_clk\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2435, i32 26 }
@___asan_gen_.374 = private unnamed_addr constant [12 x i8] c"vfe_ahb_clk\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2588, i32 26 }
@___asan_gen_.377 = private unnamed_addr constant [12 x i8] c"rot_ahb_clk\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2519, i32 26 }
@___asan_gen_.380 = private unnamed_addr constant [15 x i8] c"vcodec_ahb_clk\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2573, i32 26 }
@___asan_gen_.383 = private unnamed_addr constant [12 x i8] c"mdp_ahb_clk\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2506, i32 26 }
@___asan_gen_.386 = private unnamed_addr constant [14 x i8] c"dsi_m_ahb_clk\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1990, i32 26 }
@___asan_gen_.389 = private unnamed_addr constant [12 x i8] c"csi_ahb_clk\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1977, i32 26 }
@___asan_gen_.392 = private unnamed_addr constant [18 x i8] c"mmss_imem_ahb_clk\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2478, i32 26 }
@___asan_gen_.395 = private unnamed_addr constant [14 x i8] c"ijpeg_ahb_clk\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2465, i32 26 }
@___asan_gen_.398 = private unnamed_addr constant [15 x i8] c"hdmi_s_ahb_clk\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2450, i32 26 }
@___asan_gen_.401 = private unnamed_addr constant [14 x i8] c"gfx3d_ahb_clk\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2420, i32 26 }
@___asan_gen_.404 = private unnamed_addr constant [15 x i8] c"gfx2d1_ahb_clk\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2405, i32 26 }
@___asan_gen_.407 = private unnamed_addr constant [14 x i8] c"jpegd_axi_clk\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1818, i32 26 }
@___asan_gen_.410 = private unnamed_addr constant [13 x i8] c"gmem_axi_clk\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1775, i32 26 }
@___asan_gen_.413 = private unnamed_addr constant [12 x i8] c"mdp_axi_clk\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1889, i32 26 }
@___asan_gen_.416 = private unnamed_addr constant [18 x i8] c"mmss_imem_axi_clk\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1803, i32 26 }
@___asan_gen_.419 = private unnamed_addr constant [14 x i8] c"ijpeg_axi_clk\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1788, i32 26 }
@___asan_gen_.422 = private unnamed_addr constant [14 x i8] c"gfx3d_axi_clk\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1949, i32 26 }
@___asan_gen_.425 = private unnamed_addr constant [15 x i8] c"vcodec_axi_clk\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1861, i32 26 }
@___asan_gen_.428 = private unnamed_addr constant [12 x i8] c"vfe_axi_clk\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1876, i32 26 }
@___asan_gen_.431 = private unnamed_addr constant [12 x i8] c"vpe_axi_clk\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1934, i32 26 }
@___asan_gen_.434 = private unnamed_addr constant [12 x i8] c"rot_axi_clk\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1904, i32 26 }
@___asan_gen_.437 = private unnamed_addr constant [17 x i8] c"vcodec_axi_a_clk\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1846, i32 26 }
@___asan_gen_.440 = private unnamed_addr constant [17 x i8] c"vcodec_axi_b_clk\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1831, i32 26 }
@___asan_gen_.443 = private unnamed_addr constant [9 x i8] c"csi0_src\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 323, i32 23 }
@___asan_gen_.446 = private unnamed_addr constant [9 x i8] c"csi0_clk\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 355, i32 26 }
@___asan_gen_.449 = private unnamed_addr constant [13 x i8] c"csi0_phy_clk\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 371, i32 26 }
@___asan_gen_.452 = private unnamed_addr constant [9 x i8] c"csi1_src\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 387, i32 23 }
@___asan_gen_.455 = private unnamed_addr constant [9 x i8] c"csi1_clk\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 419, i32 26 }
@___asan_gen_.458 = private unnamed_addr constant [13 x i8] c"csi1_phy_clk\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 435, i32 26 }
@___asan_gen_.461 = private unnamed_addr constant [9 x i8] c"csi2_src\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 451, i32 23 }
@___asan_gen_.464 = private unnamed_addr constant [9 x i8] c"csi2_clk\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 483, i32 26 }
@___asan_gen_.467 = private unnamed_addr constant [13 x i8] c"csi2_phy_clk\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 499, i32 26 }
@___asan_gen_.470 = private unnamed_addr constant [9 x i8] c"dsi1_src\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2046, i32 23 }
@___asan_gen_.473 = private unnamed_addr constant [9 x i8] c"dsi1_clk\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2078, i32 26 }
@___asan_gen_.476 = private unnamed_addr constant [12 x i8] c"csi_pix_clk\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 611, i32 27 }
@___asan_gen_.479 = private unnamed_addr constant [12 x i8] c"csi_rdi_clk\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 645, i32 27 }
@___asan_gen_.482 = private unnamed_addr constant [14 x i8] c"mdp_vsync_clk\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1323, i32 26 }
@___asan_gen_.485 = private unnamed_addr constant [13 x i8] c"hdmi_app_clk\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1552, i32 26 }
@___asan_gen_.488 = private unnamed_addr constant [13 x i8] c"csi_pix1_clk\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 628, i32 27 }
@___asan_gen_.491 = private unnamed_addr constant [13 x i8] c"csi_rdi2_clk\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 679, i32 27 }
@___asan_gen_.494 = private unnamed_addr constant [13 x i8] c"csi_rdi1_clk\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 662, i32 27 }
@___asan_gen_.497 = private unnamed_addr constant [11 x i8] c"gfx2d0_src\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 801, i32 27 }
@___asan_gen_.500 = private unnamed_addr constant [11 x i8] c"gfx2d0_clk\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 845, i32 26 }
@___asan_gen_.503 = private unnamed_addr constant [11 x i8] c"gfx2d1_src\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 861, i32 27 }
@___asan_gen_.506 = private unnamed_addr constant [11 x i8] c"gfx2d1_clk\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 905, i32 26 }
@___asan_gen_.509 = private unnamed_addr constant [10 x i8] c"gfx3d_clk\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1013, i32 26 }
@___asan_gen_.512 = private unnamed_addr constant [10 x i8] c"ijpeg_src\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1131, i32 23 }
@___asan_gen_.515 = private unnamed_addr constant [10 x i8] c"ijpeg_clk\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1163, i32 26 }
@___asan_gen_.518 = private unnamed_addr constant [10 x i8] c"jpegd_src\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1188, i32 23 }
@___asan_gen_.521 = private unnamed_addr constant [10 x i8] c"jpegd_clk\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1211, i32 26 }
@___asan_gen_.524 = private unnamed_addr constant [8 x i8] c"mdp_src\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1247, i32 27 }
@___asan_gen_.527 = private unnamed_addr constant [8 x i8] c"mdp_clk\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1291, i32 26 }
@___asan_gen_.530 = private unnamed_addr constant [12 x i8] c"mdp_lut_clk\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1307, i32 26 }
@___asan_gen_.533 = private unnamed_addr constant [15 x i8] c"dsi2_pixel_src\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2343, i32 23 }
@___asan_gen_.536 = private unnamed_addr constant [15 x i8] c"dsi2_pixel_clk\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2374, i32 26 }
@___asan_gen_.539 = private unnamed_addr constant [9 x i8] c"dsi2_src\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2094, i32 23 }
@___asan_gen_.542 = private unnamed_addr constant [9 x i8] c"dsi2_clk\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2126, i32 26 }
@___asan_gen_.545 = private unnamed_addr constant [14 x i8] c"dsi1_byte_src\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2142, i32 23 }
@___asan_gen_.548 = private unnamed_addr constant [14 x i8] c"dsi1_byte_clk\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2165, i32 26 }
@___asan_gen_.551 = private unnamed_addr constant [14 x i8] c"dsi2_byte_src\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2181, i32 23 }
@___asan_gen_.554 = private unnamed_addr constant [14 x i8] c"dsi2_byte_clk\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2204, i32 26 }
@___asan_gen_.557 = private unnamed_addr constant [13 x i8] c"dsi1_esc_src\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2220, i32 23 }
@___asan_gen_.560 = private unnamed_addr constant [13 x i8] c"dsi1_esc_clk\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2242, i32 26 }
@___asan_gen_.563 = private unnamed_addr constant [13 x i8] c"dsi2_esc_src\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2258, i32 23 }
@___asan_gen_.566 = private unnamed_addr constant [13 x i8] c"dsi2_esc_clk\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2280, i32 26 }
@___asan_gen_.569 = private unnamed_addr constant [8 x i8] c"rot_src\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1356, i32 27 }
@___asan_gen_.572 = private unnamed_addr constant [8 x i8] c"rot_clk\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1390, i32 26 }
@___asan_gen_.575 = private unnamed_addr constant [11 x i8] c"tv_enc_clk\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1456, i32 26 }
@___asan_gen_.578 = private unnamed_addr constant [11 x i8] c"tv_dac_clk\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1472, i32 26 }
@___asan_gen_.581 = private unnamed_addr constant [12 x i8] c"hdmi_tv_clk\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1504, i32 26 }
@___asan_gen_.584 = private unnamed_addr constant [11 x i8] c"mdp_tv_clk\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1488, i32 26 }
@___asan_gen_.587 = private unnamed_addr constant [7 x i8] c"tv_src\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1421, i32 23 }
@___asan_gen_.590 = private unnamed_addr constant [11 x i8] c"vcodec_src\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1580, i32 27 }
@___asan_gen_.593 = private unnamed_addr constant [11 x i8] c"vcodec_clk\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1624, i32 26 }
@___asan_gen_.596 = private unnamed_addr constant [8 x i8] c"vfe_src\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1712, i32 23 }
@___asan_gen_.599 = private unnamed_addr constant [8 x i8] c"vfe_clk\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1743, i32 26 }
@___asan_gen_.602 = private unnamed_addr constant [12 x i8] c"vfe_csi_clk\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1759, i32 26 }
@___asan_gen_.605 = private unnamed_addr constant [8 x i8] c"vpe_src\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1652, i32 23 }
@___asan_gen_.608 = private unnamed_addr constant [8 x i8] c"vpe_clk\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1675, i32 26 }
@___asan_gen_.611 = private unnamed_addr constant [15 x i8] c"dsi1_pixel_src\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2296, i32 23 }
@___asan_gen_.614 = private unnamed_addr constant [15 x i8] c"dsi1_pixel_clk\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2327, i32 26 }
@___asan_gen_.617 = private unnamed_addr constant [12 x i8] c"camclk0_src\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 169, i32 23 }
@___asan_gen_.620 = private unnamed_addr constant [12 x i8] c"camclk0_clk\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 202, i32 26 }
@___asan_gen_.623 = private unnamed_addr constant [12 x i8] c"camclk1_src\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 218, i32 23 }
@___asan_gen_.626 = private unnamed_addr constant [12 x i8] c"camclk1_clk\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 251, i32 26 }
@___asan_gen_.629 = private unnamed_addr constant [12 x i8] c"camclk2_src\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 267, i32 23 }
@___asan_gen_.632 = private unnamed_addr constant [12 x i8] c"camclk2_clk\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 300, i32 26 }
@___asan_gen_.635 = private unnamed_addr constant [16 x i8] c"csiphytimer_src\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 702, i32 23 }
@___asan_gen_.638 = private unnamed_addr constant [18 x i8] c"csiphy2_timer_clk\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 769, i32 26 }
@___asan_gen_.641 = private unnamed_addr constant [18 x i8] c"csiphy1_timer_clk\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 753, i32 26 }
@___asan_gen_.644 = private unnamed_addr constant [18 x i8] c"csiphy0_timer_clk\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 737, i32 26 }
@___asan_gen_.647 = private unnamed_addr constant [5 x i8] c"pll2\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 108, i32 23 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2554, i32 12 }
@___asan_gen_.653 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1971, i32 12 }
@___asan_gen_.657 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2040, i32 12 }
@___asan_gen_.661 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2500, i32 12 }
@___asan_gen_.665 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2399, i32 12 }
@___asan_gen_.669 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2012, i32 12 }
@___asan_gen_.673 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2025, i32 12 }
@___asan_gen_.677 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2608, i32 12 }
@___asan_gen_.681 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2541, i32 12 }
@___asan_gen_.685 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2444, i32 12 }
@___asan_gen_.689 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2595, i32 12 }
@___asan_gen_.693 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2526, i32 12 }
@___asan_gen_.697 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2582, i32 12 }
@___asan_gen_.701 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2513, i32 12 }
@___asan_gen_.705 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1997, i32 12 }
@___asan_gen_.709 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1984, i32 12 }
@___asan_gen_.713 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2487, i32 12 }
@___asan_gen_.717 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2472, i32 12 }
@___asan_gen_.721 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2459, i32 12 }
@___asan_gen_.725 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2429, i32 12 }
@___asan_gen_.729 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2414, i32 12 }
@___asan_gen_.733 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1825, i32 12 }
@___asan_gen_.737 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1782, i32 12 }
@___asan_gen_.741 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1898, i32 12 }
@___asan_gen_.745 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1812, i32 12 }
@___asan_gen_.749 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1797, i32 12 }
@___asan_gen_.753 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1958, i32 12 }
@___asan_gen_.757 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1870, i32 12 }
@___asan_gen_.761 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1883, i32 12 }
@___asan_gen_.765 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1943, i32 12 }
@___asan_gen_.769 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1913, i32 12 }
@___asan_gen_.773 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1855, i32 12 }
@___asan_gen_.777 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1840, i32 12 }
@___asan_gen_.781 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.782 = private unnamed_addr constant [23 x i8] c"mmcc_pxo_pll8_pll2_map\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 44, i32 32 }
@___asan_gen_.785 = private unnamed_addr constant [12 x i8] c"clk_tbl_csi\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 316, i32 24 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 347, i32 12 }
@___asan_gen_.791 = private unnamed_addr constant [19 x i8] c"mmcc_pxo_pll8_pll2\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 50, i32 27 }
@___asan_gen_.794 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 364, i32 12 }
@___asan_gen_.798 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.799 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 380, i32 12 }
@___asan_gen_.803 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 411, i32 12 }
@___asan_gen_.808 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 428, i32 12 }
@___asan_gen_.812 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.813 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 444, i32 12 }
@___asan_gen_.817 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.818 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 475, i32 12 }
@___asan_gen_.822 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 492, i32 12 }
@___asan_gen_.826 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.827 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 508, i32 12 }
@___asan_gen_.831 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.832 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.833 = private unnamed_addr constant [23 x i8] c"mmcc_pxo_dsi2_dsi1_map\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 84, i32 32 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2069, i32 12 }
@___asan_gen_.839 = private unnamed_addr constant [19 x i8] c"mmcc_pxo_dsi2_dsi1\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 90, i32 27 }
@___asan_gen_.842 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 92, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 93, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2085, i32 12 }
@___asan_gen_.852 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.853 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 620, i32 12 }
@___asan_gen_.857 = private unnamed_addr constant [16 x i8] c"clk_ops_pix_rdi\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 597, i32 29 }
@___asan_gen_.860 = private unnamed_addr constant [16 x i8] c"pix_rdi_parents\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 605, i32 27 }
@___asan_gen_.863 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 654, i32 12 }
@___asan_gen_.867 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1330, i32 12 }
@___asan_gen_.871 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1561, i32 12 }
@___asan_gen_.876 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.877 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 637, i32 12 }
@___asan_gen_.881 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 688, i32 12 }
@___asan_gen_.885 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 671, i32 12 }
@___asan_gen_.889 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [14 x i8] c"clk_tbl_gfx2d\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 785, i32 24 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 837, i32 12 }
@___asan_gen_.896 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 852, i32 12 }
@___asan_gen_.900 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.901 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 897, i32 12 }
@___asan_gen_.905 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 912, i32 12 }
@___asan_gen_.909 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.910 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1020, i32 12 }
@___asan_gen_.914 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.915 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.916 = private unnamed_addr constant [14 x i8] c"clk_tbl_ijpeg\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1116, i32 24 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1155, i32 12 }
@___asan_gen_.922 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1170, i32 12 }
@___asan_gen_.926 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.927 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.928 = private unnamed_addr constant [14 x i8] c"clk_tbl_jpegd\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1179, i32 24 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1203, i32 12 }
@___asan_gen_.934 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1218, i32 12 }
@___asan_gen_.938 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.939 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.940 = private unnamed_addr constant [12 x i8] c"clk_tbl_mdp\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1227, i32 24 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1283, i32 12 }
@___asan_gen_.946 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1298, i32 12 }
@___asan_gen_.950 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.951 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1316, i32 12 }
@___asan_gen_.955 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.956 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2366, i32 12 }
@___asan_gen_.960 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2381, i32 12 }
@___asan_gen_.964 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.965 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2117, i32 12 }
@___asan_gen_.969 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2133, i32 12 }
@___asan_gen_.973 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.974 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.975 = private unnamed_addr constant [28 x i8] c"mmcc_pxo_dsi1_dsi2_byte_map\00", align 1
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 96, i32 32 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2156, i32 12 }
@___asan_gen_.981 = private unnamed_addr constant [24 x i8] c"mmcc_pxo_dsi1_dsi2_byte\00", align 1
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 102, i32 27 }
@___asan_gen_.984 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 104, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 105, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2172, i32 12 }
@___asan_gen_.994 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.995 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2195, i32 12 }
@___asan_gen_.999 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2211, i32 12 }
@___asan_gen_.1003 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.1004 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2234, i32 12 }
@___asan_gen_.1008 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2249, i32 12 }
@___asan_gen_.1012 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2272, i32 12 }
@___asan_gen_.1017 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2287, i32 12 }
@___asan_gen_.1021 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.1022 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant [12 x i8] c"clk_tbl_rot\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1338, i32 24 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1382, i32 12 }
@___asan_gen_.1029 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1397, i32 12 }
@___asan_gen_.1033 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.1034 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1465, i32 12 }
@___asan_gen_.1038 = private unnamed_addr constant [12 x i8] c"tv_src_name\00", align 1
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1454, i32 27 }
@___asan_gen_.1041 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1454, i32 45 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1481, i32 12 }
@___asan_gen_.1048 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1513, i32 12 }
@___asan_gen_.1052 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1497, i32 12 }
@___asan_gen_.1056 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant [18 x i8] c"mmcc_pxo_hdmi_map\00", align 1
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1406, i32 32 }
@___asan_gen_.1060 = private unnamed_addr constant [11 x i8] c"clk_tbl_tv\00", align 1
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1416, i32 24 }
@___asan_gen_.1063 = private unnamed_addr constant [14 x i8] c"mmcc_pxo_hdmi\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1411, i32 27 }
@___asan_gen_.1066 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1413, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant [15 x i8] c"clk_tbl_vcodec\00", align 1
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1567, i32 24 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1616, i32 12 }
@___asan_gen_.1076 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1631, i32 12 }
@___asan_gen_.1080 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant [21 x i8] c".compoundliteral.206\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant [12 x i8] c"clk_tbl_vfe\00", align 1
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1691, i32 24 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1735, i32 12 }
@___asan_gen_.1088 = private unnamed_addr constant [21 x i8] c".compoundliteral.208\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1750, i32 12 }
@___asan_gen_.1092 = private unnamed_addr constant [21 x i8] c".compoundliteral.210\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1768, i32 12 }
@___asan_gen_.1097 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.1098 = private unnamed_addr constant [21 x i8] c".compoundliteral.214\00", align 1
@___asan_gen_.1099 = private unnamed_addr constant [12 x i8] c"clk_tbl_vpe\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1640, i32 24 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1667, i32 12 }
@___asan_gen_.1105 = private unnamed_addr constant [21 x i8] c".compoundliteral.216\00", align 1
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1682, i32 12 }
@___asan_gen_.1109 = private unnamed_addr constant [21 x i8] c".compoundliteral.218\00", align 1
@___asan_gen_.1110 = private unnamed_addr constant [21 x i8] c".compoundliteral.219\00", align 1
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2319, i32 12 }
@___asan_gen_.1114 = private unnamed_addr constant [21 x i8] c".compoundliteral.221\00", align 1
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2334, i32 12 }
@___asan_gen_.1118 = private unnamed_addr constant [21 x i8] c".compoundliteral.223\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant [21 x i8] c".compoundliteral.224\00", align 1
@___asan_gen_.1120 = private unnamed_addr constant [12 x i8] c"clk_tbl_cam\00", align 1
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 154, i32 24 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 194, i32 12 }
@___asan_gen_.1126 = private unnamed_addr constant [21 x i8] c".compoundliteral.226\00", align 1
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 209, i32 12 }
@___asan_gen_.1130 = private unnamed_addr constant [21 x i8] c".compoundliteral.228\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant [21 x i8] c".compoundliteral.229\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 243, i32 12 }
@___asan_gen_.1135 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 258, i32 12 }
@___asan_gen_.1139 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.1140 = private unnamed_addr constant [21 x i8] c".compoundliteral.234\00", align 1
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 292, i32 12 }
@___asan_gen_.1144 = private unnamed_addr constant [21 x i8] c".compoundliteral.236\00", align 1
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 307, i32 12 }
@___asan_gen_.1148 = private unnamed_addr constant [21 x i8] c".compoundliteral.238\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.1150 = private unnamed_addr constant [20 x i8] c"clk_tbl_csiphytimer\00", align 1
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 696, i32 24 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 727, i32 12 }
@___asan_gen_.1156 = private unnamed_addr constant [21 x i8] c".compoundliteral.241\00", align 1
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 778, i32 12 }
@___asan_gen_.1160 = private unnamed_addr constant [18 x i8] c"csixphy_timer_src\00", align 1
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 735, i32 27 }
@___asan_gen_.1163 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 762, i32 12 }
@___asan_gen_.1167 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 746, i32 12 }
@___asan_gen_.1171 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.1174 = private unnamed_addr constant [27 x i8] c"mmcc_apq8064_regmap_config\00", align 1
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2991, i32 35 }
@___asan_gen_.1177 = private unnamed_addr constant [18 x i8] c"mmcc_apq8064_clks\00", align 1
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2798, i32 27 }
@___asan_gen_.1180 = private unnamed_addr constant [20 x i8] c"mmcc_apq8064_resets\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2904, i32 36 }
@___asan_gen_.1183 = private unnamed_addr constant [11 x i8] c"rgb_tv_clk\00", align 1
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1520, i32 26 }
@___asan_gen_.1186 = private unnamed_addr constant [11 x i8] c"npl_tv_clk\00", align 1
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1536, i32 26 }
@___asan_gen_.1189 = private unnamed_addr constant [13 x i8] c"vcap_ahb_clk\00", align 1
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2560, i32 26 }
@___asan_gen_.1192 = private unnamed_addr constant [13 x i8] c"vcap_axi_clk\00", align 1
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1919, i32 26 }
@___asan_gen_.1195 = private unnamed_addr constant [9 x i8] c"vcap_src\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1040, i32 27 }
@___asan_gen_.1198 = private unnamed_addr constant [9 x i8] c"vcap_clk\00", align 1
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1084, i32 26 }
@___asan_gen_.1201 = private unnamed_addr constant [13 x i8] c"vcap_npl_clk\00", align 1
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1100, i32 26 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1529, i32 12 }
@___asan_gen_.1207 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1545, i32 12 }
@___asan_gen_.1211 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 2567, i32 12 }
@___asan_gen_.1215 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1928, i32 12 }
@___asan_gen_.1219 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant [13 x i8] c"clk_tbl_vcap\00", align 1
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1029, i32 24 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1076, i32 12 }
@___asan_gen_.1226 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1091, i32 12 }
@___asan_gen_.1230 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1231 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1233 = private constant [35 x i8] c"../drivers/clk/qcom/mmcc-msm8960.c\00", align 1
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1233, i32 1107, i32 12 }
@___asan_gen_.1235 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@llvm.compiler.used = appending global [428 x ptr] [ptr @__UNIQUE_ID_alias174, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_mmcc_msm8960_driver_exit, ptr @__initcall__kmod_mmcc_msm8960__170_3058_mmcc_msm8960_driver_init6, ptr @mmcc_msm8960_driver_exit, ptr @mmcc_msm8960_driver, ptr @.str, ptr @mmcc_msm8960_match_table, ptr @.str.1, ptr @clk_tbl_gfx3d_8064, ptr @gfx3d_src, ptr @gfx3d_8064_init, ptr @mmcc_pxo_pll8_pll2_pll15_map, ptr @pll15, ptr @pll15_config, ptr @mmcc_pxo_pll8_pll2_pll3_map, ptr @clk_tbl_gfx3d, ptr @.str.2, ptr @mmcc_pxo_pll8_pll2_pll3, ptr @.compoundliteral, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mmcc_pxo_pll8_pll2_pll15, ptr @.str.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @mmcc_msm8960_desc, ptr @mmcc_apq8064_desc, ptr @mmcc_msm8960_regmap_config, ptr @mmcc_msm8960_clks, ptr @mmcc_msm8960_resets, ptr @tv_enc_ahb_clk, ptr @amp_ahb_clk, ptr @dsi2_s_ahb_clk, ptr @jpegd_ahb_clk, ptr @gfx2d0_ahb_clk, ptr @dsi_s_ahb_clk, ptr @dsi2_m_ahb_clk, ptr @vpe_ahb_clk, ptr @smmu_ahb_clk, ptr @hdmi_m_ahb_clk, ptr @vfe_ahb_clk, ptr @rot_ahb_clk, ptr @vcodec_ahb_clk, ptr @mdp_ahb_clk, ptr @dsi_m_ahb_clk, ptr @csi_ahb_clk, ptr @mmss_imem_ahb_clk, ptr @ijpeg_ahb_clk, ptr @hdmi_s_ahb_clk, ptr @gfx3d_ahb_clk, ptr @gfx2d1_ahb_clk, ptr @jpegd_axi_clk, ptr @gmem_axi_clk, ptr @mdp_axi_clk, ptr @mmss_imem_axi_clk, ptr @ijpeg_axi_clk, ptr @gfx3d_axi_clk, ptr @vcodec_axi_clk, ptr @vfe_axi_clk, ptr @vpe_axi_clk, ptr @rot_axi_clk, ptr @vcodec_axi_a_clk, ptr @vcodec_axi_b_clk, ptr @csi0_src, ptr @csi0_clk, ptr @csi0_phy_clk, ptr @csi1_src, ptr @csi1_clk, ptr @csi1_phy_clk, ptr @csi2_src, ptr @csi2_clk, ptr @csi2_phy_clk, ptr @dsi1_src, ptr @dsi1_clk, ptr @csi_pix_clk, ptr @csi_rdi_clk, ptr @mdp_vsync_clk, ptr @hdmi_app_clk, ptr @csi_pix1_clk, ptr @csi_rdi2_clk, ptr @csi_rdi1_clk, ptr @gfx2d0_src, ptr @gfx2d0_clk, ptr @gfx2d1_src, ptr @gfx2d1_clk, ptr @gfx3d_clk, ptr @ijpeg_src, ptr @ijpeg_clk, ptr @jpegd_src, ptr @jpegd_clk, ptr @mdp_src, ptr @mdp_clk, ptr @mdp_lut_clk, ptr @dsi2_pixel_src, ptr @dsi2_pixel_clk, ptr @dsi2_src, ptr @dsi2_clk, ptr @dsi1_byte_src, ptr @dsi1_byte_clk, ptr @dsi2_byte_src, ptr @dsi2_byte_clk, ptr @dsi1_esc_src, ptr @dsi1_esc_clk, ptr @dsi2_esc_src, ptr @dsi2_esc_clk, ptr @rot_src, ptr @rot_clk, ptr @tv_enc_clk, ptr @tv_dac_clk, ptr @hdmi_tv_clk, ptr @mdp_tv_clk, ptr @tv_src, ptr @vcodec_src, ptr @vcodec_clk, ptr @vfe_src, ptr @vfe_clk, ptr @vfe_csi_clk, ptr @vpe_src, ptr @vpe_clk, ptr @dsi1_pixel_src, ptr @dsi1_pixel_clk, ptr @camclk0_src, ptr @camclk0_clk, ptr @camclk1_src, ptr @camclk1_clk, ptr @camclk2_src, ptr @camclk2_clk, ptr @csiphytimer_src, ptr @csiphy2_timer_clk, ptr @csiphy1_timer_clk, ptr @csiphy0_timer_clk, ptr @pll2, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @mmcc_pxo_pll8_pll2_map, ptr @clk_tbl_csi, ptr @.str.76, ptr @mmcc_pxo_pll8_pll2, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.compoundliteral.99, ptr @mmcc_pxo_dsi2_dsi1_map, ptr @.str.100, ptr @mmcc_pxo_dsi2_dsi1, ptr @.compoundliteral.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @clk_ops_pix_rdi, ptr @pix_rdi_parents, ptr @.compoundliteral.108, ptr @.str.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @clk_tbl_gfx2d, ptr @.str.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.compoundliteral.135, ptr @clk_tbl_ijpeg, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.compoundliteral.140, ptr @clk_tbl_jpegd, ptr @.str.141, ptr @.compoundliteral.142, ptr @.str.143, ptr @.compoundliteral.144, ptr @.compoundliteral.145, ptr @clk_tbl_mdp, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.compoundliteral.150, ptr @.str.151, ptr @.compoundliteral.152, ptr @.compoundliteral.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.str.159, ptr @.compoundliteral.160, ptr @.str.161, ptr @.compoundliteral.162, ptr @.compoundliteral.163, ptr @mmcc_pxo_dsi1_dsi2_byte_map, ptr @.str.164, ptr @mmcc_pxo_dsi1_dsi2_byte, ptr @.compoundliteral.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @.str.171, ptr @.compoundliteral.172, ptr @.str.173, ptr @.compoundliteral.174, ptr @.compoundliteral.175, ptr @.str.176, ptr @.compoundliteral.177, ptr @.str.178, ptr @.compoundliteral.179, ptr @.compoundliteral.180, ptr @.str.181, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.compoundliteral.185, ptr @clk_tbl_rot, ptr @.str.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.compoundliteral.189, ptr @.compoundliteral.190, ptr @.str.191, ptr @tv_src_name, ptr @.compoundliteral.192, ptr @.str.193, ptr @.str.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @.compoundliteral.199, ptr @mmcc_pxo_hdmi_map, ptr @clk_tbl_tv, ptr @mmcc_pxo_hdmi, ptr @.compoundliteral.200, ptr @.str.201, ptr @clk_tbl_vcodec, ptr @.str.202, ptr @.compoundliteral.203, ptr @.str.204, ptr @.compoundliteral.205, ptr @.compoundliteral.206, ptr @clk_tbl_vfe, ptr @.str.207, ptr @.compoundliteral.208, ptr @.str.209, ptr @.compoundliteral.210, ptr @.compoundliteral.211, ptr @.str.212, ptr @.compoundliteral.213, ptr @.compoundliteral.214, ptr @clk_tbl_vpe, ptr @.str.215, ptr @.compoundliteral.216, ptr @.str.217, ptr @.compoundliteral.218, ptr @.compoundliteral.219, ptr @.str.220, ptr @.compoundliteral.221, ptr @.str.222, ptr @.compoundliteral.223, ptr @.compoundliteral.224, ptr @clk_tbl_cam, ptr @.str.225, ptr @.compoundliteral.226, ptr @.str.227, ptr @.compoundliteral.228, ptr @.compoundliteral.229, ptr @.str.230, ptr @.compoundliteral.231, ptr @.str.232, ptr @.compoundliteral.233, ptr @.compoundliteral.234, ptr @.str.235, ptr @.compoundliteral.236, ptr @.str.237, ptr @.compoundliteral.238, ptr @.compoundliteral.239, ptr @clk_tbl_csiphytimer, ptr @.str.240, ptr @.compoundliteral.241, ptr @.str.242, ptr @csixphy_timer_src, ptr @.compoundliteral.243, ptr @.str.244, ptr @.compoundliteral.245, ptr @.str.246, ptr @.compoundliteral.247, ptr @.compoundliteral.248, ptr @.compoundliteral.249, ptr @mmcc_apq8064_regmap_config, ptr @mmcc_apq8064_clks, ptr @mmcc_apq8064_resets, ptr @rgb_tv_clk, ptr @npl_tv_clk, ptr @vcap_ahb_clk, ptr @vcap_axi_clk, ptr @vcap_src, ptr @vcap_clk, ptr @vcap_npl_clk, ptr @.str.250, ptr @.compoundliteral.251, ptr @.str.252, ptr @.compoundliteral.253, ptr @.str.254, ptr @.compoundliteral.255, ptr @.str.256, ptr @.compoundliteral.257, ptr @clk_tbl_vcap, ptr @.str.258, ptr @.compoundliteral.259, ptr @.str.260, ptr @.compoundliteral.261, ptr @.compoundliteral.262, ptr @.str.263, ptr @.compoundliteral.264, ptr @.compoundliteral.265], section "llvm.metadata"
@0 = internal global [421 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_msm8960_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_msm8960_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_gfx3d_8064 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx3d_src to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx3d_8064_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_pll8_pll2_pll15_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll15_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_pll8_pll2_pll3_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_gfx3d to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_pll8_pll2_pll3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_pll8_pll2_pll15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_msm8960_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_apq8064_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_msm8960_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_msm8960_clks to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_msm8960_resets to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tv_enc_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi2_s_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpegd_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx2d0_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_s_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi2_m_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smmu_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_m_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rot_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcodec_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_m_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmss_imem_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ijpeg_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_s_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx3d_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx2d1_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpegd_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmem_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmss_imem_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ijpeg_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx3d_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcodec_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rot_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcodec_axi_a_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcodec_axi_b_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi0_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi0_phy_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi1_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi1_phy_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_phy_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi1_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_pix_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_rdi_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp_vsync_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_app_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_pix1_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_rdi2_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_rdi1_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx2d0_src to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx2d0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx2d1_src to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx2d1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx3d_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ijpeg_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ijpeg_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpegd_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpegd_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp_src to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp_lut_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi2_pixel_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi2_pixel_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi2_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi2_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi1_byte_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi1_byte_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi2_byte_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi2_byte_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi1_esc_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi1_esc_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi2_esc_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi2_esc_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rot_src to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rot_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tv_enc_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tv_dac_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_tv_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp_tv_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tv_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcodec_src to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcodec_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_csi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi1_pixel_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi1_pixel_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camclk0_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camclk0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camclk1_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camclk1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camclk2_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camclk2_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphytimer_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy2_timer_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy1_timer_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy0_timer_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_pll8_pll2_map to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_csi to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_pll8_pll2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_dsi2_dsi1_map to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_dsi2_dsi1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_ops_pix_rdi to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pix_rdi_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_gfx2d to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_ijpeg to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_jpegd to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_mdp to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_dsi1_dsi2_byte_map to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_dsi1_dsi2_byte to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_rot to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tv_src_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_hdmi_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_tv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_pxo_hdmi to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_vcodec to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.206 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_vfe to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.208 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.210 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.214 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_vpe to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.216 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.218 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.219 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.221 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.223 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.224 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_cam to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.226 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.228 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.229 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.234 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.236 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.238 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_csiphytimer to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.241 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csixphy_timer_src to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_apq8064_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_apq8064_clks to i32), i32 508, i32 608, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcc_apq8064_resets to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb_tv_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npl_tv_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcap_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcap_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcap_src to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcap_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcap_npl_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tbl_vcap to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmcc_msm8960_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmcc_msm8960_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmcc_msm8960_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmcc_msm8960_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmcc_msm8960_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @mmcc_msm8960_match_table, ptr noundef %dev1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store ptr @clk_tbl_gfx3d_8064, ptr getelementptr inbounds (%struct.clk_dyn_rcg, ptr @gfx3d_src, i32 0, i32 7), align 4
  store ptr @gfx3d_8064_init, ptr getelementptr inbounds (%struct.clk_dyn_rcg, ptr @gfx3d_src, i32 0, i32 8, i32 0, i32 2), align 4
  store ptr @mmcc_pxo_pll8_pll2_pll15_map, ptr getelementptr inbounds (%struct.clk_dyn_rcg, ptr @gfx3d_src, i32 0, i32 6, i32 0, i32 1), align 4
  store ptr @mmcc_pxo_pll8_pll2_pll15_map, ptr getelementptr inbounds (%struct.clk_dyn_rcg, ptr @gfx3d_src, i32 0, i32 6, i32 1, i32 1), align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call7 = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef %3) #4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_pll_configure_sr(ptr noundef nonnull @pll15, ptr noundef %call7, ptr noundef nonnull @pll15_config, i1 noundef zeroext false) #4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call13 = tail call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef %6, ptr noundef %call7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then9 ], [ %call13, %if.end11 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_pll_configure_sr(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pix_rdi_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %call1 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp63 = icmp sgt i32 %call1, 0
  br i1 %cmp63, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call2 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.064) #4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call2, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.err_crit_edge

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %1) #4
  br label %err

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %index)
  %cmp4 = icmp eq i8 %index, 2
  br i1 %cmp4, label %if.then6, label %for.end.if.end7_crit_edge

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %s2_mask = getelementptr i8, ptr %hw, i32 -4
  %2 = ptrtoint ptr %s2_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s2_mask, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.end.if.end7_crit_edge
  %val.0 = phi i32 [ %3, %if.then6 ], [ 0, %for.end.if.end7_crit_edge ]
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %s2_reg = getelementptr i8, ptr %hw, i32 -8
  %6 = ptrtoint ptr %s2_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s2_reg, align 4
  %s2_mask8 = getelementptr i8, ptr %hw, i32 -4
  %8 = ptrtoint ptr %s2_mask8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s2_mask8, align 4
  %call.i54 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cmp11 = icmp eq i8 %index, 1
  br i1 %cmp11, label %if.then13, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %s_mask = getelementptr i8, ptr %hw, i32 -12
  %11 = ptrtoint ptr %s_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_mask, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end7.if.end15_crit_edge
  %val.1 = phi i32 [ %12, %if.then13 ], [ 0, %if.end7.if.end15_crit_edge ]
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %s_mask18 = getelementptr i8, ptr %hw, i32 -12
  %17 = ptrtoint ptr %s_mask18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_mask18, align 4
  %call.i55 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #4
  br label %err

err:                                              ; preds = %if.end15, %if.then3.i, %for.body.err_crit_edge
  %i.060 = phi i32 [ %i.0.lcssa, %if.end15 ], [ %i.064, %if.then3.i ], [ %i.064, %for.body.err_crit_edge ]
  %ret.1 = phi i32 [ 0, %if.end15 ], [ %call1.i, %if.then3.i ], [ %call.i, %for.body.err_crit_edge ]
  %i.165 = add i32 %i.060, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.165)
  %cmp2166 = icmp sgt i32 %i.165, -1
  br i1 %cmp2166, label %err.for.body23_crit_edge, label %err.cleanup30_crit_edge

err.cleanup30_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup30

err.for.body23_crit_edge:                         ; preds = %err
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %err.for.body23_crit_edge
  %i.167 = phi i32 [ %i.1, %for.body23.for.body23_crit_edge ], [ %i.165, %err.for.body23_crit_edge ]
  %call25 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.167) #4
  %clk26 = getelementptr inbounds %struct.clk_hw, ptr %call25, i32 0, i32 1
  %20 = ptrtoint ptr %clk26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk26, align 4
  tail call void @clk_disable(ptr noundef %21) #4
  tail call void @clk_unprepare(ptr noundef %21) #4
  %i.1 = add nsw i32 %i.167, -1
  %cmp21.not = icmp eq i32 %i.167, 0
  br i1 %cmp21.not, label %for.body23.cleanup30_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body23

for.body23.cleanup30_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup30

cleanup30:                                        ; preds = %for.body23.cleanup30_crit_edge, %err.cleanup30_crit_edge
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pix_rdi_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !569
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %s2_reg = getelementptr i8, ptr %hw, i32 -8
  %3 = ptrtoint ptr %s2_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s2_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %s2_mask = getelementptr i8, ptr %hw, i32 -4
  %7 = ptrtoint ptr %s2_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s2_mask, align 4
  %and = and i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  %call4 = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %val) #4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %s_mask = getelementptr i8, ptr %hw, i32 -12
  %15 = ptrtoint ptr %s_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_mask, align 4
  %and5 = and i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp ne i32 %and5, 0
  %. = zext i1 %tobool6.not to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 2, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 421)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 421)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558}
!llvm.module.flags = !{!560, !561, !562, !563, !564, !565, !566, !567}
!llvm.ident = !{!568}

!0 = !{ptr @__initcall__kmod_mmcc_msm8960__170_3058_mmcc_msm8960_driver_init6, !1, !"__initcall__kmod_mmcc_msm8960__170_3058_mmcc_msm8960_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 3058, i32 1}
!2 = !{ptr @__exitcall_mmcc_msm8960_driver_exit, !1, !"__exitcall_mmcc_msm8960_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 3060, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 3061, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias174, !9, !"__UNIQUE_ID_alias174", i1 false, i1 false}
!9 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 3062, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 3053, i32 11}
!12 = !{ptr @mmcc_msm8960_driver, !13, !"mmcc_msm8960_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 3050, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 3033, i32 50}
!16 = !{ptr @clk_tbl_gfx3d_8064, !17, !"clk_tbl_gfx3d_8064", i1 false, i1 false}
!17 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 941, i32 24}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 998, i32 12}
!20 = !{ptr @gfx3d_src, !21, !"gfx3d_src", i1 false, i1 false}
!21 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 962, i32 27}
!22 = !{ptr @mmcc_pxo_pll8_pll2_pll3_map, !23, !"mmcc_pxo_pll8_pll2_pll3_map", i1 false, i1 false}
!23 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 56, i32 32}
!24 = !{ptr @clk_tbl_gfx3d, !25, !"clk_tbl_gfx3d", i1 false, i1 false}
!25 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 921, i32 24}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 78, i32 2}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 79, i32 2}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 80, i32 2}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 81, i32 2}
!34 = !{ptr @mmcc_pxo_pll8_pll2_pll3, !35, !"mmcc_pxo_pll8_pll2_pll3", i1 false, i1 false}
!35 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 77, i32 27}
!36 = !{ptr @gfx3d_8064_init, !37, !"gfx3d_8064_init", i1 false, i1 false}
!37 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1006, i32 35}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 67, i32 2}
!40 = !{ptr @mmcc_pxo_pll8_pll2_pll15, !41, !"mmcc_pxo_pll8_pll2_pll15", i1 false, i1 false}
!41 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 63, i32 27}
!42 = !{ptr @mmcc_pxo_pll8_pll2_pll15_map, !43, !"mmcc_pxo_pll8_pll2_pll15_map", i1 false, i1 false}
!43 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 70, i32 32}
!44 = !{ptr @pll15, !45, !"pll15", i1 false, i1 false}
!45 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 124, i32 23}
!46 = !{ptr @pll15_config, !47, !"pll15_config", i1 false, i1 false}
!47 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 140, i32 32}
!48 = !{ptr @mmcc_msm8960_match_table, !49, !"mmcc_msm8960_match_table", i1 false, i1 false}
!49 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 3015, i32 34}
!50 = !{ptr @mmcc_msm8960_desc, !51, !"mmcc_msm8960_desc", i1 false, i1 false}
!51 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2999, i32 34}
!52 = !{ptr @mmcc_msm8960_regmap_config, !53, !"mmcc_msm8960_regmap_config", i1 false, i1 false}
!53 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2983, i32 35}
!54 = !{ptr @mmcc_msm8960_clks, !55, !"mmcc_msm8960_clks", i1 false, i1 false}
!55 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2614, i32 27}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2554, i32 12}
!58 = !{ptr @tv_enc_ahb_clk, !59, !"tv_enc_ahb_clk", i1 false, i1 false}
!59 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2547, i32 26}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1971, i32 12}
!62 = !{ptr @amp_ahb_clk, !63, !"amp_ahb_clk", i1 false, i1 false}
!63 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1964, i32 26}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2040, i32 12}
!66 = !{ptr @dsi2_s_ahb_clk, !67, !"dsi2_s_ahb_clk", i1 false, i1 false}
!67 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2031, i32 26}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2500, i32 12}
!70 = !{ptr @jpegd_ahb_clk, !71, !"jpegd_ahb_clk", i1 false, i1 false}
!71 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2493, i32 26}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2399, i32 12}
!74 = !{ptr @gfx2d0_ahb_clk, !75, !"gfx2d0_ahb_clk", i1 false, i1 false}
!75 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2390, i32 26}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2012, i32 12}
!78 = !{ptr @dsi_s_ahb_clk, !79, !"dsi_s_ahb_clk", i1 false, i1 false}
!79 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2003, i32 26}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2025, i32 12}
!82 = !{ptr @dsi2_m_ahb_clk, !83, !"dsi2_m_ahb_clk", i1 false, i1 false}
!83 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2018, i32 26}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2608, i32 12}
!86 = !{ptr @vpe_ahb_clk, !87, !"vpe_ahb_clk", i1 false, i1 false}
!87 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2601, i32 26}
!88 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2541, i32 12}
!90 = !{ptr @smmu_ahb_clk, !91, !"smmu_ahb_clk", i1 false, i1 false}
!91 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2532, i32 26}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2444, i32 12}
!94 = !{ptr @hdmi_m_ahb_clk, !95, !"hdmi_m_ahb_clk", i1 false, i1 false}
!95 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2435, i32 26}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2595, i32 12}
!98 = !{ptr @vfe_ahb_clk, !99, !"vfe_ahb_clk", i1 false, i1 false}
!99 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2588, i32 26}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2526, i32 12}
!102 = !{ptr @rot_ahb_clk, !103, !"rot_ahb_clk", i1 false, i1 false}
!103 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2519, i32 26}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2582, i32 12}
!106 = !{ptr @vcodec_ahb_clk, !107, !"vcodec_ahb_clk", i1 false, i1 false}
!107 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2573, i32 26}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2513, i32 12}
!110 = !{ptr @mdp_ahb_clk, !111, !"mdp_ahb_clk", i1 false, i1 false}
!111 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2506, i32 26}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1997, i32 12}
!114 = !{ptr @dsi_m_ahb_clk, !115, !"dsi_m_ahb_clk", i1 false, i1 false}
!115 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1990, i32 26}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1984, i32 12}
!118 = !{ptr @csi_ahb_clk, !119, !"csi_ahb_clk", i1 false, i1 false}
!119 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1977, i32 26}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2487, i32 12}
!122 = !{ptr @mmss_imem_ahb_clk, !123, !"mmss_imem_ahb_clk", i1 false, i1 false}
!123 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2478, i32 26}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2472, i32 12}
!126 = !{ptr @ijpeg_ahb_clk, !127, !"ijpeg_ahb_clk", i1 false, i1 false}
!127 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2465, i32 26}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2459, i32 12}
!130 = !{ptr @hdmi_s_ahb_clk, !131, !"hdmi_s_ahb_clk", i1 false, i1 false}
!131 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2450, i32 26}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2429, i32 12}
!134 = !{ptr @gfx3d_ahb_clk, !135, !"gfx3d_ahb_clk", i1 false, i1 false}
!135 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2420, i32 26}
!136 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2414, i32 12}
!138 = !{ptr @gfx2d1_ahb_clk, !139, !"gfx2d1_ahb_clk", i1 false, i1 false}
!139 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2405, i32 26}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1825, i32 12}
!142 = !{ptr @jpegd_axi_clk, !143, !"jpegd_axi_clk", i1 false, i1 false}
!143 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1818, i32 26}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1782, i32 12}
!146 = !{ptr @gmem_axi_clk, !147, !"gmem_axi_clk", i1 false, i1 false}
!147 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1775, i32 26}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1898, i32 12}
!150 = !{ptr @mdp_axi_clk, !151, !"mdp_axi_clk", i1 false, i1 false}
!151 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1889, i32 26}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1812, i32 12}
!154 = !{ptr @mmss_imem_axi_clk, !155, !"mmss_imem_axi_clk", i1 false, i1 false}
!155 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1803, i32 26}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1797, i32 12}
!158 = !{ptr @ijpeg_axi_clk, !159, !"ijpeg_axi_clk", i1 false, i1 false}
!159 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1788, i32 26}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1958, i32 12}
!162 = !{ptr @gfx3d_axi_clk, !163, !"gfx3d_axi_clk", i1 false, i1 false}
!163 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1949, i32 26}
!164 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1870, i32 12}
!166 = !{ptr @vcodec_axi_clk, !167, !"vcodec_axi_clk", i1 false, i1 false}
!167 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1861, i32 26}
!168 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1883, i32 12}
!170 = !{ptr @vfe_axi_clk, !171, !"vfe_axi_clk", i1 false, i1 false}
!171 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1876, i32 26}
!172 = !{ptr @.str.68, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1943, i32 12}
!174 = !{ptr @vpe_axi_clk, !175, !"vpe_axi_clk", i1 false, i1 false}
!175 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1934, i32 26}
!176 = !{ptr @.str.70, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1913, i32 12}
!178 = !{ptr @rot_axi_clk, !179, !"rot_axi_clk", i1 false, i1 false}
!179 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1904, i32 26}
!180 = !{ptr @.str.72, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1855, i32 12}
!182 = !{ptr @vcodec_axi_a_clk, !183, !"vcodec_axi_a_clk", i1 false, i1 false}
!183 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1846, i32 26}
!184 = !{ptr @.str.74, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1840, i32 12}
!186 = !{ptr @vcodec_axi_b_clk, !187, !"vcodec_axi_b_clk", i1 false, i1 false}
!187 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1831, i32 26}
!188 = !{ptr @.str.76, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 347, i32 12}
!190 = !{ptr @csi0_src, !191, !"csi0_src", i1 false, i1 false}
!191 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 323, i32 23}
!192 = !{ptr @mmcc_pxo_pll8_pll2_map, !193, !"mmcc_pxo_pll8_pll2_map", i1 false, i1 false}
!193 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 44, i32 32}
!194 = !{ptr @clk_tbl_csi, !195, !"clk_tbl_csi", i1 false, i1 false}
!195 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 316, i32 24}
!196 = !{ptr @mmcc_pxo_pll8_pll2, !197, !"mmcc_pxo_pll8_pll2", i1 false, i1 false}
!197 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 50, i32 27}
!198 = !{ptr @.str.78, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 364, i32 12}
!200 = !{ptr @csi0_clk, !201, !"csi0_clk", i1 false, i1 false}
!201 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 355, i32 26}
!202 = !{ptr @.str.81, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 380, i32 12}
!204 = !{ptr @csi0_phy_clk, !205, !"csi0_phy_clk", i1 false, i1 false}
!205 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 371, i32 26}
!206 = !{ptr @.str.84, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 411, i32 12}
!208 = !{ptr @csi1_src, !209, !"csi1_src", i1 false, i1 false}
!209 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 387, i32 23}
!210 = !{ptr @.str.86, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 428, i32 12}
!212 = !{ptr @csi1_clk, !213, !"csi1_clk", i1 false, i1 false}
!213 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 419, i32 26}
!214 = !{ptr @.str.89, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 444, i32 12}
!216 = !{ptr @csi1_phy_clk, !217, !"csi1_phy_clk", i1 false, i1 false}
!217 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 435, i32 26}
!218 = !{ptr @.str.92, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 475, i32 12}
!220 = !{ptr @csi2_src, !221, !"csi2_src", i1 false, i1 false}
!221 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 451, i32 23}
!222 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 492, i32 12}
!224 = !{ptr @csi2_clk, !225, !"csi2_clk", i1 false, i1 false}
!225 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 483, i32 26}
!226 = !{ptr @.str.97, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 508, i32 12}
!228 = !{ptr @csi2_phy_clk, !229, !"csi2_phy_clk", i1 false, i1 false}
!229 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 499, i32 26}
!230 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2069, i32 12}
!232 = !{ptr @dsi1_src, !233, !"dsi1_src", i1 false, i1 false}
!233 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2046, i32 23}
!234 = !{ptr @mmcc_pxo_dsi2_dsi1_map, !235, !"mmcc_pxo_dsi2_dsi1_map", i1 false, i1 false}
!235 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 84, i32 32}
!236 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 92, i32 2}
!238 = !{ptr @.str.103, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 93, i32 2}
!240 = !{ptr @mmcc_pxo_dsi2_dsi1, !241, !"mmcc_pxo_dsi2_dsi1", i1 false, i1 false}
!241 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 90, i32 27}
!242 = !{ptr @.str.104, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2085, i32 12}
!244 = !{ptr @dsi1_clk, !245, !"dsi1_clk", i1 false, i1 false}
!245 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2078, i32 26}
!246 = !{ptr @.str.107, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 620, i32 12}
!248 = !{ptr @csi_pix_clk, !249, !"csi_pix_clk", i1 false, i1 false}
!249 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 611, i32 27}
!250 = !{ptr @clk_ops_pix_rdi, !251, !"clk_ops_pix_rdi", i1 false, i1 false}
!251 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 597, i32 29}
!252 = !{ptr @pix_rdi_parents, !253, !"pix_rdi_parents", i1 false, i1 false}
!253 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 605, i32 27}
!254 = !{ptr @.str.109, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 654, i32 12}
!256 = !{ptr @csi_rdi_clk, !257, !"csi_rdi_clk", i1 false, i1 false}
!257 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 645, i32 27}
!258 = !{ptr @.str.111, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1330, i32 12}
!260 = !{ptr @mdp_vsync_clk, !261, !"mdp_vsync_clk", i1 false, i1 false}
!261 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1323, i32 26}
!262 = !{ptr @.str.114, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1561, i32 12}
!264 = !{ptr @hdmi_app_clk, !265, !"hdmi_app_clk", i1 false, i1 false}
!265 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1552, i32 26}
!266 = !{ptr @.str.117, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 637, i32 12}
!268 = !{ptr @csi_pix1_clk, !269, !"csi_pix1_clk", i1 false, i1 false}
!269 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 628, i32 27}
!270 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 688, i32 12}
!272 = !{ptr @csi_rdi2_clk, !273, !"csi_rdi2_clk", i1 false, i1 false}
!273 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 679, i32 27}
!274 = !{ptr @.str.121, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 671, i32 12}
!276 = !{ptr @csi_rdi1_clk, !277, !"csi_rdi1_clk", i1 false, i1 false}
!277 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 662, i32 27}
!278 = !{ptr @.str.123, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 837, i32 12}
!280 = !{ptr @gfx2d0_src, !281, !"gfx2d0_src", i1 false, i1 false}
!281 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 801, i32 27}
!282 = !{ptr @clk_tbl_gfx2d, !283, !"clk_tbl_gfx2d", i1 false, i1 false}
!283 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 785, i32 24}
!284 = !{ptr @.str.125, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 852, i32 12}
!286 = !{ptr @gfx2d0_clk, !287, !"gfx2d0_clk", i1 false, i1 false}
!287 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 845, i32 26}
!288 = !{ptr @.str.128, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 897, i32 12}
!290 = !{ptr @gfx2d1_src, !291, !"gfx2d1_src", i1 false, i1 false}
!291 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 861, i32 27}
!292 = !{ptr @.str.130, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 912, i32 12}
!294 = !{ptr @gfx2d1_clk, !295, !"gfx2d1_clk", i1 false, i1 false}
!295 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 905, i32 26}
!296 = !{ptr @.str.133, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1020, i32 12}
!298 = !{ptr @gfx3d_clk, !299, !"gfx3d_clk", i1 false, i1 false}
!299 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1013, i32 26}
!300 = !{ptr @.str.136, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1155, i32 12}
!302 = !{ptr @ijpeg_src, !303, !"ijpeg_src", i1 false, i1 false}
!303 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1131, i32 23}
!304 = !{ptr @clk_tbl_ijpeg, !305, !"clk_tbl_ijpeg", i1 false, i1 false}
!305 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1116, i32 24}
!306 = !{ptr @.str.138, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1170, i32 12}
!308 = !{ptr @ijpeg_clk, !309, !"ijpeg_clk", i1 false, i1 false}
!309 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1163, i32 26}
!310 = !{ptr @.str.141, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1203, i32 12}
!312 = !{ptr @jpegd_src, !313, !"jpegd_src", i1 false, i1 false}
!313 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1188, i32 23}
!314 = !{ptr @clk_tbl_jpegd, !315, !"clk_tbl_jpegd", i1 false, i1 false}
!315 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1179, i32 24}
!316 = !{ptr @.str.143, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1218, i32 12}
!318 = !{ptr @jpegd_clk, !319, !"jpegd_clk", i1 false, i1 false}
!319 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1211, i32 26}
!320 = !{ptr @.str.146, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1283, i32 12}
!322 = !{ptr @mdp_src, !323, !"mdp_src", i1 false, i1 false}
!323 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1247, i32 27}
!324 = !{ptr @clk_tbl_mdp, !325, !"clk_tbl_mdp", i1 false, i1 false}
!325 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1227, i32 24}
!326 = !{ptr @.str.148, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1298, i32 12}
!328 = !{ptr @mdp_clk, !329, !"mdp_clk", i1 false, i1 false}
!329 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1291, i32 26}
!330 = !{ptr @.str.151, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1316, i32 12}
!332 = !{ptr @mdp_lut_clk, !333, !"mdp_lut_clk", i1 false, i1 false}
!333 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1307, i32 26}
!334 = !{ptr @.str.154, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2366, i32 12}
!336 = !{ptr @dsi2_pixel_src, !337, !"dsi2_pixel_src", i1 false, i1 false}
!337 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2343, i32 23}
!338 = !{ptr @.str.156, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2381, i32 12}
!340 = !{ptr @dsi2_pixel_clk, !341, !"dsi2_pixel_clk", i1 false, i1 false}
!341 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2374, i32 26}
!342 = !{ptr @.str.159, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2117, i32 12}
!344 = !{ptr @dsi2_src, !345, !"dsi2_src", i1 false, i1 false}
!345 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2094, i32 23}
!346 = !{ptr @.str.161, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2133, i32 12}
!348 = !{ptr @dsi2_clk, !349, !"dsi2_clk", i1 false, i1 false}
!349 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2126, i32 26}
!350 = !{ptr @.str.164, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2156, i32 12}
!352 = !{ptr @dsi1_byte_src, !353, !"dsi1_byte_src", i1 false, i1 false}
!353 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2142, i32 23}
!354 = !{ptr @mmcc_pxo_dsi1_dsi2_byte_map, !355, !"mmcc_pxo_dsi1_dsi2_byte_map", i1 false, i1 false}
!355 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 96, i32 32}
!356 = !{ptr @.str.166, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 104, i32 2}
!358 = !{ptr @.str.167, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 105, i32 2}
!360 = !{ptr @mmcc_pxo_dsi1_dsi2_byte, !361, !"mmcc_pxo_dsi1_dsi2_byte", i1 false, i1 false}
!361 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 102, i32 27}
!362 = !{ptr @.str.168, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2172, i32 12}
!364 = !{ptr @dsi1_byte_clk, !365, !"dsi1_byte_clk", i1 false, i1 false}
!365 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2165, i32 26}
!366 = !{ptr @.str.171, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2195, i32 12}
!368 = !{ptr @dsi2_byte_src, !369, !"dsi2_byte_src", i1 false, i1 false}
!369 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2181, i32 23}
!370 = !{ptr @.str.173, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2211, i32 12}
!372 = !{ptr @dsi2_byte_clk, !373, !"dsi2_byte_clk", i1 false, i1 false}
!373 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2204, i32 26}
!374 = !{ptr @.str.176, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2234, i32 12}
!376 = !{ptr @dsi1_esc_src, !377, !"dsi1_esc_src", i1 false, i1 false}
!377 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2220, i32 23}
!378 = !{ptr @.str.178, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2249, i32 12}
!380 = !{ptr @dsi1_esc_clk, !381, !"dsi1_esc_clk", i1 false, i1 false}
!381 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2242, i32 26}
!382 = !{ptr @.str.181, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2272, i32 12}
!384 = !{ptr @dsi2_esc_src, !385, !"dsi2_esc_src", i1 false, i1 false}
!385 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2258, i32 23}
!386 = !{ptr @.str.183, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2287, i32 12}
!388 = !{ptr @dsi2_esc_clk, !389, !"dsi2_esc_clk", i1 false, i1 false}
!389 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2280, i32 26}
!390 = !{ptr @.str.186, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1382, i32 12}
!392 = !{ptr @rot_src, !393, !"rot_src", i1 false, i1 false}
!393 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1356, i32 27}
!394 = !{ptr @clk_tbl_rot, !395, !"clk_tbl_rot", i1 false, i1 false}
!395 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1338, i32 24}
!396 = !{ptr @.str.188, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1397, i32 12}
!398 = !{ptr @rot_clk, !399, !"rot_clk", i1 false, i1 false}
!399 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1390, i32 26}
!400 = !{ptr @.str.191, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1465, i32 12}
!402 = !{ptr @tv_enc_clk, !403, !"tv_enc_clk", i1 false, i1 false}
!403 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1456, i32 26}
!404 = !{ptr @.str.193, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1454, i32 45}
!406 = !{ptr @tv_src_name, !407, !"tv_src_name", i1 false, i1 false}
!407 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1454, i32 27}
!408 = !{ptr @.str.194, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1481, i32 12}
!410 = !{ptr @tv_dac_clk, !411, !"tv_dac_clk", i1 false, i1 false}
!411 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1472, i32 26}
!412 = !{ptr @.str.196, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1513, i32 12}
!414 = !{ptr @hdmi_tv_clk, !415, !"hdmi_tv_clk", i1 false, i1 false}
!415 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1504, i32 26}
!416 = !{ptr @.str.198, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1497, i32 12}
!418 = !{ptr @mdp_tv_clk, !419, !"mdp_tv_clk", i1 false, i1 false}
!419 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1488, i32 26}
!420 = !{ptr @tv_src, !421, !"tv_src", i1 false, i1 false}
!421 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1421, i32 23}
!422 = !{ptr @mmcc_pxo_hdmi_map, !423, !"mmcc_pxo_hdmi_map", i1 false, i1 false}
!423 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1406, i32 32}
!424 = !{ptr @clk_tbl_tv, !425, !"clk_tbl_tv", i1 false, i1 false}
!425 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1416, i32 24}
!426 = !{ptr @.str.201, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1413, i32 2}
!428 = !{ptr @mmcc_pxo_hdmi, !429, !"mmcc_pxo_hdmi", i1 false, i1 false}
!429 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1411, i32 27}
!430 = !{ptr @.str.202, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1616, i32 12}
!432 = !{ptr @vcodec_src, !433, !"vcodec_src", i1 false, i1 false}
!433 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1580, i32 27}
!434 = !{ptr @clk_tbl_vcodec, !435, !"clk_tbl_vcodec", i1 false, i1 false}
!435 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1567, i32 24}
!436 = !{ptr @.str.204, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1631, i32 12}
!438 = !{ptr @vcodec_clk, !439, !"vcodec_clk", i1 false, i1 false}
!439 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1624, i32 26}
!440 = !{ptr @.str.207, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1735, i32 12}
!442 = !{ptr @vfe_src, !443, !"vfe_src", i1 false, i1 false}
!443 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1712, i32 23}
!444 = !{ptr @clk_tbl_vfe, !445, !"clk_tbl_vfe", i1 false, i1 false}
!445 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1691, i32 24}
!446 = !{ptr @.str.209, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1750, i32 12}
!448 = !{ptr @vfe_clk, !449, !"vfe_clk", i1 false, i1 false}
!449 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1743, i32 26}
!450 = !{ptr @.str.212, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1768, i32 12}
!452 = !{ptr @vfe_csi_clk, !453, !"vfe_csi_clk", i1 false, i1 false}
!453 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1759, i32 26}
!454 = !{ptr @.str.215, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1667, i32 12}
!456 = !{ptr @vpe_src, !457, !"vpe_src", i1 false, i1 false}
!457 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1652, i32 23}
!458 = !{ptr @clk_tbl_vpe, !459, !"clk_tbl_vpe", i1 false, i1 false}
!459 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1640, i32 24}
!460 = !{ptr @.str.217, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1682, i32 12}
!462 = !{ptr @vpe_clk, !463, !"vpe_clk", i1 false, i1 false}
!463 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1675, i32 26}
!464 = !{ptr @.str.220, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2319, i32 12}
!466 = !{ptr @dsi1_pixel_src, !467, !"dsi1_pixel_src", i1 false, i1 false}
!467 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2296, i32 23}
!468 = !{ptr @.str.222, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2334, i32 12}
!470 = !{ptr @dsi1_pixel_clk, !471, !"dsi1_pixel_clk", i1 false, i1 false}
!471 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2327, i32 26}
!472 = !{ptr @.str.225, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 194, i32 12}
!474 = !{ptr @camclk0_src, !475, !"camclk0_src", i1 false, i1 false}
!475 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 169, i32 23}
!476 = !{ptr @clk_tbl_cam, !477, !"clk_tbl_cam", i1 false, i1 false}
!477 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 154, i32 24}
!478 = !{ptr @.str.227, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 209, i32 12}
!480 = !{ptr @camclk0_clk, !481, !"camclk0_clk", i1 false, i1 false}
!481 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 202, i32 26}
!482 = !{ptr @.str.230, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 243, i32 12}
!484 = !{ptr @camclk1_src, !485, !"camclk1_src", i1 false, i1 false}
!485 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 218, i32 23}
!486 = !{ptr @.str.232, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 258, i32 12}
!488 = !{ptr @camclk1_clk, !489, !"camclk1_clk", i1 false, i1 false}
!489 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 251, i32 26}
!490 = !{ptr @.str.235, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 292, i32 12}
!492 = !{ptr @camclk2_src, !493, !"camclk2_src", i1 false, i1 false}
!493 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 267, i32 23}
!494 = !{ptr @.str.237, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 307, i32 12}
!496 = !{ptr @camclk2_clk, !497, !"camclk2_clk", i1 false, i1 false}
!497 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 300, i32 26}
!498 = !{ptr @.str.240, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 727, i32 12}
!500 = !{ptr @csiphytimer_src, !501, !"csiphytimer_src", i1 false, i1 false}
!501 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 702, i32 23}
!502 = !{ptr @clk_tbl_csiphytimer, !503, !"clk_tbl_csiphytimer", i1 false, i1 false}
!503 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 696, i32 24}
!504 = !{ptr @.str.242, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 778, i32 12}
!506 = !{ptr @csiphy2_timer_clk, !507, !"csiphy2_timer_clk", i1 false, i1 false}
!507 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 769, i32 26}
!508 = !{ptr @csixphy_timer_src, !509, !"csixphy_timer_src", i1 false, i1 false}
!509 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 735, i32 27}
!510 = !{ptr @.str.244, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 762, i32 12}
!512 = !{ptr @csiphy1_timer_clk, !513, !"csiphy1_timer_clk", i1 false, i1 false}
!513 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 753, i32 26}
!514 = !{ptr @.str.246, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 746, i32 12}
!516 = !{ptr @csiphy0_timer_clk, !517, !"csiphy0_timer_clk", i1 false, i1 false}
!517 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 737, i32 26}
!518 = !{ptr @pll2, !519, !"pll2", i1 false, i1 false}
!519 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 108, i32 23}
!520 = !{ptr @mmcc_msm8960_resets, !521, !"mmcc_msm8960_resets", i1 false, i1 false}
!521 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2720, i32 36}
!522 = !{ptr @mmcc_apq8064_desc, !523, !"mmcc_apq8064_desc", i1 false, i1 false}
!523 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 3007, i32 34}
!524 = !{ptr @mmcc_apq8064_regmap_config, !525, !"mmcc_apq8064_regmap_config", i1 false, i1 false}
!525 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2991, i32 35}
!526 = !{ptr @mmcc_apq8064_clks, !527, !"mmcc_apq8064_clks", i1 false, i1 false}
!527 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2798, i32 27}
!528 = !{ptr @.str.250, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1529, i32 12}
!530 = !{ptr @rgb_tv_clk, !531, !"rgb_tv_clk", i1 false, i1 false}
!531 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1520, i32 26}
!532 = !{ptr @.str.252, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1545, i32 12}
!534 = !{ptr @npl_tv_clk, !535, !"npl_tv_clk", i1 false, i1 false}
!535 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1536, i32 26}
!536 = !{ptr @.str.254, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2567, i32 12}
!538 = !{ptr @vcap_ahb_clk, !539, !"vcap_ahb_clk", i1 false, i1 false}
!539 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2560, i32 26}
!540 = !{ptr @.str.256, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1928, i32 12}
!542 = !{ptr @vcap_axi_clk, !543, !"vcap_axi_clk", i1 false, i1 false}
!543 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1919, i32 26}
!544 = !{ptr @.str.258, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1076, i32 12}
!546 = !{ptr @vcap_src, !547, !"vcap_src", i1 false, i1 false}
!547 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1040, i32 27}
!548 = !{ptr @clk_tbl_vcap, !549, !"clk_tbl_vcap", i1 false, i1 false}
!549 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1029, i32 24}
!550 = !{ptr @.str.260, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1091, i32 12}
!552 = !{ptr @vcap_clk, !553, !"vcap_clk", i1 false, i1 false}
!553 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1084, i32 26}
!554 = !{ptr @.str.263, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1107, i32 12}
!556 = !{ptr @vcap_npl_clk, !557, !"vcap_npl_clk", i1 false, i1 false}
!557 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 1100, i32 26}
!558 = !{ptr @mmcc_apq8064_resets, !559, !"mmcc_apq8064_resets", i1 false, i1 false}
!559 = !{!"../drivers/clk/qcom/mmcc-msm8960.c", i32 2904, i32 36}
!560 = !{i32 1, !"wchar_size", i32 2}
!561 = !{i32 1, !"min_enum_size", i32 4}
!562 = !{i32 8, !"branch-target-enforcement", i32 0}
!563 = !{i32 8, !"sign-return-address", i32 0}
!564 = !{i32 8, !"sign-return-address-all", i32 0}
!565 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!566 = !{i32 7, !"uwtable", i32 1}
!567 = !{i32 7, !"frame-pointer", i32 2}
!568 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!569 = !{!"auto-init"}
