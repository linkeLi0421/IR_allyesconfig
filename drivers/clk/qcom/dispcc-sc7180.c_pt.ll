; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/dispcc-sc7180.c_pt.bc'
source_filename = "../drivers/clk/qcom/dispcc-sc7180.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.clk_alpha_pll = type { i32, ptr, ptr, i32, i8, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_alpha_pll_postdiv = type { i32, i8, ptr, %struct.clk_regmap, i32, ptr, i32 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_regmap_div = type { i32, i32, i32, %struct.clk_regmap }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_div_table = type { i32, i32 }
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
%struct.alpha_pll_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_dispcc_sc7180__170_731_disp_cc_sc7180_init4 = internal global ptr @disp_cc_sc7180_init, section ".initcall4.init", align 4
@disp_cc_sc7180_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @disp_cc_sc7180_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @disp_cc_sc7180_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_disp_cc_sc7180_exit = internal global ptr @disp_cc_sc7180_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [52 x i8] c"dispcc_sc7180.description=QTI DISP_CC SC7180 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [50 x i8] c"dispcc_sc7180.file=drivers/clk/qcom/dispcc-sc7180\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [29 x i8] c"dispcc_sc7180.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sc7180-dispcc\00", [18 x i8] zeroinitializer }, align 32
@disp_cc_sc7180_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-dispcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@disp_cc_sc7180_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @disp_cc_sc7180_regmap_config, ptr @disp_cc_sc7180_clocks, i32 32, ptr null, i32 0, ptr @disp_cc_sc7180_gdscs, i32 1, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@disp_cc_pll0 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 0, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 51), ptr @fabia_vco, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.88 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@disp_cc_sc7180_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 65536, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@disp_cc_sc7180_clocks = internal global { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr getelementptr (i8, ptr @disp_cc_pll0, i64 20), ptr getelementptr (i8, ptr @disp_cc_pll0_out_even, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_div_clk_src, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_crypto_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_crypto_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_div_clk_src, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_lut_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_non_gdsc_ahb_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk_src, i64 16), ptr null, ptr getelementptr (i8, ptr @disp_cc_mdss_rscc_vsync_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16)], [32 x i8] zeroinitializer }, align 32
@disp_cc_sc7180_gdscs = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @mdss_gdsc], [28 x i8] zeroinitializer }, align 32
@disp_cc_pll0_out_even = internal global { %struct.clk_alpha_pll_postdiv, [44 x i8] } { %struct.clk_alpha_pll_postdiv { i32 0, i8 4, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 51), %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.2 }, ptr null, i32 0, i32 0, i8 0 }, i32 8, ptr @post_div_table_disp_cc_pll0_out_even, i32 2 }, [44 x i8] zeroinitializer }, align 32
@disp_cc_mdss_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8320, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 }, ptr null, i32 8320, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_ahb_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8892, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_4, ptr @ftbl_disp_cc_mdss_ahb_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.7 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8232, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 }, ptr null, i32 8232, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8464, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_2, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 8488, i32 0, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8236, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 }, ptr null, i32 8236, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_aux_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8276, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.24 }, ptr null, i32 8276, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_aux_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8668, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.26 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_crypto_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8264, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 }, ptr null, i32 8264, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_crypto_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8596, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8256, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.36 }, ptr null, i32 8256, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8568, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.38 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 8592, i32 0, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8260, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 }, ptr null, i32 8260, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8268, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.47 }, ptr null, i32 8268, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8620, i8 16, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8248, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 }, ptr null, i32 8248, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8520, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_2, ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8204, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.57 }, ptr null, i32 8204, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8392, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_3, ptr @ftbl_disp_cc_mdss_mdp_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.59 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_lut_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8220, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.62 }, ptr null, i32 8220, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_non_gdsc_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16388, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.65 }, ptr null, i32 16388, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8196, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.68 }, ptr null, i32 8196, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8344, i8 8, i8 5, i8 0, ptr @disp_cc_parent_map_5, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.70 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rot_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8212, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.74 }, ptr null, i32 8212, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rot_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8416, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_3, ptr @ftbl_disp_cc_mdss_mdp_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.76 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rscc_vsync_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16392, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 }, ptr null, i32 16392, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_vsync_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8228, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 }, ptr null, i32 8228, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_vsync_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8440, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.84 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disp_cc_pll0_out_even\00", [42 x i8] zeroinitializer }, align 32
@clk_alpha_pll_postdiv_fabia_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_pll0, i64 20)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_alpha_pll_postdiv_fabia_ops, ptr null, ptr null, ptr @.compoundliteral, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@post_div_table_disp_cc_pll0_out_even = internal constant { [2 x %struct.clk_div_table], [16 x i8] } { [2 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_ahb_clk\00", [43 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.4 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.3, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.4, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_4 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 7, i8 4 }], [28 x i8] zeroinitializer }, align 32
@ftbl_disp_cc_mdss_ahb_clk_src = internal constant { [4 x %struct.freq_tbl], [48 x i8] } { [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 37500000, i8 7, i8 31, i16 0, i16 0 }, %struct.freq_tbl { i32 75000000, i8 7, i8 15, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_ahb_clk_src\00", [39 x i8] zeroinitializer }, align 32
@clk_rcg2_shared_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_4 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.8, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.6, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_4, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gcc_disp_gpll0_clk_src\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_byte0_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.10, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.11, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_2 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 5, i8 1 }], [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_byte0_clk_src\00", [37 x i8] zeroinitializer }, align 32
@clk_byte2_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_2 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.8, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.15, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.13, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_2, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsi0_phy_pll_out_byteclk\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_byte0_div_clk_src\00", [33 x i8] zeroinitializer }, align 32
@clk_regmap_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.17 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @clk_regmap_div_ops, ptr null, ptr @.compoundliteral.17, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_byte0_intf_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.19, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.20, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disp_cc_mdss_dp_aux_clk\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.22, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.23, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_0 = internal constant { [1 x %struct.parent_map], [30 x i8] } zeroinitializer, align 32
@ftbl_disp_cc_mdss_dp_aux_clk_src = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_dp_aux_clk_src\00", [36 x i8] zeroinitializer }, align 32
@clk_rcg2_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_0 = internal constant { [1 x %struct.clk_parent_data], [16 x i8] } { [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.8, ptr null, i32 0 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.25, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_dp_crypto_clk\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_crypto_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.27, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.28, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_1 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 3, i8 1 }, %struct.parent_map { i8 4, i8 2 }], [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_dp_crypto_clk_src\00", [33 x i8] zeroinitializer }, align 32
@disp_cc_parent_data_1 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.8, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.32, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.33, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.30, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dp_phy_pll_link_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dp_phy_pll_vco_div_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_dp_link_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.34, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.35, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disp_cc_mdss_dp_link_clk_src\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.37, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"disp_cc_mdss_dp_link_div_clk_src\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.39, ptr @clk_regmap_div_ops, ptr null, ptr @.compoundliteral.40, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_dp_link_intf_clk\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.42, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.43, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_dp_pixel_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.45, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.46, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_dp_pixel_clk_src\00", [34 x i8] zeroinitializer }, align 32
@clk_dp_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.49 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.48, ptr @clk_dp_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disp_cc_mdss_esc0_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.50, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.51, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_esc0_clk_src\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.53, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_2, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_mdp_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.56, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_3 = internal constant { [4 x %struct.parent_map], [24 x i8] } { [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 2, i8 1 }, %struct.parent_map { i8 7, i8 4 }, %struct.parent_map { i8 1, i8 5 }], [24 x i8] zeroinitializer }, align 32
@ftbl_disp_cc_mdss_mdp_clk_src = internal constant { [6 x %struct.freq_tbl], [56 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 7, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 300000000, i8 7, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 345000000, i8 2, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 460000000, i8 2, i8 5, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_mdp_clk_src\00", [39 x i8] zeroinitializer }, align 32
@disp_cc_parent_data_3 = internal constant { [4 x %struct.clk_parent_data], [32 x i8] } { [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.8, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @disp_cc_pll0, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @disp_cc_pll0_out_even, i64 12), ptr null, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.58, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_3, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_mdp_lut_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.60, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.61, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_non_gdsc_ahb_clk\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.63, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.64, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_pclk0_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.66, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.67, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_5 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 6, i8 1 }], [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_pclk0_clk_src\00", [37 x i8] zeroinitializer }, align 32
@clk_pixel_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_5 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.8, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.71, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.69, ptr @clk_pixel_ops, ptr null, ptr @disp_cc_parent_data_5, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsi0_phy_pll_out_dsiclk\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_rot_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.72, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.73, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_rot_clk_src\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.75, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_3, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_rscc_vsync_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.77, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.78, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_vsync_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.80, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.81, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_vsync_clk_src\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.83, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mdss_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.85, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 12288, i32 0, i32 0, ptr null, i32 0, i32 2, i32 2, i32 15, i8 5, i16 4, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mdss_gdsc\00", [22 x i8] zeroinitializer }, align 32
@fabia_vco = internal constant { [1 x %struct.pll_vco], [20 x i8] } { [1 x %struct.pll_vco] [%struct.pll_vco { i32 249600000, i32 2000000000, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disp_cc_pll0\00", [19 x i8] zeroinitializer }, align 32
@clk_alpha_pll_fabia_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.87 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.8, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.86, ptr @clk_alpha_pll_fabia_ops, ptr null, ptr @.compoundliteral.87, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"disp_cc_sc7180_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 719, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 722, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"disp_cc_sc7180_match_table\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 693, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"disp_cc_sc7180_desc\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 685, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"disp_cc_pll0\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 35, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant [29 x i8] c"disp_cc_sc7180_regmap_config\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 677, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"disp_cc_sc7180_clocks\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 642, i32 27 }
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"disp_cc_sc7180_gdscs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 638, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"disp_cc_pll0_out_even\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 57, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_ahb_clk\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 312, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_ahb_clk_src\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 146, i32 24 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_byte0_clk\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 330, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_byte0_clk_src\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 161, i32 24 }
@___asan_gen_.128 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_byte0_div_clk_src\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 348, i32 30 }
@___asan_gen_.131 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_byte0_intf_clk\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 376, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant [24 x i8] c"disp_cc_mdss_dp_aux_clk\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 394, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_dp_aux_clk_src\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 180, i32 24 }
@___asan_gen_.140 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_dp_crypto_clk\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 412, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_dp_crypto_clk_src\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 194, i32 24 }
@___asan_gen_.146 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_dp_link_clk\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 430, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant [29 x i8] c"disp_cc_mdss_dp_link_clk_src\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 207, i32 24 }
@___asan_gen_.152 = private unnamed_addr constant [33 x i8] c"disp_cc_mdss_dp_link_div_clk_src\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 362, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_dp_link_intf_clk\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 448, i32 26 }
@___asan_gen_.158 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_dp_pixel_clk\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 465, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_dp_pixel_clk_src\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 220, i32 24 }
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"disp_cc_mdss_esc0_clk\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 483, i32 26 }
@___asan_gen_.167 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_esc0_clk_src\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 233, i32 24 }
@___asan_gen_.170 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_mdp_clk\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 501, i32 26 }
@___asan_gen_.173 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_mdp_clk_src\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 256, i32 24 }
@___asan_gen_.176 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_mdp_lut_clk\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 519, i32 26 }
@___asan_gen_.179 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_non_gdsc_ahb_clk\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 536, i32 26 }
@___asan_gen_.182 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_pclk0_clk\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 554, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_pclk0_clk_src\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 270, i32 24 }
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_rot_clk\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 572, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_rot_clk_src\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 284, i32 24 }
@___asan_gen_.194 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_rscc_vsync_clk\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 590, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_vsync_clk\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 608, i32 26 }
@___asan_gen_.200 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_vsync_clk_src\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 298, i32 24 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 65, i32 11 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [37 x i8] c"post_div_table_disp_cc_pll0_out_even\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 52, i32 35 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 319, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_4\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 119, i32 32 }
@___asan_gen_.219 = private unnamed_addr constant [30 x i8] c"ftbl_disp_cc_mdss_ahb_clk_src\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 139, i32 30 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 153, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_4\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 124, i32 37 }
@___asan_gen_.228 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 125, i32 15 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 126, i32 15 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 337, i32 12 }
@___asan_gen_.238 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_2\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 95, i32 32 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 167, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_2\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 100, i32 37 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 102, i32 15 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 353, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 383, i32 12 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 401, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_0\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 75, i32 32 }
@___asan_gen_.271 = private unnamed_addr constant [33 x i8] c"ftbl_disp_cc_mdss_dp_aux_clk_src\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 175, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 187, i32 11 }
@___asan_gen_.277 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_0\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 79, i32 37 }
@___asan_gen_.280 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 419, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_1\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 83, i32 32 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 200, i32 11 }
@___asan_gen_.292 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_1\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 89, i32 37 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 91, i32 15 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 92, i32 15 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 437, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 213, i32 11 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 367, i32 11 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 455, i32 12 }
@___asan_gen_.319 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 472, i32 12 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 226, i32 11 }
@___asan_gen_.329 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 490, i32 12 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 240, i32 11 }
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 508, i32 12 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_3\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 105, i32 32 }
@___asan_gen_.347 = private unnamed_addr constant [30 x i8] c"ftbl_disp_cc_mdss_mdp_clk_src\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 247, i32 30 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 263, i32 11 }
@___asan_gen_.353 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_3\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 112, i32 37 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 526, i32 12 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 543, i32 12 }
@___asan_gen_.365 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 561, i32 12 }
@___asan_gen_.370 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_5\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 129, i32 32 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 276, i32 11 }
@___asan_gen_.378 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_5\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 134, i32 37 }
@___asan_gen_.381 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 136, i32 15 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 579, i32 12 }
@___asan_gen_.388 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 291, i32 11 }
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 597, i32 12 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 615, i32 12 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 305, i32 11 }
@___asan_gen_.407 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [10 x i8] c"mdss_gdsc\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 626, i32 20 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 632, i32 11 }
@___asan_gen_.414 = private unnamed_addr constant [10 x i8] c"fabia_vco\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 31, i32 29 }
@___asan_gen_.417 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.418 = private constant [36 x i8] c"../drivers/clk/qcom/dispcc-sc7180.c\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 42, i32 12 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@llvm.compiler.used = appending global [151 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_disp_cc_sc7180_exit, ptr @__initcall__kmod_dispcc_sc7180__170_731_disp_cc_sc7180_init4, ptr @disp_cc_sc7180_exit, ptr @disp_cc_sc7180_driver, ptr @.str, ptr @disp_cc_sc7180_match_table, ptr @disp_cc_sc7180_desc, ptr @disp_cc_pll0, ptr @disp_cc_sc7180_regmap_config, ptr @disp_cc_sc7180_clocks, ptr @disp_cc_sc7180_gdscs, ptr @disp_cc_pll0_out_even, ptr @disp_cc_mdss_ahb_clk, ptr @disp_cc_mdss_ahb_clk_src, ptr @disp_cc_mdss_byte0_clk, ptr @disp_cc_mdss_byte0_clk_src, ptr @disp_cc_mdss_byte0_div_clk_src, ptr @disp_cc_mdss_byte0_intf_clk, ptr @disp_cc_mdss_dp_aux_clk, ptr @disp_cc_mdss_dp_aux_clk_src, ptr @disp_cc_mdss_dp_crypto_clk, ptr @disp_cc_mdss_dp_crypto_clk_src, ptr @disp_cc_mdss_dp_link_clk, ptr @disp_cc_mdss_dp_link_clk_src, ptr @disp_cc_mdss_dp_link_div_clk_src, ptr @disp_cc_mdss_dp_link_intf_clk, ptr @disp_cc_mdss_dp_pixel_clk, ptr @disp_cc_mdss_dp_pixel_clk_src, ptr @disp_cc_mdss_esc0_clk, ptr @disp_cc_mdss_esc0_clk_src, ptr @disp_cc_mdss_mdp_clk, ptr @disp_cc_mdss_mdp_clk_src, ptr @disp_cc_mdss_mdp_lut_clk, ptr @disp_cc_mdss_non_gdsc_ahb_clk, ptr @disp_cc_mdss_pclk0_clk, ptr @disp_cc_mdss_pclk0_clk_src, ptr @disp_cc_mdss_rot_clk, ptr @disp_cc_mdss_rot_clk_src, ptr @disp_cc_mdss_rscc_vsync_clk, ptr @disp_cc_mdss_vsync_clk, ptr @disp_cc_mdss_vsync_clk_src, ptr @.str.1, ptr @.compoundliteral, ptr @.compoundliteral.2, ptr @post_div_table_disp_cc_pll0_out_even, ptr @.str.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @disp_cc_parent_map_4, ptr @ftbl_disp_cc_mdss_ahb_clk_src, ptr @.str.6, ptr @disp_cc_parent_data_4, ptr @.compoundliteral.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @disp_cc_parent_map_2, ptr @.str.13, ptr @disp_cc_parent_data_2, ptr @.compoundliteral.14, ptr @.str.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @disp_cc_parent_map_0, ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, ptr @.str.25, ptr @disp_cc_parent_data_0, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @disp_cc_parent_map_1, ptr @.str.30, ptr @disp_cc_parent_data_1, ptr @.compoundliteral.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.compoundliteral.57, ptr @disp_cc_parent_map_3, ptr @ftbl_disp_cc_mdss_mdp_clk_src, ptr @.str.58, ptr @disp_cc_parent_data_3, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.compoundliteral.68, ptr @disp_cc_parent_map_5, ptr @.str.69, ptr @disp_cc_parent_data_5, ptr @.compoundliteral.70, ptr @.str.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @mdss_gdsc, ptr @.str.85, ptr @fabia_vco, ptr @.str.86, ptr @.compoundliteral.87, ptr @.compoundliteral.88], section "llvm.metadata"
@0 = internal global [145 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7180_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7180_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7180_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_pll0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7180_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7180_clocks to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7180_gdscs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_pll0_out_even to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_ahb_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_aux_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_aux_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_crypto_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_crypto_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_lut_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_non_gdsc_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rot_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rot_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rscc_vsync_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_vsync_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_vsync_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_div_table_disp_cc_pll0_out_even to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_ahb_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_0 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_dp_aux_clk_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_mdp_clk_src to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdss_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fabia_vco to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @disp_cc_sc7180_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @disp_cc_sc7180_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @disp_cc_sc7180_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @disp_cc_sc7180_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disp_cc_sc7180_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %disp_cc_pll_config = alloca %struct.alpha_pll_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %disp_cc_pll_config) #4
  %0 = getelementptr inbounds i8, ptr %disp_cc_pll_config, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 88)
  %call = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @disp_cc_sc7180_desc) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %disp_cc_pll_config to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 71, ptr %disp_cc_pll_config, align 4
  %alpha = getelementptr inbounds %struct.alpha_pll_config, ptr %disp_cc_pll_config, i32 0, i32 1
  %4 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 57344, ptr %alpha, align 4
  %user_ctl_val = getelementptr inbounds %struct.alpha_pll_config, ptr %disp_cc_pll_config, i32 0, i32 6
  %5 = ptrtoint ptr %user_ctl_val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %user_ctl_val, align 4
  %user_ctl_hi_val = getelementptr inbounds %struct.alpha_pll_config, ptr %disp_cc_pll_config, i32 0, i32 7
  %6 = ptrtoint ptr %user_ctl_hi_val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 18437, ptr %user_ctl_hi_val, align 4
  call void @clk_fabia_pll_configure(ptr noundef nonnull @disp_cc_pll0, ptr noundef %call, ptr noundef nonnull %disp_cc_pll_config) #4
  %call3 = call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @disp_cc_sc7180_desc, ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call3, %if.end ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %disp_cc_pll_config) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_fabia_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !{ptr @__initcall__kmod_dispcc_sc7180__170_731_disp_cc_sc7180_init4, !1, !"__initcall__kmod_dispcc_sc7180__170_731_disp_cc_sc7180_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 731, i32 1}
!2 = !{ptr @__exitcall_disp_cc_sc7180_exit, !3, !"__exitcall_disp_cc_sc7180_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 737, i32 1}
!4 = !{ptr @__UNIQUE_ID_description171, !5, !"__UNIQUE_ID_description171", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 739, i32 1}
!6 = !{ptr @__UNIQUE_ID_file172, !7, !"__UNIQUE_ID_file172", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 740, i32 1}
!8 = !{ptr @__UNIQUE_ID_license173, !7, !"__UNIQUE_ID_license173", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 722, i32 11}
!11 = !{ptr @disp_cc_sc7180_driver, !12, !"disp_cc_sc7180_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 719, i32 31}
!13 = !{ptr @disp_cc_sc7180_desc, !14, !"disp_cc_sc7180_desc", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 685, i32 34}
!15 = !{ptr @disp_cc_sc7180_regmap_config, !16, !"disp_cc_sc7180_regmap_config", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 677, i32 35}
!17 = !{ptr @disp_cc_sc7180_clocks, !18, !"disp_cc_sc7180_clocks", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 642, i32 27}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 65, i32 11}
!21 = !{ptr @disp_cc_pll0_out_even, !22, !"disp_cc_pll0_out_even", i1 false, i1 false}
!22 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 57, i32 37}
!23 = !{ptr @post_div_table_disp_cc_pll0_out_even, !24, !"post_div_table_disp_cc_pll0_out_even", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 52, i32 35}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 319, i32 12}
!27 = !{ptr @disp_cc_mdss_ahb_clk, !28, !"disp_cc_mdss_ahb_clk", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 312, i32 26}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 153, i32 11}
!31 = !{ptr @disp_cc_mdss_ahb_clk_src, !32, !"disp_cc_mdss_ahb_clk_src", i1 false, i1 false}
!32 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 146, i32 24}
!33 = !{ptr @disp_cc_parent_map_4, !34, !"disp_cc_parent_map_4", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 119, i32 32}
!35 = !{ptr @ftbl_disp_cc_mdss_ahb_clk_src, !36, !"ftbl_disp_cc_mdss_ahb_clk_src", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 139, i32 30}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 125, i32 15}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 126, i32 15}
!41 = !{ptr @disp_cc_parent_data_4, !42, !"disp_cc_parent_data_4", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 124, i32 37}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 337, i32 12}
!45 = !{ptr @disp_cc_mdss_byte0_clk, !46, !"disp_cc_mdss_byte0_clk", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 330, i32 26}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 167, i32 11}
!49 = !{ptr @disp_cc_mdss_byte0_clk_src, !50, !"disp_cc_mdss_byte0_clk_src", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 161, i32 24}
!51 = !{ptr @disp_cc_parent_map_2, !52, !"disp_cc_parent_map_2", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 95, i32 32}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 102, i32 15}
!55 = !{ptr @disp_cc_parent_data_2, !56, !"disp_cc_parent_data_2", i1 false, i1 false}
!56 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 100, i32 37}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 353, i32 11}
!59 = !{ptr @disp_cc_mdss_byte0_div_clk_src, !60, !"disp_cc_mdss_byte0_div_clk_src", i1 false, i1 false}
!60 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 348, i32 30}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 383, i32 12}
!63 = !{ptr @disp_cc_mdss_byte0_intf_clk, !64, !"disp_cc_mdss_byte0_intf_clk", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 376, i32 26}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 401, i32 12}
!67 = !{ptr @disp_cc_mdss_dp_aux_clk, !68, !"disp_cc_mdss_dp_aux_clk", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 394, i32 26}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 187, i32 11}
!71 = !{ptr @disp_cc_mdss_dp_aux_clk_src, !72, !"disp_cc_mdss_dp_aux_clk_src", i1 false, i1 false}
!72 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 180, i32 24}
!73 = !{ptr @disp_cc_parent_map_0, !74, !"disp_cc_parent_map_0", i1 false, i1 false}
!74 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 75, i32 32}
!75 = !{ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, !76, !"ftbl_disp_cc_mdss_dp_aux_clk_src", i1 false, i1 false}
!76 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 175, i32 30}
!77 = !{ptr @disp_cc_parent_data_0, !78, !"disp_cc_parent_data_0", i1 false, i1 false}
!78 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 79, i32 37}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 419, i32 12}
!81 = !{ptr @disp_cc_mdss_dp_crypto_clk, !82, !"disp_cc_mdss_dp_crypto_clk", i1 false, i1 false}
!82 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 412, i32 26}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 200, i32 11}
!85 = !{ptr @disp_cc_mdss_dp_crypto_clk_src, !86, !"disp_cc_mdss_dp_crypto_clk_src", i1 false, i1 false}
!86 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 194, i32 24}
!87 = !{ptr @disp_cc_parent_map_1, !88, !"disp_cc_parent_map_1", i1 false, i1 false}
!88 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 83, i32 32}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 91, i32 15}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 92, i32 15}
!93 = !{ptr @disp_cc_parent_data_1, !94, !"disp_cc_parent_data_1", i1 false, i1 false}
!94 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 89, i32 37}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 437, i32 12}
!97 = !{ptr @disp_cc_mdss_dp_link_clk, !98, !"disp_cc_mdss_dp_link_clk", i1 false, i1 false}
!98 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 430, i32 26}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 213, i32 11}
!101 = !{ptr @disp_cc_mdss_dp_link_clk_src, !102, !"disp_cc_mdss_dp_link_clk_src", i1 false, i1 false}
!102 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 207, i32 24}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 367, i32 11}
!105 = !{ptr @disp_cc_mdss_dp_link_div_clk_src, !106, !"disp_cc_mdss_dp_link_div_clk_src", i1 false, i1 false}
!106 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 362, i32 30}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 455, i32 12}
!109 = !{ptr @disp_cc_mdss_dp_link_intf_clk, !110, !"disp_cc_mdss_dp_link_intf_clk", i1 false, i1 false}
!110 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 448, i32 26}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 472, i32 12}
!113 = !{ptr @disp_cc_mdss_dp_pixel_clk, !114, !"disp_cc_mdss_dp_pixel_clk", i1 false, i1 false}
!114 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 465, i32 26}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 226, i32 11}
!117 = !{ptr @disp_cc_mdss_dp_pixel_clk_src, !118, !"disp_cc_mdss_dp_pixel_clk_src", i1 false, i1 false}
!118 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 220, i32 24}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 490, i32 12}
!121 = !{ptr @disp_cc_mdss_esc0_clk, !122, !"disp_cc_mdss_esc0_clk", i1 false, i1 false}
!122 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 483, i32 26}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 240, i32 11}
!125 = !{ptr @disp_cc_mdss_esc0_clk_src, !126, !"disp_cc_mdss_esc0_clk_src", i1 false, i1 false}
!126 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 233, i32 24}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 508, i32 12}
!129 = !{ptr @disp_cc_mdss_mdp_clk, !130, !"disp_cc_mdss_mdp_clk", i1 false, i1 false}
!130 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 501, i32 26}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 263, i32 11}
!133 = !{ptr @disp_cc_mdss_mdp_clk_src, !134, !"disp_cc_mdss_mdp_clk_src", i1 false, i1 false}
!134 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 256, i32 24}
!135 = !{ptr @disp_cc_parent_map_3, !136, !"disp_cc_parent_map_3", i1 false, i1 false}
!136 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 105, i32 32}
!137 = !{ptr @ftbl_disp_cc_mdss_mdp_clk_src, !138, !"ftbl_disp_cc_mdss_mdp_clk_src", i1 false, i1 false}
!138 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 247, i32 30}
!139 = !{ptr @disp_cc_parent_data_3, !140, !"disp_cc_parent_data_3", i1 false, i1 false}
!140 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 112, i32 37}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 526, i32 12}
!143 = !{ptr @disp_cc_mdss_mdp_lut_clk, !144, !"disp_cc_mdss_mdp_lut_clk", i1 false, i1 false}
!144 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 519, i32 26}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 543, i32 12}
!147 = !{ptr @disp_cc_mdss_non_gdsc_ahb_clk, !148, !"disp_cc_mdss_non_gdsc_ahb_clk", i1 false, i1 false}
!148 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 536, i32 26}
!149 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 561, i32 12}
!151 = !{ptr @disp_cc_mdss_pclk0_clk, !152, !"disp_cc_mdss_pclk0_clk", i1 false, i1 false}
!152 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 554, i32 26}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 276, i32 11}
!155 = !{ptr @disp_cc_mdss_pclk0_clk_src, !156, !"disp_cc_mdss_pclk0_clk_src", i1 false, i1 false}
!156 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 270, i32 24}
!157 = !{ptr @disp_cc_parent_map_5, !158, !"disp_cc_parent_map_5", i1 false, i1 false}
!158 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 129, i32 32}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 136, i32 15}
!161 = !{ptr @disp_cc_parent_data_5, !162, !"disp_cc_parent_data_5", i1 false, i1 false}
!162 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 134, i32 37}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 579, i32 12}
!165 = !{ptr @disp_cc_mdss_rot_clk, !166, !"disp_cc_mdss_rot_clk", i1 false, i1 false}
!166 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 572, i32 26}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 291, i32 11}
!169 = !{ptr @disp_cc_mdss_rot_clk_src, !170, !"disp_cc_mdss_rot_clk_src", i1 false, i1 false}
!170 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 284, i32 24}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 597, i32 12}
!173 = !{ptr @disp_cc_mdss_rscc_vsync_clk, !174, !"disp_cc_mdss_rscc_vsync_clk", i1 false, i1 false}
!174 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 590, i32 26}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 615, i32 12}
!177 = !{ptr @disp_cc_mdss_vsync_clk, !178, !"disp_cc_mdss_vsync_clk", i1 false, i1 false}
!178 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 608, i32 26}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 305, i32 11}
!181 = !{ptr @disp_cc_mdss_vsync_clk_src, !182, !"disp_cc_mdss_vsync_clk_src", i1 false, i1 false}
!182 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 298, i32 24}
!183 = !{ptr @disp_cc_sc7180_gdscs, !184, !"disp_cc_sc7180_gdscs", i1 false, i1 false}
!184 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 638, i32 21}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 632, i32 11}
!187 = !{ptr @mdss_gdsc, !188, !"mdss_gdsc", i1 false, i1 false}
!188 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 626, i32 20}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 42, i32 12}
!191 = !{ptr @disp_cc_pll0, !192, !"disp_cc_pll0", i1 false, i1 false}
!192 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 35, i32 29}
!193 = !{ptr @fabia_vco, !194, !"fabia_vco", i1 false, i1 false}
!194 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 31, i32 29}
!195 = !{ptr @disp_cc_sc7180_match_table, !196, !"disp_cc_sc7180_match_table", i1 false, i1 false}
!196 = !{!"../drivers/clk/qcom/dispcc-sc7180.c", i32 693, i32 34}
!197 = !{i32 1, !"wchar_size", i32 2}
!198 = !{i32 1, !"min_enum_size", i32 4}
!199 = !{i32 8, !"branch-target-enforcement", i32 0}
!200 = !{i32 8, !"sign-return-address", i32 0}
!201 = !{i32 8, !"sign-return-address-all", i32 0}
!202 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!203 = !{i32 7, !"uwtable", i32 1}
!204 = !{i32 7, !"frame-pointer", i32 2}
!205 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
