; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/dispcc-sdm845.c_pt.bc'
source_filename = "../drivers/clk/qcom/dispcc-sdm845.c"
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
%struct.qcom_reset_map = type { i32, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_regmap_div = type { i32, i32, i32, %struct.clk_regmap }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.parent_map = type { i8, i8 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
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
%struct.alpha_pll_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_dispcc_sdm845__170_879_disp_cc_sdm845_init4 = internal global ptr @disp_cc_sdm845_init, section ".initcall4.init", align 4
@disp_cc_sdm845_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @disp_cc_sdm845_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @disp_cc_sdm845_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_disp_cc_sdm845_exit = internal global ptr @disp_cc_sdm845_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [50 x i8] c"dispcc_sdm845.file=drivers/clk/qcom/dispcc-sdm845\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [29 x i8] c"dispcc_sdm845.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [51 x i8] c"dispcc_sdm845.description=QTI DISPCC SDM845 Driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disp_cc-sdm845\00", [17 x i8] zeroinitializer }, align 32
@disp_cc_sdm845_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-dispcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@disp_cc_sdm845_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @disp_cc_sdm845_regmap_config, ptr @disp_cc_sdm845_clocks, i32 39, ptr @disp_cc_sdm845_resets, i32 1, ptr @disp_cc_sdm845_gdscs, i32 1, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@disp_cc_pll0 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 0, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 51), ptr null, i32 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.109 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@disp_cc_sdm845_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 65536, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@disp_cc_sdm845_clocks = internal global { [39 x ptr], [36 x i8] } { [39 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_ahb_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_axi_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_esc1_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_esc1_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_lut_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk1_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_pclk1_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_rscc_ahb_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_rscc_vsync_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_pll0, i64 20), ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_div_clk_src, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_div_clk_src, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_crypto_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_crypto_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_intf_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel1_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel1_clk_src, i64 16), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk, i64 12), ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk_src, i64 16)], [36 x i8] zeroinitializer }, align 32
@disp_cc_sdm845_resets = internal constant { [1 x %struct.qcom_reset_map], [24 x i8] } { [1 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 20480, i8 0 }], [24 x i8] zeroinitializer }, align 32
@disp_cc_sdm845_gdscs = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @mdss_gdsc], [28 x i8] zeroinitializer }, align 32
@disp_cc_mdss_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16388, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, ptr null, i32 16388, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16392, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.3 }, ptr null, i32 16392, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8232, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.6 }, ptr null, i32 8232, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8400, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8236, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, ptr null, i32 8236, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8240, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 }, ptr null, i32 8240, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8428, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte1_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8244, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 }, ptr null, i32 8244, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8248, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null, i32 8248, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8456, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr @ftbl_disp_cc_mdss_esc0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8252, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.30 }, ptr null, i32 8252, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_esc1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8480, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_0, ptr @ftbl_disp_cc_mdss_esc0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8204, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.35 }, ptr null, i32 8204, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8328, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_3, ptr @ftbl_disp_cc_mdss_mdp_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_mdp_lut_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8220, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.42 }, ptr null, i32 8220, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8196, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.45 }, ptr null, i32 8196, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8280, i8 8, i8 5, i8 0, ptr @disp_cc_parent_map_4, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.47 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8200, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 }, ptr null, i32 8200, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_pclk1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8304, i8 8, i8 5, i8 0, ptr @disp_cc_parent_map_4, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rot_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8212, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.57 }, ptr null, i32 8212, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rot_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8352, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_3, ptr @ftbl_disp_cc_mdss_rot_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.59 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rscc_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20484, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 }, ptr null, i32 20484, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_rscc_vsync_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20488, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 }, ptr null, i32 20488, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_vsync_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8228, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.67 }, ptr null, i32 8228, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_vsync_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8376, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_2, ptr @ftbl_disp_cc_mdss_esc0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte0_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 8424, i32 0, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.72 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_byte1_div_clk_src = internal global { %struct.clk_regmap_div, [56 x i8] } { %struct.clk_regmap_div { i32 8452, i32 0, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.75 }, ptr null, i32 0, i32 0, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_aux_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8276, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.78 }, ptr null, i32 8276, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_aux_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8604, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_2, ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.80 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_crypto_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8264, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.83 }, ptr null, i32 8264, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_crypto_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8532, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8256, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.90 }, ptr null, i32 8256, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8504, i8 0, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.92 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_link_intf_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8260, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.95 }, ptr null, i32 8260, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8272, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.98 }, ptr null, i32 8272, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8580, i8 16, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.100 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 8268, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.103 }, ptr null, i32 8268, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@disp_cc_mdss_dp_pixel_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 8556, i8 16, i8 5, i8 0, ptr @disp_cc_parent_map_1, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.105 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_ahb_clk\00", [43 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.1, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_axi_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.2, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_byte0_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.4, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.5, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_0 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 2, i8 1 }, %struct.parent_map { i8 4, i8 2 }], [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_byte0_clk_src\00", [37 x i8] zeroinitializer }, align 32
@clk_byte2_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_0 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.10, ptr @.str.10, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.11, ptr @.str.11, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsi0_phy_pll_out_byteclk\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsi1_phy_pll_out_byteclk\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_byte0_intf_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.13, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_byte1_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.15, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.16, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_byte1_clk_src\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_byte1_intf_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_div_clk_src, i64 12)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.21, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disp_cc_mdss_esc0_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_esc0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.23, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.24, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ftbl_disp_cc_mdss_esc0_clk_src = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_esc0_clk_src\00", [38 x i8] zeroinitializer }, align 32
@clk_rcg2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.27 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disp_cc_mdss_esc1_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_esc1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.28, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.29, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_esc1_clk_src\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.31, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_0, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_mdp_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.33, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.34, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_3 = internal constant { [4 x %struct.parent_map], [24 x i8] } { [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 1 }, %struct.parent_map { i8 6, i8 4 }, %struct.parent_map { i8 7, i8 5 }], [24 x i8] zeroinitializer }, align 32
@ftbl_disp_cc_mdss_mdp_clk_src = internal constant { [10 x %struct.freq_tbl], [40 x i8] } { [10 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 85714286, i8 6, i8 13, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 6, i8 11, i16 0, i16 0 }, %struct.freq_tbl { i32 150000000, i8 6, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 171428571, i8 6, i8 6, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 6, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 300000000, i8 6, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 344000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 430000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_mdp_clk_src\00", [39 x i8] zeroinitializer }, align 32
@clk_rcg2_shared_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_3 = internal constant { [4 x %struct.clk_parent_data], [32 x i8] } { [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @disp_cc_pll0, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.38, ptr @.str.38, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.39, ptr @.str.39, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.36, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_3, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gcc_disp_gpll0_clk_src\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gcc_disp_gpll0_div_clk_src\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_mdp_lut_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_mdp_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.40, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.41, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_pclk0_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_pclk0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.43, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.44, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_4 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 3, i8 1 }, %struct.parent_map { i8 5, i8 2 }], [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_pclk0_clk_src\00", [37 x i8] zeroinitializer }, align 32
@clk_pixel_ops = external dso_local constant %struct.clk_ops, align 4
@disp_cc_parent_data_4 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.48, ptr @.str.48, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.49, ptr @.str.49, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.46, ptr @clk_pixel_ops, ptr null, ptr @disp_cc_parent_data_4, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsi0_phy_pll_out_dsiclk\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsi1_phy_pll_out_dsiclk\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_pclk1_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_pclk1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.50, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.51, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_pclk1_clk_src\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.53, ptr @clk_pixel_ops, ptr null, ptr @disp_cc_parent_data_4, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disp_cc_mdss_rot_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_rot_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.56, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ftbl_disp_cc_mdss_rot_clk_src = internal constant { [6 x %struct.freq_tbl], [56 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 171428571, i8 6, i8 6, i16 0, i16 0 }, %struct.freq_tbl { i32 300000000, i8 6, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 344000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 430000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_rot_clk_src\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.58, ptr @clk_rcg2_shared_ops, ptr null, ptr @disp_cc_parent_data_3, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_rscc_ahb_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.60, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_rscc_vsync_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.62, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.63, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disp_cc_mdss_vsync_clk\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_vsync_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.65, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.66, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_2 = internal constant { [1 x %struct.parent_map], [30 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_vsync_clk_src\00", [37 x i8] zeroinitializer }, align 32
@disp_cc_parent_data_2 = internal constant { [1 x %struct.clk_parent_data], [16 x i8] } { [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.68, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_2, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_byte0_div_clk_src\00", [33 x i8] zeroinitializer }, align 32
@clk_regmap_div_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.71 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte0_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.70, ptr @clk_regmap_div_ops, ptr null, ptr null, ptr @.compoundliteral.71, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_byte1_div_clk_src\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_byte1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.73, ptr @clk_regmap_div_ops, ptr null, ptr null, ptr @.compoundliteral.74, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disp_cc_mdss_dp_aux_clk\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_aux_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.76, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.77, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ftbl_disp_cc_mdss_dp_aux_clk_src = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disp_cc_mdss_dp_aux_clk_src\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.79, ptr @clk_rcg2_ops, ptr null, ptr @disp_cc_parent_data_2, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_dp_crypto_clk\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_crypto_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.81, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.82, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@disp_cc_parent_map_1 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 8, i8 1 }, %struct.parent_map { i8 9, i8 2 }], [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_dp_crypto_clk_src\00", [33 x i8] zeroinitializer }, align 32
@disp_cc_parent_data_1 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.86, ptr @.str.86, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.87, ptr @.str.87, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.84, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dp_link_clk_divsel_ten\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dp_vco_divided_clk_src_mux\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disp_cc_mdss_dp_link_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.88, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.89, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disp_cc_mdss_dp_link_clk_src\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.91, ptr @clk_byte2_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_dp_link_intf_clk\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_link_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.93, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.94, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disp_cc_mdss_dp_pixel1_clk\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel1_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.96, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.97, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disp_cc_mdss_dp_pixel1_clk_src\00", [33 x i8] zeroinitializer }, align 32
@clk_dp_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.100 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.99, ptr @clk_dp_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disp_cc_mdss_dp_pixel_clk\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @disp_cc_mdss_dp_pixel_clk_src, i64 16)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.101, ptr @clk_branch2_ops, ptr null, ptr null, ptr @.compoundliteral.102, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disp_cc_mdss_dp_pixel_clk_src\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.104, ptr @clk_dp_ops, ptr null, ptr @disp_cc_parent_data_1, ptr null, i8 3, i32 4 }, [36 x i8] zeroinitializer }, align 32
@mdss_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.106, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 12288, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 36, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mdss_gdsc\00", [22 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disp_cc_pll0\00", [19 x i8] zeroinitializer }, align 32
@clk_alpha_pll_fabia_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.108 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.9, ptr @.str.9, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.107, ptr @clk_alpha_pll_fabia_ops, ptr null, ptr @.compoundliteral.108, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"disp_cc_sdm845_driver\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 867, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 870, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"disp_cc_sdm845_match_table\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 841, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"disp_cc_sdm845_desc\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 831, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"disp_cc_pll0\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 35, i32 29 }
@___asan_gen_.125 = private unnamed_addr constant [29 x i8] c"disp_cc_sdm845_regmap_config\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 823, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant [22 x i8] c"disp_cc_sdm845_clocks\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 769, i32 27 }
@___asan_gen_.131 = private unnamed_addr constant [22 x i8] c"disp_cc_sdm845_resets\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 815, i32 36 }
@___asan_gen_.134 = private unnamed_addr constant [21 x i8] c"disp_cc_sdm845_gdscs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 819, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_ahb_clk\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 340, i32 26 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_axi_clk\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 353, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_byte0_clk\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 367, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_byte0_clk_src\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 109, i32 24 }
@___asan_gen_.149 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_byte0_intf_clk\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 403, i32 26 }
@___asan_gen_.152 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_byte1_clk\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 422, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_byte1_clk_src\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 124, i32 24 }
@___asan_gen_.158 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_byte1_intf_clk\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 458, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [22 x i8] c"disp_cc_mdss_esc0_clk\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 584, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_esc0_clk_src\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 218, i32 24 }
@___asan_gen_.167 = private unnamed_addr constant [22 x i8] c"disp_cc_mdss_esc1_clk\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 602, i32 26 }
@___asan_gen_.170 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_esc1_clk_src\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 232, i32 24 }
@___asan_gen_.173 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_mdp_clk\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 620, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_mdp_clk_src\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 259, i32 24 }
@___asan_gen_.179 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_mdp_lut_clk\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 638, i32 26 }
@___asan_gen_.182 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_pclk0_clk\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 656, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_pclk0_clk_src\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 274, i32 24 }
@___asan_gen_.188 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_pclk1_clk\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 675, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_pclk1_clk_src\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 289, i32 24 }
@___asan_gen_.194 = private unnamed_addr constant [21 x i8] c"disp_cc_mdss_rot_clk\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 693, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_rot_clk_src\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 312, i32 24 }
@___asan_gen_.200 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_rscc_ahb_clk\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 711, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_rscc_vsync_clk\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 724, i32 26 }
@___asan_gen_.206 = private unnamed_addr constant [23 x i8] c"disp_cc_mdss_vsync_clk\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 742, i32 26 }
@___asan_gen_.209 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_vsync_clk_src\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 326, i32 24 }
@___asan_gen_.212 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_byte0_div_clk_src\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 386, i32 30 }
@___asan_gen_.215 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_byte1_div_clk_src\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 441, i32 30 }
@___asan_gen_.218 = private unnamed_addr constant [24 x i8] c"disp_cc_mdss_dp_aux_clk\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 476, i32 26 }
@___asan_gen_.221 = private unnamed_addr constant [28 x i8] c"disp_cc_mdss_dp_aux_clk_src\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 143, i32 24 }
@___asan_gen_.224 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_dp_crypto_clk\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 494, i32 26 }
@___asan_gen_.227 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_dp_crypto_clk_src\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 158, i32 24 }
@___asan_gen_.230 = private unnamed_addr constant [25 x i8] c"disp_cc_mdss_dp_link_clk\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 512, i32 26 }
@___asan_gen_.233 = private unnamed_addr constant [29 x i8] c"disp_cc_mdss_dp_link_clk_src\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 171, i32 24 }
@___asan_gen_.236 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_dp_link_intf_clk\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 531, i32 26 }
@___asan_gen_.239 = private unnamed_addr constant [27 x i8] c"disp_cc_mdss_dp_pixel1_clk\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 548, i32 26 }
@___asan_gen_.242 = private unnamed_addr constant [31 x i8] c"disp_cc_mdss_dp_pixel1_clk_src\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 185, i32 24 }
@___asan_gen_.245 = private unnamed_addr constant [26 x i8] c"disp_cc_mdss_dp_pixel_clk\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 566, i32 26 }
@___asan_gen_.248 = private unnamed_addr constant [30 x i8] c"disp_cc_mdss_dp_pixel_clk_src\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 199, i32 24 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 347, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 360, i32 12 }
@___asan_gen_.258 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 374, i32 12 }
@___asan_gen_.262 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_0\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 50, i32 32 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 115, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_0\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 56, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 57, i32 15 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 58, i32 15 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 59, i32 15 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 410, i32 12 }
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 429, i32 12 }
@___asan_gen_.291 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 130, i32 11 }
@___asan_gen_.296 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 465, i32 12 }
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 591, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [31 x i8] c"ftbl_disp_cc_mdss_esc0_clk_src\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 213, i32 30 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 225, i32 11 }
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 609, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 239, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 627, i32 12 }
@___asan_gen_.326 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_3\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 82, i32 32 }
@___asan_gen_.331 = private unnamed_addr constant [30 x i8] c"ftbl_disp_cc_mdss_mdp_clk_src\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 246, i32 30 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 266, i32 11 }
@___asan_gen_.337 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_3\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 89, i32 37 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 92, i32 15 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 93, i32 15 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 645, i32 12 }
@___asan_gen_.350 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 663, i32 12 }
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_4\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 96, i32 32 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 280, i32 11 }
@___asan_gen_.363 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_4\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 102, i32 37 }
@___asan_gen_.366 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 104, i32 15 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 105, i32 15 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 682, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 295, i32 11 }
@___asan_gen_.381 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 700, i32 12 }
@___asan_gen_.385 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [30 x i8] c"ftbl_disp_cc_mdss_rot_clk_src\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 303, i32 30 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 319, i32 11 }
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 718, i32 12 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 731, i32 12 }
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 749, i32 12 }
@___asan_gen_.406 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_2\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 74, i32 32 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 333, i32 11 }
@___asan_gen_.414 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_2\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 78, i32 37 }
@___asan_gen_.417 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 392, i32 12 }
@___asan_gen_.421 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.422 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 447, i32 12 }
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 483, i32 12 }
@___asan_gen_.431 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [33 x i8] c"ftbl_disp_cc_mdss_dp_aux_clk_src\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 138, i32 30 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 150, i32 11 }
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 501, i32 12 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [21 x i8] c"disp_cc_parent_map_1\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 62, i32 32 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 164, i32 11 }
@___asan_gen_.451 = private unnamed_addr constant [22 x i8] c"disp_cc_parent_data_1\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 68, i32 37 }
@___asan_gen_.454 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 70, i32 15 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 71, i32 15 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 519, i32 12 }
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 177, i32 11 }
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 538, i32 12 }
@___asan_gen_.473 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 555, i32 12 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 191, i32 11 }
@___asan_gen_.483 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 573, i32 12 }
@___asan_gen_.487 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 205, i32 11 }
@___asan_gen_.492 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [10 x i8] c"mdss_gdsc\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 760, i32 20 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 763, i32 11 }
@___asan_gen_.499 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.500 = private constant [36 x i8] c"../drivers/clk/qcom/dispcc-sdm845.c\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 40, i32 12 }
@___asan_gen_.502 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@llvm.compiler.used = appending global [178 x ptr] [ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_disp_cc_sdm845_exit, ptr @__initcall__kmod_dispcc_sdm845__170_879_disp_cc_sdm845_init4, ptr @disp_cc_sdm845_exit, ptr @disp_cc_sdm845_driver, ptr @.str, ptr @disp_cc_sdm845_match_table, ptr @disp_cc_sdm845_desc, ptr @disp_cc_pll0, ptr @disp_cc_sdm845_regmap_config, ptr @disp_cc_sdm845_clocks, ptr @disp_cc_sdm845_resets, ptr @disp_cc_sdm845_gdscs, ptr @disp_cc_mdss_ahb_clk, ptr @disp_cc_mdss_axi_clk, ptr @disp_cc_mdss_byte0_clk, ptr @disp_cc_mdss_byte0_clk_src, ptr @disp_cc_mdss_byte0_intf_clk, ptr @disp_cc_mdss_byte1_clk, ptr @disp_cc_mdss_byte1_clk_src, ptr @disp_cc_mdss_byte1_intf_clk, ptr @disp_cc_mdss_esc0_clk, ptr @disp_cc_mdss_esc0_clk_src, ptr @disp_cc_mdss_esc1_clk, ptr @disp_cc_mdss_esc1_clk_src, ptr @disp_cc_mdss_mdp_clk, ptr @disp_cc_mdss_mdp_clk_src, ptr @disp_cc_mdss_mdp_lut_clk, ptr @disp_cc_mdss_pclk0_clk, ptr @disp_cc_mdss_pclk0_clk_src, ptr @disp_cc_mdss_pclk1_clk, ptr @disp_cc_mdss_pclk1_clk_src, ptr @disp_cc_mdss_rot_clk, ptr @disp_cc_mdss_rot_clk_src, ptr @disp_cc_mdss_rscc_ahb_clk, ptr @disp_cc_mdss_rscc_vsync_clk, ptr @disp_cc_mdss_vsync_clk, ptr @disp_cc_mdss_vsync_clk_src, ptr @disp_cc_mdss_byte0_div_clk_src, ptr @disp_cc_mdss_byte1_div_clk_src, ptr @disp_cc_mdss_dp_aux_clk, ptr @disp_cc_mdss_dp_aux_clk_src, ptr @disp_cc_mdss_dp_crypto_clk, ptr @disp_cc_mdss_dp_crypto_clk_src, ptr @disp_cc_mdss_dp_link_clk, ptr @disp_cc_mdss_dp_link_clk_src, ptr @disp_cc_mdss_dp_link_intf_clk, ptr @disp_cc_mdss_dp_pixel1_clk, ptr @disp_cc_mdss_dp_pixel1_clk_src, ptr @disp_cc_mdss_dp_pixel_clk, ptr @disp_cc_mdss_dp_pixel_clk_src, ptr @.str.1, ptr @.compoundliteral, ptr @.str.2, ptr @.compoundliteral.3, ptr @.str.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @disp_cc_parent_map_0, ptr @.str.7, ptr @disp_cc_parent_data_0, ptr @.compoundliteral.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @ftbl_disp_cc_mdss_esc0_clk_src, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @disp_cc_parent_map_3, ptr @ftbl_disp_cc_mdss_mdp_clk_src, ptr @.str.36, ptr @disp_cc_parent_data_3, ptr @.compoundliteral.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.compoundliteral.45, ptr @disp_cc_parent_map_4, ptr @.str.46, ptr @disp_cc_parent_data_4, ptr @.compoundliteral.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.compoundliteral.57, ptr @ftbl_disp_cc_mdss_rot_clk_src, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @disp_cc_parent_map_2, ptr @.str.68, ptr @disp_cc_parent_data_2, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.compoundliteral.78, ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83, ptr @disp_cc_parent_map_1, ptr @.str.84, ptr @disp_cc_parent_data_1, ptr @.compoundliteral.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @mdss_gdsc, ptr @.str.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109], section "llvm.metadata"
@0 = internal global [172 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sdm845_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sdm845_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sdm845_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_pll0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sdm845_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sdm845_clocks to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sdm845_resets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_sdm845_gdscs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte1_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_esc1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_mdp_lut_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_pclk1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rot_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rot_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rscc_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_rscc_vsync_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_vsync_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_vsync_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte0_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_byte1_div_clk_src to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_aux_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_aux_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_crypto_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_crypto_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_link_intf_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_mdss_dp_pixel_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_0 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_esc0_clk_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_mdp_clk_src to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_rot_clk_src to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_disp_cc_mdss_dp_aux_clk_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_map_1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_cc_parent_data_1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdss_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @disp_cc_sdm845_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @disp_cc_sdm845_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @disp_cc_sdm845_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @disp_cc_sdm845_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disp_cc_sdm845_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %disp_cc_pll0_config = alloca %struct.alpha_pll_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %disp_cc_pll0_config) #4
  %0 = getelementptr inbounds i8, ptr %disp_cc_pll0_config, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 88)
  %call = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @disp_cc_sdm845_desc) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %disp_cc_pll0_config to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 44, ptr %disp_cc_pll0_config, align 4
  %alpha = getelementptr inbounds %struct.alpha_pll_config, ptr %disp_cc_pll0_config, i32 0, i32 1
  %4 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 51882, ptr %alpha, align 4
  call void @clk_fabia_pll_configure(ptr noundef nonnull @disp_cc_pll0, ptr noundef %call, ptr noundef nonnull %disp_cc_pll0_config) #4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 32768, i32 noundef 2032, i32 noundef 2032, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call4 = call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @disp_cc_sdm845_desc, ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %disp_cc_pll0_config) #4
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @__initcall__kmod_dispcc_sdm845__170_879_disp_cc_sdm845_init4, !1, !"__initcall__kmod_dispcc_sdm845__170_879_disp_cc_sdm845_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 879, i32 1}
!2 = !{ptr @__exitcall_disp_cc_sdm845_exit, !3, !"__exitcall_disp_cc_sdm845_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 885, i32 1}
!4 = !{ptr @__UNIQUE_ID_file171, !5, !"__UNIQUE_ID_file171", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 887, i32 1}
!6 = !{ptr @__UNIQUE_ID_license172, !5, !"__UNIQUE_ID_license172", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description173, !8, !"__UNIQUE_ID_description173", i1 false, i1 false}
!8 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 888, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 870, i32 11}
!11 = !{ptr @disp_cc_sdm845_driver, !12, !"disp_cc_sdm845_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 867, i32 31}
!13 = !{ptr @disp_cc_sdm845_desc, !14, !"disp_cc_sdm845_desc", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 831, i32 34}
!15 = !{ptr @disp_cc_sdm845_regmap_config, !16, !"disp_cc_sdm845_regmap_config", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 823, i32 35}
!17 = !{ptr @disp_cc_sdm845_clocks, !18, !"disp_cc_sdm845_clocks", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 769, i32 27}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 347, i32 12}
!21 = !{ptr @disp_cc_mdss_ahb_clk, !22, !"disp_cc_mdss_ahb_clk", i1 false, i1 false}
!22 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 340, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 360, i32 12}
!25 = !{ptr @disp_cc_mdss_axi_clk, !26, !"disp_cc_mdss_axi_clk", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 353, i32 26}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 374, i32 12}
!29 = !{ptr @disp_cc_mdss_byte0_clk, !30, !"disp_cc_mdss_byte0_clk", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 367, i32 26}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 115, i32 11}
!33 = !{ptr @disp_cc_mdss_byte0_clk_src, !34, !"disp_cc_mdss_byte0_clk_src", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 109, i32 24}
!35 = !{ptr @disp_cc_parent_map_0, !36, !"disp_cc_parent_map_0", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 50, i32 32}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 57, i32 15}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 58, i32 15}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 59, i32 15}
!43 = !{ptr @disp_cc_parent_data_0, !44, !"disp_cc_parent_data_0", i1 false, i1 false}
!44 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 56, i32 37}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 410, i32 12}
!47 = !{ptr @disp_cc_mdss_byte0_intf_clk, !48, !"disp_cc_mdss_byte0_intf_clk", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 403, i32 26}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 429, i32 12}
!51 = !{ptr @disp_cc_mdss_byte1_clk, !52, !"disp_cc_mdss_byte1_clk", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 422, i32 26}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 130, i32 11}
!55 = !{ptr @disp_cc_mdss_byte1_clk_src, !56, !"disp_cc_mdss_byte1_clk_src", i1 false, i1 false}
!56 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 124, i32 24}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 465, i32 12}
!59 = !{ptr @disp_cc_mdss_byte1_intf_clk, !60, !"disp_cc_mdss_byte1_intf_clk", i1 false, i1 false}
!60 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 458, i32 26}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 591, i32 12}
!63 = !{ptr @disp_cc_mdss_esc0_clk, !64, !"disp_cc_mdss_esc0_clk", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 584, i32 26}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 225, i32 11}
!67 = !{ptr @disp_cc_mdss_esc0_clk_src, !68, !"disp_cc_mdss_esc0_clk_src", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 218, i32 24}
!69 = !{ptr @ftbl_disp_cc_mdss_esc0_clk_src, !70, !"ftbl_disp_cc_mdss_esc0_clk_src", i1 false, i1 false}
!70 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 213, i32 30}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 609, i32 12}
!73 = !{ptr @disp_cc_mdss_esc1_clk, !74, !"disp_cc_mdss_esc1_clk", i1 false, i1 false}
!74 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 602, i32 26}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 239, i32 11}
!77 = !{ptr @disp_cc_mdss_esc1_clk_src, !78, !"disp_cc_mdss_esc1_clk_src", i1 false, i1 false}
!78 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 232, i32 24}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 627, i32 12}
!81 = !{ptr @disp_cc_mdss_mdp_clk, !82, !"disp_cc_mdss_mdp_clk", i1 false, i1 false}
!82 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 620, i32 26}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 266, i32 11}
!85 = !{ptr @disp_cc_mdss_mdp_clk_src, !86, !"disp_cc_mdss_mdp_clk_src", i1 false, i1 false}
!86 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 259, i32 24}
!87 = !{ptr @disp_cc_parent_map_3, !88, !"disp_cc_parent_map_3", i1 false, i1 false}
!88 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 82, i32 32}
!89 = !{ptr @ftbl_disp_cc_mdss_mdp_clk_src, !90, !"ftbl_disp_cc_mdss_mdp_clk_src", i1 false, i1 false}
!90 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 246, i32 30}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 92, i32 15}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 93, i32 15}
!95 = !{ptr @disp_cc_parent_data_3, !96, !"disp_cc_parent_data_3", i1 false, i1 false}
!96 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 89, i32 37}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 645, i32 12}
!99 = !{ptr @disp_cc_mdss_mdp_lut_clk, !100, !"disp_cc_mdss_mdp_lut_clk", i1 false, i1 false}
!100 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 638, i32 26}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 663, i32 12}
!103 = !{ptr @disp_cc_mdss_pclk0_clk, !104, !"disp_cc_mdss_pclk0_clk", i1 false, i1 false}
!104 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 656, i32 26}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 280, i32 11}
!107 = !{ptr @disp_cc_mdss_pclk0_clk_src, !108, !"disp_cc_mdss_pclk0_clk_src", i1 false, i1 false}
!108 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 274, i32 24}
!109 = !{ptr @disp_cc_parent_map_4, !110, !"disp_cc_parent_map_4", i1 false, i1 false}
!110 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 96, i32 32}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 104, i32 15}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 105, i32 15}
!115 = !{ptr @disp_cc_parent_data_4, !116, !"disp_cc_parent_data_4", i1 false, i1 false}
!116 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 102, i32 37}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 682, i32 12}
!119 = !{ptr @disp_cc_mdss_pclk1_clk, !120, !"disp_cc_mdss_pclk1_clk", i1 false, i1 false}
!120 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 675, i32 26}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 295, i32 11}
!123 = !{ptr @disp_cc_mdss_pclk1_clk_src, !124, !"disp_cc_mdss_pclk1_clk_src", i1 false, i1 false}
!124 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 289, i32 24}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 700, i32 12}
!127 = !{ptr @disp_cc_mdss_rot_clk, !128, !"disp_cc_mdss_rot_clk", i1 false, i1 false}
!128 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 693, i32 26}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 319, i32 11}
!131 = !{ptr @disp_cc_mdss_rot_clk_src, !132, !"disp_cc_mdss_rot_clk_src", i1 false, i1 false}
!132 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 312, i32 24}
!133 = !{ptr @ftbl_disp_cc_mdss_rot_clk_src, !134, !"ftbl_disp_cc_mdss_rot_clk_src", i1 false, i1 false}
!134 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 303, i32 30}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 718, i32 12}
!137 = !{ptr @disp_cc_mdss_rscc_ahb_clk, !138, !"disp_cc_mdss_rscc_ahb_clk", i1 false, i1 false}
!138 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 711, i32 26}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 731, i32 12}
!141 = !{ptr @disp_cc_mdss_rscc_vsync_clk, !142, !"disp_cc_mdss_rscc_vsync_clk", i1 false, i1 false}
!142 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 724, i32 26}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 749, i32 12}
!145 = !{ptr @disp_cc_mdss_vsync_clk, !146, !"disp_cc_mdss_vsync_clk", i1 false, i1 false}
!146 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 742, i32 26}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 333, i32 11}
!149 = !{ptr @disp_cc_mdss_vsync_clk_src, !150, !"disp_cc_mdss_vsync_clk_src", i1 false, i1 false}
!150 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 326, i32 24}
!151 = !{ptr @disp_cc_parent_map_2, !152, !"disp_cc_parent_map_2", i1 false, i1 false}
!152 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 74, i32 32}
!153 = !{ptr @disp_cc_parent_data_2, !154, !"disp_cc_parent_data_2", i1 false, i1 false}
!154 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 78, i32 37}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 392, i32 12}
!157 = !{ptr @disp_cc_mdss_byte0_div_clk_src, !158, !"disp_cc_mdss_byte0_div_clk_src", i1 false, i1 false}
!158 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 386, i32 30}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 447, i32 12}
!161 = !{ptr @disp_cc_mdss_byte1_div_clk_src, !162, !"disp_cc_mdss_byte1_div_clk_src", i1 false, i1 false}
!162 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 441, i32 30}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 483, i32 12}
!165 = !{ptr @disp_cc_mdss_dp_aux_clk, !166, !"disp_cc_mdss_dp_aux_clk", i1 false, i1 false}
!166 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 476, i32 26}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 150, i32 11}
!169 = !{ptr @disp_cc_mdss_dp_aux_clk_src, !170, !"disp_cc_mdss_dp_aux_clk_src", i1 false, i1 false}
!170 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 143, i32 24}
!171 = !{ptr @ftbl_disp_cc_mdss_dp_aux_clk_src, !172, !"ftbl_disp_cc_mdss_dp_aux_clk_src", i1 false, i1 false}
!172 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 138, i32 30}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 501, i32 12}
!175 = !{ptr @disp_cc_mdss_dp_crypto_clk, !176, !"disp_cc_mdss_dp_crypto_clk", i1 false, i1 false}
!176 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 494, i32 26}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 164, i32 11}
!179 = !{ptr @disp_cc_mdss_dp_crypto_clk_src, !180, !"disp_cc_mdss_dp_crypto_clk_src", i1 false, i1 false}
!180 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 158, i32 24}
!181 = !{ptr @disp_cc_parent_map_1, !182, !"disp_cc_parent_map_1", i1 false, i1 false}
!182 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 62, i32 32}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 70, i32 15}
!185 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 71, i32 15}
!187 = !{ptr @disp_cc_parent_data_1, !188, !"disp_cc_parent_data_1", i1 false, i1 false}
!188 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 68, i32 37}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 519, i32 12}
!191 = !{ptr @disp_cc_mdss_dp_link_clk, !192, !"disp_cc_mdss_dp_link_clk", i1 false, i1 false}
!192 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 512, i32 26}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 177, i32 11}
!195 = !{ptr @disp_cc_mdss_dp_link_clk_src, !196, !"disp_cc_mdss_dp_link_clk_src", i1 false, i1 false}
!196 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 171, i32 24}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 538, i32 12}
!199 = !{ptr @disp_cc_mdss_dp_link_intf_clk, !200, !"disp_cc_mdss_dp_link_intf_clk", i1 false, i1 false}
!200 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 531, i32 26}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 555, i32 12}
!203 = !{ptr @disp_cc_mdss_dp_pixel1_clk, !204, !"disp_cc_mdss_dp_pixel1_clk", i1 false, i1 false}
!204 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 548, i32 26}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 191, i32 11}
!207 = !{ptr @disp_cc_mdss_dp_pixel1_clk_src, !208, !"disp_cc_mdss_dp_pixel1_clk_src", i1 false, i1 false}
!208 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 185, i32 24}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 573, i32 12}
!211 = !{ptr @disp_cc_mdss_dp_pixel_clk, !212, !"disp_cc_mdss_dp_pixel_clk", i1 false, i1 false}
!212 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 566, i32 26}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 205, i32 11}
!215 = !{ptr @disp_cc_mdss_dp_pixel_clk_src, !216, !"disp_cc_mdss_dp_pixel_clk_src", i1 false, i1 false}
!216 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 199, i32 24}
!217 = !{ptr @disp_cc_sdm845_resets, !218, !"disp_cc_sdm845_resets", i1 false, i1 false}
!218 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 815, i32 36}
!219 = !{ptr @disp_cc_sdm845_gdscs, !220, !"disp_cc_sdm845_gdscs", i1 false, i1 false}
!220 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 819, i32 21}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 763, i32 11}
!223 = !{ptr @mdss_gdsc, !224, !"mdss_gdsc", i1 false, i1 false}
!224 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 760, i32 20}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 40, i32 12}
!227 = !{ptr @disp_cc_pll0, !228, !"disp_cc_pll0", i1 false, i1 false}
!228 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 35, i32 29}
!229 = !{ptr @disp_cc_sdm845_match_table, !230, !"disp_cc_sdm845_match_table", i1 false, i1 false}
!230 = !{!"../drivers/clk/qcom/dispcc-sdm845.c", i32 841, i32 34}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
