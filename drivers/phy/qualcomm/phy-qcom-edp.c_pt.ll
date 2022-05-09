; ModuleID = '/llk/IR_all_yes/drivers/phy/qualcomm/phy-qcom-edp.c_pt.bc'
source_filename = "../drivers/phy/qualcomm/phy-qcom-edp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.qcom_edp = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.clk_hw, %struct.clk_hw, %struct.phy_configure_opts_dp, [2 x %struct.clk_bulk_data], [2 x %struct.regulator_bulk_data] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.phy_configure_opts_dp = type { i32, i32, [4 x i32], [4 x i32], i8 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_phy_qcom_edp__289_670_qcom_edp_phy_driver_init6 = internal global ptr @qcom_edp_phy_driver_init, section ".initcall6.init", align 4
@qcom_edp_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_edp_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_edp_phy_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_edp_phy_driver_exit = internal global ptr @qcom_edp_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [65 x i8] c"phy_qcom_edp.author=Bjorn Andersson <bjorn.andersson@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [53 x i8] c"phy_qcom_edp.description=Qualcomm eDP QMP PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [52 x i8] c"phy_qcom_edp.file=drivers/phy/qualcomm/phy-qcom-edp\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [28 x i8] c"phy_qcom_edp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom-edp-phy\00", [19 x i8] zeroinitializer }, align 32
@qcom_edp_phy_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-edp-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cfg_ahb\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdda-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdda-pll\00", [23 x i8] zeroinitializer }, align 32
@qcom_edp_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @qcom_edp_phy_init, ptr @qcom_edp_phy_exit, ptr @qcom_edp_phy_power_on, ptr @qcom_edp_phy_power_off, ptr null, ptr null, ptr null, ptr @qcom_edp_phy_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@qcom_edp_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 646, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to register phy\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_edp_phy_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/phy/qualcomm/phy-qcom-edp.c\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_edp_phy_probe._entry_ptr = internal global ptr @qcom_edp_phy_probe._entry, section ".printk_index", align 4
@qcom_edp_dp_link_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_edp_dp_link_clk_recalc_rate, ptr null, ptr @qcom_edp_dp_link_clk_determine_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edp_phy_pll_link_clk\00", [43 x i8] zeroinitializer }, align 32
@qcom_edp_dp_pixel_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_edp_dp_pixel_clk_recalc_rate, ptr null, ptr @qcom_edp_dp_pixel_clk_determine_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"edp_phy_pll_vco_div_clk\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1620, i64 2700, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 162000000, i64 270000000, i64 540000000, i64 810000000]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 1620, i64 2700, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 1620, i64 2700, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 1620, i64 2700, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 1620, i64 2700, i64 5400, i64 8100]
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"qcom_edp_phy_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 662, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 665, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [25 x i8] c"qcom_edp_phy_match_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 656, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 628, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 629, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 634, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 635, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"qcom_edp_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 433, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 646, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [25 x i8] c"qcom_edp_dp_link_clk_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 563, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 579, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant [26 x i8] c"qcom_edp_dp_pixel_clk_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 525, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [39 x i8] c"../drivers/phy/qualcomm/phy-qcom-edp.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 586, i32 14 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_qcom_edp_phy_driver_exit, ptr @__initcall__kmod_phy_qcom_edp__289_670_qcom_edp_phy_driver_init6, ptr @qcom_edp_phy_driver_exit, ptr @qcom_edp_phy_probe._entry, ptr @qcom_edp_phy_probe._entry_ptr, ptr @qcom_edp_phy_driver, ptr @.str, ptr @qcom_edp_phy_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @qcom_edp_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @qcom_edp_dp_link_clk_ops, ptr @.str.10, ptr @qcom_edp_dp_pixel_clk_ops, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_edp_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_edp_phy_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_edp_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_edp_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_edp_dp_link_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_edp_dp_pixel_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_edp_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_edp_phy_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_edp_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_edp_phy_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_edp_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %edp4 = getelementptr inbounds %struct.qcom_edp, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %edp4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %edp4, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #8
  %tx0 = getelementptr inbounds %struct.qcom_edp, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %tx0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %tx0, align 4
  %cmp.i112 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call18 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 2) #8
  %tx1 = getelementptr inbounds %struct.qcom_edp, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %tx1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %tx1, align 4
  %cmp.i113 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 3) #8
  %pll = getelementptr inbounds %struct.qcom_edp, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call25, ptr %pll, align 4
  %cmp.i114 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %clks = getelementptr inbounds %struct.qcom_edp, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.1, ptr %clks, align 4
  %arrayidx33 = getelementptr %struct.qcom_edp, ptr %call.i, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.2, ptr %arrayidx33, align 4
  %call36 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %supplies = getelementptr inbounds %struct.qcom_edp, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.3, ptr %supplies, align 4
  %arrayidx42 = getelementptr %struct.qcom_edp, ptr %call.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.4, ptr %arrayidx42, align 4
  %call46 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  %call51 = tail call fastcc i32 @qcom_edp_clks_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call57 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %14, ptr noundef nonnull @qcom_edp_ops) #8
  %phy = getelementptr inbounds %struct.qcom_edp, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call57, ptr %phy, align 4
  %cmp.i115 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %do.end, label %if.end63

do.end:                                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #11
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end63:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call57, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call65 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #8
  %cmp.i.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %call65 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %20, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end, %if.end49.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then28, %if.then21, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then7 ], [ %4, %if.then14 ], [ %6, %if.then21 ], [ %8, %if.then28 ], [ %18, %do.end ], [ %spec.select.i, %if.end63 ], [ -12, %entry.cleanup_crit_edge ], [ %call36, %if.end31.cleanup_crit_edge ], [ %call46, %if.end39.cleanup_crit_edge ], [ %call51, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_edp_clks_register(ptr noundef %edp) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = getelementptr inbounds i8, ptr %init, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %edp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edp, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @qcom_edp_dp_link_clk_ops, ptr %ops, align 4
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.10, ptr %init, align 4
  %dp_link_hw = getelementptr inbounds %struct.qcom_edp, ptr %edp, i32 0, i32 6
  %init2 = getelementptr inbounds %struct.qcom_edp, ptr %edp, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %init2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %init, ptr %init2, align 4
  %7 = ptrtoint ptr %edp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edp, align 4
  %call5 = call i32 @devm_clk_hw_register(ptr noundef %8, ptr noundef %dp_link_hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @qcom_edp_dp_pixel_clk_ops, ptr %ops, align 4
  %10 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.11, ptr %init, align 4
  %dp_pixel_hw = getelementptr inbounds %struct.qcom_edp, ptr %edp, i32 0, i32 7
  %init11 = getelementptr inbounds %struct.qcom_edp, ptr %edp, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %init11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %init, ptr %init11, align 4
  %12 = ptrtoint ptr %edp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edp, align 4
  %call14 = call i32 @devm_clk_hw_register(ptr noundef %13, ptr noundef %dp_pixel_hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dp_link_hw, ptr %hws, align 4
  %arrayidx21 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 2
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dp_pixel_hw, ptr %arrayidx21, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %call.i, align 4
  %17 = ptrtoint ptr %edp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %edp, align 4
  %call23 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %18, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end17 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call14, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_edp_dp_link_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_opts1 = getelementptr i8, ptr %hw, i32 24
  %0 = ptrtoint ptr %dp_opts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dp_opts1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1620, label %entry.sw.bb_crit_edge
    i32 2700, label %entry.sw.bb_crit_edge5
    i32 5400, label %entry.sw.bb_crit_edge6
    i32 8100, label %entry.sw.bb_crit_edge7
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7
  %mul = mul nuw nsw i32 %1, 100000
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_edp_dp_link_clk_determine_rate(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %1, label %sw.default [
    i32 162000000, label %entry.return_crit_edge
    i32 270000000, label %entry.return_crit_edge1
    i32 540000000, label %entry.return_crit_edge2
    i32 810000000, label %entry.return_crit_edge3
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge1 ], [ 0, %entry.return_crit_edge2 ], [ 0, %entry.return_crit_edge3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_edp_dp_pixel_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_opts1 = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %dp_opts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dp_opts1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %1, label %sw.default [
    i32 1620, label %entry.cleanup_crit_edge
    i32 2700, label %sw.bb2
    i32 5400, label %sw.bb3
    i32 8100, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1350000000, %sw.bb4 ], [ 1350000000, %sw.bb3 ], [ 1350000000, %sw.bb2 ], [ 810000000, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_edp_dp_pixel_clk_determine_rate(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 810000000, i32 %1)
  %switch.selectcmp.case1 = icmp eq i32 %1, 810000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1350000000, i32 %1)
  %switch.selectcmp.case2 = icmp eq i32 %1, 1350000000
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = select i1 %switch.selectcmp, i32 0, i32 -22
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_edp_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 10
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %clks = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 9
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.out_disable_supplies_crit_edge

if.end.out_disable_supplies_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_disable_supplies

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #8
  br label %out_disable_supplies

do.body:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %edp7 = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edp7, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1694498816) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %pll = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll, align 4
  %add.ptr11 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 385875968) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edp7, align 4
  %add.ptr16 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 33554432) #8, !srcloc !52
  tail call void @msleep(i32 noundef 20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edp7, align 4
  %add.ptr21 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 2097152000) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edp7, align 4
  %add.ptr26 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edp7, align 4
  %add.ptr31 = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 318767104) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edp7, align 4
  %add.ptr36 = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 603979776) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edp7, align 4
  %add.ptr41 = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %edp7, align 4
  %add.ptr46 = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 167772160) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edp7, align 4
  %add.ptr51 = getelementptr i8, ptr %21, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 637534208) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edp7, align 4
  %add.ptr56 = getelementptr i8, ptr %23, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 167772160) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edp7, align 4
  %add.ptr61 = getelementptr i8, ptr %25, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 50331648) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %edp7, align 4
  %add.ptr66 = getelementptr i8, ptr %27, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 922746880) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %edp7, align 4
  %add.ptr71 = getelementptr i8, ptr %29, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 50331648) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %edp7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %edp7, align 4
  %add.ptr76 = getelementptr i8, ptr %31, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 520093696) #8, !srcloc !52
  tail call void @msleep(i32 noundef 20) #8
  br label %cleanup

out_disable_supplies:                             ; preds = %if.then3.i, %if.end.out_disable_supplies_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.out_disable_supplies_crit_edge ]
  %call79 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  br label %cleanup

cleanup:                                          ; preds = %out_disable_supplies, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %out_disable_supplies ], [ 0, %do.body ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_edp_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clks = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 9
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #8
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #8
  %supplies = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 10
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_edp_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %edp1 = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edp1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2097152000) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edp1, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -67108864) #8, !srcloc !52
  %call7 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call7, 200000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 329) #8
  %pll = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll, align 4
  %add.ptr18510 = getelementptr i8, ptr %7, i32 320
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18510) #8, !srcloc !69
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %and511 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and511)
  %tobool.not512 = icmp eq i32 %and511, 0
  br i1 %tobool.not512, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then37.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call24 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %if.then27, label %if.then37

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll, align 4
  %add.ptr31 = getelementptr i8, ptr %11, i32 320
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #8, !srcloc !69
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  br label %for.end

if.then37:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #8
  %14 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pll, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 320
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #8, !srcloc !69
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %and = and i32 %17, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then37.land.lhs.true_crit_edge, label %if.then37.for.end_crit_edge

if.then37.for.end_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then37.land.lhs.true_crit_edge:                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %if.then37.for.end_crit_edge, %if.then27, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %13, %if.then27 ], [ %9, %entry.for.end_crit_edge ], [ %17, %if.then37.for.end_crit_edge ]
  %and40 = and i32 %val.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %for.end.cleanup_crit_edge, label %do.body45

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body45:                                        ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %tx0 = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx0, align 4
  %add.ptr48 = getelementptr i8, ptr %19, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 16777216) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %tx1 = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx1, align 4
  %add.ptr52 = getelementptr i8, ptr %21, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 16777216) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx0, align 4
  %add.ptr57 = getelementptr i8, ptr %23, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 0) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx1, align 4
  %add.ptr62 = getelementptr i8, ptr %25, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 0) #8, !srcloc !52
  %dp_opts1.i = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %dp_opts1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dp_opts1.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %27, label %do.body45.cleanup_crit_edge [
    i32 1620, label %do.body45.if.end66_crit_edge
    i32 2700, label %do.body45.if.end66_crit_edge528
    i32 8100, label %do.body45.if.end66_crit_edge529
    i32 5400, label %sw.bb2.i
  ]

do.body45.if.end66_crit_edge529:                  ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.body45.if.end66_crit_edge528:                  ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.body45.if.end66_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2.i:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end66:                                         ; preds = %sw.bb2.i, %do.body45.if.end66_crit_edge, %do.body45.if.end66_crit_edge528, %do.body45.if.end66_crit_edge529
  %step1.0.i = phi i32 [ 1543503872, %sw.bb2.i ], [ 1157627904, %do.body45.if.end66_crit_edge ], [ 1157627904, %do.body45.if.end66_crit_edge528 ], [ 1157627904, %do.body45.if.end66_crit_edge529 ]
  %step2.0.i = phi i32 [ 134217728, %sw.bb2.i ], [ 100663296, %do.body45.if.end66_crit_edge ], [ 100663296, %do.body45.if.end66_crit_edge528 ], [ 100663296, %do.body45.if.end66_crit_edge529 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pll, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pll, align 4
  %add.ptr7.i = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pll, align 4
  %add.ptr12.i = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 905969664) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pll, align 4
  %add.ptr17.i = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 16777216) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pll, align 4
  %add.ptr22.i = getelementptr i8, ptr %38, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %step1.0.i) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pll, align 4
  %add.ptr27.i = getelementptr i8, ptr %40, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %step2.0.i) #8, !srcloc !52
  %41 = ptrtoint ptr %dp_opts1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dp_opts1.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %42, label %if.end66.cleanup_crit_edge [
    i32 1620, label %if.end66.do.body71_crit_edge
    i32 2700, label %sw.bb2.i474
    i32 5400, label %sw.bb3.i
    i32 8100, label %sw.bb4.i
  ]

if.end66.do.body71_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2.i474:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

sw.bb3.i:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

sw.bb4.i:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

do.body71:                                        ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i474, %if.end66.do.body71_crit_edge
  %div_frac_start2_mode0.0.i = phi i32 [ -2147483648, %sw.bb4.i ], [ 0, %sw.bb3.i ], [ -2147483648, %sw.bb2.i474 ], [ -2147483648, %if.end66.do.body71_crit_edge ]
  %div_frac_start3_mode0.0.i = phi i32 [ 117440512, %sw.bb4.i ], [ 167772160, %sw.bb3.i ], [ 117440512, %sw.bb2.i474 ], [ 117440512, %if.end66.do.body71_crit_edge ]
  %dec_start_mode0.0.i = phi i32 [ 1761607680, %sw.bb4.i ], [ -1946157056, %sw.bb3.i ], [ 1761607680, %sw.bb2.i474 ], [ 1761607680, %if.end66.do.body71_crit_edge ]
  %lock_cmp1_mode0.0.i = phi i32 [ 788529152, %sw.bb4.i ], [ 520093696, %sw.bb3.i ], [ 251658240, %sw.bb2.i474 ], [ 1862270976, %if.end66.do.body71_crit_edge ]
  %lock_cmp2_mode0.0.i = phi i32 [ 704643072, %sw.bb4.i ], [ 469762048, %sw.bb3.i ], [ 234881024, %sw.bb2.i474 ], [ 134217728, %if.end66.do.body71_crit_edge ]
  %hsclk_sel.0.i = phi i32 [ 0, %sw.bb4.i ], [ 16777216, %sw.bb3.i ], [ 50331648, %sw.bb2.i474 ], [ 83886080, %if.end66.do.body71_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pll, align 4
  %add.ptr.i476 = getelementptr i8, ptr %45, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i476, i32 16777216) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pll, align 4
  %add.ptr9.i = getelementptr i8, ptr %47, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 184549376) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pll, align 4
  %add.ptr14.i = getelementptr i8, ptr %49, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 33554432) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pll, align 4
  %add.ptr19.i = getelementptr i8, ptr %51, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 201326592) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pll, align 4
  %add.ptr24.i = getelementptr i8, ptr %53, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 100663296) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pll, align 4
  %add.ptr29.i = getelementptr i8, ptr %55, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 805306368) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pll, align 4
  %add.ptr34.i = getelementptr i8, ptr %57, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %hsclk_sel.0.i) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pll, align 4
  %add.ptr39.i = getelementptr i8, ptr %59, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 251658240) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pll, align 4
  %add.ptr44.i = getelementptr i8, ptr %61, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 134217728) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pll, align 4
  %add.ptr49.i = getelementptr i8, ptr %63, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 905969664) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pll, align 4
  %add.ptr54.i = getelementptr i8, ptr %65, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 369098752) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pll, align 4
  %add.ptr59.i = getelementptr i8, ptr %67, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 100663296) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pll, align 4
  %add.ptr64.i = getelementptr i8, ptr %69, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 %dec_start_mode0.0.i) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pll, align 4
  %add.ptr69.i = getelementptr i8, ptr %71, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 0) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pll, align 4
  %add.ptr74.i = getelementptr i8, ptr %73, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 %div_frac_start2_mode0.0.i) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pll, align 4
  %add.ptr79.i = getelementptr i8, ptr %75, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 %div_frac_start3_mode0.0.i) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pll, align 4
  %add.ptr84.i = getelementptr i8, ptr %77, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 33554432) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pll, align 4
  %add.ptr89.i = getelementptr i8, ptr %79, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89.i, i32 1056964608) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pll, align 4
  %add.ptr94.i = getelementptr i8, ptr %81, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i, i32 0) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pll, align 4
  %add.ptr99.i = getelementptr i8, ptr %83, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 0) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %84 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pll, align 4
  %add.ptr104.i = getelementptr i8, ptr %85, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104.i, i32 %lock_cmp1_mode0.0.i) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %86 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pll, align 4
  %add.ptr109.i = getelementptr i8, ptr %87, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109.i, i32 %lock_cmp2_mode0.0.i) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %88 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pll, align 4
  %add.ptr114.i = getelementptr i8, ptr %89, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114.i, i32 167772160) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pll, align 4
  %add.ptr119.i = getelementptr i8, ptr %91, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119.i, i32 335544320) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pll, align 4
  %add.ptr124.i = getelementptr i8, ptr %93, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i, i32 0) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pll, align 4
  %add.ptr129.i = getelementptr i8, ptr %95, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129.i, i32 385875968) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pll, align 4
  %add.ptr134.i = getelementptr i8, ptr %97, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134.i, i32 251658240) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %98 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pll, align 4
  %add.ptr139.i = getelementptr i8, ptr %99, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139.i, i32 -1610612736) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pll, align 4
  %add.ptr144.i = getelementptr i8, ptr %101, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144.i, i32 50331648) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %edp1, align 4
  %add.ptr75 = getelementptr i8, ptr %103, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 83886080) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %104 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %edp1, align 4
  %add.ptr80 = getelementptr i8, ptr %105, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 83886080) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %106 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tx0, align 4
  %add.ptr85 = getelementptr i8, ptr %107, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 50331648) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %108 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tx0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 251658240) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %110 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tx0, align 4
  %add.ptr95 = getelementptr i8, ptr %111, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 50331648) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %112 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tx0, align 4
  %add.ptr100 = getelementptr i8, ptr %113, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 16777216) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %114 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tx0, align 4
  %add.ptr105 = getelementptr i8, ptr %115, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 67108864) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %116 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tx1, align 4
  %add.ptr110 = getelementptr i8, ptr %117, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 50331648) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %118 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tx1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 251658240) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %120 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tx1, align 4
  %add.ptr120 = getelementptr i8, ptr %121, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 50331648) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %122 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tx1, align 4
  %add.ptr125 = getelementptr i8, ptr %123, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 16777216) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %124 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tx1, align 4
  %add.ptr130 = getelementptr i8, ptr %125, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 67108864) #8, !srcloc !52
  %126 = ptrtoint ptr %dp_opts1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dp_opts1.i, align 4
  %128 = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %127, label %do.body71.cleanup_crit_edge [
    i32 1620, label %do.body71.do.body135_crit_edge
    i32 2700, label %sw.bb2.i480
    i32 5400, label %sw.bb3.i481
    i32 8100, label %sw.bb4.i482
  ]

do.body71.do.body135_crit_edge:                   ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body135

do.body71.cleanup_crit_edge:                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2.i480:                                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body135

sw.bb3.i481:                                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body135

sw.bb4.i482:                                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body135

do.body135:                                       ; preds = %sw.bb4.i482, %sw.bb3.i481, %sw.bb2.i480, %do.body71.do.body135_crit_edge
  %pixel_freq.0.i = phi i32 [ 1350000000, %sw.bb4.i482 ], [ 1350000000, %sw.bb3.i481 ], [ 1350000000, %sw.bb2.i480 ], [ 810000000, %do.body71.do.body135_crit_edge ]
  %vco_div.0.i = phi i32 [ 0, %sw.bb4.i482 ], [ 33554432, %sw.bb3.i481 ], [ 16777216, %sw.bb2.i480 ], [ 16777216, %do.body71.do.body135_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %129 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %edp1, align 4
  %add.ptr.i483 = getelementptr i8, ptr %130, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i483, i32 %vco_div.0.i) #8, !srcloc !52
  %clk.i = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 6, i32 1
  %131 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %clk.i, align 4
  %133 = ptrtoint ptr %dp_opts1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dp_opts1.i, align 4
  %mul.i = mul i32 %134, 100000
  %call.i = tail call i32 @clk_set_rate(ptr noundef %132, i32 noundef %mul.i) #8
  %clk7.i = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 7, i32 1
  %135 = ptrtoint ptr %clk7.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %clk7.i, align 4
  %call8.i = tail call i32 @clk_set_rate(ptr noundef %136, i32 noundef %pixel_freq.0.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %137 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %edp1, align 4
  %add.ptr139 = getelementptr i8, ptr %138, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 16777216) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %139 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %edp1, align 4
  %add.ptr144 = getelementptr i8, ptr %140, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 83886080) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %141 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %edp1, align 4
  %add.ptr149 = getelementptr i8, ptr %142, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 16777216) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %143 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %edp1, align 4
  %add.ptr154 = getelementptr i8, ptr %144, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 150994944) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %145 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pll, align 4
  %add.ptr159 = getelementptr i8, ptr %146, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 536870912) #8, !srcloc !52
  %call163 = tail call i64 @ktime_get() #8
  %add.i486 = add i64 %call163, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 376) #8
  %147 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pll, align 4
  %add.ptr181513 = getelementptr i8, ptr %148, i32 376
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr181513) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %150 = and i32 %149, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool186.not515 = icmp eq i32 %150, 0
  br i1 %tobool186.not515, label %do.body135.land.lhs.true190_crit_edge, label %do.body135.do.body216_crit_edge

do.body135.do.body216_crit_edge:                  ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body216

do.body135.land.lhs.true190_crit_edge:            ; preds = %do.body135
  br label %land.lhs.true190

land.lhs.true190:                                 ; preds = %if.then204.land.lhs.true190_crit_edge, %do.body135.land.lhs.true190_crit_edge
  %call191 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call191, i64 %add.i486)
  %cmp3.i488 = icmp sgt i64 %call191, %add.i486
  br i1 %cmp3.i488, label %for.end208, label %if.then204

if.then204:                                       ; preds = %land.lhs.true190
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #8
  %151 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pll, align 4
  %add.ptr181 = getelementptr i8, ptr %152, i32 376
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr181) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %154 = and i32 %153, 16777216
  %tobool186.not = icmp eq i32 %154, 0
  br i1 %tobool186.not, label %if.then204.land.lhs.true190_crit_edge, label %if.then204.do.body216_crit_edge

if.then204.do.body216_crit_edge:                  ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body216

if.then204.land.lhs.true190_crit_edge:            ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true190

for.end208:                                       ; preds = %land.lhs.true190
  %155 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pll, align 4
  %add.ptr198 = getelementptr i8, ptr %156, i32 376
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr198) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %158 = and i32 %157, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool211.not = icmp eq i32 %158, 0
  br i1 %tobool211.not, label %for.end208.cleanup_crit_edge, label %for.end208.do.body216_crit_edge

for.end208.do.body216_crit_edge:                  ; preds = %for.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body216

for.end208.cleanup_crit_edge:                     ; preds = %for.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body216:                                       ; preds = %for.end208.do.body216_crit_edge, %if.then204.do.body216_crit_edge, %do.body135.do.body216_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %159 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %edp1, align 4
  %add.ptr220 = getelementptr i8, ptr %160, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr220, i32 419430400) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %161 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %tx0, align 4
  %add.ptr225 = getelementptr i8, ptr %162, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr225, i32 520093696) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %163 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %tx0, align 4
  %add.ptr230 = getelementptr i8, ptr %164, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr230, i32 67108864) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %165 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %tx0, align 4
  %add.ptr235 = getelementptr i8, ptr %166, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235, i32 0) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %167 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tx1, align 4
  %add.ptr240 = getelementptr i8, ptr %168, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 520093696) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %169 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tx1, align 4
  %add.ptr245 = getelementptr i8, ptr %170, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr245, i32 67108864) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %171 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %tx1, align 4
  %add.ptr250 = getelementptr i8, ptr %172, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr250, i32 0) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  %173 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %tx0, align 4
  %add.ptr255 = getelementptr i8, ptr %174, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr255, i32 268435456) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %175 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tx1, align 4
  %add.ptr260 = getelementptr i8, ptr %176, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr260, i32 268435456) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  %177 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tx0, align 4
  %add.ptr265 = getelementptr i8, ptr %178, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr265, i32 285212672) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %179 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %tx0, align 4
  %add.ptr270 = getelementptr i8, ptr %180, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr270, i32 285212672) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %181 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %tx1, align 4
  %add.ptr275 = getelementptr i8, ptr %182, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr275, i32 285212672) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %183 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %tx1, align 4
  %add.ptr280 = getelementptr i8, ptr %184, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280, i32 285212672) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %185 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tx0, align 4
  %add.ptr285 = getelementptr i8, ptr %186, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr285, i32 268435456) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %187 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %tx1, align 4
  %add.ptr290 = getelementptr i8, ptr %188, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr290, i32 268435456) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  %189 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tx0, align 4
  %add.ptr295 = getelementptr i8, ptr %190, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr295, i32 520093696) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %191 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %tx1, align 4
  %add.ptr300 = getelementptr i8, ptr %192, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr300, i32 520093696) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %193 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %tx0, align 4
  %add.ptr305 = getelementptr i8, ptr %194, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr305, i32 67108864) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %195 = ptrtoint ptr %tx0 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %tx0, align 4
  %add.ptr310 = getelementptr i8, ptr %196, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr310, i32 50331648) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %197 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %tx1, align 4
  %add.ptr315 = getelementptr i8, ptr %198, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr315, i32 67108864) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %199 = ptrtoint ptr %tx1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %tx1, align 4
  %add.ptr320 = getelementptr i8, ptr %200, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr320, i32 0) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %201 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %edp1, align 4
  %add.ptr325 = getelementptr i8, ptr %202, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr325, i32 50331648) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %203 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %edp1, align 4
  %add.ptr330 = getelementptr i8, ptr %204, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr330, i32 402653184) #8, !srcloc !52
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %205 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %edp1, align 4
  %add.ptr335 = getelementptr i8, ptr %206, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr335, i32 419430400) #8, !srcloc !52
  %call339 = tail call i64 @ktime_get() #8
  %add.i491 = add i64 %call339, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 411) #8
  %207 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %edp1, align 4
  %add.ptr357517 = getelementptr i8, ptr %208, i32 224
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr357517) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %210 = and i32 %209, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool362.not519 = icmp eq i32 %210, 0
  br i1 %tobool362.not519, label %do.body216.land.lhs.true366_crit_edge, label %do.body216.cleanup_crit_edge

do.body216.cleanup_crit_edge:                     ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body216.land.lhs.true366_crit_edge:            ; preds = %do.body216
  br label %land.lhs.true366

land.lhs.true366:                                 ; preds = %if.then380.land.lhs.true366_crit_edge, %do.body216.land.lhs.true366_crit_edge
  %call367 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call367, i64 %add.i491)
  %cmp3.i493 = icmp sgt i64 %call367, %add.i491
  br i1 %cmp3.i493, label %for.end384, label %if.then380

if.then380:                                       ; preds = %land.lhs.true366
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #8
  %211 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %edp1, align 4
  %add.ptr357 = getelementptr i8, ptr %212, i32 224
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr357) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %214 = and i32 %213, 33554432
  %tobool362.not = icmp eq i32 %214, 0
  br i1 %tobool362.not, label %if.then380.land.lhs.true366_crit_edge, label %if.then380.cleanup_crit_edge

if.then380.cleanup_crit_edge:                     ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then380.land.lhs.true366_crit_edge:            ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true366

for.end384:                                       ; preds = %land.lhs.true366
  call void @__sanitizer_cov_trace_pc() #10
  %215 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %edp1, align 4
  %add.ptr374 = getelementptr i8, ptr %216, i32 224
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr374) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %218 = and i32 %217, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool387.not = icmp eq i32 %218, 0
  %spec.select = select i1 %tobool387.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end384, %if.then380.cleanup_crit_edge, %do.body216.cleanup_crit_edge, %for.end208.cleanup_crit_edge, %do.body71.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %do.body45.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %for.end.cleanup_crit_edge ], [ -110, %for.end208.cleanup_crit_edge ], [ -22, %do.body45.cleanup_crit_edge ], [ -22, %if.end66.cleanup_crit_edge ], [ -22, %do.body71.cleanup_crit_edge ], [ 0, %do.body216.cleanup_crit_edge ], [ %spec.select, %for.end384 ], [ 0, %if.then380.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_edp_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %edp1 = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %edp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edp1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #8, !srcloc !52
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_edp_phy_configure(ptr nocapture noundef readonly %phy, ptr nocapture noundef readonly %opts) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dp_opts1 = getelementptr inbounds %struct.qcom_edp, ptr %1, i32 0, i32 8
  %2 = call ptr @memcpy(ptr %dp_opts1, ptr %opts, i32 44)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_phy_qcom_edp__289_670_qcom_edp_phy_driver_init6, !1, !"__initcall__kmod_phy_qcom_edp__289_670_qcom_edp_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 670, i32 1}
!2 = !{ptr @__exitcall_qcom_edp_phy_driver_exit, !1, !"__exitcall_qcom_edp_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 672, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 673, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 674, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 665, i32 11}
!12 = !{ptr @qcom_edp_phy_driver, !13, !"qcom_edp_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 662, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 628, i32 20}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 629, i32 20}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 634, i32 28}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 635, i32 28}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 646, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @qcom_edp_phy_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @qcom_edp_phy_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 579, i32 14}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 586, i32 14}
!34 = !{ptr @qcom_edp_dp_link_clk_ops, !35, !"qcom_edp_dp_link_clk_ops", i1 false, i1 false}
!35 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 563, i32 29}
!36 = !{ptr @qcom_edp_dp_pixel_clk_ops, !37, !"qcom_edp_dp_pixel_clk_ops", i1 false, i1 false}
!37 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 525, i32 29}
!38 = !{ptr @qcom_edp_ops, !39, !"qcom_edp_ops", i1 false, i1 false}
!39 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 433, i32 29}
!40 = !{ptr @qcom_edp_phy_match_table, !41, !"qcom_edp_phy_match_table", i1 false, i1 false}
!41 = !{!"../drivers/phy/qualcomm/phy-qcom-edp.c", i32 656, i32 34}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2155277680}
!52 = !{i64 4598726}
!53 = !{i64 2155278153}
!54 = !{i64 2155278559}
!55 = !{i64 2155279039}
!56 = !{i64 2155279562}
!57 = !{i64 2155279962}
!58 = !{i64 2155280362}
!59 = !{i64 2155280762}
!60 = !{i64 2155281162}
!61 = !{i64 2155281562}
!62 = !{i64 2155281962}
!63 = !{i64 2155282362}
!64 = !{i64 2155282762}
!65 = !{i64 2155283162}
!66 = !{i64 2155283615}
!67 = !{i64 2155299183}
!68 = !{i64 2155299706}
!69 = !{i64 4599144}
!70 = !{i64 2155301600}
!71 = !{i64 2155302082}
!72 = !{i64 2155302308}
!73 = !{i64 2155302708}
!74 = !{i64 2155303108}
!75 = !{i64 2155303508}
!76 = !{i64 2155284495}
!77 = !{i64 2155284892}
!78 = !{i64 2155285289}
!79 = !{i64 2155285686}
!80 = !{i64 2155286084}
!81 = !{i64 2155286485}
!82 = !{i64 2155286888}
!83 = !{i64 2155287285}
!84 = !{i64 2155287682}
!85 = !{i64 2155288079}
!86 = !{i64 2155288476}
!87 = !{i64 2155288873}
!88 = !{i64 2155289275}
!89 = !{i64 2155289687}
!90 = !{i64 2155290084}
!91 = !{i64 2155290481}
!92 = !{i64 2155290878}
!93 = !{i64 2155291275}
!94 = !{i64 2155291683}
!95 = !{i64 2155292113}
!96 = !{i64 2155292527}
!97 = !{i64 2155292992}
!98 = !{i64 2155293440}
!99 = !{i64 2155293837}
!100 = !{i64 2155294234}
!101 = !{i64 2155294631}
!102 = !{i64 2155295039}
!103 = !{i64 2155295480}
!104 = !{i64 2155295910}
!105 = !{i64 2155296307}
!106 = !{i64 2155296704}
!107 = !{i64 2155297101}
!108 = !{i64 2155297498}
!109 = !{i64 2155297895}
!110 = !{i64 2155298292}
!111 = !{i64 2155303908}
!112 = !{i64 2155304308}
!113 = !{i64 2155304708}
!114 = !{i64 2155305108}
!115 = !{i64 2155305508}
!116 = !{i64 2155305908}
!117 = !{i64 2155306308}
!118 = !{i64 2155306708}
!119 = !{i64 2155307108}
!120 = !{i64 2155307508}
!121 = !{i64 2155307908}
!122 = !{i64 2155308308}
!123 = !{i64 2155298697}
!124 = !{i64 2155308708}
!125 = !{i64 2155309108}
!126 = !{i64 2155309508}
!127 = !{i64 2155309908}
!128 = !{i64 2155310306}
!129 = !{i64 2155312211}
!130 = !{i64 2155312693}
!131 = !{i64 2155312919}
!132 = !{i64 2155313319}
!133 = !{i64 2155313719}
!134 = !{i64 2155314119}
!135 = !{i64 2155314519}
!136 = !{i64 2155314919}
!137 = !{i64 2155315319}
!138 = !{i64 2155315719}
!139 = !{i64 2155316119}
!140 = !{i64 2155316519}
!141 = !{i64 2155316919}
!142 = !{i64 2155317319}
!143 = !{i64 2155317719}
!144 = !{i64 2155318119}
!145 = !{i64 2155318519}
!146 = !{i64 2155318919}
!147 = !{i64 2155319319}
!148 = !{i64 2155319718}
!149 = !{i64 2155320114}
!150 = !{i64 2155320510}
!151 = !{i64 2155320906}
!152 = !{i64 2155321302}
!153 = !{i64 2155321699}
!154 = !{i64 2155322099}
!155 = !{i64 2155324014}
!156 = !{i64 2155324500}
!157 = !{i64 2155324733}
