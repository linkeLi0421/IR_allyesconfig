; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/dispcc-sc7280.c_pt.bc'
source_filename = "../drivers/clk/qcom/dispcc-sc7280.c"
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
%struct.alpha_pll_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_regmap_div = type { i32, i32, i32, %struct.clk_regmap }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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

@__initcall__kmod_dispcc_sc7280__170_902_disp_cc_sc7280_init4 = internal global ptr @disp_cc_sc7280_init, section ".initcall4.init", align 4
@disp_cc_sc7280_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @disp_cc_sc7280_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @disp_cc_sc7280_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_disp_cc_sc7280_exit = internal global ptr @disp_cc_sc7280_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [52 x i8] c"dispcc_sc7280.description=QTI DISP_CC sc7280 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [50 x i8] c"dispcc_sc7280.file=drivers/clk/qcom/dispcc-sc7280\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [29 x i8] c"dispcc_sc7280.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disp_cc-sc7280\00", [17 x i8] zeroinitializer }, align 32
@disp_cc_sc7280_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-dispcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@disp_cc_sc7280_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @disp_cc_sc7280_regmap_config, ptr @disp_cc_sc7280_clocks, i32 40, ptr null, i32 0, ptr @disp_cc_sc7280_gdscs, i32 1, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@disp_cc_pll0 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 0, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 68), ptr @lucid_vco, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@disp_cc_pll0_config = internal constant { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 79, i32 10922, i32 0, i32 541611673, i32 8801, i32 848963996, i32 1, i32 2053, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@disp_cc_sc7280_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 65536, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@disp_cc_sc7280_clocks = internal global { [40 x ptr], [32 x i8] } { [40 x ptr] [ptr getelementptr (i8, ptr @disp_cc_pll0, i64 20), ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_div_clk_src, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_crypto_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_crypto_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_div_clk_src, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_aux_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_aux_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_div_clk_src, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_pixel_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_edp_pixel_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_lut_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_non_gdsc_ahb_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_rscc_ahb_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_rscc_vsync_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_sleep_clk, i64 12)], [32 x i8] zeroinitializer }, align 32
@disp_cc_sc7280_gdscs = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @disp_cc_mdss_core_gdsc], [28 x i8] zeroinitializer }, align 32
@disp_cc_mdss_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4176, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.2 }, ptr null, i32 4176, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_ahb_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4464, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_5, ptr @ftbl_disp_cc_mdss_ahb_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.4 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4144, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 }, ptr null, i32 4144, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4312, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_2, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 4336, i32 0, i32 4, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4148, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 }, ptr null, i32 4148, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_aux_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4172, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 }, ptr null, i32 4172, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_aux_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4440, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_crypto_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4164, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.26 }, ptr null, i32 4164, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_crypto_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4392, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4156, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 }, ptr null, i32 4156, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4364, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.35 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 4388, i32 0, i32 4, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.38 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4160, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 }, ptr null, i32 4160, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4168, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 }, ptr null, i32 4168, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4416, i8 16, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_aux_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4192, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 }, ptr null, i32 4192, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_aux_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4560, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.51 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_link_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4184, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 }, ptr null, i32 4184, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_link_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4512, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_3, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.56 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_link_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 4536, i32 0, i32 4, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_link_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4188, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 }, ptr null, i32 4188, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_pixel_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4180, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.67 }, ptr null, i32 4180, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_edp_pixel_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4488, i8 16, i8 5, i8 0, ptr @disp_cc_parent_map_3, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4152, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.72 }, ptr null, i32 4152, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4340, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_2, ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.74 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4116, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 }, ptr null, i32 4116, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4240, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_4, ptr @ftbl_disp_cc_mdss_mdp_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_lut_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4132, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 }, ptr null, i32 4132, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_non_gdsc_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8196, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 }, ptr null, i32 8196, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4112, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.88 }, ptr null, i32 4112, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4216, i8 8, i8 5, i8 0, ptr @disp_cc_parent_map_6, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.90 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rot_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4124, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.94 }, ptr null, i32 4124, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rot_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4264, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_4, ptr @ftbl_disp_cc_mdss_mdp_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.96 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rscc_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8204, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.99 }, ptr null, i32 8204, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rscc_vsync_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8200, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.102 }, ptr null, i32 8200, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_vsync_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 4140, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.105 }, ptr null, i32 4140, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_vsync_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 4288, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.107 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_sleep_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20484, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.109 }, ptr null, i32 20484, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_ahb_clk\00", [43 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_5 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 9, i8 4 }], [28 x i8] zeroinitializer }, align 32
@ftbl_disp_cc_mdss_ahb_clk_src = internal constant { [4 x %struct.freq_tbl], [48 x i8] } { [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 37500000, i8 9, i8 31, i16 0, i16 0 }, %struct.freq_tbl { i32 75000000, i8 9, i8 15, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_ahb_clk_src\00", [39 x i8] zeroinitializer }, align 32
@clk_rcg2_shared_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_5 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.3, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_5, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gcc_disp_gpll0_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_byte0_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.8, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_2 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 5, i8 1 }], [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_byte0_clk_src\00", [37 x i8] zeroinitializer }, align 32
@clk_byte2_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_2 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.12, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.10, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_2, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsi0_phy_pll_out_byteclk\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_byte0_div_clk_src\00", [33 x i8] zeroinitializer }, align 32
@clk_regmap_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.14 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.13, ptr @clk_regmap_div_ops, ptr null, ptr null, ptr @.compoundliteral.14, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_byte0_intf_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.17, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disp_cc_mdss_dp_aux_clk\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.19, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.20, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_0 = internal constant { [1 x %struct.parent_map], [30 x i8] } zeroinitializer, align 32
@ftbl_disp_cc_mdss_dp_aux_clk_src = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_dp_aux_clk_src\00", [36 x i8] zeroinitializer }, align 32
@clk_rcg2_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_0 = internal constant { [1 x %struct.clk_parent_data], [16 x i8] } { [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.22, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_dp_crypto_clk\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_crypto_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.25, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_1 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 3, i8 1 }, %struct.parent_map { i8 4, i8 2 }], [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_dp_crypto_clk_src\00", [33 x i8] zeroinitializer }, align 32
@disp_cc_parent_data_1 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.29, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.30, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.27, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dp_phy_pll_link_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dp_phy_pll_vco_div_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_dp_link_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.31, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.32, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disp_cc_mdss_dp_link_clk_src\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.34, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"disp_cc_mdss_dp_link_div_clk_src\00", [63 x i8] zeroinitializer }, align 32
@clk_regmap_div_ro_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.37 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.36, ptr @clk_regmap_div_ro_ops, ptr null, ptr null, ptr @.compoundliteral.37, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_dp_link_intf_clk\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.39, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.40, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_dp_pixel_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.42, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.43, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_dp_pixel_clk_src\00", [34 x i8] zeroinitializer }, align 32
@clk_dp_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.46 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.45, ptr @clk_dp_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_edp_aux_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_edp_aux_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.47, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.48, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disp_cc_mdss_edp_aux_clk_src\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.50, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_edp_link_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.52, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.53, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_3 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 7, i8 1 }, %struct.parent_map { i8 8, i8 2 }], [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_edp_link_clk_src\00", [34 x i8] zeroinitializer }, align 32
@disp_cc_parent_data_3 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.57, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.58, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_3, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edp_phy_pll_link_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"edp_phy_pll_vco_div_clk\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"disp_cc_mdss_edp_link_div_clk_src\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.59, ptr @clk_regmap_div_ro_ops, ptr null, ptr null, ptr @.compoundliteral.60, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_edp_link_intf_clk\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_edp_link_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.62, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.63, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_edp_pixel_clk\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_edp_pixel_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.65, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.66, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_edp_pixel_clk_src\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.68, ptr @clk_dp_ops, ptr null, ptr @disp_cc_parent_data_3, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disp_cc_mdss_esc0_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.70, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.71, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_esc0_clk_src\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.73, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_2, ptr null, i8 2, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_mdp_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.75, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.76, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_4 = internal constant { [4 x %struct.parent_map], [24 x i8] } { [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 2, i8 1 }, %struct.parent_map { i8 9, i8 4 }, %struct.parent_map { i8 1, i8 5 }], [24 x i8] zeroinitializer }, align 32
@ftbl_disp_cc_mdss_mdp_clk_src = internal constant { [6 x %struct.freq_tbl], [56 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 200000000, i8 9, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 300000000, i8 9, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 380000000, i8 2, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 506666667, i8 2, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 608000000, i8 2, i8 4, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_mdp_clk_src\00", [39 x i8] zeroinitializer }, align 32
@disp_cc_parent_data_4 = internal constant { [4 x %struct.clk_parent_data], [32 x i8] } { [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @disp_cc_pll0, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.6, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @disp_cc_pll0, i64 20), ptr null, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.78, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_4, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_mdp_lut_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.80, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.81, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_non_gdsc_ahb_clk\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.83, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.84, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_pclk0_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.86, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.87, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_6 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 6, i8 1 }], [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_pclk0_clk_src\00", [37 x i8] zeroinitializer }, align 32
@clk_pixel_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_6 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.91, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.89, ptr @clk_pixel_ops, ptr null, ptr @disp_cc_parent_data_6, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsi0_phy_pll_out_dsiclk\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_rot_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.92, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.93, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_rot_clk_src\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.95, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_4, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_rscc_ahb_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.97, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.98, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_rscc_vsync_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.100, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.101, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_vsync_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.103, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.104, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_vsync_clk_src\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.106, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disp_cc_sleep_clk\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.108, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_mdss_core_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.110, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 4100, i32 0, i32 0, ptr null, i32 0, i32 2, i32 2, i32 15, i8 5, i16 132, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_core_gdsc\00", [41 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@lucid_vco = internal constant { [1 x %struct.pll_vco], [20 x i8] } { [1 x %struct.pll_vco] [%struct.pll_vco { i32 249600000, i32 2000000000, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disp_cc_pll0\00", [19 x i8] zeroinitializer }, align 32
@clk_alpha_pll_lucid_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.112 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.111, ptr @clk_alpha_pll_lucid_ops, ptr null, ptr @.compoundliteral.112, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.114 = private unnamed_addr constant [22 x i8] c"disp_cc_sc7280_driver\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 890, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 893, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"disp_cc_sc7280_match_table\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 865, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"disp_cc_sc7280_desc\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 857, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant [13 x i8] c"disp_cc_pll0\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 49, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"disp_cc_pll0_config\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 38, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant [29 x i8] c"disp_cc_sc7280_regmap_config\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 849, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"disp_cc_sc7280_clocks\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 800, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"disp_cc_sc7280_gdscs\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 845, i32 21 }
@___asan_gen_.141 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_ahb_clk\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 397, i32 26 }
@___asan_gen_.144 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_ahb_clk_src\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 149, i32 24 }
@___asan_gen_.147 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_byte0_clk\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 415, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_byte0_clk_src\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 163, i32 24 }
@___asan_gen_.153 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_byte0_div_clk_src\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 355, i32 30 }
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_byte0_intf_clk\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 433, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant [24 x i8] c"disp_cc_mdss_dp_aux_clk\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 451, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_dp_aux_clk_src\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 182, i32 24 }
@___asan_gen_.165 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_dp_crypto_clk\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 469, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_dp_crypto_clk_src\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 196, i32 24 }
@___asan_gen_.171 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_dp_link_clk\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 487, i32 26 }
@___asan_gen_.174 = private unnamed_addr constant [29 x i8] c"disp_cc_mdss_dp_link_clk_src\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 209, i32 24 }
@___asan_gen_.177 = private unnamed_addr constant [33 x i8] c"disp_cc_mdss_dp_link_div_clk_src\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 369, i32 30 }
@___asan_gen_.180 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_dp_link_intf_clk\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 505, i32 26 }
@___asan_gen_.183 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_dp_pixel_clk\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 523, i32 26 }
@___asan_gen_.186 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_dp_pixel_clk_src\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 222, i32 24 }
@___asan_gen_.189 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_edp_aux_clk\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 541, i32 26 }
@___asan_gen_.192 = private unnamed_addr constant [29 x i8] c"disp_cc_mdss_edp_aux_clk_src\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 235, i32 24 }
@___asan_gen_.195 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_edp_link_clk\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 559, i32 26 }
@___asan_gen_.198 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_edp_link_clk_src\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 249, i32 24 }
@___asan_gen_.201 = private unnamed_addr constant [34 x i8] c"disp_cc_mdss_edp_link_div_clk_src\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 383, i32 30 }
@___asan_gen_.204 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_edp_link_intf_clk\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 577, i32 26 }
@___asan_gen_.207 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_edp_pixel_clk\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 595, i32 26 }
@___asan_gen_.210 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_edp_pixel_clk_src\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 263, i32 24 }
@___asan_gen_.213 = private unnamed_addr constant [22 x i8] c"disp_cc_mdss_esc0_clk\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 613, i32 26 }
@___asan_gen_.216 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_esc0_clk_src\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 276, i32 24 }
@___asan_gen_.219 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_mdp_clk\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 631, i32 26 }
@___asan_gen_.222 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_mdp_clk_src\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 299, i32 24 }
@___asan_gen_.225 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_mdp_lut_clk\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 649, i32 26 }
@___asan_gen_.228 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_non_gdsc_ahb_clk\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 667, i32 26 }
@___asan_gen_.231 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_pclk0_clk\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 685, i32 26 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_pclk0_clk_src\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 313, i32 24 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_rot_clk\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 703, i32 26 }
@___asan_gen_.240 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_rot_clk_src\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 327, i32 24 }
@___asan_gen_.243 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_rscc_ahb_clk\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 721, i32 26 }
@___asan_gen_.246 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_rscc_vsync_clk\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 739, i32 26 }
@___asan_gen_.249 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_vsync_clk\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 757, i32 26 }
@___asan_gen_.252 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_vsync_clk_src\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 341, i32 24 }
@___asan_gen_.255 = private unnamed_addr constant [18 x i8] c"disp_cc_sleep_clk\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 775, i32 26 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 404, i32 12 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_5\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 122, i32 32 }
@___asan_gen_.266 = private unnamed_addr constant [30 x i8] c"ftbl_disp_cc_mdss_ahb_clk_src\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 142, i32 30 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 156, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_5\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 127, i32 37 }
@___asan_gen_.275 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 128, i32 15 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 129, i32 15 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 422, i32 12 }
@___asan_gen_.285 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_2\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 86, i32 32 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 169, i32 11 }
@___asan_gen_.293 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_2\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 91, i32 37 }
@___asan_gen_.296 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 93, i32 15 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 360, i32 11 }
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 440, i32 12 }
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 458, i32 12 }
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_0\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 66, i32 32 }
@___asan_gen_.318 = private unnamed_addr constant [33 x i8] c"ftbl_disp_cc_mdss_dp_aux_clk_src\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 177, i32 30 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 189, i32 11 }
@___asan_gen_.324 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_0\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 70, i32 37 }
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 476, i32 12 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_1\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 74, i32 32 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 202, i32 11 }
@___asan_gen_.339 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_1\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 80, i32 37 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 82, i32 15 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 83, i32 15 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 494, i32 12 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 215, i32 11 }
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 374, i32 11 }
@___asan_gen_.361 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 512, i32 12 }
@___asan_gen_.366 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 530, i32 12 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 228, i32 11 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 548, i32 12 }
@___asan_gen_.380 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 242, i32 11 }
@___asan_gen_.385 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 566, i32 12 }
@___asan_gen_.389 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_3\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 96, i32 32 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 255, i32 11 }
@___asan_gen_.397 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_3\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 102, i32 37 }
@___asan_gen_.400 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 104, i32 15 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 105, i32 15 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 388, i32 11 }
@___asan_gen_.410 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 584, i32 12 }
@___asan_gen_.415 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 602, i32 12 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 269, i32 11 }
@___asan_gen_.425 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 620, i32 12 }
@___asan_gen_.429 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 283, i32 11 }
@___asan_gen_.434 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 638, i32 12 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_4\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 108, i32 32 }
@___asan_gen_.443 = private unnamed_addr constant [30 x i8] c"ftbl_disp_cc_mdss_mdp_clk_src\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 290, i32 30 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 306, i32 11 }
@___asan_gen_.449 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_4\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 115, i32 37 }
@___asan_gen_.452 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 656, i32 12 }
@___asan_gen_.456 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 674, i32 12 }
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 692, i32 12 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_6\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 132, i32 32 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 319, i32 11 }
@___asan_gen_.474 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_6\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 137, i32 37 }
@___asan_gen_.477 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 139, i32 15 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 710, i32 12 }
@___asan_gen_.484 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 334, i32 11 }
@___asan_gen_.489 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 728, i32 12 }
@___asan_gen_.493 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 746, i32 12 }
@___asan_gen_.498 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 764, i32 12 }
@___asan_gen_.503 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 348, i32 11 }
@___asan_gen_.508 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 782, i32 12 }
@___asan_gen_.512 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_core_gdsc\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 788, i32 20 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 794, i32 11 }
@___asan_gen_.519 = private unnamed_addr constant [10 x i8] c"lucid_vco\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 33, i32 29 }
@___asan_gen_.522 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.523 = private constant [36 x i8] c"../drivers/clk/qcom/dispcc-sc7280.c\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 56, i32 12 }
@___asan_gen_.525 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@llvm.compiler.used = appending global [187 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_disp_cc_sc7280_exit, ptr @__initcall__kmod_dispcc_sc7280__170_902_disp_cc_sc7280_init4, ptr @disp_cc_sc7280_exit, ptr @disp_cc_sc7280_driver, ptr @.str, ptr @disp_cc_sc7280_match_table, ptr @disp_cc_sc7280_desc, ptr @disp_cc_pll0, ptr @disp_cc_pll0_config, ptr @disp_cc_sc7280_regmap_config, ptr @disp_cc_sc7280_clocks, ptr @disp_cc_sc7280_gdscs, ptr @disp_cc_mdss_ahb_clk, ptr @disp_cc_mdss_ahb_clk_src, ptr @disp_cc_mdss_byte0_clk, ptr @disp_cc_mdss_byte0_clk_src, ptr @disp_cc_mdss_byte0_div_clk_src, ptr @disp_cc_mdss_byte0_intf_clk, ptr @disp_cc_mdss_dp_aux_clk, ptr @disp_cc_mdss_dp_aux_clk_src, ptr @disp_cc_mdss_dp_crypto_clk, ptr @disp_cc_mdss_dp_crypto_clk_src, ptr @disp_cc_mdss_dp_link_clk, ptr @disp_cc_mdss_dp_link_clk_src, ptr @disp_cc_mdss_dp_link_div_clk_src, ptr @disp_cc_mdss_dp_link_intf_clk, ptr @disp_cc_mdss_dp_pixel_clk, ptr @disp_cc_mdss_dp_pixel_clk_src, ptr @disp_cc_mdss_edp_aux_clk, ptr @disp_cc_mdss_edp_aux_clk_src, ptr @disp_cc_mdss_edp_link_clk, ptr @disp_cc_mdss_edp_link_clk_src, ptr @disp_cc_mdss_edp_link_div_clk_src, ptr @disp_cc_mdss_edp_link_intf_clk, ptr @disp_cc_mdss_edp_pixel_clk, ptr @disp_cc_mdss_edp_pixel_clk_src, ptr @disp_cc_mdss_esc0_clk, ptr @disp_cc_mdss_esc0_clk_src, ptr @disp_cc_mdss_mdp_clk, ptr @disp_cc_mdss_mdp_clk_src, ptr @disp_cc_mdss_mdp_lut_clk, ptr @disp_cc_mdss_non_gdsc_ahb_clk, ptr @disp_cc_mdss_pclk0_clk, ptr @disp_cc_mdss_pclk0_clk_src, ptr @disp_cc_mdss_rot_clk, ptr @disp_cc_mdss_rot_clk_src, ptr @disp_cc_mdss_rscc_ahb_clk, ptr @disp_cc_mdss_rscc_vsync_clk, ptr @disp_cc_mdss_vsync_clk, ptr @disp_cc_mdss_vsync_clk_src, ptr @disp_cc_sleep_clk, ptr @.str.1, ptr @.compoundliteral, ptr @.compoundliteral.2, ptr @disp_cc_parent_map_5, ptr @ftbl_disp_cc_mdss_ahb_clk_src, ptr @.str.3, ptr @disp_cc_parent_data_5, ptr @.compoundliteral.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @disp_cc_parent_map_2, ptr @.str.10, ptr @disp_cc_parent_data_2, ptr @.compoundliteral.11, ptr @.str.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21, ptr @disp_cc_parent_map_0, ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, ptr @.str.22, ptr @disp_cc_parent_data_0, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @disp_cc_parent_map_1, ptr @.str.27, ptr @disp_cc_parent_data_1, ptr @.compoundliteral.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.compoundliteral.54, ptr @disp_cc_parent_map_3, ptr @.str.55, ptr @disp_cc_parent_data_3, ptr @.compoundliteral.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @disp_cc_parent_map_4, ptr @ftbl_disp_cc_mdss_mdp_clk_src, ptr @.str.78, ptr @disp_cc_parent_data_4, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.compoundliteral.88, ptr @disp_cc_parent_map_6, ptr @.str.89, ptr @disp_cc_parent_data_6, ptr @.compoundliteral.90, ptr @.str.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @disp_cc_mdss_core_gdsc, ptr @.str.110, ptr @lucid_vco, ptr @.str.111, ptr @.compoundliteral.112, ptr @.compoundliteral.113], section "llvm.metadata"
@0 = internal global [181 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7280_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7280_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7280_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_pll0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_pll0_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7280_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7280_clocks to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sc7280_gdscs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_ahb_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_aux_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_aux_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_crypto_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_crypto_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_aux_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_aux_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_link_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_link_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_link_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_link_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_pixel_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_edp_pixel_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_lut_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_non_gdsc_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rot_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rot_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rscc_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rscc_vsync_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_vsync_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_vsync_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sleep_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_ahb_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_0 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_dp_aux_clk_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_mdp_clk_src to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_core_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lucid_vco to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @disp_cc_sc7280_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @disp_cc_sc7280_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @disp_cc_sc7280_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @disp_cc_sc7280_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disp_cc_sc7280_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @disp_cc_sc7280_desc) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_trion_pll_configure(ptr noundef nonnull @disp_cc_pll0, ptr noundef %call, ptr noundef nonnull @disp_cc_pll0_config) #3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 20488, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %call4 = tail call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @disp_cc_sc7280_desc, ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_trion_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @__initcall__kmod_dispcc_sc7280__170_902_disp_cc_sc7280_init4, !1, !"__initcall__kmod_dispcc_sc7280__170_902_disp_cc_sc7280_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 902, i32 1}
!2 = !{ptr @__exitcall_disp_cc_sc7280_exit, !3, !"__exitcall_disp_cc_sc7280_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 908, i32 1}
!4 = !{ptr @__UNIQUE_ID_description171, !5, !"__UNIQUE_ID_description171", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 910, i32 1}
!6 = !{ptr @__UNIQUE_ID_file172, !7, !"__UNIQUE_ID_file172", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 911, i32 1}
!8 = !{ptr @__UNIQUE_ID_license173, !7, !"__UNIQUE_ID_license173", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 893, i32 11}
!11 = !{ptr @disp_cc_sc7280_driver, !12, !"disp_cc_sc7280_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 890, i32 31}
!13 = !{ptr @disp_cc_sc7280_desc, !14, !"disp_cc_sc7280_desc", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 857, i32 34}
!15 = !{ptr @disp_cc_sc7280_regmap_config, !16, !"disp_cc_sc7280_regmap_config", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 849, i32 35}
!17 = !{ptr @disp_cc_sc7280_clocks, !18, !"disp_cc_sc7280_clocks", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 800, i32 27}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 404, i32 12}
!21 = !{ptr @disp_cc_mdss_ahb_clk, !22, !"disp_cc_mdss_ahb_clk", i1 false, i1 false}
!22 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 397, i32 26}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 156, i32 11}
!25 = !{ptr @disp_cc_mdss_ahb_clk_src, !26, !"disp_cc_mdss_ahb_clk_src", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 149, i32 24}
!27 = !{ptr @disp_cc_parent_map_5, !28, !"disp_cc_parent_map_5", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 122, i32 32}
!29 = !{ptr @ftbl_disp_cc_mdss_ahb_clk_src, !30, !"ftbl_disp_cc_mdss_ahb_clk_src", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 142, i32 30}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 128, i32 15}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 129, i32 15}
!35 = !{ptr @disp_cc_parent_data_5, !36, !"disp_cc_parent_data_5", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 127, i32 37}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 422, i32 12}
!39 = !{ptr @disp_cc_mdss_byte0_clk, !40, !"disp_cc_mdss_byte0_clk", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 415, i32 26}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 169, i32 11}
!43 = !{ptr @disp_cc_mdss_byte0_clk_src, !44, !"disp_cc_mdss_byte0_clk_src", i1 false, i1 false}
!44 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 163, i32 24}
!45 = !{ptr @disp_cc_parent_map_2, !46, !"disp_cc_parent_map_2", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 86, i32 32}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 93, i32 15}
!49 = !{ptr @disp_cc_parent_data_2, !50, !"disp_cc_parent_data_2", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 91, i32 37}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 360, i32 11}
!53 = !{ptr @disp_cc_mdss_byte0_div_clk_src, !54, !"disp_cc_mdss_byte0_div_clk_src", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 355, i32 30}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 440, i32 12}
!57 = !{ptr @disp_cc_mdss_byte0_intf_clk, !58, !"disp_cc_mdss_byte0_intf_clk", i1 false, i1 false}
!58 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 433, i32 26}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 458, i32 12}
!61 = !{ptr @disp_cc_mdss_dp_aux_clk, !62, !"disp_cc_mdss_dp_aux_clk", i1 false, i1 false}
!62 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 451, i32 26}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 189, i32 11}
!65 = !{ptr @disp_cc_mdss_dp_aux_clk_src, !66, !"disp_cc_mdss_dp_aux_clk_src", i1 false, i1 false}
!66 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 182, i32 24}
!67 = !{ptr @disp_cc_parent_map_0, !68, !"disp_cc_parent_map_0", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 66, i32 32}
!69 = !{ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, !70, !"ftbl_disp_cc_mdss_dp_aux_clk_src", i1 false, i1 false}
!70 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 177, i32 30}
!71 = !{ptr @disp_cc_parent_data_0, !72, !"disp_cc_parent_data_0", i1 false, i1 false}
!72 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 70, i32 37}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 476, i32 12}
!75 = !{ptr @disp_cc_mdss_dp_crypto_clk, !76, !"disp_cc_mdss_dp_crypto_clk", i1 false, i1 false}
!76 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 469, i32 26}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 202, i32 11}
!79 = !{ptr @disp_cc_mdss_dp_crypto_clk_src, !80, !"disp_cc_mdss_dp_crypto_clk_src", i1 false, i1 false}
!80 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 196, i32 24}
!81 = !{ptr @disp_cc_parent_map_1, !82, !"disp_cc_parent_map_1", i1 false, i1 false}
!82 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 74, i32 32}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 82, i32 15}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 83, i32 15}
!87 = !{ptr @disp_cc_parent_data_1, !88, !"disp_cc_parent_data_1", i1 false, i1 false}
!88 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 80, i32 37}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 494, i32 12}
!91 = !{ptr @disp_cc_mdss_dp_link_clk, !92, !"disp_cc_mdss_dp_link_clk", i1 false, i1 false}
!92 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 487, i32 26}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 215, i32 11}
!95 = !{ptr @disp_cc_mdss_dp_link_clk_src, !96, !"disp_cc_mdss_dp_link_clk_src", i1 false, i1 false}
!96 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 209, i32 24}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 374, i32 11}
!99 = !{ptr @disp_cc_mdss_dp_link_div_clk_src, !100, !"disp_cc_mdss_dp_link_div_clk_src", i1 false, i1 false}
!100 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 369, i32 30}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 512, i32 12}
!103 = !{ptr @disp_cc_mdss_dp_link_intf_clk, !104, !"disp_cc_mdss_dp_link_intf_clk", i1 false, i1 false}
!104 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 505, i32 26}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 530, i32 12}
!107 = !{ptr @disp_cc_mdss_dp_pixel_clk, !108, !"disp_cc_mdss_dp_pixel_clk", i1 false, i1 false}
!108 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 523, i32 26}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 228, i32 11}
!111 = !{ptr @disp_cc_mdss_dp_pixel_clk_src, !112, !"disp_cc_mdss_dp_pixel_clk_src", i1 false, i1 false}
!112 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 222, i32 24}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 548, i32 12}
!115 = !{ptr @disp_cc_mdss_edp_aux_clk, !116, !"disp_cc_mdss_edp_aux_clk", i1 false, i1 false}
!116 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 541, i32 26}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 242, i32 11}
!119 = !{ptr @disp_cc_mdss_edp_aux_clk_src, !120, !"disp_cc_mdss_edp_aux_clk_src", i1 false, i1 false}
!120 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 235, i32 24}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 566, i32 12}
!123 = !{ptr @disp_cc_mdss_edp_link_clk, !124, !"disp_cc_mdss_edp_link_clk", i1 false, i1 false}
!124 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 559, i32 26}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 255, i32 11}
!127 = !{ptr @disp_cc_mdss_edp_link_clk_src, !128, !"disp_cc_mdss_edp_link_clk_src", i1 false, i1 false}
!128 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 249, i32 24}
!129 = !{ptr @disp_cc_parent_map_3, !130, !"disp_cc_parent_map_3", i1 false, i1 false}
!130 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 96, i32 32}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 104, i32 15}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 105, i32 15}
!135 = !{ptr @disp_cc_parent_data_3, !136, !"disp_cc_parent_data_3", i1 false, i1 false}
!136 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 102, i32 37}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 388, i32 11}
!139 = !{ptr @disp_cc_mdss_edp_link_div_clk_src, !140, !"disp_cc_mdss_edp_link_div_clk_src", i1 false, i1 false}
!140 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 383, i32 30}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 584, i32 12}
!143 = !{ptr @disp_cc_mdss_edp_link_intf_clk, !144, !"disp_cc_mdss_edp_link_intf_clk", i1 false, i1 false}
!144 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 577, i32 26}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 602, i32 12}
!147 = !{ptr @disp_cc_mdss_edp_pixel_clk, !148, !"disp_cc_mdss_edp_pixel_clk", i1 false, i1 false}
!148 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 595, i32 26}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 269, i32 11}
!151 = !{ptr @disp_cc_mdss_edp_pixel_clk_src, !152, !"disp_cc_mdss_edp_pixel_clk_src", i1 false, i1 false}
!152 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 263, i32 24}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 620, i32 12}
!155 = !{ptr @disp_cc_mdss_esc0_clk, !156, !"disp_cc_mdss_esc0_clk", i1 false, i1 false}
!156 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 613, i32 26}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 283, i32 11}
!159 = !{ptr @disp_cc_mdss_esc0_clk_src, !160, !"disp_cc_mdss_esc0_clk_src", i1 false, i1 false}
!160 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 276, i32 24}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 638, i32 12}
!163 = !{ptr @disp_cc_mdss_mdp_clk, !164, !"disp_cc_mdss_mdp_clk", i1 false, i1 false}
!164 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 631, i32 26}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 306, i32 11}
!167 = !{ptr @disp_cc_mdss_mdp_clk_src, !168, !"disp_cc_mdss_mdp_clk_src", i1 false, i1 false}
!168 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 299, i32 24}
!169 = !{ptr @disp_cc_parent_map_4, !170, !"disp_cc_parent_map_4", i1 false, i1 false}
!170 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 108, i32 32}
!171 = !{ptr @ftbl_disp_cc_mdss_mdp_clk_src, !172, !"ftbl_disp_cc_mdss_mdp_clk_src", i1 false, i1 false}
!172 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 290, i32 30}
!173 = !{ptr @disp_cc_parent_data_4, !174, !"disp_cc_parent_data_4", i1 false, i1 false}
!174 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 115, i32 37}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 656, i32 12}
!177 = !{ptr @disp_cc_mdss_mdp_lut_clk, !178, !"disp_cc_mdss_mdp_lut_clk", i1 false, i1 false}
!178 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 649, i32 26}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 674, i32 12}
!181 = !{ptr @disp_cc_mdss_non_gdsc_ahb_clk, !182, !"disp_cc_mdss_non_gdsc_ahb_clk", i1 false, i1 false}
!182 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 667, i32 26}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 692, i32 12}
!185 = !{ptr @disp_cc_mdss_pclk0_clk, !186, !"disp_cc_mdss_pclk0_clk", i1 false, i1 false}
!186 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 685, i32 26}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 319, i32 11}
!189 = !{ptr @disp_cc_mdss_pclk0_clk_src, !190, !"disp_cc_mdss_pclk0_clk_src", i1 false, i1 false}
!190 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 313, i32 24}
!191 = !{ptr @disp_cc_parent_map_6, !192, !"disp_cc_parent_map_6", i1 false, i1 false}
!192 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 132, i32 32}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 139, i32 15}
!195 = !{ptr @disp_cc_parent_data_6, !196, !"disp_cc_parent_data_6", i1 false, i1 false}
!196 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 137, i32 37}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 710, i32 12}
!199 = !{ptr @disp_cc_mdss_rot_clk, !200, !"disp_cc_mdss_rot_clk", i1 false, i1 false}
!200 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 703, i32 26}
!201 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 334, i32 11}
!203 = !{ptr @disp_cc_mdss_rot_clk_src, !204, !"disp_cc_mdss_rot_clk_src", i1 false, i1 false}
!204 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 327, i32 24}
!205 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 728, i32 12}
!207 = !{ptr @disp_cc_mdss_rscc_ahb_clk, !208, !"disp_cc_mdss_rscc_ahb_clk", i1 false, i1 false}
!208 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 721, i32 26}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 746, i32 12}
!211 = !{ptr @disp_cc_mdss_rscc_vsync_clk, !212, !"disp_cc_mdss_rscc_vsync_clk", i1 false, i1 false}
!212 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 739, i32 26}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 764, i32 12}
!215 = !{ptr @disp_cc_mdss_vsync_clk, !216, !"disp_cc_mdss_vsync_clk", i1 false, i1 false}
!216 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 757, i32 26}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 348, i32 11}
!219 = !{ptr @disp_cc_mdss_vsync_clk_src, !220, !"disp_cc_mdss_vsync_clk_src", i1 false, i1 false}
!220 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 341, i32 24}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 782, i32 12}
!223 = !{ptr @disp_cc_sleep_clk, !224, !"disp_cc_sleep_clk", i1 false, i1 false}
!224 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 775, i32 26}
!225 = !{ptr @disp_cc_sc7280_gdscs, !226, !"disp_cc_sc7280_gdscs", i1 false, i1 false}
!226 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 845, i32 21}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 794, i32 11}
!229 = !{ptr @disp_cc_mdss_core_gdsc, !230, !"disp_cc_mdss_core_gdsc", i1 false, i1 false}
!230 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 788, i32 20}
!231 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 56, i32 12}
!233 = !{ptr @disp_cc_pll0, !234, !"disp_cc_pll0", i1 false, i1 false}
!234 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 49, i32 29}
!235 = !{ptr @lucid_vco, !236, !"lucid_vco", i1 false, i1 false}
!236 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 33, i32 29}
!237 = !{ptr @disp_cc_pll0_config, !238, !"disp_cc_pll0_config", i1 false, i1 false}
!238 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 38, i32 38}
!239 = !{ptr @disp_cc_sc7280_match_table, !240, !"disp_cc_sc7280_match_table", i1 false, i1 false}
!240 = !{!"../drivers/clk/qcom/dispcc-sc7280.c", i32 865, i32 34}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
