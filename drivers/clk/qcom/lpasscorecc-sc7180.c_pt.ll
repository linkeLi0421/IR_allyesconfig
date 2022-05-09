; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/lpasscorecc-sc7180.c_pt.bc'
source_filename = "../drivers/clk/qcom/lpasscorecc-sc7180.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.clk_alpha_pll = type { i32, ptr, ptr, i32, i8, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.alpha_pll_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_alpha_pll_postdiv = type { i32, i8, ptr, %struct.clk_regmap, i32, ptr, i32 }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.parent_map = type { i8, i8 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.pll_vco = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_lpasscorecc_sc7180__171_496_lpass_sc7180_init4 = internal global ptr @lpass_sc7180_init, section ".initcall4.init", align 4
@lpass_hm_sc7180_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpass_hm_core_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpass_hm_sc7180_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lpass_hm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@lpass_core_cc_sc7180_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpass_core_cc_sc7180_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpass_core_cc_sc7180_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lpass_core_cc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpass_sc7180_exit = internal global ptr @lpass_sc7180_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [63 x i8] c"lpasscorecc_sc7180.description=QTI LPASS_CORE_CC SC7180 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [60 x i8] c"lpasscorecc_sc7180.file=drivers/clk/qcom/lpasscorecc-sc7180\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [34 x i8] c"lpasscorecc_sc7180.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lpass_hm-sc7180\00", [16 x i8] zeroinitializer }, align 32
@lpass_hm_sc7180_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-lpasshm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lpass_hm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_clk_suspend, ptr @pm_clk_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpass_hm_core\00", [18 x i8] zeroinitializer }, align 32
@lpass_core_cc_sc7180_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@lpass_core_hm_sc7180_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @lpass_core_cc_sc7180_regmap_config, ptr null, i32 0, ptr null, i32 0, ptr @lpass_core_hm_sc7180_gdscs, i32 1, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@lpass_create_pm_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 376, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to acquire iface clock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lpass_create_pm_clks\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/clk/qcom/lpasscorecc-sc7180.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpass_create_pm_clks._entry_ptr = internal global ptr @lpass_create_pm_clks._entry, section ".printk_index", align 4
@lpass_core_hm_sc7180_gdscs = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @lpass_core_hm_gdsc], [28 x i8] zeroinitializer }, align 32
@lpass_core_hm_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.8, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 128, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lpass_core_hm_gdsc\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lpass_core_cc-sc7180\00", [43 x i8] zeroinitializer }, align 32
@lpass_core_cc_sc7180_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-lpasscorecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lpass_core_cc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_clk_suspend, ptr @pm_clk_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpass_audio_cc\00", [17 x i8] zeroinitializer }, align 32
@lpass_audio_hm_sc7180_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @lpass_core_cc_sc7180_regmap_config, ptr null, i32 0, ptr null, i32 0, ptr @lpass_audio_hm_sc7180_gdscs, i32 2, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpass_core_cc\00", [18 x i8] zeroinitializer }, align 32
@lpass_core_cc_sc7180_desc = internal constant { %struct.qcom_cc_desc, [60 x i8] } { %struct.qcom_cc_desc { ptr @lpass_core_cc_sc7180_regmap_config, ptr @lpass_core_cc_sc7180_clocks, i32 11, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@lpass_lpaaudio_dig_pll = internal global { %struct.clk_alpha_pll, [48 x i8] } { %struct.clk_alpha_pll { i32 4096, ptr getelementptr (i8, ptr @clk_alpha_pll_regs_offset, i64 51), ptr @fabia_vco, i32 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 }, ptr null, i32 0, i32 0, i8 0 } }, [48 x i8] zeroinitializer }, align 32
@lpass_lpaaudio_dig_pll_config = internal constant { %struct.alpha_pll_config, [32 x i8] } { %struct.alpha_pll_config { i32 32, i32 0, i32 0, i32 541611673, i32 8295, i32 0, i32 20741, i32 18437, i32 0, i32 1073741824, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@lpass_audio_hm_sc7180_gdscs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lpass_audio_hm_gdsc, ptr @lpass_pdc_hm_gdsc], [24 x i8] zeroinitializer }, align 32
@lpass_audio_hm_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 37008, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 0, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@lpass_pdc_hm_gdsc = internal global { %struct.gdsc, [368 x i8] } { %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i32 12432, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 1, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, [368 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpass_audio_hm_gdsc\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpass_pdc_hm_gdsc\00", [46 x i8] zeroinitializer }, align 32
@lpass_core_cc_sc7180_clocks = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr getelementptr (i8, ptr @lpass_lpaaudio_dig_pll, i64 20), ptr getelementptr (i8, ptr @lpass_lpaaudio_dig_pll_out_odd, i64 12), ptr getelementptr (i8, ptr @core_clk_src, i64 16), ptr getelementptr (i8, ptr @ext_mclk0_clk_src, i64 16), ptr getelementptr (i8, ptr @lpaif_pri_clk_src, i64 16), ptr getelementptr (i8, ptr @lpaif_sec_clk_src, i64 16), ptr null, ptr getelementptr (i8, ptr @lpass_audio_core_ext_mclk0_clk, i64 12), ptr getelementptr (i8, ptr @lpass_audio_core_lpaif_pri_ibit_clk, i64 12), ptr getelementptr (i8, ptr @lpass_audio_core_lpaif_sec_ibit_clk, i64 12), ptr getelementptr (i8, ptr @lpass_audio_core_sysnoc_mport_core_clk, i64 12)], [52 x i8] zeroinitializer }, align 32
@lpass_lpaaudio_dig_pll_out_odd = internal global { %struct.clk_alpha_pll_postdiv, [44 x i8] } { %struct.clk_alpha_pll_postdiv { i32 4096, i8 4, ptr getelementptr (i8, ptr @clk_alpha_pll_regs, i64 51), %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 }, ptr null, i32 0, i32 0, i8 0 }, i32 12, ptr @post_div_table_lpass_lpaaudio_dig_pll_out_odd, i32 2 }, [44 x i8] zeroinitializer }, align 32
@core_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 118784, i8 8, i8 5, i8 0, ptr @lpass_core_cc_parent_map_2, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@ext_mclk0_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 131072, i8 8, i8 5, i8 0, ptr @lpass_core_cc_parent_map_0, ptr @ftbl_ext_mclk0_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@lpaif_pri_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 65536, i8 16, i8 5, i8 0, ptr @lpass_core_cc_parent_map_0, ptr @ftbl_ext_lpaif_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@lpaif_sec_clk_src = internal global { %struct.clk_rcg2, [48 x i8] } { %struct.clk_rcg2 { i32 69632, i8 16, i8 5, i8 0, ptr @lpass_core_cc_parent_map_0, ptr @ftbl_ext_lpaif_clk_src, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, [48 x i8] zeroinitializer }, align 32
@lpass_audio_core_ext_mclk0_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 131092, i32 131092, i8 1, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, ptr null, i32 131092, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@lpass_audio_core_lpaif_pri_ibit_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 65560, i32 65560, i8 1, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 }, ptr null, i32 65560, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@lpass_audio_core_lpaif_sec_ibit_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 69656, i32 69656, i8 1, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 }, ptr null, i32 69656, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@lpass_audio_core_sysnoc_mport_core_clk = internal global { %struct.clk_branch, [56 x i8] } { %struct.clk_branch { i32 143360, i32 143360, i8 1, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 }, ptr null, i32 143360, i32 1, i8 0 } }, [56 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs = external dso_local constant [8 x [17 x i8]], align 1
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lpass_lpaaudio_dig_pll_out_odd\00", [33 x i8] zeroinitializer }, align 32
@clk_alpha_pll_postdiv_fabia_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @lpass_lpaaudio_dig_pll, i64 20), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.14, ptr @clk_alpha_pll_postdiv_fabia_ops, ptr null, ptr @.compoundliteral, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@post_div_table_lpass_lpaaudio_dig_pll_out_odd = internal constant { [2 x %struct.clk_div_table], [16 x i8] } { [2 x %struct.clk_div_table] [%struct.clk_div_table { i32 5, i32 5 }, %struct.clk_div_table zeroinitializer], [16 x i8] zeroinitializer }, align 32
@lpass_core_cc_parent_map_2 = internal constant { [1 x %struct.parent_map], [30 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"core_clk_src\00", [19 x i8] zeroinitializer }, align 32
@clk_rcg2_ops = external dso_local constant %struct.clk_ops, align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.17, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.16, ptr @clk_rcg2_ops, ptr null, ptr @.compoundliteral.18, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@lpass_core_cc_parent_map_0 = internal constant { [2 x %struct.parent_map], [28 x i8] } { [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 5 }], [28 x i8] zeroinitializer }, align 32
@ftbl_ext_mclk0_clk_src = internal constant { [3 x %struct.freq_tbl], [60 x i8] } { [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 9600000, i8 0, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ext_mclk0_clk_src\00", [46 x i8] zeroinitializer }, align 32
@lpass_core_cc_parent_data_0 = internal constant { [2 x %struct.clk_parent_data], [32 x i8] } { [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.17, ptr null, i32 0 }, %struct.clk_parent_data { ptr getelementptr (i8, ptr @lpass_lpaaudio_dig_pll_out_odd, i64 12), ptr null, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @clk_rcg2_ops, ptr null, ptr @lpass_core_cc_parent_data_0, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@ftbl_ext_lpaif_clk_src = internal constant { [15 x %struct.freq_tbl], [44 x i8] } { [15 x %struct.freq_tbl] [%struct.freq_tbl { i32 256000, i8 1, i8 29, i16 1, i16 32 }, %struct.freq_tbl { i32 512000, i8 1, i8 29, i16 1, i16 16 }, %struct.freq_tbl { i32 768000, i8 1, i8 19, i16 1, i16 16 }, %struct.freq_tbl { i32 1024000, i8 1, i8 29, i16 1, i16 8 }, %struct.freq_tbl { i32 1536000, i8 1, i8 19, i16 1, i16 8 }, %struct.freq_tbl { i32 2048000, i8 1, i8 29, i16 1, i16 4 }, %struct.freq_tbl { i32 3072000, i8 1, i8 19, i16 1, i16 4 }, %struct.freq_tbl { i32 4096000, i8 1, i8 29, i16 1, i16 2 }, %struct.freq_tbl { i32 6144000, i8 1, i8 19, i16 1, i16 2 }, %struct.freq_tbl { i32 8192000, i8 1, i8 29, i16 0, i16 0 }, %struct.freq_tbl { i32 9600000, i8 0, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 12288000, i8 1, i8 19, i16 0, i16 0 }, %struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 24576000, i8 1, i8 9, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpaif_pri_clk_src\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.22, ptr @clk_rcg2_ops, ptr null, ptr @lpass_core_cc_parent_data_0, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpaif_sec_clk_src\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @clk_rcg2_ops, ptr null, ptr @lpass_core_cc_parent_data_0, ptr null, i8 2, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lpass_audio_core_ext_mclk0_clk\00", [33 x i8] zeroinitializer }, align 32
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.27 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @ext_mclk0_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.27, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lpass_audio_core_lpaif_pri_ibit_clk\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @lpaif_pri_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.29, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.30, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lpass_audio_core_lpaif_sec_ibit_clk\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @lpaif_sec_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.32, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.33, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"lpass_audio_core_sysnoc_mport_core_clk\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr getelementptr (i8, ptr @core_clk_src, i64 16), ptr null, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.35, ptr @clk_branch2_ops, ptr null, ptr @.compoundliteral.36, ptr null, i8 1, i32 4 }, [36 x i8] zeroinitializer }, align 32
@clk_alpha_pll_regs_offset = internal constant { [4 x [17 x i8]], [60 x i8] } { [4 x [17 x i8]] [[17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] c"\04\08\00\00\0C\10\14\18\1C $(\0008@\00"], [60 x i8] zeroinitializer }, align 32
@fabia_vco = internal global { [1 x %struct.pll_vco], [20 x i8] } { [1 x %struct.pll_vco] [%struct.pll_vco { i32 249600000, i32 2000000000, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpass_lpaaudio_dig_pll\00", [41 x i8] zeroinitializer }, align 32
@clk_alpha_pll_fabia_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.39 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.17, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.38, ptr @clk_alpha_pll_fabia_ops, ptr null, ptr @.compoundliteral.39, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"lpass_hm_sc7180_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 471, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"lpass_core_cc_sc7180_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 458, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 474, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"lpass_hm_sc7180_match_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 438, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"lpass_hm_pm_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 467, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 432, i32 44 }
@___asan_gen_.59 = private unnamed_addr constant [35 x i8] c"lpass_core_cc_sc7180_regmap_config\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 334, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"lpass_core_hm_sc7180_desc\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 341, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 374, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 376, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"lpass_core_hm_sc7180_gdscs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 325, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"lpass_core_hm_gdsc\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 316, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 319, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 461, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [33 x i8] c"lpass_core_cc_sc7180_match_table\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 446, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"lpass_core_cc_pm_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 454, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 391, i32 44 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"lpass_audio_hm_sc7180_desc\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 353, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 397, i32 44 }
@___asan_gen_.113 = private unnamed_addr constant [26 x i8] c"lpass_core_cc_sc7180_desc\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 347, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant [23 x i8] c"lpass_lpaaudio_dig_pll\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 63, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant [30 x i8] c"lpass_lpaaudio_dig_pll_config\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 34, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant [28 x i8] c"lpass_audio_hm_sc7180_gdscs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 329, i32 21 }
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c"lpass_audio_hm_gdsc\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 308, i32 20 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"lpass_pdc_hm_gdsc\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 299, i32 20 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 311, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 302, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant [28 x i8] c"lpass_core_cc_sc7180_clocks\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 283, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant [31 x i8] c"lpass_lpaaudio_dig_pll_out_odd\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 86, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"core_clk_src\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 119, i32 24 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"ext_mclk0_clk_src\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 158, i32 24 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"lpaif_pri_clk_src\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 173, i32 24 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"lpaif_sec_clk_src\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 188, i32 24 }
@___asan_gen_.155 = private unnamed_addr constant [31 x i8] c"lpass_audio_core_ext_mclk0_clk\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 203, i32 26 }
@___asan_gen_.158 = private unnamed_addr constant [36 x i8] c"lpass_audio_core_lpaif_pri_ibit_clk\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 223, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [36 x i8] c"lpass_audio_core_lpaif_sec_ibit_clk\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 243, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant [39 x i8] c"lpass_audio_core_sysnoc_mport_core_clk\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 263, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 95, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [46 x i8] c"post_div_table_lpass_lpaaudio_dig_pll_out_odd\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 81, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant [27 x i8] c"lpass_core_cc_parent_map_2\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 115, i32 32 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 125, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 127, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [27 x i8] c"lpass_core_cc_parent_map_0\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 105, i32 32 }
@___asan_gen_.189 = private unnamed_addr constant [23 x i8] c"ftbl_ext_mclk0_clk_src\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 134, i32 30 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 165, i32 11 }
@___asan_gen_.195 = private unnamed_addr constant [28 x i8] c"lpass_core_cc_parent_data_0\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 110, i32 37 }
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [23 x i8] c"ftbl_ext_lpaif_clk_src\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 140, i32 30 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 180, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 195, i32 11 }
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 212, i32 12 }
@___asan_gen_.213 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 232, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 252, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 272, i32 12 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [26 x i8] c"clk_alpha_pll_regs_offset\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 45, i32 17 }
@___asan_gen_.233 = private unnamed_addr constant [10 x i8] c"fabia_vco\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 30, i32 23 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private constant [41 x i8] c"../drivers/clk/qcom/lpasscorecc-sc7180.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 70, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_lpass_sc7180_exit, ptr @__initcall__kmod_lpasscorecc_sc7180__171_496_lpass_sc7180_init4, ptr @lpass_create_pm_clks._entry, ptr @lpass_create_pm_clks._entry_ptr, ptr @lpass_sc7180_exit, ptr @lpass_hm_sc7180_driver, ptr @lpass_core_cc_sc7180_driver, ptr @.str, ptr @lpass_hm_sc7180_match_table, ptr @lpass_hm_pm_ops, ptr @.str.1, ptr @lpass_core_cc_sc7180_regmap_config, ptr @lpass_core_hm_sc7180_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @lpass_core_hm_sc7180_gdscs, ptr @lpass_core_hm_gdsc, ptr @.str.8, ptr @.str.9, ptr @lpass_core_cc_sc7180_match_table, ptr @lpass_core_cc_pm_ops, ptr @.str.10, ptr @lpass_audio_hm_sc7180_desc, ptr @.str.11, ptr @lpass_core_cc_sc7180_desc, ptr @lpass_lpaaudio_dig_pll, ptr @lpass_lpaaudio_dig_pll_config, ptr @lpass_audio_hm_sc7180_gdscs, ptr @lpass_audio_hm_gdsc, ptr @lpass_pdc_hm_gdsc, ptr @.str.12, ptr @.str.13, ptr @lpass_core_cc_sc7180_clocks, ptr @lpass_lpaaudio_dig_pll_out_odd, ptr @core_clk_src, ptr @ext_mclk0_clk_src, ptr @lpaif_pri_clk_src, ptr @lpaif_sec_clk_src, ptr @lpass_audio_core_ext_mclk0_clk, ptr @lpass_audio_core_lpaif_pri_ibit_clk, ptr @lpass_audio_core_lpaif_sec_ibit_clk, ptr @lpass_audio_core_sysnoc_mport_core_clk, ptr @.str.14, ptr @.compoundliteral, ptr @.compoundliteral.15, ptr @post_div_table_lpass_lpaaudio_dig_pll_out_odd, ptr @lpass_core_cc_parent_map_2, ptr @.str.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @lpass_core_cc_parent_map_0, ptr @ftbl_ext_mclk0_clk_src, ptr @.str.20, ptr @lpass_core_cc_parent_data_0, ptr @.compoundliteral.21, ptr @ftbl_ext_lpaif_clk_src, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @clk_alpha_pll_regs_offset, ptr @fabia_vco, ptr @.str.38, ptr @.compoundliteral.39, ptr @.compoundliteral.40], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_hm_sc7180_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_cc_sc7180_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_hm_sc7180_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_hm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_cc_sc7180_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_hm_sc7180_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_create_pm_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_hm_sc7180_gdscs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_hm_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_cc_sc7180_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_cc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_audio_hm_sc7180_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_cc_sc7180_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_lpaaudio_dig_pll to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_lpaaudio_dig_pll_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_audio_hm_sc7180_gdscs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_audio_hm_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_pdc_hm_gdsc to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_cc_sc7180_clocks to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_lpaaudio_dig_pll_out_odd to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_mclk0_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpaif_pri_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpaif_sec_clk_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_audio_core_ext_mclk0_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_audio_core_lpaif_pri_ibit_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_audio_core_lpaif_sec_ibit_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_audio_core_sysnoc_mport_core_clk to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_div_table_lpass_lpaaudio_dig_pll_out_odd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_cc_parent_map_2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_cc_parent_map_0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_ext_mclk0_clk_src to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_core_cc_parent_data_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftbl_ext_lpaif_clk_src to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_alpha_pll_regs_offset to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fabia_vco to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_sc7180_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpass_core_cc_sc7180_driver, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpass_hm_sc7180_driver, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpass_core_cc_sc7180_driver) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpass_sc7180_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpass_hm_sc7180_driver) #4
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpass_core_cc_sc7180_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_hm_core_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpass_create_pm_clks(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store ptr @.str.1, ptr @lpass_core_cc_sc7180_regmap_config, align 4
  %call1 = tail call i32 @qcom_cc_probe_by_index(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull @lpass_core_hm_sc7180_desc) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpass_create_pm_clks(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 500) #4
  %call = tail call i32 @devm_pm_runtime_enable(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @devm_pm_clk_create(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call i32 @pm_clk_add(ptr noundef %dev, ptr noundef nonnull @.str.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call9, %do.end ], [ %call9, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_probe_by_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_core_cc_sc7180_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lpass_create_pm_clks(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr @.str.10, ptr @lpass_core_cc_sc7180_regmap_config, align 4
  %call1 = tail call i32 @qcom_cc_probe_by_index(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @lpass_audio_hm_sc7180_desc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  store ptr @.str.11, ptr @lpass_core_cc_sc7180_regmap_config, align 4
  %call5 = tail call ptr @qcom_cc_map(ptr noundef %pdev, ptr noundef nonnull @lpass_core_cc_sc7180_desc) #4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call5, i32 noundef 147456, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call11 = tail call i32 @regmap_write(ptr noundef %call5, i32 noundef 4104, i32 noundef 32) #4
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %call5, i32 noundef 4116, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @clk_fabia_pll_configure(ptr noundef nonnull @lpass_lpaaudio_dig_pll, ptr noundef %call5, ptr noundef nonnull @lpass_lpaaudio_dig_pll_config) #4
  %call13 = tail call i32 @qcom_cc_really_probe(ptr noundef %pdev, ptr noundef nonnull @lpass_core_cc_sc7180_desc, ptr noundef %call5) #4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i34 = tail call i64 @ktime_get_mono_fast_ns() #4
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %1 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store volatile i64 %call.i34, ptr %last_busy.i, align 8
  %call.i35 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then7 ], [ %call13, %if.end9 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_fabia_pll_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_lpasscorecc_sc7180__171_496_lpass_sc7180_init4, !1, !"__initcall__kmod_lpasscorecc_sc7180__171_496_lpass_sc7180_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 496, i32 1}
!2 = !{ptr @__exitcall_lpass_sc7180_exit, !3, !"__exitcall_lpass_sc7180_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 503, i32 1}
!4 = !{ptr @__UNIQUE_ID_description172, !5, !"__UNIQUE_ID_description172", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 505, i32 1}
!6 = !{ptr @__UNIQUE_ID_file173, !7, !"__UNIQUE_ID_file173", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 506, i32 1}
!8 = !{ptr @__UNIQUE_ID_license174, !7, !"__UNIQUE_ID_license174", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 474, i32 11}
!11 = !{ptr @lpass_hm_sc7180_driver, !12, !"lpass_hm_sc7180_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 471, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 432, i32 44}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 374, i32 31}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 376, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lpass_create_pm_clks._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @lpass_create_pm_clks._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @lpass_core_cc_sc7180_regmap_config, !26, !"lpass_core_cc_sc7180_regmap_config", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 334, i32 29}
!27 = !{ptr @lpass_core_hm_sc7180_desc, !28, !"lpass_core_hm_sc7180_desc", i1 false, i1 false}
!28 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 341, i32 34}
!29 = !{ptr @lpass_core_hm_sc7180_gdscs, !30, !"lpass_core_hm_sc7180_gdscs", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 325, i32 21}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 319, i32 11}
!33 = !{ptr @lpass_core_hm_gdsc, !34, !"lpass_core_hm_gdsc", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 316, i32 20}
!35 = !{ptr @lpass_hm_sc7180_match_table, !36, !"lpass_hm_sc7180_match_table", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 438, i32 34}
!37 = !{ptr @lpass_hm_pm_ops, !38, !"lpass_hm_pm_ops", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 467, i32 32}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 461, i32 11}
!41 = !{ptr @lpass_core_cc_sc7180_driver, !42, !"lpass_core_cc_sc7180_driver", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 458, i32 31}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 391, i32 44}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 397, i32 44}
!47 = !{ptr @lpass_audio_hm_sc7180_desc, !48, !"lpass_audio_hm_sc7180_desc", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 353, i32 34}
!49 = !{ptr @lpass_audio_hm_sc7180_gdscs, !50, !"lpass_audio_hm_sc7180_gdscs", i1 false, i1 false}
!50 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 329, i32 21}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 311, i32 11}
!53 = !{ptr @lpass_audio_hm_gdsc, !54, !"lpass_audio_hm_gdsc", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 308, i32 20}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 302, i32 11}
!57 = !{ptr @lpass_pdc_hm_gdsc, !58, !"lpass_pdc_hm_gdsc", i1 false, i1 false}
!58 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 299, i32 20}
!59 = !{ptr @lpass_core_cc_sc7180_desc, !60, !"lpass_core_cc_sc7180_desc", i1 false, i1 false}
!60 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 347, i32 34}
!61 = !{ptr @lpass_core_cc_sc7180_clocks, !62, !"lpass_core_cc_sc7180_clocks", i1 false, i1 false}
!62 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 283, i32 27}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 95, i32 11}
!65 = !{ptr @lpass_lpaaudio_dig_pll_out_odd, !66, !"lpass_lpaaudio_dig_pll_out_odd", i1 false, i1 false}
!66 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 86, i32 37}
!67 = !{ptr @post_div_table_lpass_lpaaudio_dig_pll_out_odd, !68, !"post_div_table_lpass_lpaaudio_dig_pll_out_odd", i1 false, i1 false}
!68 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 81, i32 4}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 125, i32 11}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 127, i32 15}
!73 = !{ptr @core_clk_src, !74, !"core_clk_src", i1 false, i1 false}
!74 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 119, i32 24}
!75 = !{ptr @lpass_core_cc_parent_map_2, !76, !"lpass_core_cc_parent_map_2", i1 false, i1 false}
!76 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 115, i32 32}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 165, i32 11}
!79 = !{ptr @ext_mclk0_clk_src, !80, !"ext_mclk0_clk_src", i1 false, i1 false}
!80 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 158, i32 24}
!81 = !{ptr @lpass_core_cc_parent_map_0, !82, !"lpass_core_cc_parent_map_0", i1 false, i1 false}
!82 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 105, i32 32}
!83 = !{ptr @ftbl_ext_mclk0_clk_src, !84, !"ftbl_ext_mclk0_clk_src", i1 false, i1 false}
!84 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 134, i32 30}
!85 = !{ptr @lpass_core_cc_parent_data_0, !86, !"lpass_core_cc_parent_data_0", i1 false, i1 false}
!86 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 110, i32 37}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 180, i32 11}
!89 = !{ptr @lpaif_pri_clk_src, !90, !"lpaif_pri_clk_src", i1 false, i1 false}
!90 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 173, i32 24}
!91 = !{ptr @ftbl_ext_lpaif_clk_src, !92, !"ftbl_ext_lpaif_clk_src", i1 false, i1 false}
!92 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 140, i32 30}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 195, i32 11}
!95 = !{ptr @lpaif_sec_clk_src, !96, !"lpaif_sec_clk_src", i1 false, i1 false}
!96 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 188, i32 24}
!97 = !{ptr @.str.26, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 212, i32 12}
!99 = !{ptr @lpass_audio_core_ext_mclk0_clk, !100, !"lpass_audio_core_ext_mclk0_clk", i1 false, i1 false}
!100 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 203, i32 26}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 232, i32 12}
!103 = !{ptr @lpass_audio_core_lpaif_pri_ibit_clk, !104, !"lpass_audio_core_lpaif_pri_ibit_clk", i1 false, i1 false}
!104 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 223, i32 26}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 252, i32 12}
!107 = !{ptr @lpass_audio_core_lpaif_sec_ibit_clk, !108, !"lpass_audio_core_lpaif_sec_ibit_clk", i1 false, i1 false}
!108 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 243, i32 26}
!109 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 272, i32 12}
!111 = !{ptr @lpass_audio_core_sysnoc_mport_core_clk, !112, !"lpass_audio_core_sysnoc_mport_core_clk", i1 false, i1 false}
!112 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 263, i32 26}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 70, i32 12}
!115 = !{ptr @lpass_lpaaudio_dig_pll, !116, !"lpass_lpaaudio_dig_pll", i1 false, i1 false}
!116 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 63, i32 29}
!117 = !{ptr @clk_alpha_pll_regs_offset, !118, !"clk_alpha_pll_regs_offset", i1 false, i1 false}
!118 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 45, i32 17}
!119 = !{ptr @fabia_vco, !120, !"fabia_vco", i1 false, i1 false}
!120 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 30, i32 23}
!121 = !{ptr @lpass_lpaaudio_dig_pll_config, !122, !"lpass_lpaaudio_dig_pll_config", i1 false, i1 false}
!122 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 34, i32 38}
!123 = !{ptr @lpass_core_cc_sc7180_match_table, !124, !"lpass_core_cc_sc7180_match_table", i1 false, i1 false}
!124 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 446, i32 34}
!125 = !{ptr @lpass_core_cc_pm_ops, !126, !"lpass_core_cc_pm_ops", i1 false, i1 false}
!126 = !{!"../drivers/clk/qcom/lpasscorecc-sc7180.c", i32 454, i32 32}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
