; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/camcc-sc7180.c_pt.bc'
source_filename = "../drivers/clk/qcom/camcc-sc7180.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.clk_alpha_pll = type { i32, ptr, ptr, i32, i8, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.alpha_pll_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_alpha_pll_postdiv = type { i32, i8, ptr, %struct.clk_regmap, i32, ptr, i32 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.parent_map = type { i8, i8 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
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

@__initcall__kmod_camcc_sc7180__171_1718_cam_cc_sc7180_init4 = internal global ptr @cam_cc_sc7180_init, section ".initcall4.init", align 4
@cam_cc_sc7180_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cam_cc_sc7180_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cam_cc_sc7180_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cam_cc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cam_cc_sc7180_exit = internal global ptr @cam_cc_sc7180_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [50 x i8] c"camcc_sc7180.description=QTI CAM_CC SC7180 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [48 x i8] c"camcc_sc7180.file=drivers/clk/qcom/camcc-sc7180\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [28 x i8] c"camcc_sc7180.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cam_cc-sc7180\00", [18 x i8] zeroinitializer }, align 32
@cam_cc_sc7180_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-camcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cam_cc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_clk_suspend, ptr @pm_clk_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@cam_cc_sc7180_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1665, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to acquire XO clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cam_cc_sc7180_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/qcom/camcc-sc7180.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cam_cc_sc7180_probe._entry_ptr = internal global ptr @cam_cc_sc7180_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@cam_cc_sc7180_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1671, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to acquire iface clock\0A\00", [33 x i8] zeroinitializer }, align 32
@cam_cc_sc7180_probe._entry_ptr.10 = internal global ptr @cam_cc_sc7180_probe._entry.8, section ".printk_index", align 4
@cam_cc_sc7180_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @cam_cc_sc7180_regmap_config, ptr @cam_cc_sc7180_clocks, i32 79, ptr null, i32 0, ptr @cam_cc_sc7180_gdscs, i32 5, ptr @cam_cc_sc7180_hws, i32 1 }, [60 x i8] zeroinitializer }, align 32
@cam_cc_pll0 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 0, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 51), ptr @fabia_vco, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.204 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@cam_cc_pll0_config = internal constant { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 31, i32 16384, i32 0, i32 541611673, i32 8295, i32 0, i32 1, i32 18437, i32 0, i32 1073741824, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@cam_cc_pll1 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 4096, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 51), ptr @fabia_vco, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.207 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@cam_cc_pll1_config = internal constant { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 42, i32 5461, i32 0, i32 541611673, i32 8295, i32 0, i32 0, i32 18437, i32 0, i32 1073741824, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@cam_cc_pll2 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 8192, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 85), ptr @agera_vco, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.209 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@cam_cc_pll2_config = internal constant { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 100, i32 0, i32 0, i32 536872960, i32 1073742802, i32 0, i32 783, i32 0, i32 0, i32 67109888, i32 16384, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@cam_cc_pll3 = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 12288, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 51), ptr @fabia_vco, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.212 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@cam_cc_pll3_config = internal constant { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 56, i32 16384, i32 0, i32 541611673, i32 8295, i32 0, i32 0, i32 18437, i32 0, i32 1073741824, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@cam_cc_sc7180_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1694, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register CAM CC clocks\0A\00", [62 x i8] zeroinitializer }, align 32
@cam_cc_sc7180_probe._entry_ptr.13 = internal global ptr @cam_cc_sc7180_probe._entry.11, section ".printk_index", align 4
@cam_cc_sc7180_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 53288, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cam_cc_sc7180_clocks = internal global { [79 x ptr], [68 x i8] } { [79 x ptr] [ptr null, ptr getelementptr (i8, ptr @cam_cc_pll0, i64 20), ptr getelementptr (i8, ptr @cam_cc_pll1, i64 20), ptr getelementptr (i8, ptr @cam_cc_pll2, i64 20), ptr getelementptr (i8, ptr @cam_cc_pll2_out_aux, i64 12), ptr getelementptr (i8, ptr @cam_cc_pll3, i64 20), ptr getelementptr (i8, ptr @cam_cc_camnoc_axi_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_cci_0_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_cci_0_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_cci_1_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_cci_1_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_core_ahb_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_cpas_ahb_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_cphy_rx_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_csi0phytimer_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_csi0phytimer_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_csi1phytimer_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_csi1phytimer_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_csi2phytimer_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_csi2phytimer_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_csi3phytimer_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_csi3phytimer_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_csiphy0_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_csiphy1_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_csiphy2_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_csiphy3_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_fast_ahb_clk_src, i64 16), ptr null, ptr null, ptr getelementptr (i8, ptr @cam_cc_icp_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_icp_clk_src, i64 16), ptr null, ptr null, ptr getelementptr (i8, ptr @cam_cc_ife_0_axi_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_0_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_0_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_ife_0_cphy_rx_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_0_csid_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_0_csid_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_ife_0_dsp_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_1_axi_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_1_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_1_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_ife_1_cphy_rx_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_1_csid_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_1_csid_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_ife_1_dsp_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_lite_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_lite_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_ife_lite_cphy_rx_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_lite_csid_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ife_lite_csid_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_ipe_0_ahb_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ipe_0_areg_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ipe_0_axi_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ipe_0_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_ipe_0_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_jpeg_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_jpeg_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_lrme_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_lrme_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_mclk0_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_mclk0_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_mclk1_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_mclk1_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_mclk2_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_mclk2_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_mclk3_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_mclk3_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_mclk4_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_mclk4_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_bps_ahb_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_bps_areg_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_bps_axi_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_bps_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_bps_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_slow_ahb_clk_src, i64 16), ptr getelementptr (i8, ptr @cam_cc_soc_ahb_clk, i64 12), ptr getelementptr (i8, ptr @cam_cc_sys_tmr_clk, i64 12)], [68 x i8] zeroinitializer }, align 32
@cam_cc_sc7180_gdscs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @bps_gdsc, ptr @ife_0_gdsc, ptr @ife_1_gdsc, ptr @ipe_0_gdsc, ptr @titan_top_gdsc], [44 x i8] zeroinitializer }, align 32
@cam_cc_sc7180_hws = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @cam_cc_pll2_out_early], [28 x i8] zeroinitializer }, align 32
@cam_cc_pll2_out_aux = internal global { %struct.clk_alpha_pll_postdiv, [44 x i8] } { %struct.clk_alpha_pll_postdiv { i32 8192, i8 2, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 85), %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 }, ptr null, i32 0, i32 0, i8 0 }, i32 8, ptr @post_div_table_cam_cc_pll2_out_aux, i32 2 }, [44 x i8] zeroinitializer }, align 32
@cam_cc_camnoc_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45348, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 }, ptr null, i32 45348, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_cci_0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45296, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.20 }, ptr null, i32 45296, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_cci_0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 45272, i8 8, i8 5, i8 0, ptr @cam_cc_parent_map_5, ptr @ftbl_cam_cc_cci_0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_cci_1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45412, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 }, ptr null, i32 45412, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_cci_1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 45388, i8 8, i8 5, i8 0, ptr @cam_cc_parent_map_5, ptr @ftbl_cam_cc_cci_0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_core_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45380, i8 0, i8 0, i8 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 }, ptr null, i32 45380, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_cpas_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45340, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.35 }, ptr null, i32 45340, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_cphy_rx_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 36964, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_3, ptr @ftbl_cam_cc_cphy_rx_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_csi0phytimer_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20508, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 }, ptr null, i32 20508, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_csi0phytimer_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 20484, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_0, ptr @ftbl_cam_cc_csi0phytimer_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_csi1phytimer_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20544, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 }, ptr null, i32 20544, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_csi1phytimer_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 20520, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_0, ptr @ftbl_cam_cc_csi0phytimer_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.51 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_csi2phytimer_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20580, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 }, ptr null, i32 20580, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_csi2phytimer_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 20556, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_0, ptr @ftbl_cam_cc_csi0phytimer_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.56 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_csi3phytimer_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20616, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.59 }, ptr null, i32 20616, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_csi3phytimer_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 20592, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_0, ptr @ftbl_cam_cc_csi0phytimer_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_csiphy0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20512, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 }, ptr null, i32 20512, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_csiphy1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20548, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.67 }, ptr null, i32 20548, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_csiphy2_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20584, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.70 }, ptr null, i32 20584, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_csiphy3_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 20620, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.73 }, ptr null, i32 20620, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_fast_ahb_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 24636, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_0, ptr @ftbl_cam_cc_fast_ahb_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.75 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_icp_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45216, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.78 }, ptr null, i32 45216, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_icp_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 45192, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_2, ptr @ftbl_cam_cc_icp_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.80 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_ife_0_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 36992, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 }, ptr null, i32 36992, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 36904, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 }, ptr null, i32 36904, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 36880, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_4, ptr @ftbl_cam_cc_ife_0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.87 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_ife_0_cphy_rx_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 36988, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.90 }, ptr null, i32 36988, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_0_csid_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 36948, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.93 }, ptr null, i32 36948, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_0_csid_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 36924, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_3, ptr @ftbl_cam_cc_ife_0_csid_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.95 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_ife_0_dsp_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 36920, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.98 }, ptr null, i32 36920, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_1_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 41048, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.100 }, ptr null, i32 41048, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 41000, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.103 }, ptr null, i32 41000, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 40976, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_4, ptr @ftbl_cam_cc_ife_0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.105 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_ife_1_cphy_rx_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 41044, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.108 }, ptr null, i32 41044, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_1_csid_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 41036, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.111 }, ptr null, i32 41036, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_1_csid_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 41012, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_3, ptr @ftbl_cam_cc_ife_0_csid_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_ife_1_dsp_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 41008, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 }, ptr null, i32 41008, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_lite_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45084, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.119 }, ptr null, i32 45084, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_lite_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 45060, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_4, ptr @ftbl_cam_cc_ife_0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.121 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_ife_lite_cphy_rx_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45124, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.124 }, ptr null, i32 45124, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_lite_csid_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45116, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.127 }, ptr null, i32 45116, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ife_lite_csid_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 45092, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_3, ptr @ftbl_cam_cc_ife_0_csid_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.129 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_ipe_0_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 28736, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.132 }, ptr null, i32 28736, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ipe_0_areg_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 28732, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.135 }, ptr null, i32 28732, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ipe_0_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 28728, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.137 }, ptr null, i32 28728, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ipe_0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 28712, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.140 }, ptr null, i32 28712, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_ipe_0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 28688, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_2, ptr @ftbl_cam_cc_ipe_0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.142 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_jpeg_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45156, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.145 }, ptr null, i32 45156, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_jpeg_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 45132, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_2, ptr @ftbl_cam_cc_jpeg_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.147 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_lrme_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45328, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.150 }, ptr null, i32 45328, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_lrme_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 45304, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_6, ptr @ftbl_cam_cc_lrme_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.152 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_mclk0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16412, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.155 }, ptr null, i32 16412, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_mclk0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 16388, i8 8, i8 5, i8 0, ptr @cam_cc_parent_map_1, ptr @ftbl_cam_cc_mclk0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.157 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_mclk1_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16444, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.160 }, ptr null, i32 16444, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_mclk1_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 16420, i8 8, i8 5, i8 0, ptr @cam_cc_parent_map_1, ptr @ftbl_cam_cc_mclk0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.162 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_mclk2_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16476, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.165 }, ptr null, i32 16476, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_mclk2_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 16452, i8 8, i8 5, i8 0, ptr @cam_cc_parent_map_1, ptr @ftbl_cam_cc_mclk0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.167 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_mclk3_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16508, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.170 }, ptr null, i32 16508, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_mclk3_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 16484, i8 8, i8 5, i8 0, ptr @cam_cc_parent_map_1, ptr @ftbl_cam_cc_mclk0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.172 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_mclk4_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 16540, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.175 }, ptr null, i32 16540, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_mclk4_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 16516, i8 8, i8 5, i8 0, ptr @cam_cc_parent_map_1, ptr @ftbl_cam_cc_mclk0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.177 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_bps_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 24688, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.180 }, ptr null, i32 24688, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_bps_areg_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 24660, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.183 }, ptr null, i32 24660, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_bps_axi_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 24632, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.185 }, ptr null, i32 24632, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_bps_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 24616, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.188 }, ptr null, i32 24616, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_bps_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 24592, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_2, ptr @ftbl_cam_cc_bps_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.190 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_slow_ahb_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 24664, i8 0, i8 5, i8 0, ptr @cam_cc_parent_map_0, ptr @ftbl_cam_cc_slow_ahb_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.192 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@cam_cc_soc_ahb_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45376, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.194 }, ptr null, i32 45376, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@cam_cc_sys_tmr_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 0, i32 45224, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.196 }, ptr null, i32 45224, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cam_cc_pll2_out_aux\00", [44 x i8] zeroinitializer }, align 32
@clk_alpha_pll_postdiv_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll2, i64 20), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.14, ptr @clk_alpha_pll_postdiv_ops, ptr null, ptr @.compoundliteral, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@post_div_table_cam_cc_pll2_out_aux = internal constant { [2 x %struct.clk_div_table], [16 x i8] } { [2 x %struct.clk_div_table] [%struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cam_cc_camnoc_axi_clk\00", [42 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.17 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cam_cc_cci_0_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_cci_0_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.18, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.19, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@cam_cc_parent_map_5 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 6 }, %struct.parent_map { i8 6, i8 7 }], [26 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_cci_0_clk_src = internal constant { [4 x %struct.freq_tbl], [48 x i8] } { [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 37500000, i8 1, i8 31, i16 0, i16 0 }, %struct.freq_tbl { i32 50000000, i8 1, i8 23, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 1, i8 11, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_cci_0_clk_src\00", [43 x i8] zeroinitializer }, align 32
@clk_rcg2_shared_ops = external dso_local constant %struct.clk_ops, align 4
@cam_cc_parent_data_5 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.23, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll0, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.24, ptr @.str.24, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.21, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_5, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"core_bi_pll_test_se\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cam_cc_cci_1_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_cci_1_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.25, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.26, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_cci_1_clk_src\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.28, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_5, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cam_cc_core_ahb_clk\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_slow_ahb_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.30, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.31, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cam_cc_cpas_ahb_clk\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_slow_ahb_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.33, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.34, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@cam_cc_parent_map_3 = internal constant { [6 x %struct.parent_map], [20 x i8] } { [6 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 2, i8 2 }, %struct.parent_map { i8 4, i8 4 }, %struct.parent_map { i8 5, i8 5 }, %struct.parent_map { i8 1, i8 6 }, %struct.parent_map { i8 6, i8 7 }], [20 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_cphy_rx_clk_src = internal constant { [4 x %struct.freq_tbl], [48 x i8] } { [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 150000000, i8 1, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 270000000, i8 5, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 360000000, i8 5, i8 5, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cam_cc_cphy_rx_clk_src\00", [41 x i8] zeroinitializer }, align 32
@cam_cc_parent_data_3 = internal constant { [6 x %struct.clk_parent_data], [32 x i8] } { [6 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.23, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll1, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr @cam_cc_pll2_out_early, ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll3, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll0, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.24, ptr @.str.24, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.36, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_3, ptr null, i8 6, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cam_cc_pll2_out_early = internal global { %struct.clk_fixed_factor, [44 x i8] } { %struct.clk_fixed_factor { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 }, i32 1, i32 2 }, [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cam_cc_pll2_out_early\00", [42 x i8] zeroinitializer }, align 32
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cam_cc_pll2\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.39], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.38, ptr @clk_fixed_factor_ops, ptr @.compoundliteral.40, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cam_cc_csi0phytimer_clk\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_csi0phytimer_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.42, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.43, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@cam_cc_parent_map_0 = internal constant { [4 x %struct.parent_map], [24 x i8] } { [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 2, i8 2 }, %struct.parent_map { i8 1, i8 6 }, %struct.parent_map { i8 6, i8 7 }], [24 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_csi0phytimer_clk_src = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 300000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cam_cc_csi0phytimer_clk_src\00", [36 x i8] zeroinitializer }, align 32
@cam_cc_parent_data_0 = internal constant { [4 x %struct.clk_parent_data], [32 x i8] } { [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.23, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll1, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll0, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.24, ptr @.str.24, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.45, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_0, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cam_cc_csi1phytimer_clk\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_csi1phytimer_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.47, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.48, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cam_cc_csi1phytimer_clk_src\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.50, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_0, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cam_cc_csi2phytimer_clk\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_csi2phytimer_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.52, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.53, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cam_cc_csi2phytimer_clk_src\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_0, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cam_cc_csi3phytimer_clk\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_csi3phytimer_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.57, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.58, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cam_cc_csi3phytimer_clk_src\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.60, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_0, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cam_cc_csiphy0_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_cphy_rx_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.62, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.63, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cam_cc_csiphy1_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_cphy_rx_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.65, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.66, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cam_cc_csiphy2_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_cphy_rx_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.68, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.69, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cam_cc_csiphy3_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_cphy_rx_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.71, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.72, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_fast_ahb_clk_src = internal constant { [5 x %struct.freq_tbl], [36 x i8] } { [5 x %struct.freq_tbl] [%struct.freq_tbl { i32 100000000, i8 1, i8 11, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 300000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 404000000, i8 2, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cam_cc_fast_ahb_clk_src\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.74, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_0, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cam_cc_icp_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_icp_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.76, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.77, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@cam_cc_parent_map_2 = internal constant { [5 x %struct.parent_map], [22 x i8] } { [5 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 4, i8 4 }, %struct.parent_map { i8 5, i8 5 }, %struct.parent_map { i8 1, i8 6 }, %struct.parent_map { i8 6, i8 7 }], [22 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_icp_clk_src = internal constant { [6 x %struct.freq_tbl], [56 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 240000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 360000000, i8 5, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 432000000, i8 5, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 480000000, i8 4, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 600000000, i8 1, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cam_cc_icp_clk_src\00", [45 x i8] zeroinitializer }, align 32
@cam_cc_parent_data_2 = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.23, ptr null, i32 0 }, %struct.clk_parent_data { ptr @cam_cc_pll2_out_early, ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll3, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll0, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.24, ptr @.str.24, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.79, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_2, ptr null, i8 5, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_ife_0_axi_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.81, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cam_cc_ife_0_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_ife_0_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.83, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.84, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@cam_cc_parent_map_4 = internal constant { [4 x %struct.parent_map], [24 x i8] } { [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 5, i8 5 }, %struct.parent_map { i8 1, i8 6 }, %struct.parent_map { i8 6, i8 7 }], [24 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_ife_0_clk_src = internal constant { [5 x %struct.freq_tbl], [36 x i8] } { [5 x %struct.freq_tbl] [%struct.freq_tbl { i32 240000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 360000000, i8 5, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 432000000, i8 5, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 600000000, i8 1, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_ife_0_clk_src\00", [43 x i8] zeroinitializer }, align 32
@cam_cc_parent_data_4 = internal constant { [4 x %struct.clk_parent_data], [32 x i8] } { [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.23, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll3, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll0, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.24, ptr @.str.24, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.86, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_4, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cam_cc_ife_0_cphy_rx_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_cphy_rx_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.88, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.89, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cam_cc_ife_0_csid_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_ife_0_csid_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.91, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.92, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_ife_0_csid_clk_src = internal constant { [5 x %struct.freq_tbl], [36 x i8] } { [5 x %struct.freq_tbl] [%struct.freq_tbl { i32 150000000, i8 1, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 270000000, i8 5, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 360000000, i8 5, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 480000000, i8 4, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cam_cc_ife_0_csid_clk_src\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.94, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_3, ptr null, i8 6, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_ife_0_dsp_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_ife_0_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.96, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.97, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_ife_1_axi_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.99, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cam_cc_ife_1_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_ife_1_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.101, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.102, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_ife_1_clk_src\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.104, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_4, ptr null, i8 4, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cam_cc_ife_1_cphy_rx_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_cphy_rx_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.106, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.107, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cam_cc_ife_1_csid_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_ife_1_csid_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.109, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.110, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cam_cc_ife_1_csid_clk_src\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.112, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_3, ptr null, i8 6, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_ife_1_dsp_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_ife_1_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.114, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.115, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cam_cc_ife_lite_clk\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_ife_lite_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.117, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.118, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cam_cc_ife_lite_clk_src\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.120, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_4, ptr null, i8 4, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cam_cc_ife_lite_cphy_rx_clk\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_cphy_rx_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.122, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.123, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cam_cc_ife_lite_csid_clk\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_ife_lite_csid_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.125, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.126, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cam_cc_ife_lite_csid_clk_src\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.128, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_3, ptr null, i8 6, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_ipe_0_ahb_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_slow_ahb_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.130, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.131, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cam_cc_ipe_0_areg_clk\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_fast_ahb_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.133, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.134, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_ipe_0_axi_clk\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.136, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cam_cc_ipe_0_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_ipe_0_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.138, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.139, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_ipe_0_clk_src = internal constant { [6 x %struct.freq_tbl], [56 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 240000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 360000000, i8 5, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 432000000, i8 5, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 540000000, i8 5, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 600000000, i8 1, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_ipe_0_clk_src\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.141, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_2, ptr null, i8 5, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cam_cc_jpeg_clk\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_jpeg_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.143, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.144, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_jpeg_clk_src = internal constant { [6 x %struct.freq_tbl], [56 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 66666667, i8 1, i8 17, i16 0, i16 0 }, %struct.freq_tbl { i32 133333333, i8 1, i8 8, i16 0, i16 0 }, %struct.freq_tbl { i32 216000000, i8 5, i8 9, i16 0, i16 0 }, %struct.freq_tbl { i32 320000000, i8 4, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 600000000, i8 1, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cam_cc_jpeg_clk_src\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.146, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_2, ptr null, i8 5, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cam_cc_lrme_clk\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_lrme_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.148, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.149, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@cam_cc_parent_map_6 = internal constant { [5 x %struct.parent_map], [22 x i8] } { [5 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 2, i8 2 }, %struct.parent_map { i8 5, i8 5 }, %struct.parent_map { i8 1, i8 6 }, %struct.parent_map { i8 6, i8 7 }], [22 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_lrme_clk_src = internal constant { [5 x %struct.freq_tbl], [36 x i8] } { [5 x %struct.freq_tbl] [%struct.freq_tbl { i32 200000000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 216000000, i8 5, i8 9, i16 0, i16 0 }, %struct.freq_tbl { i32 300000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 404000000, i8 2, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cam_cc_lrme_clk_src\00", [44 x i8] zeroinitializer }, align 32
@cam_cc_parent_data_6 = internal constant { [5 x %struct.clk_parent_data], [48 x i8] } { [5 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.23, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll1, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll3, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll0, i64 20), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.24, ptr @.str.24, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.151, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_6, ptr null, i8 5, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cam_cc_mclk0_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_mclk0_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.153, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.154, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@cam_cc_parent_map_1 = internal constant { [3 x %struct.parent_map], [26 x i8] } { [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 3, i8 1 }, %struct.parent_map { i8 6, i8 7 }], [26 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_mclk0_clk_src = internal constant { [4 x %struct.freq_tbl], [48 x i8] } { [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 24000000, i8 3, i8 19, i16 1, i16 2 }, %struct.freq_tbl { i32 64000000, i8 3, i8 14, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_mclk0_clk_src\00", [43 x i8] zeroinitializer }, align 32
@cam_cc_parent_data_1 = internal constant { [3 x %struct.clk_parent_data], [48 x i8] } { [3 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.23, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_pll2_out_aux, i64 12), ptr null, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.24, ptr @.str.24, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.156, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cam_cc_mclk1_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_mclk1_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.158, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.159, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_mclk1_clk_src\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.161, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cam_cc_mclk2_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_mclk2_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.163, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.164, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_mclk2_clk_src\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.166, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cam_cc_mclk3_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_mclk3_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.168, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.169, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_mclk3_clk_src\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.171, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cam_cc_mclk4_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_mclk4_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.173, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.174, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cam_cc_mclk4_clk_src\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.176, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_1, ptr null, i8 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cam_cc_bps_ahb_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_slow_ahb_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.178, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.179, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cam_cc_bps_areg_clk\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_fast_ahb_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.181, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.182, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cam_cc_bps_axi_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.184, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cam_cc_bps_clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @cam_cc_bps_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.186, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.187, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_bps_clk_src = internal constant { [6 x %struct.freq_tbl], [56 x i8] } { [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 200000000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 360000000, i8 5, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 432000000, i8 5, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 480000000, i8 4, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 600000000, i8 1, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cam_cc_bps_clk_src\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.189, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_2, ptr null, i8 5, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ftbl_cam_cc_slow_ahb_clk_src = internal constant { [2 x %struct.freq_tbl], [40 x i8] } { [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 80000000, i8 1, i8 14, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cam_cc_slow_ahb_clk_src\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.191, ptr @clk_rcg2_shared_ops, ptr null, ptr @cam_cc_parent_data_0, ptr null, i8 4, i32 4100 }, [36 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cam_cc_soc_ahb_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.193, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cam_cc_sys_tmr_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.195, ptr @clk_branch2_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@bps_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.197, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 24580, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 4, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@ife_0_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.198, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 36868, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 0, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@ife_1_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.199, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 40964, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 0, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@ipe_0_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.200, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 28676, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 4, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@titan_top_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.201, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 45364, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 0, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bps_gdsc\00", [23 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ife_0_gdsc\00", [21 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ife_1_gdsc\00", [21 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipe_0_gdsc\00", [21 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"titan_top_gdsc\00", [17 x i8] zeroinitializer }, align 32
@fabia_vco = internal constant { [1 x %struct.pll_vco], [20 x i8] } { [1 x %struct.pll_vco] [%struct.pll_vco { i32 249600000, i32 2000000000, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cam_cc_pll0\00", [20 x i8] zeroinitializer }, align 32
@clk_alpha_pll_fabia_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.203 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.23, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.204 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.202, ptr @clk_alpha_pll_fabia_ops, ptr null, ptr @.compoundliteral.203, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cam_cc_pll1\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.206 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.23, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.205, ptr @clk_alpha_pll_fabia_ops, ptr null, ptr @.compoundliteral.206, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@agera_vco = internal constant { [1 x %struct.pll_vco], [20 x i8] } { [1 x %struct.pll_vco] [%struct.pll_vco { i32 600000000, i32 -994967296, i32 0 }], [20 x i8] zeroinitializer }, align 32
@clk_alpha_pll_agera_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.208 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.23, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.39, ptr @clk_alpha_pll_agera_ops, ptr null, ptr @.compoundliteral.208, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cam_cc_pll3\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.23, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.212 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.210, ptr @clk_alpha_pll_fabia_ops, ptr null, ptr @.compoundliteral.211, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.213 = private unnamed_addr constant [21 x i8] c"cam_cc_sc7180_driver\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1705, i32 31 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1708, i32 11 }
@___asan_gen_.219 = private unnamed_addr constant [26 x i8] c"cam_cc_sc7180_match_table\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1644, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant [14 x i8] c"cam_cc_pm_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1701, i32 32 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1663, i32 31 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1665, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1669, i32 31 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1671, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [19 x i8] c"cam_cc_sc7180_desc\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1634, i32 34 }
@___asan_gen_.258 = private unnamed_addr constant [12 x i8] c"cam_cc_pll0\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 54, i32 29 }
@___asan_gen_.261 = private unnamed_addr constant [19 x i8] c"cam_cc_pll0_config\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 44, i32 38 }
@___asan_gen_.264 = private unnamed_addr constant [12 x i8] c"cam_cc_pll1\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 81, i32 29 }
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"cam_cc_pll1_config\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 72, i32 38 }
@___asan_gen_.270 = private unnamed_addr constant [12 x i8] c"cam_cc_pll2\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 108, i32 29 }
@___asan_gen_.273 = private unnamed_addr constant [19 x i8] c"cam_cc_pll2_config\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 99, i32 38 }
@___asan_gen_.276 = private unnamed_addr constant [12 x i8] c"cam_cc_pll3\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 169, i32 29 }
@___asan_gen_.279 = private unnamed_addr constant [19 x i8] c"cam_cc_pll3_config\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 160, i32 38 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1694, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [28 x i8] c"cam_cc_sc7180_regmap_config\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1626, i32 35 }
@___asan_gen_.291 = private unnamed_addr constant [21 x i8] c"cam_cc_sc7180_clocks\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1542, i32 27 }
@___asan_gen_.294 = private unnamed_addr constant [20 x i8] c"cam_cc_sc7180_gdscs\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1618, i32 21 }
@___asan_gen_.297 = private unnamed_addr constant [18 x i8] c"cam_cc_sc7180_hws\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1538, i32 23 }
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c"cam_cc_pll2_out_aux\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 141, i32 37 }
@___asan_gen_.303 = private unnamed_addr constant [22 x i8] c"cam_cc_camnoc_axi_clk\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 806, i32 26 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"cam_cc_cci_0_clk\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 819, i32 26 }
@___asan_gen_.309 = private unnamed_addr constant [21 x i8] c"cam_cc_cci_0_clk_src\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 318, i32 24 }
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c"cam_cc_cci_1_clk\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 837, i32 26 }
@___asan_gen_.315 = private unnamed_addr constant [21 x i8] c"cam_cc_cci_1_clk_src\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 332, i32 24 }
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c"cam_cc_core_ahb_clk\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 855, i32 26 }
@___asan_gen_.321 = private unnamed_addr constant [20 x i8] c"cam_cc_cpas_ahb_clk\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 873, i32 26 }
@___asan_gen_.324 = private unnamed_addr constant [23 x i8] c"cam_cc_cphy_rx_clk_src\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 353, i32 24 }
@___asan_gen_.327 = private unnamed_addr constant [24 x i8] c"cam_cc_csi0phytimer_clk\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 891, i32 26 }
@___asan_gen_.330 = private unnamed_addr constant [28 x i8] c"cam_cc_csi0phytimer_clk_src\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 372, i32 24 }
@___asan_gen_.333 = private unnamed_addr constant [24 x i8] c"cam_cc_csi1phytimer_clk\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 909, i32 26 }
@___asan_gen_.336 = private unnamed_addr constant [28 x i8] c"cam_cc_csi1phytimer_clk_src\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 386, i32 24 }
@___asan_gen_.339 = private unnamed_addr constant [24 x i8] c"cam_cc_csi2phytimer_clk\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 927, i32 26 }
@___asan_gen_.342 = private unnamed_addr constant [28 x i8] c"cam_cc_csi2phytimer_clk_src\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 400, i32 24 }
@___asan_gen_.345 = private unnamed_addr constant [24 x i8] c"cam_cc_csi3phytimer_clk\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 945, i32 26 }
@___asan_gen_.348 = private unnamed_addr constant [28 x i8] c"cam_cc_csi3phytimer_clk_src\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 414, i32 24 }
@___asan_gen_.351 = private unnamed_addr constant [19 x i8] c"cam_cc_csiphy0_clk\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 963, i32 26 }
@___asan_gen_.354 = private unnamed_addr constant [19 x i8] c"cam_cc_csiphy1_clk\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 981, i32 26 }
@___asan_gen_.357 = private unnamed_addr constant [19 x i8] c"cam_cc_csiphy2_clk\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 999, i32 26 }
@___asan_gen_.360 = private unnamed_addr constant [19 x i8] c"cam_cc_csiphy3_clk\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1017, i32 26 }
@___asan_gen_.363 = private unnamed_addr constant [24 x i8] c"cam_cc_fast_ahb_clk_src\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 436, i32 24 }
@___asan_gen_.366 = private unnamed_addr constant [15 x i8] c"cam_cc_icp_clk\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1035, i32 26 }
@___asan_gen_.369 = private unnamed_addr constant [19 x i8] c"cam_cc_icp_clk_src\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 459, i32 24 }
@___asan_gen_.372 = private unnamed_addr constant [21 x i8] c"cam_cc_ife_0_axi_clk\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1053, i32 26 }
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"cam_cc_ife_0_clk\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1066, i32 26 }
@___asan_gen_.378 = private unnamed_addr constant [21 x i8] c"cam_cc_ife_0_clk_src\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 481, i32 24 }
@___asan_gen_.381 = private unnamed_addr constant [25 x i8] c"cam_cc_ife_0_cphy_rx_clk\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1084, i32 26 }
@___asan_gen_.384 = private unnamed_addr constant [22 x i8] c"cam_cc_ife_0_csid_clk\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1102, i32 26 }
@___asan_gen_.387 = private unnamed_addr constant [26 x i8] c"cam_cc_ife_0_csid_clk_src\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 503, i32 24 }
@___asan_gen_.390 = private unnamed_addr constant [21 x i8] c"cam_cc_ife_0_dsp_clk\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1120, i32 26 }
@___asan_gen_.393 = private unnamed_addr constant [21 x i8] c"cam_cc_ife_1_axi_clk\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1138, i32 26 }
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"cam_cc_ife_1_clk\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1151, i32 26 }
@___asan_gen_.399 = private unnamed_addr constant [21 x i8] c"cam_cc_ife_1_clk_src\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 517, i32 24 }
@___asan_gen_.402 = private unnamed_addr constant [25 x i8] c"cam_cc_ife_1_cphy_rx_clk\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1169, i32 26 }
@___asan_gen_.405 = private unnamed_addr constant [22 x i8] c"cam_cc_ife_1_csid_clk\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1187, i32 26 }
@___asan_gen_.408 = private unnamed_addr constant [26 x i8] c"cam_cc_ife_1_csid_clk_src\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 531, i32 24 }
@___asan_gen_.411 = private unnamed_addr constant [21 x i8] c"cam_cc_ife_1_dsp_clk\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1205, i32 26 }
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c"cam_cc_ife_lite_clk\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1223, i32 26 }
@___asan_gen_.417 = private unnamed_addr constant [24 x i8] c"cam_cc_ife_lite_clk_src\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 545, i32 24 }
@___asan_gen_.420 = private unnamed_addr constant [28 x i8] c"cam_cc_ife_lite_cphy_rx_clk\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1241, i32 26 }
@___asan_gen_.423 = private unnamed_addr constant [25 x i8] c"cam_cc_ife_lite_csid_clk\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1259, i32 26 }
@___asan_gen_.426 = private unnamed_addr constant [29 x i8] c"cam_cc_ife_lite_csid_clk_src\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 560, i32 24 }
@___asan_gen_.429 = private unnamed_addr constant [21 x i8] c"cam_cc_ipe_0_ahb_clk\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1277, i32 26 }
@___asan_gen_.432 = private unnamed_addr constant [22 x i8] c"cam_cc_ipe_0_areg_clk\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1295, i32 26 }
@___asan_gen_.435 = private unnamed_addr constant [21 x i8] c"cam_cc_ipe_0_axi_clk\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1313, i32 26 }
@___asan_gen_.438 = private unnamed_addr constant [17 x i8] c"cam_cc_ipe_0_clk\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1326, i32 26 }
@___asan_gen_.441 = private unnamed_addr constant [21 x i8] c"cam_cc_ipe_0_clk_src\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 583, i32 24 }
@___asan_gen_.444 = private unnamed_addr constant [16 x i8] c"cam_cc_jpeg_clk\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1344, i32 26 }
@___asan_gen_.447 = private unnamed_addr constant [20 x i8] c"cam_cc_jpeg_clk_src\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 606, i32 24 }
@___asan_gen_.450 = private unnamed_addr constant [16 x i8] c"cam_cc_lrme_clk\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1362, i32 26 }
@___asan_gen_.453 = private unnamed_addr constant [20 x i8] c"cam_cc_lrme_clk_src\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 628, i32 24 }
@___asan_gen_.456 = private unnamed_addr constant [17 x i8] c"cam_cc_mclk0_clk\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1380, i32 26 }
@___asan_gen_.459 = private unnamed_addr constant [21 x i8] c"cam_cc_mclk0_clk_src\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 649, i32 24 }
@___asan_gen_.462 = private unnamed_addr constant [17 x i8] c"cam_cc_mclk1_clk\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1398, i32 26 }
@___asan_gen_.465 = private unnamed_addr constant [21 x i8] c"cam_cc_mclk1_clk_src\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 663, i32 24 }
@___asan_gen_.468 = private unnamed_addr constant [17 x i8] c"cam_cc_mclk2_clk\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1416, i32 26 }
@___asan_gen_.471 = private unnamed_addr constant [21 x i8] c"cam_cc_mclk2_clk_src\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 677, i32 24 }
@___asan_gen_.474 = private unnamed_addr constant [17 x i8] c"cam_cc_mclk3_clk\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1434, i32 26 }
@___asan_gen_.477 = private unnamed_addr constant [21 x i8] c"cam_cc_mclk3_clk_src\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 691, i32 24 }
@___asan_gen_.480 = private unnamed_addr constant [17 x i8] c"cam_cc_mclk4_clk\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1452, i32 26 }
@___asan_gen_.483 = private unnamed_addr constant [21 x i8] c"cam_cc_mclk4_clk_src\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 705, i32 24 }
@___asan_gen_.486 = private unnamed_addr constant [19 x i8] c"cam_cc_bps_ahb_clk\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 739, i32 26 }
@___asan_gen_.489 = private unnamed_addr constant [20 x i8] c"cam_cc_bps_areg_clk\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 757, i32 26 }
@___asan_gen_.492 = private unnamed_addr constant [19 x i8] c"cam_cc_bps_axi_clk\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 775, i32 26 }
@___asan_gen_.495 = private unnamed_addr constant [15 x i8] c"cam_cc_bps_clk\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 788, i32 26 }
@___asan_gen_.498 = private unnamed_addr constant [19 x i8] c"cam_cc_bps_clk_src\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 297, i32 24 }
@___asan_gen_.501 = private unnamed_addr constant [24 x i8] c"cam_cc_slow_ahb_clk_src\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 724, i32 24 }
@___asan_gen_.504 = private unnamed_addr constant [19 x i8] c"cam_cc_soc_ahb_clk\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1470, i32 26 }
@___asan_gen_.507 = private unnamed_addr constant [19 x i8] c"cam_cc_sys_tmr_clk\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1483, i32 26 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 149, i32 11 }
@___asan_gen_.513 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [35 x i8] c"post_div_table_cam_cc_pll2_out_aux\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 136, i32 35 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 813, i32 12 }
@___asan_gen_.521 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 826, i32 12 }
@___asan_gen_.525 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [20 x i8] c"cam_cc_parent_map_5\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 260, i32 32 }
@___asan_gen_.530 = private unnamed_addr constant [26 x i8] c"ftbl_cam_cc_cci_0_clk_src\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 311, i32 30 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 325, i32 11 }
@___asan_gen_.536 = private unnamed_addr constant [21 x i8] c"cam_cc_parent_data_5\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 266, i32 37 }
@___asan_gen_.539 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 267, i32 15 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 269, i32 15 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 844, i32 12 }
@___asan_gen_.549 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.550 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 339, i32 11 }
@___asan_gen_.554 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 862, i32 12 }
@___asan_gen_.558 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.559 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 880, i32 12 }
@___asan_gen_.563 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.565 = private unnamed_addr constant [20 x i8] c"cam_cc_parent_map_3\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 228, i32 32 }
@___asan_gen_.568 = private unnamed_addr constant [28 x i8] c"ftbl_cam_cc_cphy_rx_clk_src\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 346, i32 30 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 360, i32 11 }
@___asan_gen_.574 = private unnamed_addr constant [21 x i8] c"cam_cc_parent_data_3\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 237, i32 37 }
@___asan_gen_.577 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [22 x i8] c"cam_cc_pll2_out_early\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 125, i32 32 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 129, i32 11 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 130, i32 37 }
@___asan_gen_.587 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 898, i32 12 }
@___asan_gen_.592 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [20 x i8] c"cam_cc_parent_map_0\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 186, i32 32 }
@___asan_gen_.597 = private unnamed_addr constant [33 x i8] c"ftbl_cam_cc_csi0phytimer_clk_src\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 367, i32 30 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 379, i32 11 }
@___asan_gen_.603 = private unnamed_addr constant [21 x i8] c"cam_cc_parent_data_0\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 193, i32 37 }
@___asan_gen_.606 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 916, i32 12 }
@___asan_gen_.610 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 393, i32 11 }
@___asan_gen_.615 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 934, i32 12 }
@___asan_gen_.619 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 407, i32 11 }
@___asan_gen_.624 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 952, i32 12 }
@___asan_gen_.628 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 421, i32 11 }
@___asan_gen_.633 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 970, i32 12 }
@___asan_gen_.637 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 988, i32 12 }
@___asan_gen_.642 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.643 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1006, i32 12 }
@___asan_gen_.647 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.648 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1024, i32 12 }
@___asan_gen_.652 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.654 = private unnamed_addr constant [29 x i8] c"ftbl_cam_cc_fast_ahb_clk_src\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 428, i32 30 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 443, i32 11 }
@___asan_gen_.660 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1042, i32 12 }
@___asan_gen_.664 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.665 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [20 x i8] c"cam_cc_parent_map_2\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 212, i32 32 }
@___asan_gen_.669 = private unnamed_addr constant [24 x i8] c"ftbl_cam_cc_icp_clk_src\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 450, i32 30 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 466, i32 11 }
@___asan_gen_.675 = private unnamed_addr constant [21 x i8] c"cam_cc_parent_data_2\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 220, i32 37 }
@___asan_gen_.678 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1060, i32 12 }
@___asan_gen_.682 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1073, i32 12 }
@___asan_gen_.686 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.687 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.688 = private unnamed_addr constant [20 x i8] c"cam_cc_parent_map_4\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 246, i32 32 }
@___asan_gen_.691 = private unnamed_addr constant [26 x i8] c"ftbl_cam_cc_ife_0_clk_src\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 473, i32 30 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 488, i32 11 }
@___asan_gen_.697 = private unnamed_addr constant [21 x i8] c"cam_cc_parent_data_4\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 253, i32 37 }
@___asan_gen_.700 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1091, i32 12 }
@___asan_gen_.704 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1109, i32 12 }
@___asan_gen_.709 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.710 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.711 = private unnamed_addr constant [31 x i8] c"ftbl_cam_cc_ife_0_csid_clk_src\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 495, i32 30 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 510, i32 11 }
@___asan_gen_.717 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1127, i32 12 }
@___asan_gen_.721 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.722 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1145, i32 12 }
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1158, i32 12 }
@___asan_gen_.730 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.731 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 524, i32 11 }
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1176, i32 12 }
@___asan_gen_.739 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.740 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1194, i32 12 }
@___asan_gen_.744 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.745 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 538, i32 11 }
@___asan_gen_.749 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1212, i32 12 }
@___asan_gen_.753 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.754 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1230, i32 12 }
@___asan_gen_.758 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.759 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 552, i32 11 }
@___asan_gen_.763 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1248, i32 12 }
@___asan_gen_.767 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.768 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1266, i32 12 }
@___asan_gen_.772 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.773 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 567, i32 11 }
@___asan_gen_.777 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1284, i32 12 }
@___asan_gen_.781 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.782 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1302, i32 12 }
@___asan_gen_.786 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.787 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1320, i32 12 }
@___asan_gen_.791 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1333, i32 12 }
@___asan_gen_.795 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.796 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.797 = private unnamed_addr constant [26 x i8] c"ftbl_cam_cc_ipe_0_clk_src\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 574, i32 30 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 590, i32 11 }
@___asan_gen_.803 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1351, i32 12 }
@___asan_gen_.807 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.808 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.809 = private unnamed_addr constant [25 x i8] c"ftbl_cam_cc_jpeg_clk_src\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 597, i32 30 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 613, i32 11 }
@___asan_gen_.815 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1369, i32 12 }
@___asan_gen_.819 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.820 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.821 = private unnamed_addr constant [20 x i8] c"cam_cc_parent_map_6\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 272, i32 32 }
@___asan_gen_.824 = private unnamed_addr constant [25 x i8] c"ftbl_cam_cc_lrme_clk_src\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 620, i32 30 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 635, i32 11 }
@___asan_gen_.830 = private unnamed_addr constant [21 x i8] c"cam_cc_parent_data_6\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 280, i32 37 }
@___asan_gen_.833 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1387, i32 12 }
@___asan_gen_.837 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.838 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.839 = private unnamed_addr constant [20 x i8] c"cam_cc_parent_map_1\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 200, i32 32 }
@___asan_gen_.842 = private unnamed_addr constant [26 x i8] c"ftbl_cam_cc_mclk0_clk_src\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 642, i32 30 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 656, i32 11 }
@___asan_gen_.848 = private unnamed_addr constant [21 x i8] c"cam_cc_parent_data_1\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 206, i32 37 }
@___asan_gen_.851 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1405, i32 12 }
@___asan_gen_.855 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.856 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 670, i32 11 }
@___asan_gen_.860 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1423, i32 12 }
@___asan_gen_.864 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.865 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 684, i32 11 }
@___asan_gen_.869 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1441, i32 12 }
@___asan_gen_.873 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.874 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 698, i32 11 }
@___asan_gen_.878 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1459, i32 12 }
@___asan_gen_.882 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.883 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 712, i32 11 }
@___asan_gen_.887 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 746, i32 12 }
@___asan_gen_.891 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.892 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 764, i32 12 }
@___asan_gen_.896 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.897 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 782, i32 12 }
@___asan_gen_.901 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 795, i32 12 }
@___asan_gen_.905 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.906 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.907 = private unnamed_addr constant [24 x i8] c"ftbl_cam_cc_bps_clk_src\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 288, i32 30 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 304, i32 11 }
@___asan_gen_.913 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.914 = private unnamed_addr constant [29 x i8] c"ftbl_cam_cc_slow_ahb_clk_src\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 719, i32 30 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 731, i32 11 }
@___asan_gen_.920 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1477, i32 12 }
@___asan_gen_.924 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1490, i32 12 }
@___asan_gen_.928 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.929 = private unnamed_addr constant [9 x i8] c"bps_gdsc\00", align 1
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1496, i32 20 }
@___asan_gen_.932 = private unnamed_addr constant [11 x i8] c"ife_0_gdsc\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1505, i32 20 }
@___asan_gen_.935 = private unnamed_addr constant [11 x i8] c"ife_1_gdsc\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1513, i32 20 }
@___asan_gen_.938 = private unnamed_addr constant [11 x i8] c"ipe_0_gdsc\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1521, i32 20 }
@___asan_gen_.941 = private unnamed_addr constant [15 x i8] c"titan_top_gdsc\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1530, i32 20 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1499, i32 11 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1508, i32 11 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1516, i32 11 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1524, i32 11 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 1533, i32 11 }
@___asan_gen_.959 = private unnamed_addr constant [10 x i8] c"fabia_vco\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 39, i32 29 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 61, i32 12 }
@___asan_gen_.965 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.966 = private unnamed_addr constant [21 x i8] c".compoundliteral.204\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 88, i32 12 }
@___asan_gen_.970 = private unnamed_addr constant [21 x i8] c".compoundliteral.206\00", align 1
@___asan_gen_.971 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.972 = private unnamed_addr constant [10 x i8] c"agera_vco\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 35, i32 29 }
@___asan_gen_.975 = private unnamed_addr constant [21 x i8] c".compoundliteral.208\00", align 1
@___asan_gen_.976 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.977 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.978 = private constant [35 x i8] c"../drivers/clk/qcom/camcc-sc7180.c\00", align 1
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.978, i32 176, i32 12 }
@___asan_gen_.980 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.981 = private unnamed_addr constant [21 x i8] c".compoundliteral.212\00", align 1
@llvm.compiler.used = appending global [344 x ptr] [ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_cam_cc_sc7180_exit, ptr @__initcall__kmod_camcc_sc7180__171_1718_cam_cc_sc7180_init4, ptr @cam_cc_sc7180_exit, ptr @cam_cc_sc7180_probe._entry, ptr @cam_cc_sc7180_probe._entry.11, ptr @cam_cc_sc7180_probe._entry.8, ptr @cam_cc_sc7180_probe._entry_ptr, ptr @cam_cc_sc7180_probe._entry_ptr.10, ptr @cam_cc_sc7180_probe._entry_ptr.13, ptr @cam_cc_sc7180_driver, ptr @.str, ptr @cam_cc_sc7180_match_table, ptr @cam_cc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @cam_cc_sc7180_desc, ptr @cam_cc_pll0, ptr @cam_cc_pll0_config, ptr @cam_cc_pll1, ptr @cam_cc_pll1_config, ptr @cam_cc_pll2, ptr @cam_cc_pll2_config, ptr @cam_cc_pll3, ptr @cam_cc_pll3_config, ptr @.str.12, ptr @cam_cc_sc7180_regmap_config, ptr @cam_cc_sc7180_clocks, ptr @cam_cc_sc7180_gdscs, ptr @cam_cc_sc7180_hws, ptr @cam_cc_pll2_out_aux, ptr @cam_cc_camnoc_axi_clk, ptr @cam_cc_cci_0_clk, ptr @cam_cc_cci_0_clk_src, ptr @cam_cc_cci_1_clk, ptr @cam_cc_cci_1_clk_src, ptr @cam_cc_core_ahb_clk, ptr @cam_cc_cpas_ahb_clk, ptr @cam_cc_cphy_rx_clk_src, ptr @cam_cc_csi0phytimer_clk, ptr @cam_cc_csi0phytimer_clk_src, ptr @cam_cc_csi1phytimer_clk, ptr @cam_cc_csi1phytimer_clk_src, ptr @cam_cc_csi2phytimer_clk, ptr @cam_cc_csi2phytimer_clk_src, ptr @cam_cc_csi3phytimer_clk, ptr @cam_cc_csi3phytimer_clk_src, ptr @cam_cc_csiphy0_clk, ptr @cam_cc_csiphy1_clk, ptr @cam_cc_csiphy2_clk, ptr @cam_cc_csiphy3_clk, ptr @cam_cc_fast_ahb_clk_src, ptr @cam_cc_icp_clk, ptr @cam_cc_icp_clk_src, ptr @cam_cc_ife_0_axi_clk, ptr @cam_cc_ife_0_clk, ptr @cam_cc_ife_0_clk_src, ptr @cam_cc_ife_0_cphy_rx_clk, ptr @cam_cc_ife_0_csid_clk, ptr @cam_cc_ife_0_csid_clk_src, ptr @cam_cc_ife_0_dsp_clk, ptr @cam_cc_ife_1_axi_clk, ptr @cam_cc_ife_1_clk, ptr @cam_cc_ife_1_clk_src, ptr @cam_cc_ife_1_cphy_rx_clk, ptr @cam_cc_ife_1_csid_clk, ptr @cam_cc_ife_1_csid_clk_src, ptr @cam_cc_ife_1_dsp_clk, ptr @cam_cc_ife_lite_clk, ptr @cam_cc_ife_lite_clk_src, ptr @cam_cc_ife_lite_cphy_rx_clk, ptr @cam_cc_ife_lite_csid_clk, ptr @cam_cc_ife_lite_csid_clk_src, ptr @cam_cc_ipe_0_ahb_clk, ptr @cam_cc_ipe_0_areg_clk, ptr @cam_cc_ipe_0_axi_clk, ptr @cam_cc_ipe_0_clk, ptr @cam_cc_ipe_0_clk_src, ptr @cam_cc_jpeg_clk, ptr @cam_cc_jpeg_clk_src, ptr @cam_cc_lrme_clk, ptr @cam_cc_lrme_clk_src, ptr @cam_cc_mclk0_clk, ptr @cam_cc_mclk0_clk_src, ptr @cam_cc_mclk1_clk, ptr @cam_cc_mclk1_clk_src, ptr @cam_cc_mclk2_clk, ptr @cam_cc_mclk2_clk_src, ptr @cam_cc_mclk3_clk, ptr @cam_cc_mclk3_clk_src, ptr @cam_cc_mclk4_clk, ptr @cam_cc_mclk4_clk_src, ptr @cam_cc_bps_ahb_clk, ptr @cam_cc_bps_areg_clk, ptr @cam_cc_bps_axi_clk, ptr @cam_cc_bps_clk, ptr @cam_cc_bps_clk_src, ptr @cam_cc_slow_ahb_clk_src, ptr @cam_cc_soc_ahb_clk, ptr @cam_cc_sys_tmr_clk, ptr @.str.14, ptr @.compoundliteral, ptr @.compoundliteral.15, ptr @post_div_table_cam_cc_pll2_out_aux, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @cam_cc_parent_map_5, ptr @ftbl_cam_cc_cci_0_clk_src, ptr @.str.21, ptr @cam_cc_parent_data_5, ptr @.compoundliteral.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @cam_cc_parent_map_3, ptr @ftbl_cam_cc_cphy_rx_clk_src, ptr @.str.36, ptr @cam_cc_parent_data_3, ptr @.compoundliteral.37, ptr @cam_cc_pll2_out_early, ptr @.str.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.compoundliteral.44, ptr @cam_cc_parent_map_0, ptr @ftbl_cam_cc_csi0phytimer_clk_src, ptr @.str.45, ptr @cam_cc_parent_data_0, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.compoundliteral.73, ptr @ftbl_cam_cc_fast_ahb_clk_src, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.compoundliteral.78, ptr @cam_cc_parent_map_2, ptr @ftbl_cam_cc_icp_clk_src, ptr @.str.79, ptr @cam_cc_parent_data_2, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.compoundliteral.85, ptr @cam_cc_parent_map_4, ptr @ftbl_cam_cc_ife_0_clk_src, ptr @.str.86, ptr @cam_cc_parent_data_4, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.compoundliteral.93, ptr @ftbl_cam_cc_ife_0_csid_clk_src, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @.compoundliteral.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.compoundliteral.140, ptr @ftbl_cam_cc_ipe_0_clk_src, ptr @.str.141, ptr @.compoundliteral.142, ptr @.str.143, ptr @.compoundliteral.144, ptr @.compoundliteral.145, ptr @ftbl_cam_cc_jpeg_clk_src, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.compoundliteral.150, ptr @cam_cc_parent_map_6, ptr @ftbl_cam_cc_lrme_clk_src, ptr @.str.151, ptr @cam_cc_parent_data_6, ptr @.compoundliteral.152, ptr @.str.153, ptr @.compoundliteral.154, ptr @.compoundliteral.155, ptr @cam_cc_parent_map_1, ptr @ftbl_cam_cc_mclk0_clk_src, ptr @.str.156, ptr @cam_cc_parent_data_1, ptr @.compoundliteral.157, ptr @.str.158, ptr @.compoundliteral.159, ptr @.compoundliteral.160, ptr @.str.161, ptr @.compoundliteral.162, ptr @.str.163, ptr @.compoundliteral.164, ptr @.compoundliteral.165, ptr @.str.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @.str.171, ptr @.compoundliteral.172, ptr @.str.173, ptr @.compoundliteral.174, ptr @.compoundliteral.175, ptr @.str.176, ptr @.compoundliteral.177, ptr @.str.178, ptr @.compoundliteral.179, ptr @.compoundliteral.180, ptr @.str.181, ptr @.compoundliteral.182, ptr @.compoundliteral.183, ptr @.str.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.compoundliteral.188, ptr @ftbl_cam_cc_bps_clk_src, ptr @.str.189, ptr @.compoundliteral.190, ptr @ftbl_cam_cc_slow_ahb_clk_src, ptr @.str.191, ptr @.compoundliteral.192, ptr @.str.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @.compoundliteral.196, ptr @bps_gdsc, ptr @ife_0_gdsc, ptr @ife_1_gdsc, ptr @ipe_0_gdsc, ptr @titan_top_gdsc, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @fabia_vco, ptr @.str.202, ptr @.compoundliteral.203, ptr @.compoundliteral.204, ptr @.str.205, ptr @.compoundliteral.206, ptr @.compoundliteral.207, ptr @agera_vco, ptr @.compoundliteral.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.compoundliteral.212], section "llvm.metadata"
@0 = internal global [335 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_sc7180_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_sc7180_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_sc7180_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_sc7180_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_sc7180_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_pll0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_pll0_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_pll1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_pll1_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_pll2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_pll2_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_pll3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_pll3_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_sc7180_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_sc7180_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_sc7180_clocks to i32), i32 316, i32 384, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_sc7180_gdscs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_sc7180_hws to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_pll2_out_aux to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_camnoc_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_cci_0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_cci_0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_cci_1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_cci_1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_core_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_cpas_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_cphy_rx_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csi0phytimer_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csi0phytimer_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csi1phytimer_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csi1phytimer_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csi2phytimer_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csi2phytimer_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csi3phytimer_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csi3phytimer_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csiphy0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csiphy1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csiphy2_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_csiphy3_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_fast_ahb_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_icp_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_icp_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_0_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_0_cphy_rx_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_0_csid_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_0_csid_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_0_dsp_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_1_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_1_cphy_rx_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_1_csid_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_1_csid_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_1_dsp_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_lite_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_lite_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_lite_cphy_rx_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_lite_csid_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ife_lite_csid_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ipe_0_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ipe_0_areg_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ipe_0_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ipe_0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_ipe_0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_jpeg_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_jpeg_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_lrme_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_lrme_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_mclk0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_mclk0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_mclk1_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_mclk1_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_mclk2_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_mclk2_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_mclk3_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_mclk3_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_mclk4_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_mclk4_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_bps_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_bps_areg_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_bps_axi_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_bps_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_bps_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_slow_ahb_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_soc_ahb_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_sys_tmr_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_div_table_cam_cc_pll2_out_aux to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_map_5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_cci_0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_data_5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_map_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_cphy_rx_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_data_3 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_pll2_out_early to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_map_0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_csi0phytimer_clk_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_data_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_fast_ahb_clk_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_map_2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_icp_clk_src to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_data_2 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_map_4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_ife_0_clk_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_data_4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_ife_0_csid_clk_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_ipe_0_clk_src to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_jpeg_clk_src to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_map_6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_lrme_clk_src to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_data_6 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_map_1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_mclk0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_cc_parent_data_1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_bps_clk_src to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_cam_cc_slow_ahb_clk_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bps_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ife_0_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ife_1_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipe_0_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @titan_top_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fabia_vco to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.204 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.206 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agera_vco to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.212 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cam_cc_sc7180_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cam_cc_sc7180_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cam_cc_sc7180_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @cam_cc_sc7180_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cam_cc_sc7180_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_pm_runtime_enable(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @devm_pm_clk_create(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call i32 @pm_clk_add(ptr noundef %dev, ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call13 = tail call i32 @pm_clk_add(ptr noundef %dev, ptr noundef nonnull @.str.7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @cam_cc_sc7180_desc) #4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call25 to i32
  %call.i72 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  tail call void @clk_fabia_pll_configure(ptr noundef nonnull @cam_cc_pll0, ptr noundef %call25, ptr noundef nonnull @cam_cc_pll0_config) #4
  tail call void @clk_fabia_pll_configure(ptr noundef nonnull @cam_cc_pll1, ptr noundef %call25, ptr noundef nonnull @cam_cc_pll1_config) #4
  tail call void @clk_agera_pll_configure(ptr noundef nonnull @cam_cc_pll2, ptr noundef %call25, ptr noundef nonnull @cam_cc_pll2_config) #4
  tail call void @clk_fabia_pll_configure(ptr noundef nonnull @cam_cc_pll3, ptr noundef %call25, ptr noundef nonnull @cam_cc_pll3_config) #4
  %call32 = tail call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @cam_cc_sc7180_desc, ptr noundef %call25) #4
  %call.i73 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp35 = icmp slt i32 %call32, 0
  br i1 %cmp35, label %do.end39, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end31.cleanup_crit_edge, %if.then27, %if.end20.cleanup_crit_edge, %do.end18, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call13, %do.end18 ], [ %0, %if.then27 ], [ %call32, %do.end39 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i, %if.end20.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_fabia_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_agera_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 335)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 335)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437}
!llvm.module.flags = !{!439, !440, !441, !442, !443, !444, !445, !446}
!llvm.ident = !{!447}

!0 = !{ptr @__initcall__kmod_camcc_sc7180__171_1718_cam_cc_sc7180_init4, !1, !"__initcall__kmod_camcc_sc7180__171_1718_cam_cc_sc7180_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1718, i32 1}
!2 = !{ptr @__exitcall_cam_cc_sc7180_exit, !3, !"__exitcall_cam_cc_sc7180_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1724, i32 1}
!4 = !{ptr @__UNIQUE_ID_description172, !5, !"__UNIQUE_ID_description172", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1726, i32 1}
!6 = !{ptr @__UNIQUE_ID_file173, !7, !"__UNIQUE_ID_file173", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1727, i32 1}
!8 = !{ptr @__UNIQUE_ID_license174, !7, !"__UNIQUE_ID_license174", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1708, i32 11}
!11 = !{ptr @cam_cc_sc7180_driver, !12, !"cam_cc_sc7180_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1705, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1663, i32 31}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1665, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cam_cc_sc7180_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @cam_cc_sc7180_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1669, i32 31}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1671, i32 3}
!27 = !{ptr @cam_cc_sc7180_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cam_cc_sc7180_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1694, i32 3}
!31 = !{ptr @cam_cc_sc7180_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cam_cc_sc7180_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @cam_cc_sc7180_desc, !34, !"cam_cc_sc7180_desc", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1634, i32 34}
!35 = !{ptr @cam_cc_sc7180_regmap_config, !36, !"cam_cc_sc7180_regmap_config", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1626, i32 35}
!37 = !{ptr @cam_cc_sc7180_clocks, !38, !"cam_cc_sc7180_clocks", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1542, i32 27}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 149, i32 11}
!41 = !{ptr @cam_cc_pll2_out_aux, !42, !"cam_cc_pll2_out_aux", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 141, i32 37}
!43 = !{ptr @post_div_table_cam_cc_pll2_out_aux, !44, !"post_div_table_cam_cc_pll2_out_aux", i1 false, i1 false}
!44 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 136, i32 35}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 813, i32 12}
!47 = !{ptr @cam_cc_camnoc_axi_clk, !48, !"cam_cc_camnoc_axi_clk", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 806, i32 26}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 826, i32 12}
!51 = !{ptr @cam_cc_cci_0_clk, !52, !"cam_cc_cci_0_clk", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 819, i32 26}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 325, i32 11}
!55 = !{ptr @cam_cc_cci_0_clk_src, !56, !"cam_cc_cci_0_clk_src", i1 false, i1 false}
!56 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 318, i32 24}
!57 = !{ptr @cam_cc_parent_map_5, !58, !"cam_cc_parent_map_5", i1 false, i1 false}
!58 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 260, i32 32}
!59 = !{ptr @ftbl_cam_cc_cci_0_clk_src, !60, !"ftbl_cam_cc_cci_0_clk_src", i1 false, i1 false}
!60 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 311, i32 30}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 267, i32 15}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 269, i32 15}
!65 = !{ptr @cam_cc_parent_data_5, !66, !"cam_cc_parent_data_5", i1 false, i1 false}
!66 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 266, i32 37}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 844, i32 12}
!69 = !{ptr @cam_cc_cci_1_clk, !70, !"cam_cc_cci_1_clk", i1 false, i1 false}
!70 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 837, i32 26}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 339, i32 11}
!73 = !{ptr @cam_cc_cci_1_clk_src, !74, !"cam_cc_cci_1_clk_src", i1 false, i1 false}
!74 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 332, i32 24}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 862, i32 12}
!77 = !{ptr @cam_cc_core_ahb_clk, !78, !"cam_cc_core_ahb_clk", i1 false, i1 false}
!78 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 855, i32 26}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 880, i32 12}
!81 = !{ptr @cam_cc_cpas_ahb_clk, !82, !"cam_cc_cpas_ahb_clk", i1 false, i1 false}
!82 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 873, i32 26}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 360, i32 11}
!85 = !{ptr @cam_cc_cphy_rx_clk_src, !86, !"cam_cc_cphy_rx_clk_src", i1 false, i1 false}
!86 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 353, i32 24}
!87 = !{ptr @cam_cc_parent_map_3, !88, !"cam_cc_parent_map_3", i1 false, i1 false}
!88 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 228, i32 32}
!89 = !{ptr @ftbl_cam_cc_cphy_rx_clk_src, !90, !"ftbl_cam_cc_cphy_rx_clk_src", i1 false, i1 false}
!90 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 346, i32 30}
!91 = !{ptr @cam_cc_parent_data_3, !92, !"cam_cc_parent_data_3", i1 false, i1 false}
!92 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 237, i32 37}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 129, i32 11}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 130, i32 37}
!97 = !{ptr @cam_cc_pll2_out_early, !98, !"cam_cc_pll2_out_early", i1 false, i1 false}
!98 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 125, i32 32}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 898, i32 12}
!101 = !{ptr @cam_cc_csi0phytimer_clk, !102, !"cam_cc_csi0phytimer_clk", i1 false, i1 false}
!102 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 891, i32 26}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 379, i32 11}
!105 = !{ptr @cam_cc_csi0phytimer_clk_src, !106, !"cam_cc_csi0phytimer_clk_src", i1 false, i1 false}
!106 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 372, i32 24}
!107 = !{ptr @cam_cc_parent_map_0, !108, !"cam_cc_parent_map_0", i1 false, i1 false}
!108 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 186, i32 32}
!109 = !{ptr @ftbl_cam_cc_csi0phytimer_clk_src, !110, !"ftbl_cam_cc_csi0phytimer_clk_src", i1 false, i1 false}
!110 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 367, i32 30}
!111 = !{ptr @cam_cc_parent_data_0, !112, !"cam_cc_parent_data_0", i1 false, i1 false}
!112 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 193, i32 37}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 916, i32 12}
!115 = !{ptr @cam_cc_csi1phytimer_clk, !116, !"cam_cc_csi1phytimer_clk", i1 false, i1 false}
!116 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 909, i32 26}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 393, i32 11}
!119 = !{ptr @cam_cc_csi1phytimer_clk_src, !120, !"cam_cc_csi1phytimer_clk_src", i1 false, i1 false}
!120 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 386, i32 24}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 934, i32 12}
!123 = !{ptr @cam_cc_csi2phytimer_clk, !124, !"cam_cc_csi2phytimer_clk", i1 false, i1 false}
!124 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 927, i32 26}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 407, i32 11}
!127 = !{ptr @cam_cc_csi2phytimer_clk_src, !128, !"cam_cc_csi2phytimer_clk_src", i1 false, i1 false}
!128 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 400, i32 24}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 952, i32 12}
!131 = !{ptr @cam_cc_csi3phytimer_clk, !132, !"cam_cc_csi3phytimer_clk", i1 false, i1 false}
!132 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 945, i32 26}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 421, i32 11}
!135 = !{ptr @cam_cc_csi3phytimer_clk_src, !136, !"cam_cc_csi3phytimer_clk_src", i1 false, i1 false}
!136 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 414, i32 24}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 970, i32 12}
!139 = !{ptr @cam_cc_csiphy0_clk, !140, !"cam_cc_csiphy0_clk", i1 false, i1 false}
!140 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 963, i32 26}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 988, i32 12}
!143 = !{ptr @cam_cc_csiphy1_clk, !144, !"cam_cc_csiphy1_clk", i1 false, i1 false}
!144 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 981, i32 26}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1006, i32 12}
!147 = !{ptr @cam_cc_csiphy2_clk, !148, !"cam_cc_csiphy2_clk", i1 false, i1 false}
!148 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 999, i32 26}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1024, i32 12}
!151 = !{ptr @cam_cc_csiphy3_clk, !152, !"cam_cc_csiphy3_clk", i1 false, i1 false}
!152 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1017, i32 26}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 443, i32 11}
!155 = !{ptr @cam_cc_fast_ahb_clk_src, !156, !"cam_cc_fast_ahb_clk_src", i1 false, i1 false}
!156 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 436, i32 24}
!157 = !{ptr @ftbl_cam_cc_fast_ahb_clk_src, !158, !"ftbl_cam_cc_fast_ahb_clk_src", i1 false, i1 false}
!158 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 428, i32 30}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1042, i32 12}
!161 = !{ptr @cam_cc_icp_clk, !162, !"cam_cc_icp_clk", i1 false, i1 false}
!162 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1035, i32 26}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 466, i32 11}
!165 = !{ptr @cam_cc_icp_clk_src, !166, !"cam_cc_icp_clk_src", i1 false, i1 false}
!166 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 459, i32 24}
!167 = !{ptr @cam_cc_parent_map_2, !168, !"cam_cc_parent_map_2", i1 false, i1 false}
!168 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 212, i32 32}
!169 = !{ptr @ftbl_cam_cc_icp_clk_src, !170, !"ftbl_cam_cc_icp_clk_src", i1 false, i1 false}
!170 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 450, i32 30}
!171 = !{ptr @cam_cc_parent_data_2, !172, !"cam_cc_parent_data_2", i1 false, i1 false}
!172 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 220, i32 37}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1060, i32 12}
!175 = !{ptr @cam_cc_ife_0_axi_clk, !176, !"cam_cc_ife_0_axi_clk", i1 false, i1 false}
!176 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1053, i32 26}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1073, i32 12}
!179 = !{ptr @cam_cc_ife_0_clk, !180, !"cam_cc_ife_0_clk", i1 false, i1 false}
!180 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1066, i32 26}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 488, i32 11}
!183 = !{ptr @cam_cc_ife_0_clk_src, !184, !"cam_cc_ife_0_clk_src", i1 false, i1 false}
!184 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 481, i32 24}
!185 = !{ptr @cam_cc_parent_map_4, !186, !"cam_cc_parent_map_4", i1 false, i1 false}
!186 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 246, i32 32}
!187 = !{ptr @ftbl_cam_cc_ife_0_clk_src, !188, !"ftbl_cam_cc_ife_0_clk_src", i1 false, i1 false}
!188 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 473, i32 30}
!189 = !{ptr @cam_cc_parent_data_4, !190, !"cam_cc_parent_data_4", i1 false, i1 false}
!190 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 253, i32 37}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1091, i32 12}
!193 = !{ptr @cam_cc_ife_0_cphy_rx_clk, !194, !"cam_cc_ife_0_cphy_rx_clk", i1 false, i1 false}
!194 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1084, i32 26}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1109, i32 12}
!197 = !{ptr @cam_cc_ife_0_csid_clk, !198, !"cam_cc_ife_0_csid_clk", i1 false, i1 false}
!198 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1102, i32 26}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 510, i32 11}
!201 = !{ptr @cam_cc_ife_0_csid_clk_src, !202, !"cam_cc_ife_0_csid_clk_src", i1 false, i1 false}
!202 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 503, i32 24}
!203 = !{ptr @ftbl_cam_cc_ife_0_csid_clk_src, !204, !"ftbl_cam_cc_ife_0_csid_clk_src", i1 false, i1 false}
!204 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 495, i32 30}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1127, i32 12}
!207 = !{ptr @cam_cc_ife_0_dsp_clk, !208, !"cam_cc_ife_0_dsp_clk", i1 false, i1 false}
!208 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1120, i32 26}
!209 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1145, i32 12}
!211 = !{ptr @cam_cc_ife_1_axi_clk, !212, !"cam_cc_ife_1_axi_clk", i1 false, i1 false}
!212 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1138, i32 26}
!213 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1158, i32 12}
!215 = !{ptr @cam_cc_ife_1_clk, !216, !"cam_cc_ife_1_clk", i1 false, i1 false}
!216 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1151, i32 26}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 524, i32 11}
!219 = !{ptr @cam_cc_ife_1_clk_src, !220, !"cam_cc_ife_1_clk_src", i1 false, i1 false}
!220 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 517, i32 24}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1176, i32 12}
!223 = !{ptr @cam_cc_ife_1_cphy_rx_clk, !224, !"cam_cc_ife_1_cphy_rx_clk", i1 false, i1 false}
!224 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1169, i32 26}
!225 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1194, i32 12}
!227 = !{ptr @cam_cc_ife_1_csid_clk, !228, !"cam_cc_ife_1_csid_clk", i1 false, i1 false}
!228 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1187, i32 26}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 538, i32 11}
!231 = !{ptr @cam_cc_ife_1_csid_clk_src, !232, !"cam_cc_ife_1_csid_clk_src", i1 false, i1 false}
!232 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 531, i32 24}
!233 = !{ptr @.str.114, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1212, i32 12}
!235 = !{ptr @cam_cc_ife_1_dsp_clk, !236, !"cam_cc_ife_1_dsp_clk", i1 false, i1 false}
!236 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1205, i32 26}
!237 = !{ptr @.str.117, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1230, i32 12}
!239 = !{ptr @cam_cc_ife_lite_clk, !240, !"cam_cc_ife_lite_clk", i1 false, i1 false}
!240 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1223, i32 26}
!241 = !{ptr @.str.120, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 552, i32 11}
!243 = !{ptr @cam_cc_ife_lite_clk_src, !244, !"cam_cc_ife_lite_clk_src", i1 false, i1 false}
!244 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 545, i32 24}
!245 = !{ptr @.str.122, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1248, i32 12}
!247 = !{ptr @cam_cc_ife_lite_cphy_rx_clk, !248, !"cam_cc_ife_lite_cphy_rx_clk", i1 false, i1 false}
!248 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1241, i32 26}
!249 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1266, i32 12}
!251 = !{ptr @cam_cc_ife_lite_csid_clk, !252, !"cam_cc_ife_lite_csid_clk", i1 false, i1 false}
!252 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1259, i32 26}
!253 = !{ptr @.str.128, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 567, i32 11}
!255 = !{ptr @cam_cc_ife_lite_csid_clk_src, !256, !"cam_cc_ife_lite_csid_clk_src", i1 false, i1 false}
!256 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 560, i32 24}
!257 = !{ptr @.str.130, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1284, i32 12}
!259 = !{ptr @cam_cc_ipe_0_ahb_clk, !260, !"cam_cc_ipe_0_ahb_clk", i1 false, i1 false}
!260 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1277, i32 26}
!261 = !{ptr @.str.133, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1302, i32 12}
!263 = !{ptr @cam_cc_ipe_0_areg_clk, !264, !"cam_cc_ipe_0_areg_clk", i1 false, i1 false}
!264 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1295, i32 26}
!265 = !{ptr @.str.136, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1320, i32 12}
!267 = !{ptr @cam_cc_ipe_0_axi_clk, !268, !"cam_cc_ipe_0_axi_clk", i1 false, i1 false}
!268 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1313, i32 26}
!269 = !{ptr @.str.138, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1333, i32 12}
!271 = !{ptr @cam_cc_ipe_0_clk, !272, !"cam_cc_ipe_0_clk", i1 false, i1 false}
!272 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1326, i32 26}
!273 = !{ptr @.str.141, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 590, i32 11}
!275 = !{ptr @cam_cc_ipe_0_clk_src, !276, !"cam_cc_ipe_0_clk_src", i1 false, i1 false}
!276 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 583, i32 24}
!277 = !{ptr @ftbl_cam_cc_ipe_0_clk_src, !278, !"ftbl_cam_cc_ipe_0_clk_src", i1 false, i1 false}
!278 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 574, i32 30}
!279 = !{ptr @.str.143, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1351, i32 12}
!281 = !{ptr @cam_cc_jpeg_clk, !282, !"cam_cc_jpeg_clk", i1 false, i1 false}
!282 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1344, i32 26}
!283 = !{ptr @.str.146, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 613, i32 11}
!285 = !{ptr @cam_cc_jpeg_clk_src, !286, !"cam_cc_jpeg_clk_src", i1 false, i1 false}
!286 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 606, i32 24}
!287 = !{ptr @ftbl_cam_cc_jpeg_clk_src, !288, !"ftbl_cam_cc_jpeg_clk_src", i1 false, i1 false}
!288 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 597, i32 30}
!289 = !{ptr @.str.148, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1369, i32 12}
!291 = !{ptr @cam_cc_lrme_clk, !292, !"cam_cc_lrme_clk", i1 false, i1 false}
!292 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1362, i32 26}
!293 = !{ptr @.str.151, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 635, i32 11}
!295 = !{ptr @cam_cc_lrme_clk_src, !296, !"cam_cc_lrme_clk_src", i1 false, i1 false}
!296 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 628, i32 24}
!297 = !{ptr @cam_cc_parent_map_6, !298, !"cam_cc_parent_map_6", i1 false, i1 false}
!298 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 272, i32 32}
!299 = !{ptr @ftbl_cam_cc_lrme_clk_src, !300, !"ftbl_cam_cc_lrme_clk_src", i1 false, i1 false}
!300 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 620, i32 30}
!301 = !{ptr @cam_cc_parent_data_6, !302, !"cam_cc_parent_data_6", i1 false, i1 false}
!302 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 280, i32 37}
!303 = !{ptr @.str.153, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1387, i32 12}
!305 = !{ptr @cam_cc_mclk0_clk, !306, !"cam_cc_mclk0_clk", i1 false, i1 false}
!306 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1380, i32 26}
!307 = !{ptr @.str.156, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 656, i32 11}
!309 = !{ptr @cam_cc_mclk0_clk_src, !310, !"cam_cc_mclk0_clk_src", i1 false, i1 false}
!310 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 649, i32 24}
!311 = !{ptr @cam_cc_parent_map_1, !312, !"cam_cc_parent_map_1", i1 false, i1 false}
!312 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 200, i32 32}
!313 = !{ptr @ftbl_cam_cc_mclk0_clk_src, !314, !"ftbl_cam_cc_mclk0_clk_src", i1 false, i1 false}
!314 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 642, i32 30}
!315 = !{ptr @cam_cc_parent_data_1, !316, !"cam_cc_parent_data_1", i1 false, i1 false}
!316 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 206, i32 37}
!317 = !{ptr @.str.158, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1405, i32 12}
!319 = !{ptr @cam_cc_mclk1_clk, !320, !"cam_cc_mclk1_clk", i1 false, i1 false}
!320 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1398, i32 26}
!321 = !{ptr @.str.161, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 670, i32 11}
!323 = !{ptr @cam_cc_mclk1_clk_src, !324, !"cam_cc_mclk1_clk_src", i1 false, i1 false}
!324 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 663, i32 24}
!325 = !{ptr @.str.163, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1423, i32 12}
!327 = !{ptr @cam_cc_mclk2_clk, !328, !"cam_cc_mclk2_clk", i1 false, i1 false}
!328 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1416, i32 26}
!329 = !{ptr @.str.166, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 684, i32 11}
!331 = !{ptr @cam_cc_mclk2_clk_src, !332, !"cam_cc_mclk2_clk_src", i1 false, i1 false}
!332 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 677, i32 24}
!333 = !{ptr @.str.168, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1441, i32 12}
!335 = !{ptr @cam_cc_mclk3_clk, !336, !"cam_cc_mclk3_clk", i1 false, i1 false}
!336 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1434, i32 26}
!337 = !{ptr @.str.171, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 698, i32 11}
!339 = !{ptr @cam_cc_mclk3_clk_src, !340, !"cam_cc_mclk3_clk_src", i1 false, i1 false}
!340 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 691, i32 24}
!341 = !{ptr @.str.173, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1459, i32 12}
!343 = !{ptr @cam_cc_mclk4_clk, !344, !"cam_cc_mclk4_clk", i1 false, i1 false}
!344 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1452, i32 26}
!345 = !{ptr @.str.176, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 712, i32 11}
!347 = !{ptr @cam_cc_mclk4_clk_src, !348, !"cam_cc_mclk4_clk_src", i1 false, i1 false}
!348 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 705, i32 24}
!349 = !{ptr @.str.178, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 746, i32 12}
!351 = !{ptr @cam_cc_bps_ahb_clk, !352, !"cam_cc_bps_ahb_clk", i1 false, i1 false}
!352 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 739, i32 26}
!353 = !{ptr @.str.181, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 764, i32 12}
!355 = !{ptr @cam_cc_bps_areg_clk, !356, !"cam_cc_bps_areg_clk", i1 false, i1 false}
!356 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 757, i32 26}
!357 = !{ptr @.str.184, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 782, i32 12}
!359 = !{ptr @cam_cc_bps_axi_clk, !360, !"cam_cc_bps_axi_clk", i1 false, i1 false}
!360 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 775, i32 26}
!361 = !{ptr @.str.186, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 795, i32 12}
!363 = !{ptr @cam_cc_bps_clk, !364, !"cam_cc_bps_clk", i1 false, i1 false}
!364 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 788, i32 26}
!365 = !{ptr @.str.189, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 304, i32 11}
!367 = !{ptr @cam_cc_bps_clk_src, !368, !"cam_cc_bps_clk_src", i1 false, i1 false}
!368 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 297, i32 24}
!369 = !{ptr @ftbl_cam_cc_bps_clk_src, !370, !"ftbl_cam_cc_bps_clk_src", i1 false, i1 false}
!370 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 288, i32 30}
!371 = !{ptr @.str.191, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 731, i32 11}
!373 = !{ptr @cam_cc_slow_ahb_clk_src, !374, !"cam_cc_slow_ahb_clk_src", i1 false, i1 false}
!374 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 724, i32 24}
!375 = !{ptr @ftbl_cam_cc_slow_ahb_clk_src, !376, !"ftbl_cam_cc_slow_ahb_clk_src", i1 false, i1 false}
!376 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 719, i32 30}
!377 = !{ptr @.str.193, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1477, i32 12}
!379 = !{ptr @cam_cc_soc_ahb_clk, !380, !"cam_cc_soc_ahb_clk", i1 false, i1 false}
!380 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1470, i32 26}
!381 = !{ptr @.str.195, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1490, i32 12}
!383 = !{ptr @cam_cc_sys_tmr_clk, !384, !"cam_cc_sys_tmr_clk", i1 false, i1 false}
!384 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1483, i32 26}
!385 = !{ptr @cam_cc_sc7180_gdscs, !386, !"cam_cc_sc7180_gdscs", i1 false, i1 false}
!386 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1618, i32 21}
!387 = !{ptr @.str.197, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1499, i32 11}
!389 = !{ptr @bps_gdsc, !390, !"bps_gdsc", i1 false, i1 false}
!390 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1496, i32 20}
!391 = !{ptr @.str.198, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1508, i32 11}
!393 = !{ptr @ife_0_gdsc, !394, !"ife_0_gdsc", i1 false, i1 false}
!394 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1505, i32 20}
!395 = !{ptr @.str.199, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1516, i32 11}
!397 = !{ptr @ife_1_gdsc, !398, !"ife_1_gdsc", i1 false, i1 false}
!398 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1513, i32 20}
!399 = !{ptr @.str.200, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1524, i32 11}
!401 = !{ptr @ipe_0_gdsc, !402, !"ipe_0_gdsc", i1 false, i1 false}
!402 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1521, i32 20}
!403 = !{ptr @.str.201, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1533, i32 11}
!405 = !{ptr @titan_top_gdsc, !406, !"titan_top_gdsc", i1 false, i1 false}
!406 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1530, i32 20}
!407 = !{ptr @cam_cc_sc7180_hws, !408, !"cam_cc_sc7180_hws", i1 false, i1 false}
!408 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1538, i32 23}
!409 = !{ptr @.str.202, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 61, i32 12}
!411 = !{ptr @cam_cc_pll0, !412, !"cam_cc_pll0", i1 false, i1 false}
!412 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 54, i32 29}
!413 = !{ptr @fabia_vco, !414, !"fabia_vco", i1 false, i1 false}
!414 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 39, i32 29}
!415 = !{ptr @cam_cc_pll0_config, !416, !"cam_cc_pll0_config", i1 false, i1 false}
!416 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 44, i32 38}
!417 = !{ptr @.str.205, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 88, i32 12}
!419 = !{ptr @cam_cc_pll1, !420, !"cam_cc_pll1", i1 false, i1 false}
!420 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 81, i32 29}
!421 = !{ptr @cam_cc_pll1_config, !422, !"cam_cc_pll1_config", i1 false, i1 false}
!422 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 72, i32 38}
!423 = !{ptr @cam_cc_pll2, !424, !"cam_cc_pll2", i1 false, i1 false}
!424 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 108, i32 29}
!425 = !{ptr @agera_vco, !426, !"agera_vco", i1 false, i1 false}
!426 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 35, i32 29}
!427 = !{ptr @cam_cc_pll2_config, !428, !"cam_cc_pll2_config", i1 false, i1 false}
!428 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 99, i32 38}
!429 = !{ptr @.str.210, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 176, i32 12}
!431 = !{ptr @cam_cc_pll3, !432, !"cam_cc_pll3", i1 false, i1 false}
!432 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 169, i32 29}
!433 = !{ptr @cam_cc_pll3_config, !434, !"cam_cc_pll3_config", i1 false, i1 false}
!434 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 160, i32 38}
!435 = !{ptr @cam_cc_sc7180_match_table, !436, !"cam_cc_sc7180_match_table", i1 false, i1 false}
!436 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1644, i32 34}
!437 = !{ptr @cam_cc_pm_ops, !438, !"cam_cc_pm_ops", i1 false, i1 false}
!438 = !{!"../drivers/clk/qcom/camcc-sc7180.c", i32 1701, i32 32}
!439 = !{i32 1, !"wchar_size", i32 2}
!440 = !{i32 1, !"min_enum_size", i32 4}
!441 = !{i32 8, !"branch-target-enforcement", i32 0}
!442 = !{i32 8, !"sign-return-address", i32 0}
!443 = !{i32 8, !"sign-return-address-all", i32 0}
!444 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!445 = !{i32 7, !"uwtable", i32 1}
!446 = !{i32 7, !"frame-pointer", i32 2}
!447 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
