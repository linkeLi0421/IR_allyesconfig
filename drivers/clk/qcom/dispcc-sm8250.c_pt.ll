; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/dispcc-sm8250.c_pt.bc'
source_filename = "../drivers/clk/qcom/dispcc-sm8250.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.alpha_pll_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_alpha_pll = type { i32, ptr, ptr, i32, i8, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.qcom_reset_map = type { i32, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_regmap_div = type { i32, i32, i32, %struct.clk_regmap }
%struct.parent_map = type { i8, i8 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.gdsc = type { %struct.generic_pm_domain, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i8, i16, ptr, ptr, i32, ptr, ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.pll_vco = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_dispcc_sm8250__172_1303_disp_cc_sm8250_init4 = internal global ptr @disp_cc_sm8250_init, section ".initcall4.init", align 4
@disp_cc_sm8250_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @disp_cc_sm8250_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @disp_cc_sm8250_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_disp_cc_sm8250_exit = internal global ptr @disp_cc_sm8250_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description173 = internal constant [51 x i8] c"dispcc_sm8250.description=QTI DISPCC SM8250 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [50 x i8] c"dispcc_sm8250.file=drivers/clk/qcom/dispcc-sm8250\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [29 x i8] c"dispcc_sm8250.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disp_cc-sm8250\00", [17 x i8] zeroinitializer }, align 32
@disp_cc_sm8250_match_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-dispcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-dispcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-dispcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@disp_cc_sm8250_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @disp_cc_sm8250_regmap_config, ptr @disp_cc_sm8250_clocks, i32 57, ptr @disp_cc_sm8250_resets, i32 2, ptr @disp_cc_sm8250_gdscs, i32 1, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,sc8180x-dispcc\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,sm8150-dispcc\00", [45 x i8] zeroinitializer }, align 32
@disp_cc_pll0_config = internal global { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 71, i32 57344, i32 0, i32 541611673, i32 8801, i32 848980380, i32 0, i32 2053, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@clk_alpha_pll_trion_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_pll0_init = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.161, ptr @clk_alpha_pll_lucid_ops, ptr null, ptr @.compoundliteral.162, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_pll1_config = internal global { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 31, i32 16384, i32 0, i32 541611673, i32 8801, i32 848980380, i32 0, i32 2053, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@disp_cc_pll1_init = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.163, ptr @clk_alpha_pll_lucid_ops, ptr null, ptr @.compoundliteral.164, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_pll0 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 0, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 68), ptr @vco_table, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @disp_cc_pll0_init }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@disp_cc_pll1 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 4096, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 68), ptr @vco_table, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @disp_cc_pll1_init }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@disp_cc_sm8250_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 65536, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@disp_cc_sm8250_clocks = internal global { [57 x ptr], [60 x i8] } { [57 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_div_clk_src, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_div_clk_src, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux1_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux1_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link1_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link1_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link1_div_clk_src, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link1_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_div_clk_src, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel1_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel1_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel2_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel2_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_esc1_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_esc1_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_lut_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_non_gdsc_ahb_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk1_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk1_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_rscc_ahb_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_rscc_vsync_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_pll0, i64 20), ptr getelementptr (i8, ptr @disp_cc_pll1, i64 20), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_aux_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_aux_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_gtc_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_gtc_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_pixel_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_pixel_clk_src, i64 16)], [60 x i8] zeroinitializer }, align 32
@disp_cc_sm8250_resets = internal constant { [2 x %struct.qcom_reset_map], [16 x i8] } { [2 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 8192, i8 0 }, %struct.qcom_reset_map { i32 16384, i8 0 }], [16 x i8] zeroinitializer }, align 32
@disp_cc_sm8250_gdscs = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @mdss_gdsc], [28 x i8] zeroinitializer }, align 32
@disp_cc_mdss_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8320, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.4 }, ptr null, i32 8320, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_ahb_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8892, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_3, ptr @ftbl_disp_cc_mdss_ahb_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.6 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8232, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 }, ptr null, i32 8232, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8464, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_2, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 8488, i32 0, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8236, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.20 }, ptr null, i32 8236, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8240, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 }, ptr null, i32 8240, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8492, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_2, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte1_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 8516, i32 0, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte1_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8244, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 }, ptr null, i32 8244, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_aux1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8296, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 }, ptr null, i32 8296, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_aux1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8768, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr @ftbl_disp_cc_mdss_byte0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.36 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_aux_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8276, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.39 }, ptr null, i32 8276, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_aux_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8668, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr @ftbl_disp_cc_mdss_byte0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8284, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 }, ptr null, i32 8284, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8716, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link1_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 8740, i32 0, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.55 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link1_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8288, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.58 }, ptr null, i32 8288, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8256, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 }, ptr null, i32 8256, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8568, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.63 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 8592, i32 0, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.66 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8260, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 }, ptr null, i32 8260, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8272, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.72 }, ptr null, i32 8272, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8644, i8 16, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.74 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel2_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8280, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 }, ptr null, i32 8280, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel2_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8692, i8 16, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8268, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 }, ptr null, i32 8268, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8620, i8 16, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.84 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8248, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.87 }, ptr null, i32 8248, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8520, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_2, ptr @ftbl_disp_cc_mdss_byte0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.89 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8252, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.92 }, ptr null, i32 8252, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8544, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_2, ptr @ftbl_disp_cc_mdss_byte0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.94 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8204, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.97 }, ptr null, i32 8204, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8392, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_5, ptr @ftbl_disp_cc_mdss_mdp_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.99 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_lut_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8220, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.102 }, ptr null, i32 8220, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_non_gdsc_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16388, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.105 }, ptr null, i32 16388, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8196, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.108 }, ptr null, i32 8196, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8344, i8 8, i8 5, i8 0, ptr @disp_cc_parent_map_6, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.110 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8200, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.115 }, ptr null, i32 8200, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8368, i8 8, i8 5, i8 0, ptr @disp_cc_parent_map_6, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.117 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rot_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8212, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.120 }, ptr null, i32 8212, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rot_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8416, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_5, ptr @ftbl_disp_cc_mdss_rot_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rscc_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16396, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.125 }, ptr null, i32 16396, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rscc_vsync_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16392, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.128 }, ptr null, i32 16392, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_vsync_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8228, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.131 }, ptr null, i32 8228, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_vsync_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8440, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr @ftbl_disp_cc_mdss_byte0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.133 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_aux_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8312, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.136 }, ptr null, i32 8312, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_aux_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8844, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr @ftbl_disp_cc_mdss_byte0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.138 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_gtc_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8316, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.141 }, ptr null, i32 8316, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_gtc_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8868, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_7, ptr @ftbl_disp_cc_mdss_byte0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.143 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_link_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8304, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.146 }, ptr null, i32 8304, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_link_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8816, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_4, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.148 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_link_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8308, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.153 }, ptr null, i32 8308, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_pixel_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8300, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.156 }, ptr null, i32 8300, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_pixel_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8792, i8 16, i8 5, i8 0, ptr @disp_cc_parent_map_4, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.158 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_ahb_clk\00", [43 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.3, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_3 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 3, i8 4 }], [28 x i8] zeroinitializer }, align 32
@ftbl_disp_cc_mdss_ahb_clk_src = internal constant { [4 x %struct.freq_tbl], [48 x i8] } { [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 37500000, i8 3, i8 31, i16 0, i16 0 }, %struct.freq_tbl { i32 75000000, i8 3, i8 15, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_ahb_clk_src\00", [39 x i8] zeroinitializer }, align 32
@clk_rcg2_shared_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_3 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @disp_cc_pll1, i64 20), ptr null, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.5, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_3, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_byte0_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.8, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.9, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_2 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 12, i8 1 }, %struct.parent_map { i8 14, i8 2 }], [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_byte0_clk_src\00", [37 x i8] zeroinitializer }, align 32
@clk_byte2_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_2 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.13, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.14, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.11, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_2, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsi0_phy_pll_out_byteclk\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsi1_phy_pll_out_byteclk\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_byte0_div_clk_src\00", [33 x i8] zeroinitializer }, align 32
@clk_regmap_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.15, ptr @clk_regmap_div_ops, ptr null, ptr null, ptr @.compoundliteral.16, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_byte0_intf_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.19, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_byte1_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.21, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.22, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_byte1_clk_src\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_2, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_byte1_div_clk_src\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @clk_regmap_div_ops, ptr null, ptr null, ptr @.compoundliteral.27, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_byte1_intf_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.29, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.30, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_dp_aux1_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.32, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.33, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_1 = internal constant { [1 x %struct.parent_map], [30 x i8] } zeroinitializer, align 32
@ftbl_disp_cc_mdss_byte0_clk_src = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disp_cc_mdss_dp_aux1_clk_src\00", [35 x i8] zeroinitializer }, align 32
@clk_rcg2_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_1 = internal constant { [1 x %struct.clk_parent_data], [16 x i8] } { [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.35, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disp_cc_mdss_dp_aux_clk\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.37, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.38, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_dp_aux_clk_src\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.40, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_dp_link1_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.42, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.43, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_0 = internal constant { [7 x %struct.parent_map], [18 x i8] } { [7 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 4, i8 1 }, %struct.parent_map { i8 5, i8 2 }, %struct.parent_map { i8 6, i8 3 }, %struct.parent_map { i8 7, i8 4 }, %struct.parent_map { i8 8, i8 5 }, %struct.parent_map { i8 9, i8 6 }], [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_dp_link1_clk_src\00", [34 x i8] zeroinitializer }, align 32
@disp_cc_parent_data_0 = internal constant { [7 x %struct.clk_parent_data], [48 x i8] } { [7 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.47, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.48, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.49, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.50, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.51, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.52, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.45, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 7, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dp_phy_pll_link_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dp_phy_pll_vco_div_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dptx1_phy_pll_link_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dptx1_phy_pll_vco_div_clk\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dptx2_phy_pll_link_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dptx2_phy_pll_vco_div_clk\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"disp_cc_mdss_dp_link1_div_clk_src\00", [62 x i8] zeroinitializer }, align 32
@clk_regmap_div_ro_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.54 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.53, ptr @clk_regmap_div_ro_ops, ptr null, ptr null, ptr @.compoundliteral.54, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_dp_link1_intf_clk\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link1_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.56, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.57, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_dp_link_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.59, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.60, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disp_cc_mdss_dp_link_clk_src\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.62, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 7, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"disp_cc_mdss_dp_link_div_clk_src\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.64, ptr @clk_regmap_div_ro_ops, ptr null, ptr null, ptr @.compoundliteral.65, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_dp_link_intf_clk\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.67, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.68, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_dp_pixel1_clk\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.70, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.71, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_dp_pixel1_clk_src\00", [33 x i8] zeroinitializer }, align 32
@clk_dp_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.74 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.73, ptr @clk_dp_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 7, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_dp_pixel2_clk\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel2_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.75, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.76, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_dp_pixel2_clk_src\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.78, ptr @clk_dp_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 7, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_dp_pixel_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.80, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.81, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_dp_pixel_clk_src\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.83, ptr @clk_dp_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 7, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disp_cc_mdss_esc0_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.85, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.86, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_esc0_clk_src\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.88, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_2, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disp_cc_mdss_esc1_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_esc1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.90, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.91, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_esc1_clk_src\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.93, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_2, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_mdp_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.95, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.96, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_5 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 1 }, %struct.parent_map { i8 3, i8 4 }], [26 x i8] zeroinitializer }, align 32
@ftbl_disp_cc_mdss_mdp_clk_src = internal constant { [9 x %struct.freq_tbl], [52 x i8] } { [9 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 85714286, i8 3, i8 13, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 3, i8 11, i16 0, i16 0 }, %struct.freq_tbl { i32 150000000, i8 3, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 3, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 300000000, i8 3, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 345000000, i8 1, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 460000000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_mdp_clk_src\00", [39 x i8] zeroinitializer }, align 32
@disp_cc_parent_data_5 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @disp_cc_pll0, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @disp_cc_pll1, i64 20), ptr null, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.98, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_5, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_mdp_lut_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.100, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.101, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_non_gdsc_ahb_clk\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.103, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.104, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_pclk0_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.106, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.107, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_6 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 13, i8 1 }, %struct.parent_map { i8 15, i8 2 }], [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_pclk0_clk_src\00", [37 x i8] zeroinitializer }, align 32
@clk_pixel_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_6 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.111, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.112, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.109, ptr @clk_pixel_ops, ptr null, ptr @disp_cc_parent_data_6, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsi0_phy_pll_out_dsiclk\00", [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsi1_phy_pll_out_dsiclk\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_pclk1_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_pclk1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.113, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.114, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_pclk1_clk_src\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.116, ptr @clk_pixel_ops, ptr null, ptr @disp_cc_parent_data_6, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_rot_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.118, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.119, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ftbl_disp_cc_mdss_rot_clk_src = internal constant { [6 x %struct.freq_tbl], [56 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 3, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 300000000, i8 3, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 345000000, i8 1, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 460000000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_rot_clk_src\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.121, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_5, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_rscc_ahb_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.123, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.124, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_rscc_vsync_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.126, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.127, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_vsync_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.129, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.130, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_vsync_clk_src\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.132, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_edp_aux_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_edp_aux_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.134, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.135, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disp_cc_mdss_edp_aux_clk_src\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.137, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_edp_gtc_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_edp_gtc_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.139, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.140, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_7 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 3, i8 4 }], [28 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disp_cc_mdss_edp_gtc_clk_src\00", [35 x i8] zeroinitializer }, align 32
@disp_cc_parent_data_7 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @disp_cc_pll1, i64 20), ptr null, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.142, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_7, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_edp_link_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.144, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.145, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_4 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 10, i8 1 }, %struct.parent_map { i8 11, i8 2 }], [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_edp_link_clk_src\00", [34 x i8] zeroinitializer }, align 32
@disp_cc_parent_data_4 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.149, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.150, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.147, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_4, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edp_phy_pll_link_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"edp_phy_pll_vco_div_clk\00", [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_edp_link_intf_clk\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.151, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.152, i8 1, i32 64 }, [36 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_edp_pixel_clk\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_edp_pixel_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.154, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.155, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_edp_pixel_clk_src\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.157, ptr @clk_dp_ops, ptr null, ptr @disp_cc_parent_data_4, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mdss_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.159, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 12288, i32 0, i32 0, ptr null, i32 0, i32 2, i32 2, i32 15, i8 5, i16 4, ptr null, ptr null, i32 0, ptr @.str.160, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mdss_gdsc\00", [22 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmcx\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disp_cc_pll0\00", [19 x i8] zeroinitializer }, align 32
@clk_alpha_pll_lucid_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.162 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disp_cc_pll1\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@vco_table = internal global { [1 x %struct.pll_vco], [20 x i8] } { [1 x %struct.pll_vco] [%struct.pll_vco { i32 249600000, i32 2000000000, i32 0 }], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"disp_cc_sm8250_driver\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1291, i32 31 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1294, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant [27 x i8] c"disp_cc_sm8250_match_table\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1227, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c"disp_cc_sm8250_desc\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1217, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1263, i32 49 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1264, i32 49 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"disp_cc_pll0_config\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 46, i32 32 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"disp_cc_pll0_init\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 57, i32 29 }
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c"disp_cc_pll1_config\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 74, i32 32 }
@___asan_gen_.192 = private unnamed_addr constant [18 x i8] c"disp_cc_pll1_init\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 85, i32 29 }
@___asan_gen_.195 = private unnamed_addr constant [13 x i8] c"disp_cc_pll0\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 66, i32 29 }
@___asan_gen_.198 = private unnamed_addr constant [13 x i8] c"disp_cc_pll1\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 94, i32 29 }
@___asan_gen_.201 = private unnamed_addr constant [29 x i8] c"disp_cc_sm8250_regmap_config\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1209, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant [22 x i8] c"disp_cc_sm8250_clocks\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1140, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant [22 x i8] c"disp_cc_sm8250_resets\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1200, i32 36 }
@___asan_gen_.210 = private unnamed_addr constant [21 x i8] c"disp_cc_sm8250_gdscs\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1205, i32 21 }
@___asan_gen_.213 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_ahb_clk\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 680, i32 26 }
@___asan_gen_.216 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_ahb_clk_src\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 207, i32 24 }
@___asan_gen_.219 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_byte0_clk\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 698, i32 26 }
@___asan_gen_.222 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_byte0_clk_src\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 227, i32 24 }
@___asan_gen_.225 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_byte0_div_clk_src\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 621, i32 30 }
@___asan_gen_.228 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_byte0_intf_clk\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 716, i32 26 }
@___asan_gen_.231 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_byte1_clk\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 734, i32 26 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_byte1_clk_src\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 241, i32 24 }
@___asan_gen_.237 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_byte1_div_clk_src\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 636, i32 30 }
@___asan_gen_.240 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_byte1_intf_clk\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 752, i32 26 }
@___asan_gen_.243 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_dp_aux1_clk\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 770, i32 26 }
@___asan_gen_.246 = private unnamed_addr constant [29 x i8] c"disp_cc_mdss_dp_aux1_clk_src\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 255, i32 24 }
@___asan_gen_.249 = private unnamed_addr constant [24 x i8] c"disp_cc_mdss_dp_aux_clk\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 788, i32 26 }
@___asan_gen_.252 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_dp_aux_clk_src\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 270, i32 24 }
@___asan_gen_.255 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_dp_link1_clk\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 806, i32 26 }
@___asan_gen_.258 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_dp_link1_clk_src\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 285, i32 24 }
@___asan_gen_.261 = private unnamed_addr constant [34 x i8] c"disp_cc_mdss_dp_link1_div_clk_src\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 651, i32 30 }
@___asan_gen_.264 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_dp_link1_intf_clk\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 824, i32 26 }
@___asan_gen_.267 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_dp_link_clk\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 841, i32 26 }
@___asan_gen_.270 = private unnamed_addr constant [29 x i8] c"disp_cc_mdss_dp_link_clk_src\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 298, i32 24 }
@___asan_gen_.273 = private unnamed_addr constant [33 x i8] c"disp_cc_mdss_dp_link_div_clk_src\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 666, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_dp_link_intf_clk\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 859, i32 26 }
@___asan_gen_.279 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_dp_pixel1_clk\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 876, i32 26 }
@___asan_gen_.282 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_dp_pixel1_clk_src\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 311, i32 24 }
@___asan_gen_.285 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_dp_pixel2_clk\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 894, i32 26 }
@___asan_gen_.288 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_dp_pixel2_clk_src\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 324, i32 24 }
@___asan_gen_.291 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_dp_pixel_clk\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 912, i32 26 }
@___asan_gen_.294 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_dp_pixel_clk_src\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 337, i32 24 }
@___asan_gen_.297 = private unnamed_addr constant [22 x i8] c"disp_cc_mdss_esc0_clk\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 930, i32 26 }
@___asan_gen_.300 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_esc0_clk_src\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 497, i32 24 }
@___asan_gen_.303 = private unnamed_addr constant [22 x i8] c"disp_cc_mdss_esc1_clk\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 948, i32 26 }
@___asan_gen_.306 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_esc1_clk_src\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 512, i32 24 }
@___asan_gen_.309 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_mdp_clk\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 966, i32 26 }
@___asan_gen_.312 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_mdp_clk_src\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 539, i32 24 }
@___asan_gen_.315 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_mdp_lut_clk\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 984, i32 26 }
@___asan_gen_.318 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_non_gdsc_ahb_clk\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1001, i32 26 }
@___asan_gen_.321 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_pclk0_clk\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1019, i32 26 }
@___asan_gen_.324 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_pclk0_clk_src\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 554, i32 24 }
@___asan_gen_.327 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_pclk1_clk\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1037, i32 26 }
@___asan_gen_.330 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_pclk1_clk_src\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 568, i32 24 }
@___asan_gen_.333 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_rot_clk\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1055, i32 26 }
@___asan_gen_.336 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_rot_clk_src\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 591, i32 24 }
@___asan_gen_.339 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_rscc_ahb_clk\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1073, i32 26 }
@___asan_gen_.342 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_rscc_vsync_clk\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1091, i32 26 }
@___asan_gen_.345 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_vsync_clk\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1109, i32 26 }
@___asan_gen_.348 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_vsync_clk_src\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 606, i32 24 }
@___asan_gen_.351 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_edp_aux_clk\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 407, i32 26 }
@___asan_gen_.354 = private unnamed_addr constant [29 x i8] c"disp_cc_mdss_edp_aux_clk_src\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 350, i32 24 }
@___asan_gen_.357 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_edp_gtc_clk\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 425, i32 26 }
@___asan_gen_.360 = private unnamed_addr constant [29 x i8] c"disp_cc_mdss_edp_gtc_clk_src\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 365, i32 24 }
@___asan_gen_.363 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_edp_link_clk\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 443, i32 26 }
@___asan_gen_.366 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_edp_link_clk_src\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 380, i32 24 }
@___asan_gen_.369 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_edp_link_intf_clk\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 461, i32 26 }
@___asan_gen_.372 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_edp_pixel_clk\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 479, i32 26 }
@___asan_gen_.375 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_edp_pixel_clk_src\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 394, i32 24 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 687, i32 12 }
@___asan_gen_.381 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_3\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 142, i32 32 }
@___asan_gen_.386 = private unnamed_addr constant [30 x i8] c"ftbl_disp_cc_mdss_ahb_clk_src\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 200, i32 30 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 214, i32 11 }
@___asan_gen_.392 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_3\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 147, i32 37 }
@___asan_gen_.395 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 148, i32 15 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 705, i32 12 }
@___asan_gen_.402 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_2\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 130, i32 32 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 233, i32 11 }
@___asan_gen_.410 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_2\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 136, i32 37 }
@___asan_gen_.413 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 138, i32 15 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 139, i32 15 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 626, i32 11 }
@___asan_gen_.423 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 723, i32 12 }
@___asan_gen_.428 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 741, i32 12 }
@___asan_gen_.433 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 247, i32 11 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 641, i32 11 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 759, i32 12 }
@___asan_gen_.447 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 777, i32 12 }
@___asan_gen_.452 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_1\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 122, i32 32 }
@___asan_gen_.457 = private unnamed_addr constant [32 x i8] c"ftbl_disp_cc_mdss_byte0_clk_src\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 222, i32 30 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 262, i32 11 }
@___asan_gen_.463 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_1\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 126, i32 37 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 795, i32 12 }
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 277, i32 11 }
@___asan_gen_.475 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 813, i32 12 }
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_0\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 102, i32 32 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 291, i32 11 }
@___asan_gen_.487 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_0\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 112, i32 37 }
@___asan_gen_.490 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 114, i32 15 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 115, i32 15 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 116, i32 15 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 117, i32 15 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 118, i32 15 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 119, i32 15 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 656, i32 11 }
@___asan_gen_.512 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 831, i32 12 }
@___asan_gen_.517 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 848, i32 12 }
@___asan_gen_.522 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 304, i32 11 }
@___asan_gen_.527 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 671, i32 11 }
@___asan_gen_.531 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 866, i32 12 }
@___asan_gen_.536 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 883, i32 12 }
@___asan_gen_.541 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 317, i32 11 }
@___asan_gen_.546 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 901, i32 12 }
@___asan_gen_.550 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 330, i32 11 }
@___asan_gen_.555 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 919, i32 12 }
@___asan_gen_.559 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 343, i32 11 }
@___asan_gen_.564 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 937, i32 12 }
@___asan_gen_.568 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.569 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 504, i32 11 }
@___asan_gen_.573 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 955, i32 12 }
@___asan_gen_.577 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 519, i32 11 }
@___asan_gen_.582 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 973, i32 12 }
@___asan_gen_.586 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_5\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 164, i32 32 }
@___asan_gen_.591 = private unnamed_addr constant [30 x i8] c"ftbl_disp_cc_mdss_mdp_clk_src\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 527, i32 30 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 546, i32 11 }
@___asan_gen_.597 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_5\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 170, i32 37 }
@___asan_gen_.600 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 991, i32 12 }
@___asan_gen_.604 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1008, i32 12 }
@___asan_gen_.609 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.610 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1026, i32 12 }
@___asan_gen_.614 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.616 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_6\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 176, i32 32 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 560, i32 11 }
@___asan_gen_.622 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_6\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 182, i32 37 }
@___asan_gen_.625 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 184, i32 15 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 185, i32 15 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1044, i32 12 }
@___asan_gen_.635 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 574, i32 11 }
@___asan_gen_.640 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1062, i32 12 }
@___asan_gen_.644 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.645 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.646 = private unnamed_addr constant [30 x i8] c"ftbl_disp_cc_mdss_rot_clk_src\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 582, i32 30 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 598, i32 11 }
@___asan_gen_.652 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1080, i32 12 }
@___asan_gen_.656 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1098, i32 12 }
@___asan_gen_.661 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.662 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1116, i32 12 }
@___asan_gen_.666 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.667 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 613, i32 11 }
@___asan_gen_.671 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 414, i32 12 }
@___asan_gen_.675 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.676 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 357, i32 11 }
@___asan_gen_.680 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 432, i32 12 }
@___asan_gen_.684 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.685 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.686 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_7\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 188, i32 32 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 372, i32 11 }
@___asan_gen_.692 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_7\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 194, i32 37 }
@___asan_gen_.695 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 450, i32 12 }
@___asan_gen_.699 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.700 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.701 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_4\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 152, i32 32 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 386, i32 11 }
@___asan_gen_.707 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_4\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 158, i32 37 }
@___asan_gen_.710 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 160, i32 15 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 161, i32 15 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 468, i32 12 }
@___asan_gen_.720 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.721 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 486, i32 12 }
@___asan_gen_.725 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 400, i32 11 }
@___asan_gen_.730 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.731 = private unnamed_addr constant [10 x i8] c"mdss_gdsc\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1127, i32 20 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1133, i32 11 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1137, i32 12 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 58, i32 10 }
@___asan_gen_.743 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.744 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 86, i32 10 }
@___asan_gen_.747 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.748 = private unnamed_addr constant [10 x i8] c"vco_table\00", align 1
@___asan_gen_.749 = private constant [36 x i8] c"../drivers/clk/qcom/dispcc-sm8250.c\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 42, i32 23 }
@llvm.compiler.used = appending global [262 x ptr] [ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_disp_cc_sm8250_exit, ptr @__initcall__kmod_dispcc_sm8250__172_1303_disp_cc_sm8250_init4, ptr @disp_cc_sm8250_exit, ptr @disp_cc_sm8250_driver, ptr @.str, ptr @disp_cc_sm8250_match_table, ptr @disp_cc_sm8250_desc, ptr @.str.1, ptr @.str.2, ptr @disp_cc_pll0_config, ptr @disp_cc_pll0_init, ptr @disp_cc_pll1_config, ptr @disp_cc_pll1_init, ptr @disp_cc_pll0, ptr @disp_cc_pll1, ptr @disp_cc_sm8250_regmap_config, ptr @disp_cc_sm8250_clocks, ptr @disp_cc_sm8250_resets, ptr @disp_cc_sm8250_gdscs, ptr @disp_cc_mdss_ahb_clk, ptr @disp_cc_mdss_ahb_clk_src, ptr @disp_cc_mdss_byte0_clk, ptr @disp_cc_mdss_byte0_clk_src, ptr @disp_cc_mdss_byte0_div_clk_src, ptr @disp_cc_mdss_byte0_intf_clk, ptr @disp_cc_mdss_byte1_clk, ptr @disp_cc_mdss_byte1_clk_src, ptr @disp_cc_mdss_byte1_div_clk_src, ptr @disp_cc_mdss_byte1_intf_clk, ptr @disp_cc_mdss_dp_aux1_clk, ptr @disp_cc_mdss_dp_aux1_clk_src, ptr @disp_cc_mdss_dp_aux_clk, ptr @disp_cc_mdss_dp_aux_clk_src, ptr @disp_cc_mdss_dp_link1_clk, ptr @disp_cc_mdss_dp_link1_clk_src, ptr @disp_cc_mdss_dp_link1_div_clk_src, ptr @disp_cc_mdss_dp_link1_intf_clk, ptr @disp_cc_mdss_dp_link_clk, ptr @disp_cc_mdss_dp_link_clk_src, ptr @disp_cc_mdss_dp_link_div_clk_src, ptr @disp_cc_mdss_dp_link_intf_clk, ptr @disp_cc_mdss_dp_pixel1_clk, ptr @disp_cc_mdss_dp_pixel1_clk_src, ptr @disp_cc_mdss_dp_pixel2_clk, ptr @disp_cc_mdss_dp_pixel2_clk_src, ptr @disp_cc_mdss_dp_pixel_clk, ptr @disp_cc_mdss_dp_pixel_clk_src, ptr @disp_cc_mdss_esc0_clk, ptr @disp_cc_mdss_esc0_clk_src, ptr @disp_cc_mdss_esc1_clk, ptr @disp_cc_mdss_esc1_clk_src, ptr @disp_cc_mdss_mdp_clk, ptr @disp_cc_mdss_mdp_clk_src, ptr @disp_cc_mdss_mdp_lut_clk, ptr @disp_cc_mdss_non_gdsc_ahb_clk, ptr @disp_cc_mdss_pclk0_clk, ptr @disp_cc_mdss_pclk0_clk_src, ptr @disp_cc_mdss_pclk1_clk, ptr @disp_cc_mdss_pclk1_clk_src, ptr @disp_cc_mdss_rot_clk, ptr @disp_cc_mdss_rot_clk_src, ptr @disp_cc_mdss_rscc_ahb_clk, ptr @disp_cc_mdss_rscc_vsync_clk, ptr @disp_cc_mdss_vsync_clk, ptr @disp_cc_mdss_vsync_clk_src, ptr @disp_cc_mdss_edp_aux_clk, ptr @disp_cc_mdss_edp_aux_clk_src, ptr @disp_cc_mdss_edp_gtc_clk, ptr @disp_cc_mdss_edp_gtc_clk_src, ptr @disp_cc_mdss_edp_link_clk, ptr @disp_cc_mdss_edp_link_clk_src, ptr @disp_cc_mdss_edp_link_intf_clk, ptr @disp_cc_mdss_edp_pixel_clk, ptr @disp_cc_mdss_edp_pixel_clk_src, ptr @.str.3, ptr @.compoundliteral, ptr @.compoundliteral.4, ptr @disp_cc_parent_map_3, ptr @ftbl_disp_cc_mdss_ahb_clk_src, ptr @.str.5, ptr @disp_cc_parent_data_3, ptr @.compoundliteral.6, ptr @.str.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @disp_cc_parent_map_2, ptr @.str.11, ptr @disp_cc_parent_data_2, ptr @.compoundliteral.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @disp_cc_parent_map_1, ptr @ftbl_disp_cc_mdss_byte0_clk_src, ptr @.str.35, ptr @disp_cc_parent_data_1, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.compoundliteral.44, ptr @disp_cc_parent_map_0, ptr @.str.45, ptr @disp_cc_parent_data_0, ptr @.compoundliteral.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @disp_cc_parent_map_5, ptr @ftbl_disp_cc_mdss_mdp_clk_src, ptr @.str.98, ptr @disp_cc_parent_data_5, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.compoundliteral.108, ptr @disp_cc_parent_map_6, ptr @.str.109, ptr @disp_cc_parent_data_6, ptr @.compoundliteral.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @.compoundliteral.119, ptr @.compoundliteral.120, ptr @ftbl_disp_cc_mdss_rot_clk_src, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.compoundliteral.141, ptr @disp_cc_parent_map_7, ptr @.str.142, ptr @disp_cc_parent_data_7, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.compoundliteral.146, ptr @disp_cc_parent_map_4, ptr @.str.147, ptr @disp_cc_parent_data_4, ptr @.compoundliteral.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.compoundliteral.152, ptr @.compoundliteral.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.compoundliteral.156, ptr @.str.157, ptr @.compoundliteral.158, ptr @mdss_gdsc, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.compoundliteral.162, ptr @.str.163, ptr @.compoundliteral.164, ptr @vco_table], section "llvm.metadata"
@0 = internal global [256 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sm8250_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sm8250_match_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sm8250_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_pll0_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_pll0_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_pll1_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_pll1_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_pll0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_pll1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sm8250_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sm8250_clocks to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sm8250_resets to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sm8250_gdscs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_ahb_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte1_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte1_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_aux1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_aux1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_aux_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_aux_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link1_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link1_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel2_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel2_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_lut_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_non_gdsc_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rot_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rot_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rscc_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rscc_vsync_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_vsync_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_vsync_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_aux_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_aux_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_gtc_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_gtc_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_link_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_link_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_link_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_pixel_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_pixel_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_ahb_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_byte0_clk_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_0 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_0 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_mdp_clk_src to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_rot_clk_src to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdss_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @disp_cc_sm8250_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @disp_cc_sm8250_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @disp_cc_sm8250_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @disp_cc_sm8250_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disp_cc_sm8250_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %dev) #4
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @disp_cc_sm8250_pm_runtime_disable, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i49 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp.i = icmp slt i32 %call.i49, 0
  br i1 %cmp.i, label %if.then.i50, label %if.end7

if.then.i50:                                      ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !348
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #4, !srcloc !349
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i50.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i50.cleanup_crit_edge:                    ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !350
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @disp_cc_sm8250_desc) #4
  %cmp.i51 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %if.then10, label %do.end

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %call.i52 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #4
  %1 = ptrtoint ptr %call8 to i32
  br label %cleanup

do.end:                                           ; preds = %if.end7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call16 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %do.end.if.then22_crit_edge

do.end.if.then22_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

lor.lhs.false:                                    ; preds = %do.end
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call20 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %do.end.if.then22_crit_edge
  store i32 8807, ptr getelementptr inbounds (%struct.alpha_pll_config, ptr @disp_cc_pll0_config, i32 0, i32 4), align 4
  store i32 36, ptr getelementptr inbounds (%struct.alpha_pll_config, ptr @disp_cc_pll0_config, i32 0, i32 5), align 4
  store i32 208, ptr getelementptr inbounds (%struct.alpha_pll_config, ptr @disp_cc_pll0_config, i32 0, i32 8), align 4
  store ptr @clk_alpha_pll_trion_ops, ptr getelementptr inbounds (%struct.clk_init_data, ptr @disp_cc_pll0_init, i32 0, i32 1), align 4
  store i32 8807, ptr getelementptr inbounds (%struct.alpha_pll_config, ptr @disp_cc_pll1_config, i32 0, i32 4), align 4
  store i32 36, ptr getelementptr inbounds (%struct.alpha_pll_config, ptr @disp_cc_pll1_config, i32 0, i32 5), align 4
  store i32 208, ptr getelementptr inbounds (%struct.alpha_pll_config, ptr @disp_cc_pll1_config, i32 0, i32 8), align 4
  store ptr @clk_alpha_pll_trion_ops, ptr getelementptr inbounds (%struct.clk_init_data, ptr @disp_cc_pll1_init, i32 0, i32 1), align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %lor.lhs.false.if.end23_crit_edge
  tail call void @clk_trion_pll_configure(ptr noundef nonnull @disp_cc_pll0, ptr noundef %call8, ptr noundef nonnull @disp_cc_pll0_config) #4
  tail call void @clk_trion_pll_configure(ptr noundef nonnull @disp_cc_pll1, ptr noundef %call8, ptr noundef nonnull @disp_cc_pll1_config) #4
  %call.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %call8, i32 noundef 32768, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call.i54 = tail call i32 @regmap_update_bits_base(ptr noundef %call8, i32 noundef 24668, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call26 = tail call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @disp_cc_sm8250_desc, ptr noundef %call8) #4
  %call.i55 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then10, %do.end11.i.i.i.i.i, %if.then.i50.cleanup_crit_edge, %devm_add_action_or_reset.exit
  %retval.0 = phi i32 [ %1, %if.then10 ], [ %call26, %if.end23 ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call.i49, %if.then.i50.cleanup_crit_edge ], [ %call.i49, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @disp_cc_sm8250_pm_runtime_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_trion_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 256)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 256)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337}
!llvm.module.flags = !{!339, !340, !341, !342, !343, !344, !345, !346}
!llvm.ident = !{!347}

!0 = !{ptr @__initcall__kmod_dispcc_sm8250__172_1303_disp_cc_sm8250_init4, !1, !"__initcall__kmod_dispcc_sm8250__172_1303_disp_cc_sm8250_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1303, i32 1}
!2 = !{ptr @__exitcall_disp_cc_sm8250_exit, !3, !"__exitcall_disp_cc_sm8250_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1309, i32 1}
!4 = !{ptr @__UNIQUE_ID_description173, !5, !"__UNIQUE_ID_description173", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1311, i32 1}
!6 = !{ptr @__UNIQUE_ID_file174, !7, !"__UNIQUE_ID_file174", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1312, i32 1}
!8 = !{ptr @__UNIQUE_ID_license175, !7, !"__UNIQUE_ID_license175", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1294, i32 11}
!11 = !{ptr @disp_cc_sm8250_driver, !12, !"disp_cc_sm8250_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1291, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1263, i32 49}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1264, i32 49}
!17 = !{ptr @disp_cc_sm8250_desc, !18, !"disp_cc_sm8250_desc", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1217, i32 34}
!19 = !{ptr @disp_cc_sm8250_regmap_config, !20, !"disp_cc_sm8250_regmap_config", i1 false, i1 false}
!20 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1209, i32 35}
!21 = !{ptr @disp_cc_sm8250_clocks, !22, !"disp_cc_sm8250_clocks", i1 false, i1 false}
!22 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1140, i32 27}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 687, i32 12}
!25 = !{ptr @disp_cc_mdss_ahb_clk, !26, !"disp_cc_mdss_ahb_clk", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 680, i32 26}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 214, i32 11}
!29 = !{ptr @disp_cc_mdss_ahb_clk_src, !30, !"disp_cc_mdss_ahb_clk_src", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 207, i32 24}
!31 = !{ptr @disp_cc_parent_map_3, !32, !"disp_cc_parent_map_3", i1 false, i1 false}
!32 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 142, i32 32}
!33 = !{ptr @ftbl_disp_cc_mdss_ahb_clk_src, !34, !"ftbl_disp_cc_mdss_ahb_clk_src", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 200, i32 30}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 148, i32 15}
!37 = !{ptr @disp_cc_parent_data_3, !38, !"disp_cc_parent_data_3", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 147, i32 37}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 705, i32 12}
!41 = !{ptr @disp_cc_mdss_byte0_clk, !42, !"disp_cc_mdss_byte0_clk", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 698, i32 26}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 233, i32 11}
!45 = !{ptr @disp_cc_mdss_byte0_clk_src, !46, !"disp_cc_mdss_byte0_clk_src", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 227, i32 24}
!47 = !{ptr @disp_cc_parent_map_2, !48, !"disp_cc_parent_map_2", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 130, i32 32}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 138, i32 15}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 139, i32 15}
!53 = !{ptr @disp_cc_parent_data_2, !54, !"disp_cc_parent_data_2", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 136, i32 37}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 626, i32 11}
!57 = !{ptr @disp_cc_mdss_byte0_div_clk_src, !58, !"disp_cc_mdss_byte0_div_clk_src", i1 false, i1 false}
!58 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 621, i32 30}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 723, i32 12}
!61 = !{ptr @disp_cc_mdss_byte0_intf_clk, !62, !"disp_cc_mdss_byte0_intf_clk", i1 false, i1 false}
!62 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 716, i32 26}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 741, i32 12}
!65 = !{ptr @disp_cc_mdss_byte1_clk, !66, !"disp_cc_mdss_byte1_clk", i1 false, i1 false}
!66 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 734, i32 26}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 247, i32 11}
!69 = !{ptr @disp_cc_mdss_byte1_clk_src, !70, !"disp_cc_mdss_byte1_clk_src", i1 false, i1 false}
!70 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 241, i32 24}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 641, i32 11}
!73 = !{ptr @disp_cc_mdss_byte1_div_clk_src, !74, !"disp_cc_mdss_byte1_div_clk_src", i1 false, i1 false}
!74 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 636, i32 30}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 759, i32 12}
!77 = !{ptr @disp_cc_mdss_byte1_intf_clk, !78, !"disp_cc_mdss_byte1_intf_clk", i1 false, i1 false}
!78 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 752, i32 26}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 777, i32 12}
!81 = !{ptr @disp_cc_mdss_dp_aux1_clk, !82, !"disp_cc_mdss_dp_aux1_clk", i1 false, i1 false}
!82 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 770, i32 26}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 262, i32 11}
!85 = !{ptr @disp_cc_mdss_dp_aux1_clk_src, !86, !"disp_cc_mdss_dp_aux1_clk_src", i1 false, i1 false}
!86 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 255, i32 24}
!87 = !{ptr @disp_cc_parent_map_1, !88, !"disp_cc_parent_map_1", i1 false, i1 false}
!88 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 122, i32 32}
!89 = !{ptr @ftbl_disp_cc_mdss_byte0_clk_src, !90, !"ftbl_disp_cc_mdss_byte0_clk_src", i1 false, i1 false}
!90 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 222, i32 30}
!91 = !{ptr @disp_cc_parent_data_1, !92, !"disp_cc_parent_data_1", i1 false, i1 false}
!92 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 126, i32 37}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 795, i32 12}
!95 = !{ptr @disp_cc_mdss_dp_aux_clk, !96, !"disp_cc_mdss_dp_aux_clk", i1 false, i1 false}
!96 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 788, i32 26}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 277, i32 11}
!99 = !{ptr @disp_cc_mdss_dp_aux_clk_src, !100, !"disp_cc_mdss_dp_aux_clk_src", i1 false, i1 false}
!100 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 270, i32 24}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 813, i32 12}
!103 = !{ptr @disp_cc_mdss_dp_link1_clk, !104, !"disp_cc_mdss_dp_link1_clk", i1 false, i1 false}
!104 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 806, i32 26}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 291, i32 11}
!107 = !{ptr @disp_cc_mdss_dp_link1_clk_src, !108, !"disp_cc_mdss_dp_link1_clk_src", i1 false, i1 false}
!108 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 285, i32 24}
!109 = !{ptr @disp_cc_parent_map_0, !110, !"disp_cc_parent_map_0", i1 false, i1 false}
!110 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 102, i32 32}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 114, i32 15}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 115, i32 15}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 116, i32 15}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 117, i32 15}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 118, i32 15}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 119, i32 15}
!123 = !{ptr @disp_cc_parent_data_0, !124, !"disp_cc_parent_data_0", i1 false, i1 false}
!124 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 112, i32 37}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 656, i32 11}
!127 = !{ptr @disp_cc_mdss_dp_link1_div_clk_src, !128, !"disp_cc_mdss_dp_link1_div_clk_src", i1 false, i1 false}
!128 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 651, i32 30}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 831, i32 12}
!131 = !{ptr @disp_cc_mdss_dp_link1_intf_clk, !132, !"disp_cc_mdss_dp_link1_intf_clk", i1 false, i1 false}
!132 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 824, i32 26}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 848, i32 12}
!135 = !{ptr @disp_cc_mdss_dp_link_clk, !136, !"disp_cc_mdss_dp_link_clk", i1 false, i1 false}
!136 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 841, i32 26}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 304, i32 11}
!139 = !{ptr @disp_cc_mdss_dp_link_clk_src, !140, !"disp_cc_mdss_dp_link_clk_src", i1 false, i1 false}
!140 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 298, i32 24}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 671, i32 11}
!143 = !{ptr @disp_cc_mdss_dp_link_div_clk_src, !144, !"disp_cc_mdss_dp_link_div_clk_src", i1 false, i1 false}
!144 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 666, i32 30}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 866, i32 12}
!147 = !{ptr @disp_cc_mdss_dp_link_intf_clk, !148, !"disp_cc_mdss_dp_link_intf_clk", i1 false, i1 false}
!148 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 859, i32 26}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 883, i32 12}
!151 = !{ptr @disp_cc_mdss_dp_pixel1_clk, !152, !"disp_cc_mdss_dp_pixel1_clk", i1 false, i1 false}
!152 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 876, i32 26}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 317, i32 11}
!155 = !{ptr @disp_cc_mdss_dp_pixel1_clk_src, !156, !"disp_cc_mdss_dp_pixel1_clk_src", i1 false, i1 false}
!156 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 311, i32 24}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 901, i32 12}
!159 = !{ptr @disp_cc_mdss_dp_pixel2_clk, !160, !"disp_cc_mdss_dp_pixel2_clk", i1 false, i1 false}
!160 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 894, i32 26}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 330, i32 11}
!163 = !{ptr @disp_cc_mdss_dp_pixel2_clk_src, !164, !"disp_cc_mdss_dp_pixel2_clk_src", i1 false, i1 false}
!164 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 324, i32 24}
!165 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 919, i32 12}
!167 = !{ptr @disp_cc_mdss_dp_pixel_clk, !168, !"disp_cc_mdss_dp_pixel_clk", i1 false, i1 false}
!168 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 912, i32 26}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 343, i32 11}
!171 = !{ptr @disp_cc_mdss_dp_pixel_clk_src, !172, !"disp_cc_mdss_dp_pixel_clk_src", i1 false, i1 false}
!172 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 337, i32 24}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 937, i32 12}
!175 = !{ptr @disp_cc_mdss_esc0_clk, !176, !"disp_cc_mdss_esc0_clk", i1 false, i1 false}
!176 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 930, i32 26}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 504, i32 11}
!179 = !{ptr @disp_cc_mdss_esc0_clk_src, !180, !"disp_cc_mdss_esc0_clk_src", i1 false, i1 false}
!180 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 497, i32 24}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 955, i32 12}
!183 = !{ptr @disp_cc_mdss_esc1_clk, !184, !"disp_cc_mdss_esc1_clk", i1 false, i1 false}
!184 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 948, i32 26}
!185 = !{ptr @.str.93, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 519, i32 11}
!187 = !{ptr @disp_cc_mdss_esc1_clk_src, !188, !"disp_cc_mdss_esc1_clk_src", i1 false, i1 false}
!188 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 512, i32 24}
!189 = !{ptr @.str.95, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 973, i32 12}
!191 = !{ptr @disp_cc_mdss_mdp_clk, !192, !"disp_cc_mdss_mdp_clk", i1 false, i1 false}
!192 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 966, i32 26}
!193 = !{ptr @.str.98, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 546, i32 11}
!195 = !{ptr @disp_cc_mdss_mdp_clk_src, !196, !"disp_cc_mdss_mdp_clk_src", i1 false, i1 false}
!196 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 539, i32 24}
!197 = !{ptr @disp_cc_parent_map_5, !198, !"disp_cc_parent_map_5", i1 false, i1 false}
!198 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 164, i32 32}
!199 = !{ptr @ftbl_disp_cc_mdss_mdp_clk_src, !200, !"ftbl_disp_cc_mdss_mdp_clk_src", i1 false, i1 false}
!200 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 527, i32 30}
!201 = !{ptr @disp_cc_parent_data_5, !202, !"disp_cc_parent_data_5", i1 false, i1 false}
!202 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 170, i32 37}
!203 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 991, i32 12}
!205 = !{ptr @disp_cc_mdss_mdp_lut_clk, !206, !"disp_cc_mdss_mdp_lut_clk", i1 false, i1 false}
!206 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 984, i32 26}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1008, i32 12}
!209 = !{ptr @disp_cc_mdss_non_gdsc_ahb_clk, !210, !"disp_cc_mdss_non_gdsc_ahb_clk", i1 false, i1 false}
!210 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1001, i32 26}
!211 = !{ptr @.str.106, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1026, i32 12}
!213 = !{ptr @disp_cc_mdss_pclk0_clk, !214, !"disp_cc_mdss_pclk0_clk", i1 false, i1 false}
!214 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1019, i32 26}
!215 = !{ptr @.str.109, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 560, i32 11}
!217 = !{ptr @disp_cc_mdss_pclk0_clk_src, !218, !"disp_cc_mdss_pclk0_clk_src", i1 false, i1 false}
!218 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 554, i32 24}
!219 = !{ptr @disp_cc_parent_map_6, !220, !"disp_cc_parent_map_6", i1 false, i1 false}
!220 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 176, i32 32}
!221 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 184, i32 15}
!223 = !{ptr @.str.112, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 185, i32 15}
!225 = !{ptr @disp_cc_parent_data_6, !226, !"disp_cc_parent_data_6", i1 false, i1 false}
!226 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 182, i32 37}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1044, i32 12}
!229 = !{ptr @disp_cc_mdss_pclk1_clk, !230, !"disp_cc_mdss_pclk1_clk", i1 false, i1 false}
!230 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1037, i32 26}
!231 = !{ptr @.str.116, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 574, i32 11}
!233 = !{ptr @disp_cc_mdss_pclk1_clk_src, !234, !"disp_cc_mdss_pclk1_clk_src", i1 false, i1 false}
!234 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 568, i32 24}
!235 = !{ptr @.str.118, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1062, i32 12}
!237 = !{ptr @disp_cc_mdss_rot_clk, !238, !"disp_cc_mdss_rot_clk", i1 false, i1 false}
!238 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1055, i32 26}
!239 = !{ptr @.str.121, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 598, i32 11}
!241 = !{ptr @disp_cc_mdss_rot_clk_src, !242, !"disp_cc_mdss_rot_clk_src", i1 false, i1 false}
!242 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 591, i32 24}
!243 = !{ptr @ftbl_disp_cc_mdss_rot_clk_src, !244, !"ftbl_disp_cc_mdss_rot_clk_src", i1 false, i1 false}
!244 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 582, i32 30}
!245 = !{ptr @.str.123, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1080, i32 12}
!247 = !{ptr @disp_cc_mdss_rscc_ahb_clk, !248, !"disp_cc_mdss_rscc_ahb_clk", i1 false, i1 false}
!248 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1073, i32 26}
!249 = !{ptr @.str.126, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1098, i32 12}
!251 = !{ptr @disp_cc_mdss_rscc_vsync_clk, !252, !"disp_cc_mdss_rscc_vsync_clk", i1 false, i1 false}
!252 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1091, i32 26}
!253 = !{ptr @.str.129, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1116, i32 12}
!255 = !{ptr @disp_cc_mdss_vsync_clk, !256, !"disp_cc_mdss_vsync_clk", i1 false, i1 false}
!256 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1109, i32 26}
!257 = !{ptr @.str.132, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 613, i32 11}
!259 = !{ptr @disp_cc_mdss_vsync_clk_src, !260, !"disp_cc_mdss_vsync_clk_src", i1 false, i1 false}
!260 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 606, i32 24}
!261 = !{ptr @.str.134, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 414, i32 12}
!263 = !{ptr @disp_cc_mdss_edp_aux_clk, !264, !"disp_cc_mdss_edp_aux_clk", i1 false, i1 false}
!264 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 407, i32 26}
!265 = !{ptr @.str.137, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 357, i32 11}
!267 = !{ptr @disp_cc_mdss_edp_aux_clk_src, !268, !"disp_cc_mdss_edp_aux_clk_src", i1 false, i1 false}
!268 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 350, i32 24}
!269 = !{ptr @.str.139, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 432, i32 12}
!271 = !{ptr @disp_cc_mdss_edp_gtc_clk, !272, !"disp_cc_mdss_edp_gtc_clk", i1 false, i1 false}
!272 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 425, i32 26}
!273 = !{ptr @.str.142, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 372, i32 11}
!275 = !{ptr @disp_cc_mdss_edp_gtc_clk_src, !276, !"disp_cc_mdss_edp_gtc_clk_src", i1 false, i1 false}
!276 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 365, i32 24}
!277 = !{ptr @disp_cc_parent_map_7, !278, !"disp_cc_parent_map_7", i1 false, i1 false}
!278 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 188, i32 32}
!279 = !{ptr @disp_cc_parent_data_7, !280, !"disp_cc_parent_data_7", i1 false, i1 false}
!280 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 194, i32 37}
!281 = !{ptr @.str.144, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 450, i32 12}
!283 = !{ptr @disp_cc_mdss_edp_link_clk, !284, !"disp_cc_mdss_edp_link_clk", i1 false, i1 false}
!284 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 443, i32 26}
!285 = !{ptr @.str.147, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 386, i32 11}
!287 = !{ptr @disp_cc_mdss_edp_link_clk_src, !288, !"disp_cc_mdss_edp_link_clk_src", i1 false, i1 false}
!288 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 380, i32 24}
!289 = !{ptr @disp_cc_parent_map_4, !290, !"disp_cc_parent_map_4", i1 false, i1 false}
!290 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 152, i32 32}
!291 = !{ptr @.str.149, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 160, i32 15}
!293 = !{ptr @.str.150, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 161, i32 15}
!295 = !{ptr @disp_cc_parent_data_4, !296, !"disp_cc_parent_data_4", i1 false, i1 false}
!296 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 158, i32 37}
!297 = !{ptr @.str.151, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 468, i32 12}
!299 = !{ptr @disp_cc_mdss_edp_link_intf_clk, !300, !"disp_cc_mdss_edp_link_intf_clk", i1 false, i1 false}
!300 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 461, i32 26}
!301 = !{ptr @.str.154, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 486, i32 12}
!303 = !{ptr @disp_cc_mdss_edp_pixel_clk, !304, !"disp_cc_mdss_edp_pixel_clk", i1 false, i1 false}
!304 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 479, i32 26}
!305 = !{ptr @.str.157, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 400, i32 11}
!307 = !{ptr @disp_cc_mdss_edp_pixel_clk_src, !308, !"disp_cc_mdss_edp_pixel_clk_src", i1 false, i1 false}
!308 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 394, i32 24}
!309 = !{ptr @disp_cc_sm8250_resets, !310, !"disp_cc_sm8250_resets", i1 false, i1 false}
!310 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1200, i32 36}
!311 = !{ptr @disp_cc_sm8250_gdscs, !312, !"disp_cc_sm8250_gdscs", i1 false, i1 false}
!312 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1205, i32 21}
!313 = !{ptr @.str.159, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1133, i32 11}
!315 = !{ptr @.str.160, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1137, i32 12}
!317 = !{ptr @mdss_gdsc, !318, !"mdss_gdsc", i1 false, i1 false}
!318 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1127, i32 20}
!319 = !{ptr @disp_cc_pll0_config, !320, !"disp_cc_pll0_config", i1 false, i1 false}
!320 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 46, i32 32}
!321 = !{ptr @.str.161, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 58, i32 10}
!323 = !{ptr @disp_cc_pll0_init, !324, !"disp_cc_pll0_init", i1 false, i1 false}
!324 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 57, i32 29}
!325 = !{ptr @disp_cc_pll1_config, !326, !"disp_cc_pll1_config", i1 false, i1 false}
!326 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 74, i32 32}
!327 = !{ptr @.str.163, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 86, i32 10}
!329 = !{ptr @disp_cc_pll1_init, !330, !"disp_cc_pll1_init", i1 false, i1 false}
!330 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 85, i32 29}
!331 = !{ptr @disp_cc_pll0, !332, !"disp_cc_pll0", i1 false, i1 false}
!332 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 66, i32 29}
!333 = !{ptr @vco_table, !334, !"vco_table", i1 false, i1 false}
!334 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 42, i32 23}
!335 = !{ptr @disp_cc_pll1, !336, !"disp_cc_pll1", i1 false, i1 false}
!336 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 94, i32 29}
!337 = !{ptr @disp_cc_sm8250_match_table, !338, !"disp_cc_sm8250_match_table", i1 false, i1 false}
!338 = !{!"../drivers/clk/qcom/dispcc-sm8250.c", i32 1227, i32 34}
!339 = !{i32 1, !"wchar_size", i32 2}
!340 = !{i32 1, !"min_enum_size", i32 4}
!341 = !{i32 8, !"branch-target-enforcement", i32 0}
!342 = !{i32 8, !"sign-return-address", i32 0}
!343 = !{i32 8, !"sign-return-address-all", i32 0}
!344 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!345 = !{i32 7, !"uwtable", i32 1}
!346 = !{i32 7, !"frame-pointer", i32 2}
!347 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!348 = !{i64 2148301196}
!349 = !{i64 786019, i64 786044, i64 786066, i64 786082, i64 786094, i64 786114, i64 786138, i64 786154, i64 786166}
!350 = !{i64 2148301384}
