; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.msm_dsi_phy_cfg = type { %struct.dsi_reg_config, %struct.msm_dsi_phy_ops, i32, i32, [2 x i32], i32, i32, i8, i8 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_dsi_phy_clk_request = type { i32, i32 }
%struct.msm_dsi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msm_dsi_phy_shared_timings, i32, i32, i32, i8, i8 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }
%struct.msm_dsi_phy = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, [8 x %struct.regulator_bulk_data], %struct.msm_dsi_dphy_timing, ptr, i32, i8, i8, ptr, i8, ptr, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
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

@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"PHY timings: %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%d, %d, %d, %d, %d, %d, %d, %d, %d, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%d, %d, %d, %d, %d\0A\00", [44 x i8] zeroinitializer }, align 32
@dsi_phy_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dsi_phy_driver_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dsi_phy_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* %s: resource enable failed, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.msm_dsi_phy_enable = private unnamed_addr constant [19 x i8] c"msm_dsi_phy_enable\00", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* %s: regulator enable failed, %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* %s: phy enable failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* %s: failed to restore phy state, %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi%d_phy\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi%d_pll\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsi%d_lane\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi%d_reg\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msm_dsi_phy\00", [20 x i8] zeroinitializer }, align 32
@dsi_phy_dt_match = internal constant { [14 x %struct.of_device_id], [680 x i8] } { [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-28nm-hpm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_28nm_hpm_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-28nm-hpm-fam-b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_28nm_hpm_famb_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-28nm-lp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_28nm_lp_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-20nm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_20nm_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-28nm-8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_28nm_8960_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-14nm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_14nm_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-14nm-660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_14nm_660_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-14nm-8953\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_14nm_8953_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-10nm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_10nm_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-10nm-8998\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_10nm_8998_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-7nm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_7nm_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dsi-phy-7nm-8150\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_7nm_8150_cfgs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-dsi-phy-7nm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dsi_phy_7nm_7280_cfgs }, %struct.of_device_id zeroinitializer], [680 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* %s: couldn't identify PHY index, %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.dsi_phy_driver_probe = private unnamed_addr constant [21 x i8] c"dsi_phy_driver_probe\00", align 1
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcom,dsi-phy-regulator-ldo-mode\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy-type\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi_phy\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSI_PHY\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* %s: failed to map phy base\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSI_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* %s: failed to map pll base\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi_phy_lane\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI_PHY_LANE\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* %s: failed to map phy lane base\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsi_phy_regulator\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSI_PHY_REG\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* %s: failed to map phy regulator base\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* %s: Unable to get ahb clk\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: pll init failed: %d, need separate pll clk driver\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"*ERROR* %s: failed to register clk provider: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* %s: failed to init regulator, ret=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.dsi_phy_regulator_init = private unnamed_addr constant [23 x i8] c"dsi_phy_regulator_init\00", align 1
@dsi_phy_28nm_hpm_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_28nm_hpm_famb_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_28nm_lp_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_20nm_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_28nm_8960_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_14nm_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_14nm_660_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_14nm_8953_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_10nm_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_10nm_8998_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_7nm_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_7nm_8150_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@dsi_phy_7nm_7280_cfgs = external dso_local constant %struct.msm_dsi_phy_cfg, align 4
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* %s: can't enable ahb clk, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.dsi_phy_enable_resource = private unnamed_addr constant [24 x i8] c"dsi_phy_enable_resource\00", align 1
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* regulator %d set op mode failed, %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* regulator enable failed, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 135, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 249, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 457, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 503, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"dsi_phy_platform_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 789, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 821, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 828, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 835, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 851, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 924, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 930, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 935, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 940, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 792, i32 13 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"dsi_phy_dt_match\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 608, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 702, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 708, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 709, i32 42 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 712, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 712, i32 48 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 714, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 719, i32 41 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 719, i32 52 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 721, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 727, i32 43 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 727, i32 59 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 729, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 736, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 736, i32 63 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 738, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 748, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 750, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 765, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 775, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 524, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 595, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 558, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 564, i32 5 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [41 x i8] c"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 574, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @msm_dsi_phy_driver_unregister, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dsi_phy_platform_driver, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @dsi_phy_dt_match, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_dt_match to i32), i32 2744, i32 3424, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_dphy_timing_calc(ptr noundef %timing, ptr nocapture noundef readonly %clk_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_req, align 4
  %escclk_rate = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %clk_req, i32 0, i32 1
  %2 = ptrtoint ptr %escclk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %escclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 180000000, i32 %1)
  %cmp1 = icmp ugt i32 %1, 180000000
  %cond2 = select i1 %cmp1, i32 10, i32 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000000, i32 %1)
  %cmp = icmp ugt i32 %1, 1200000000
  %cond = select i1 %cmp, i32 15, i32 10
  %div = udiv i32 %1, 1000
  %div.frozen = freeze i32 %div
  %div4 = udiv i32 1000000, %div.frozen
  %4 = mul i32 %div4, %div.frozen
  %rem6.decomposed = sub i32 1000000, %4
  %mul = mul nuw nsw i32 %div4, 1000
  %mul7 = mul nuw nsw i32 %rem6.decomposed, 1000
  %div9 = udiv i32 %mul7, %div
  %add = add nuw nsw i32 %div9, %mul
  %div11 = udiv i32 %3, 1000
  %div11.frozen = freeze i32 %div11
  %div12 = udiv i32 1000000, %div11.frozen
  %5 = mul i32 %div12, %div11.frozen
  %rem15.decomposed = sub i32 1000000, %5
  %mul17 = mul nuw nsw i32 %div12, 1000
  %mul18 = mul nuw nsw i32 %rem15.decomposed, 1000
  %div20 = udiv i32 %mul18, %div11
  %add21 = add nuw nsw i32 %div20, %mul17
  %sub = add nuw nsw i32 %add, 94999
  %div26555 = udiv i32 %sub, %add
  %sub38 = add nuw nsw i32 %add, 37999
  %div39556 = udiv i32 %sub38, %add
  %sub47 = add nsw i32 %div39556, -2
  %6 = sub nsw i32 %div26555, %div39556
  %mul.i = mul i32 %6, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp30.i = icmp slt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp30.i, i32 -99, i32 99
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 100
  %add5.i = add nsw i32 %cond.i, %sub47
  %add5.sink.i = and i32 %add5.i, -2
  %7 = tail call i32 @llvm.smax.i32(i32 %add5.sink.i, i32 0) #6
  %clk_prepare = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 2
  %8 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %clk_prepare, align 4
  %div48 = udiv i32 %add21, %add
  %and = and i32 %div48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %div48, i32 2)
  %div48.sink = select i1 %tobool49.not, i32 %9, i32 %div48
  %10 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div48.sink, ptr %10, align 4
  %12 = add nuw nsw i32 %7, 2
  %mul2.i = mul i32 %12, %add
  %sub.i470 = sub i32 300000, %mul2.i
  %13 = add nuw nsw i32 %add, 299999
  %sub4.i = sub i32 %13, %mul2.i
  %sub5.i = sub nsw i32 1, %add
  %add6.i = add i32 %sub5.i, %sub.i470
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i470)
  %cmp12.i = icmp slt i32 %sub.i470, 0
  %sub4.pn.i = select i1 %cmp12.i, i32 %add6.i, i32 %sub4.i
  %cond.i471 = sdiv i32 %sub4.pn.i, %add
  %sub8.i = add i32 %cond.i471, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub8.i)
  %cmp9.i = icmp sgt i32 %sub8.i, 255
  %sub.i1.i = sub i32 257, %cond.i471
  %sub.i1.sink.i = select i1 %cmp9.i, i32 %sub8.i, i32 %sub.i1.i
  %mul.i2.i = mul i32 %sub.i1.sink.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i2.i)
  %cmp30.i3.i = icmp slt i32 %mul.i2.i, 0
  %cond.in.v.i4.i = select i1 %cmp30.i3.i, i32 -99, i32 99
  %cond.in.i5.i = add i32 %cond.in.v.i4.i, %mul.i2.i
  %cond.i6.i = sdiv i32 %cond.in.i5.i, 100
  %add5.i7.i = add i32 %cond.i6.i, %sub8.i
  %add5.sink.i11.i = and i32 %add5.i7.i, -2
  %14 = tail call i32 @llvm.smax.i32(i32 %add5.sink.i11.i, i32 0) #6
  %add13.i = add nuw i32 %div48.sink, %7
  %add14.i = add i32 %add13.i, %14
  %and.i472 = and i32 %add14.i, 7
  %add15.i = add nuw i32 %14, 8
  %sub16.i = sub nuw i32 %add15.i, %and.i472
  %15 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub16.i, ptr %timing, align 4
  %mul61 = mul i32 %add, 12
  %sub64 = add i32 %mul61, 85000
  %add67 = add nsw i32 %add, -1
  %sub68 = add i32 %add67, %sub64
  %16 = mul i32 %add, 11
  %add72 = add i32 %16, 85001
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub64)
  %cmp65560 = icmp slt i32 %sub64, 0
  %sub68.pn = select i1 %cmp65560, i32 %add72, i32 %sub68
  %cond75 = sdiv i32 %sub68.pn, %add
  %sub76 = add i32 %cond75, -2
  %sub82 = add nuw nsw i32 %add, 59999
  %div83557 = udiv i32 %sub82, %add
  %sub91 = add nsw i32 %div83557, -2
  %sub.i473 = sub i32 %sub76, %sub91
  %mul.i474 = mul i32 %sub.i473, %cond2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i474)
  %cmp30.i475 = icmp slt i32 %mul.i474, 0
  %cond.in.v.i476 = select i1 %cmp30.i475, i32 -99, i32 99
  %cond.in.i477 = add i32 %cond.in.v.i476, %mul.i474
  %cond.i478 = sdiv i32 %cond.in.i477, 100
  %add5.i479 = add nsw i32 %cond.i478, %sub91
  %add5.sink.i483 = and i32 %add5.i479, -2
  %17 = tail call i32 @llvm.smax.i32(i32 %add5.sink.i483, i32 0) #6
  %clk_trail = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 1
  %18 = ptrtoint ptr %clk_trail to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %clk_trail, align 4
  %mul94 = mul i32 %add, 6
  %add95 = add i32 %mul94, 85000
  %sub99 = add i32 %add67, %add95
  %19 = mul i32 %add, 5
  %add103 = add i32 %19, 85001
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add95)
  %cmp96561 = icmp slt i32 %add95, 0
  %sub99.pn = select i1 %cmp96561, i32 %add103, i32 %sub99
  %cond106 = sdiv i32 %sub99.pn, %add
  %mul109 = shl i32 %add, 2
  %add110 = add i32 %mul109, 40000
  %sub114 = add i32 %add67, %add110
  %20 = mul i32 %add, 3
  %add118 = add i32 %20, 40001
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add110)
  %cmp111562 = icmp slt i32 %add110, 0
  %sub114.pn = select i1 %cmp111562, i32 %add118, i32 %sub114
  %cond121 = sdiv i32 %sub114.pn, %add
  %sub122 = add i32 %cond121, -2
  %21 = sub i32 %cond106, %cond121
  %mul.i485 = mul i32 %21, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i485)
  %cmp30.i486 = icmp slt i32 %mul.i485, 0
  %cond.in.v.i487 = select i1 %cmp30.i486, i32 -99, i32 99
  %cond.in.i488 = add i32 %cond.in.v.i487, %mul.i485
  %cond.i489 = sdiv i32 %cond.in.i488, 100
  %add5.i490 = add i32 %cond.i489, %sub122
  %add5.sink.i494 = and i32 %add5.i490, -2
  %22 = tail call i32 @llvm.smax.i32(i32 %add5.sink.i494, i32 0) #6
  %hs_prepare = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 5
  %23 = ptrtoint ptr %hs_prepare to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %hs_prepare, align 4
  %reass.add565 = sub nsw i32 6, %22
  %reass.mul566 = mul i32 %reass.add565, %add
  %sub133 = add i32 %reass.mul566, 145000
  %sub137 = add i32 %add67, %sub133
  %24 = sub i32 %reass.mul566, %add
  %add141 = add i32 %24, 145001
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub133)
  %cmp134563 = icmp slt i32 %sub133, 0
  %sub137.pn = select i1 %cmp134563, i32 %add141, i32 %sub137
  %cond144 = sdiv i32 %sub137.pn, %add
  %sub145 = add i32 %cond144, -2
  %sub.i495 = sub i32 257, %cond144
  %mul.i496 = mul i32 %sub.i495, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i496)
  %cmp30.i497 = icmp slt i32 %mul.i496, 0
  %cond.in.v.i498 = select i1 %cmp30.i497, i32 -99, i32 99
  %cond.in.i499 = add i32 %cond.in.v.i498, %mul.i496
  %cond.i500 = sdiv i32 %cond.in.i499, 100
  %add5.i501 = add i32 %sub145, %cond.i500
  %add5.sink.i505 = and i32 %add5.i501, -2
  %25 = tail call i32 @llvm.smax.i32(i32 %add5.sink.i505, i32 24) #6
  %hs_zero = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 4
  %26 = ptrtoint ptr %hs_zero to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %hs_zero, align 4
  %sub168 = add i32 %sub82, %mul109
  %div169 = sdiv i32 %sub168, %add
  %sub170 = add i32 %div169, -2
  %sub.i506 = sub i32 %sub76, %sub170
  %mul.i507 = mul i32 %sub.i506, %cond2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i507)
  %cmp30.i508 = icmp slt i32 %mul.i507, 0
  %cond.in.v.i509 = select i1 %cmp30.i508, i32 -99, i32 99
  %cond.in.i510 = add i32 %cond.in.v.i509, %mul.i507
  %cond.i511 = sdiv i32 %cond.in.i510, 100
  %add5.i512 = add i32 %cond.i511, %sub170
  %add5.sink.i516 = and i32 %add5.i512, -2
  %27 = tail call i32 @llvm.smax.i32(i32 %add5.sink.i516, i32 0) #6
  %hs_trail = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 6
  %28 = ptrtoint ptr %hs_trail to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %hs_trail, align 4
  %sub177 = add nuw nsw i32 %add, 99999
  %div178558 = udiv i32 %sub177, %add
  %sub186 = add nsw i32 %div178558, -2
  %sub.i517 = sub nsw i32 257, %div178558
  %mul.i518 = mul i32 %sub.i517, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i518)
  %cmp30.i519 = icmp slt i32 %mul.i518, 0
  %cond.in.v.i520 = select i1 %cmp30.i519, i32 -99, i32 99
  %cond.in.i521 = add i32 %cond.in.v.i520, %mul.i518
  %cond.i522 = sdiv i32 %cond.in.i521, 100
  %add5.i523 = add nsw i32 %sub186, %cond.i522
  %add5.sink.i527 = and i32 %add5.i523, -2
  %29 = tail call i32 @llvm.smax.i32(i32 %add5.sink.i527, i32 0) #6
  %hs_exit = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 3
  %30 = ptrtoint ptr %hs_exit to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %hs_exit, align 4
  %reass.add567 = sub nsw i32 26, %29
  %reass.mul568 = mul i32 %reass.add567, %add
  %sub198 = add i32 %reass.mul568, 60000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub198)
  %cmp199 = icmp sgt i32 %sub198, -1
  %mul201 = shl i32 %add, 3
  br i1 %cmp199, label %cond.true200, label %cond.false206

cond.true200:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add202 = add i32 %mul201, -1
  %sub203 = add i32 %add202, %sub198
  br label %cond.end212

cond.false206:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub208 = sub i32 %sub198, %mul201
  %add209 = or i32 %sub208, 1
  %.pre = add i32 %mul201, -1
  br label %cond.end212

cond.end212:                                      ; preds = %cond.false206, %cond.true200
  %add232.pre-phi = phi i32 [ %.pre, %cond.false206 ], [ %add202, %cond.true200 ]
  %add209.pn = phi i32 [ %add209, %cond.false206 ], [ %sub203, %cond.true200 ]
  %cond213 = sdiv i32 %add209.pn, %mul201
  %sub214 = add i32 %cond213, -1
  %sub.i528 = sub i32 64, %cond213
  %mul.i529 = mul i32 %sub.i528, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i529)
  %cmp30.i530 = icmp slt i32 %mul.i529, 0
  %cond.in.v.i531 = select i1 %cmp30.i530, i32 -99, i32 99
  %cond.in.i532 = add i32 %cond.in.v.i531, %mul.i529
  %cond.i533 = sdiv i32 %cond.in.i532, 100
  %add5.i534 = add i32 %sub214, %cond.i533
  %31 = tail call i32 @llvm.smax.i32(i32 %add5.i534, i32 0) #6
  %shared_timings = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11
  %32 = ptrtoint ptr %shared_timings to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %shared_timings, align 4
  %33 = add nuw i32 %sub16.i, 2
  %mul223 = and i32 %33, -2
  %mul220469 = add nuw i32 %mul223, %12
  %add225 = mul i32 %mul220469, %add
  %add227 = add i32 %add21, %mul201
  %add228 = add i32 %add227, %add225
  %sub238 = sub i32 1, %mul201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add228)
  %cmp229564 = icmp slt i32 %add228, 0
  %sub233.pn.v = select i1 %cmp229564, i32 %sub238, i32 %add232.pre-phi
  %sub233.pn = add i32 %sub233.pn.v, %add228
  %cond243 = sdiv i32 %sub233.pn, %mul201
  %sub244 = add i32 %cond243, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub244)
  %cmp245 = icmp sgt i32 %sub244, 63
  br i1 %cmp245, label %if.then246, label %if.else252

if.then246:                                       ; preds = %cond.end212
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i537 = sub i32 127, %cond243
  %mul.i538 = mul i32 %sub.i537, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i538)
  %cmp30.i539 = icmp slt i32 %mul.i538, 0
  %cond.in.v.i540 = select i1 %cmp30.i539, i32 -99, i32 99
  %cond.in.i541 = add i32 %cond.in.v.i540, %mul.i538
  %cond.i542 = sdiv i32 %cond.in.i541, 100
  %add5.i543 = add i32 %cond.i542, %sub244
  %34 = tail call i32 @llvm.smax.i32(i32 %add5.i543, i32 0) #6
  %shr249559 = lshr i32 %34, 1
  br label %if.end258

if.else252:                                       ; preds = %cond.end212
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i546 = sub i32 64, %cond243
  %mul.i547 = mul i32 %sub.i546, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i547)
  %cmp30.i548 = icmp slt i32 %mul.i547, 0
  %cond.in.v.i549 = select i1 %cmp30.i548, i32 -99, i32 99
  %cond.in.i550 = add i32 %cond.in.v.i549, %mul.i547
  %cond.i551 = sdiv i32 %cond.in.i550, 100
  %add5.i552 = add i32 %cond.i551, %sub244
  %35 = tail call i32 @llvm.smax.i32(i32 %add5.i552, i32 0) #6
  br label %if.end258

if.end258:                                        ; preds = %if.else252, %if.then246
  %.sink569 = phi i32 [ %shr249559, %if.then246 ], [ %35, %if.else252 ]
  %.sink = phi i8 [ 1, %if.then246 ], [ 0, %if.else252 ]
  %36 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink569, ptr %36, align 4
  %38 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink, ptr %38, align 4
  %ta_go = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 8
  %40 = ptrtoint ptr %ta_go to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %ta_go, align 4
  %ta_sure = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 9
  %41 = ptrtoint ptr %ta_sure to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ta_sure, align 4
  %ta_get = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 10
  %42 = ptrtoint ptr %ta_get to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %ta_get, align 4
  %43 = zext i8 %.sink to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %.sink569, i32 noundef %31, i32 noundef %43, i32 noundef %sub16.i, i32 noundef %17, i32 noundef %7, i32 noundef %29, i32 noundef %25, i32 noundef %22, i32 noundef %27, i32 noundef %div48.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end258, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end258 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_dphy_timing_calc_v2(ptr noundef %timing, ptr nocapture noundef readonly %clk_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %escclk_rate = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %clk_req, i32 0, i32 1
  %2 = ptrtoint ptr %escclk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %escclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hs_halfbyte_en = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 15
  %4 = ptrtoint ptr %hs_halfbyte_en to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hs_halfbyte_en, align 4
  %hs_halfbyte_en_ckln = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 16
  %5 = ptrtoint ptr %hs_halfbyte_en_ckln to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %hs_halfbyte_en_ckln, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %1)
  %cmp = icmp ugt i32 %1, 100000000
  %cond = select i1 %cmp, i32 0, i32 3
  %hs_prep_dly_ckln = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 14
  %6 = ptrtoint ptr %hs_prep_dly_ckln to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %hs_prep_dly_ckln, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120000001, i32 %1)
  %cmp3 = icmp ult i32 %1, 120000001
  %cond4 = zext i1 %cmp3 to i32
  %hs_prep_dly = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 13
  %7 = ptrtoint ptr %hs_prep_dly to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond4, ptr %hs_prep_dly, align 4
  %shl6.neg = select i1 %cmp3, i32 -2, i32 0
  %shl8 = shl nuw nsw i32 %cond, 1
  %div = udiv i32 %1, 1000
  %div.frozen = freeze i32 %div
  %div10 = udiv i32 1000000, %div.frozen
  %8 = mul i32 %div10, %div.frozen
  %rem12.decomposed = sub i32 1000000, %8
  %mul = mul nuw nsw i32 %div10, 1000
  %mul13 = mul nuw nsw i32 %rem12.decomposed, 1000
  %div15 = udiv i32 %mul13, %div
  %add16 = add nuw nsw i32 %div15, %mul
  %shl17 = shl i32 %add16, 3
  %mul19 = mul i32 %add16, %shl8
  %sub = sub i32 38000, %mul19
  %9 = sub i32 %shl17, %mul19
  %sub25 = add i32 %9, 37999
  %sub30 = sub i32 %sub, %shl17
  %add31 = or i32 %sub30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20624 = icmp slt i32 %sub, 0
  %sub25.pn = select i1 %cmp20624, i32 %add31, i32 %sub25
  %cond33 = sdiv i32 %sub25.pn, %shl17
  %10 = tail call i32 @llvm.smax.i32(i32 %cond33, i32 0)
  %sub42 = sub i32 95000, %mul19
  %div43 = sdiv i32 %sub42, %shl17
  %11 = tail call i32 @llvm.smax.i32(i32 %div43, i32 0)
  %sub.i = sub nsw i32 %11, %10
  %mul.i = mul i32 %sub.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp30.i = icmp slt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp30.i, i32 -99, i32 99
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 100
  %add5.i = add i32 %cond.i, %10
  %12 = tail call i32 @llvm.smax.i32(i32 %add5.i, i32 0) #6
  %clk_prepare = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 2
  %13 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %clk_prepare, align 4
  %shl52 = shl i32 %12, 3
  %add53 = or i32 %shl52, %shl8
  %mul54 = mul i32 %add53, %add16
  %mul56.neg = mul i32 %add16, -11
  %.neg = add i32 %mul56.neg, 300000
  %sub57 = sub i32 %.neg, %mul54
  %add62 = add i32 %shl17, -1
  %sub68 = sub i32 1, %shl17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub57)
  %cmp58625 = icmp slt i32 %sub57, 0
  %sub63.pn.v = select i1 %cmp58625, i32 %sub68, i32 %add62
  %sub63.pn = add i32 %sub63.pn.v, %sub57
  %cond72 = sdiv i32 %sub63.pn, %shl17
  %sub73 = add i32 %cond72, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub73)
  %cmp74 = icmp sgt i32 %sub73, 255
  %cond75 = select i1 %cmp74, i32 511, i32 255
  %sub.i542 = sub i32 %cond75, %sub73
  %mul.i543 = shl i32 %sub.i542, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i543)
  %cmp30.i544 = icmp slt i32 %mul.i543, 0
  %cond.in.v.i545 = select i1 %cmp30.i544, i32 -99, i32 99
  %cond.in.i546 = add i32 %cond.in.v.i545, %mul.i543
  %cond.i547 = sdiv i32 %cond.in.i546, 100
  %add5.i548 = add i32 %cond.i547, %sub73
  %14 = tail call i32 @llvm.smax.i32(i32 %add5.i548, i32 0) #6
  %15 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %timing, align 4
  %mul78 = mul i32 %add16, 3
  %add80 = mul i32 %add16, 11
  %sub81 = add i32 %add80, 59999
  %div82 = sdiv i32 %sub81, %shl17
  %mul84 = mul i32 %add16, 12
  %sub87 = add i32 %mul84, 85000
  %add89 = add i32 %sub87, %mul78
  %div90 = sdiv i32 %add89, %shl17
  %sub.i551 = sub i32 %div90, %div82
  %mul.i552 = mul i32 %sub.i551, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i552)
  %cmp30.i553 = icmp slt i32 %mul.i552, 0
  %cond.in.v.i554 = select i1 %cmp30.i553, i32 -99, i32 99
  %cond.in.i555 = add i32 %cond.in.v.i554, %mul.i552
  %cond.i556 = sdiv i32 %cond.in.i555, 100
  %add5.i557 = add i32 %cond.i556, %div82
  %16 = tail call i32 @llvm.smax.i32(i32 %add5.i557, i32 0) #6
  %clk_trail = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 1
  %17 = ptrtoint ptr %clk_trail to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %clk_trail, align 4
  %mul93 = shl i32 %add16, 2
  %add94 = add i32 %mul93, 40000
  %mul95.neg = mul i32 %shl6.neg, %add16
  %sub96 = add i32 %add94, %mul95.neg
  %sub105 = add i32 %add62, %sub96
  %sub113 = sub i32 %sub96, %shl17
  %add114 = or i32 %sub113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub96)
  %cmp97626 = icmp slt i32 %sub96, 0
  %sub105.pn = select i1 %cmp97626, i32 %add114, i32 %sub105
  %cond117 = sdiv i32 %sub105.pn, %shl17
  %18 = tail call i32 @llvm.smax.i32(i32 %cond117, i32 0)
  %mul125 = mul i32 %add16, 6
  %add126 = add i32 %mul125, 85000
  %sub128 = add i32 %add126, %mul95.neg
  %div129 = sdiv i32 %sub128, %shl17
  %19 = tail call i32 @llvm.smax.i32(i32 %div129, i32 0)
  %sub.i560 = sub nsw i32 %19, %18
  %mul.i561 = mul i32 %sub.i560, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i561)
  %cmp30.i562 = icmp slt i32 %mul.i561, 0
  %cond.in.v.i563 = select i1 %cmp30.i562, i32 -99, i32 99
  %cond.in.i564 = add i32 %cond.in.v.i563, %mul.i561
  %cond.i565 = sdiv i32 %cond.in.i564, 100
  %add5.i566 = add i32 %cond.i565, %18
  %20 = tail call i32 @llvm.smax.i32(i32 %add5.i566, i32 0) #6
  %hs_prepare = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 5
  %21 = ptrtoint ptr %hs_prepare to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %hs_prepare, align 4
  %shl141.neg = mul i32 %20, -8
  %add142.neg = add i32 %shl141.neg, %shl6.neg
  %reass.add633 = add i32 %add142.neg, 10
  %reass.mul634 = mul i32 %reass.add633, %add16
  %add139 = add i32 %mul56.neg, 145000
  %sub146 = add i32 %add139, %reass.mul634
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub146)
  %cmp147627 = icmp slt i32 %sub146, 0
  %sub152.pn.v = select i1 %cmp147627, i32 %sub68, i32 %add62
  %sub152.pn = add i32 %sub152.pn.v, %sub146
  %cond161 = sdiv i32 %sub152.pn, %shl17
  %sub162 = add i32 %cond161, -3
  %sub.i569 = sub i32 258, %cond161
  %mul.i570 = mul i32 %sub.i569, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i570)
  %cmp30.i571 = icmp slt i32 %mul.i570, 0
  %cond.in.v.i572 = select i1 %cmp30.i571, i32 -99, i32 99
  %cond.in.i573 = add i32 %cond.in.v.i572, %mul.i570
  %cond.i574 = sdiv i32 %cond.in.i573, 100
  %add5.i575 = add i32 %sub162, %cond.i574
  %22 = tail call i32 @llvm.smax.i32(i32 %add5.i575, i32 0) #6
  %hs_zero = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 4
  %23 = ptrtoint ptr %hs_zero to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %hs_zero, align 4
  %sub170 = add i32 %sub81, %mul93
  %div171 = sdiv i32 %sub170, %shl17
  %sub.i578 = sub i32 %div90, %div171
  %mul.i579 = mul i32 %sub.i578, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i579)
  %cmp30.i580 = icmp slt i32 %mul.i579, 0
  %cond.in.v.i581 = select i1 %cmp30.i580, i32 -99, i32 99
  %cond.in.i582 = add i32 %cond.in.v.i581, %mul.i579
  %cond.i583 = sdiv i32 %cond.in.i582, 100
  %add5.i584 = add i32 %cond.i583, %div171
  %24 = tail call i32 @llvm.smax.i32(i32 %add5.i584, i32 0) #6
  %hs_trail = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 6
  %25 = ptrtoint ptr %hs_trail to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %hs_trail, align 4
  %mul184 = mul i32 %add16, -8
  %add185 = add i32 %mul184, 50000
  %sub189 = add i32 %add62, %add185
  %sub192 = sub i32 %add185, %shl17
  %add193 = or i32 %sub192, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add185)
  %cmp186628 = icmp slt i32 %add185, 0
  %sub189.pn = select i1 %cmp186628, i32 %add193, i32 %sub189
  %cond196 = sdiv i32 %sub189.pn, %shl17
  %hs_rqst = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 7
  %26 = ptrtoint ptr %hs_rqst to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond196, ptr %hs_rqst, align 4
  %sub199 = add i32 %shl17, 99999
  %div200 = sdiv i32 %sub199, %shl17
  %sub201 = add i32 %div200, -1
  %sub.i587 = sub i32 256, %div200
  %mul.i588 = mul i32 %sub.i587, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i588)
  %cmp30.i589 = icmp slt i32 %mul.i588, 0
  %cond.in.v.i590 = select i1 %cmp30.i589, i32 -99, i32 99
  %cond.in.i591 = add i32 %cond.in.v.i590, %mul.i588
  %cond.i592 = sdiv i32 %cond.in.i591, 100
  %add5.i593 = add i32 %sub201, %cond.i592
  %27 = tail call i32 @llvm.smax.i32(i32 %add5.i593, i32 0) #6
  %hs_exit = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 3
  %28 = ptrtoint ptr %hs_exit to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %hs_exit, align 4
  %hs_rqst_ckln = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 12
  %29 = ptrtoint ptr %hs_rqst_ckln to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond196, ptr %hs_rqst_ckln, align 4
  %reass.mul = mul i32 %add16, 9
  %add224 = add i32 %shl17, 59999
  %sub225 = add i32 %add224, %reass.mul
  %div226 = sdiv i32 %sub225, %shl17
  %sub227 = add i32 %div226, -1
  %sub.i596 = sub i32 64, %div226
  %mul.i597 = mul i32 %sub.i596, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i597)
  %cmp30.i598 = icmp slt i32 %mul.i597, 0
  %cond.in.v.i599 = select i1 %cmp30.i598, i32 -99, i32 99
  %cond.in.i600 = add i32 %cond.in.v.i599, %mul.i597
  %cond.i601 = sdiv i32 %cond.in.i600, 100
  %add5.i602 = add i32 %sub227, %cond.i601
  %30 = tail call i32 @llvm.smax.i32(i32 %add5.i602, i32 0) #6
  %shared_timings = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11
  %31 = ptrtoint ptr %shared_timings to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %shared_timings, align 4
  %reass.add631 = add i32 %cond196, %14
  %reass.mul632 = shl i32 %reass.add631, 3
  %mul241540 = sub nuw nsw i32 51, %shl8
  %add252 = add i32 %mul241540, %add53
  %mul253541 = add i32 %add252, %reass.mul632
  %add256 = mul i32 %mul253541, %add16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add256)
  %cmp257629 = icmp slt i32 %add256, 0
  %sub260.pn.v = select i1 %cmp257629, i32 %sub68, i32 %add62
  %sub260.pn = add i32 %sub260.pn.v, %add256
  %cond267 = sdiv i32 %sub260.pn, %shl17
  %sub268 = add i32 %cond267, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub268)
  %cmp269 = icmp sgt i32 %sub268, 63
  br i1 %cmp269, label %if.then270, label %if.else

if.then270:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i605 = sub i32 127, %cond267
  %mul.i606 = mul i32 %sub.i605, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i606)
  %cmp30.i607 = icmp slt i32 %mul.i606, 0
  %cond.in.v.i608 = select i1 %cmp30.i607, i32 -99, i32 99
  %cond.in.i609 = add i32 %cond.in.v.i608, %mul.i606
  %cond.i610 = sdiv i32 %cond.in.i609, 100
  %add5.i611 = add i32 %cond.i610, %sub268
  %32 = tail call i32 @llvm.smax.i32(i32 %add5.i611, i32 0) #6
  %shr623 = lshr i32 %32, 1
  br label %if.end280

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i614 = sub i32 64, %cond267
  %mul.i615 = mul i32 %sub.i614, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i615)
  %cmp30.i616 = icmp slt i32 %mul.i615, 0
  %cond.in.v.i617 = select i1 %cmp30.i616, i32 -99, i32 99
  %cond.in.i618 = add i32 %cond.in.v.i617, %mul.i615
  %cond.i619 = sdiv i32 %cond.in.i618, 100
  %add5.i620 = add i32 %cond.i619, %sub268
  %33 = tail call i32 @llvm.smax.i32(i32 %add5.i620, i32 0) #6
  br label %if.end280

if.end280:                                        ; preds = %if.else, %if.then270
  %.sink636 = phi i32 [ %shr623, %if.then270 ], [ %33, %if.else ]
  %.sink = phi i8 [ 1, %if.then270 ], [ 0, %if.else ]
  %34 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink636, ptr %34, align 4
  %36 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.sink, ptr %36, align 4
  %ta_go = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 8
  %38 = ptrtoint ptr %ta_go to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %ta_go, align 4
  %ta_sure = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 9
  %39 = ptrtoint ptr %ta_sure to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ta_sure, align 4
  %ta_get = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 10
  %40 = ptrtoint ptr %ta_get to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %ta_get, align 4
  %41 = zext i8 %.sink to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %.sink636, i32 noundef %30, i32 noundef %41, i32 noundef %14, i32 noundef %16, i32 noundef %12, i32 noundef %27, i32 noundef %22, i32 noundef %20, i32 noundef %24, i32 noundef %cond196, i32 noundef %cond196, i32 noundef 0, i32 noundef 0, i32 noundef %cond4, i32 noundef %cond) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end280, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end280 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_dphy_timing_calc_v3(ptr noundef %timing, ptr nocapture noundef readonly %clk_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %escclk_rate = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %clk_req, i32 0, i32 1
  %2 = ptrtoint ptr %escclk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %escclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hs_halfbyte_en = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 15
  %4 = ptrtoint ptr %hs_halfbyte_en to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hs_halfbyte_en, align 4
  %hs_halfbyte_en_ckln = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 16
  %5 = ptrtoint ptr %hs_halfbyte_en_ckln to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %hs_halfbyte_en_ckln, align 1
  %div = udiv i32 %1, 1000
  %div.frozen = freeze i32 %div
  %div2 = udiv i32 1000000, %div.frozen
  %6 = mul i32 %div2, %div.frozen
  %rem4.decomposed = sub i32 1000000, %6
  %mul = mul nuw nsw i32 %div2, 1000
  %mul5 = mul nuw nsw i32 %rem4.decomposed, 1000
  %div7 = udiv i32 %mul5, %div
  %add = add nuw nsw i32 %div7, %mul
  %shl = shl i32 %add, 3
  %sub = add i32 %shl, 37999
  %div11 = sdiv i32 %sub, %shl
  %7 = tail call i32 @llvm.smax.i32(i32 %div11, i32 0)
  %div23 = sdiv i32 95000, %shl
  %8 = tail call i32 @llvm.smax.i32(i32 %div23, i32 0)
  %sub.i = sub nsw i32 %8, %7
  %mul.i = mul i32 %sub.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp30.i = icmp slt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp30.i, i32 -99, i32 99
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 100
  %add5.i = add i32 %cond.i, %7
  %9 = tail call i32 @llvm.smax.i32(i32 %add5.i, i32 0) #6
  %clk_prepare = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 2
  %10 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %clk_prepare, align 4
  %shl32.neg = mul i32 %add, -8
  %mul33.neg = mul i32 %shl32.neg, %9
  %sub34 = add i32 %mul33.neg, 300000
  %add37 = add i32 %shl, -1
  %sub38 = add i32 %add37, %sub34
  %sub41 = sub i32 %sub34, %shl
  %add42 = or i32 %sub41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34)
  %cmp35539 = icmp slt i32 %sub34, 0
  %sub38.pn = select i1 %cmp35539, i32 %add42, i32 %sub38
  %cond45 = sdiv i32 %sub38.pn, %shl
  %sub46 = add i32 %cond45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub46)
  %cmp47 = icmp sgt i32 %sub46, 255
  %cond48 = select i1 %cmp47, i32 511, i32 255
  %sub.i457 = sub i32 %cond48, %sub46
  %mul.i458 = shl i32 %sub.i457, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i458)
  %cmp30.i459 = icmp slt i32 %mul.i458, 0
  %cond.in.v.i460 = select i1 %cmp30.i459, i32 -99, i32 99
  %cond.in.i461 = add i32 %cond.in.v.i460, %mul.i458
  %cond.i462 = sdiv i32 %cond.in.i461, 100
  %add5.i463 = add i32 %cond.i462, %sub46
  %11 = tail call i32 @llvm.smax.i32(i32 %add5.i463, i32 0) #6
  %12 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %timing, align 4
  %mul51 = mul i32 %add, 3
  %add53 = add i32 %mul51, 59999
  %sub54 = add i32 %add53, %shl
  %div55 = sdiv i32 %sub54, %shl
  %mul57 = mul i32 %add, 12
  %sub60 = add i32 %mul57, 85000
  %add62 = add i32 %sub60, %mul51
  %div63 = sdiv i32 %add62, %shl
  %sub.i466 = sub i32 %div63, %div55
  %mul.i467 = mul i32 %sub.i466, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i467)
  %cmp30.i468 = icmp slt i32 %mul.i467, 0
  %cond.in.v.i469 = select i1 %cmp30.i468, i32 -99, i32 99
  %cond.in.i470 = add i32 %cond.in.v.i469, %mul.i467
  %cond.i471 = sdiv i32 %cond.in.i470, 100
  %add5.i472 = add i32 %cond.i471, %div55
  %13 = tail call i32 @llvm.smax.i32(i32 %add5.i472, i32 0) #6
  %clk_trail = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 1
  %14 = ptrtoint ptr %clk_trail to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %clk_trail, align 4
  %mul66 = shl i32 %add, 2
  %add67 = add i32 %mul66, 40000
  %sub74 = add i32 %add37, %add67
  %sub80 = sub i32 %add67, %shl
  %add81 = or i32 %sub80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add67)
  %cmp68540 = icmp slt i32 %add67, 0
  %sub74.pn = select i1 %cmp68540, i32 %add81, i32 %sub74
  %cond84 = sdiv i32 %sub74.pn, %shl
  %15 = tail call i32 @llvm.smax.i32(i32 %cond84, i32 0)
  %mul92 = mul i32 %add, 6
  %add93 = add i32 %mul92, 85000
  %div94 = sdiv i32 %add93, %shl
  %16 = tail call i32 @llvm.smax.i32(i32 %div94, i32 0)
  %sub.i475 = sub nsw i32 %16, %15
  %mul.i476 = mul i32 %sub.i475, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i476)
  %cmp30.i477 = icmp slt i32 %mul.i476, 0
  %cond.in.v.i478 = select i1 %cmp30.i477, i32 -99, i32 99
  %cond.in.i479 = add i32 %cond.in.v.i478, %mul.i476
  %cond.i480 = sdiv i32 %cond.in.i479, 100
  %add5.i481 = add i32 %cond.i480, %15
  %17 = tail call i32 @llvm.smax.i32(i32 %add5.i481, i32 0) #6
  %hs_prepare = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 5
  %18 = ptrtoint ptr %hs_prepare to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %hs_prepare, align 4
  %mul107.neg = mul i32 %17, -8
  %reass.add = add i32 %mul107.neg, 10
  %reass.mul = mul i32 %reass.add, %add
  %sub108 = add i32 %reass.mul, 145000
  %sub112 = add i32 %add37, %sub108
  %sub115 = sub i32 %sub108, %shl
  %add116 = or i32 %sub115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub108)
  %cmp109541 = icmp slt i32 %sub108, 0
  %sub112.pn = select i1 %cmp109541, i32 %add116, i32 %sub112
  %cond119 = sdiv i32 %sub112.pn, %shl
  %sub120 = add i32 %cond119, -1
  %sub.i484 = sub i32 256, %cond119
  %mul.i485 = mul i32 %sub.i484, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i485)
  %cmp30.i486 = icmp slt i32 %mul.i485, 0
  %cond.in.v.i487 = select i1 %cmp30.i486, i32 -99, i32 99
  %cond.in.i488 = add i32 %cond.in.v.i487, %mul.i485
  %cond.i489 = sdiv i32 %cond.in.i488, 100
  %add5.i490 = add i32 %sub120, %cond.i489
  %19 = tail call i32 @llvm.smax.i32(i32 %add5.i490, i32 0) #6
  %hs_zero = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 4
  %20 = ptrtoint ptr %hs_zero to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %hs_zero, align 4
  %add125 = add i32 %mul66, 59999
  %sub126 = add i32 %add125, %shl
  %div127 = sdiv i32 %sub126, %shl
  %sub128 = add i32 %div127, -1
  %div134 = sdiv i32 %sub60, %shl
  %sub.i493 = sub i32 %div134, %div127
  %mul.i494 = mul i32 %sub.i493, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i494)
  %cmp30.i495 = icmp slt i32 %mul.i494, 0
  %cond.in.v.i496 = select i1 %cmp30.i495, i32 -99, i32 99
  %cond.in.i497 = add i32 %cond.in.v.i496, %mul.i494
  %cond.i498 = sdiv i32 %cond.in.i497, 100
  %add5.i499 = add i32 %sub128, %cond.i498
  %21 = tail call i32 @llvm.smax.i32(i32 %add5.i499, i32 0) #6
  %hs_trail = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 6
  %22 = ptrtoint ptr %hs_trail to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %hs_trail, align 4
  %add141 = add i32 %shl32.neg, 50000
  %sub145 = add i32 %add37, %add141
  %sub148 = sub i32 %add141, %shl
  %add149 = or i32 %sub148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add141)
  %cmp142542 = icmp slt i32 %add141, 0
  %sub145.pn = select i1 %cmp142542, i32 %add149, i32 %sub145
  %cond152 = sdiv i32 %sub145.pn, %shl
  %hs_rqst = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 7
  %23 = ptrtoint ptr %hs_rqst to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond152, ptr %hs_rqst, align 4
  %sub155 = add i32 %shl, 99999
  %div156 = sdiv i32 %sub155, %shl
  %sub157 = add i32 %div156, -1
  %sub.i502 = sub i32 256, %div156
  %mul.i503 = mul i32 %sub.i502, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i503)
  %cmp30.i504 = icmp slt i32 %mul.i503, 0
  %cond.in.v.i505 = select i1 %cmp30.i504, i32 -99, i32 99
  %cond.in.i506 = add i32 %cond.in.v.i505, %mul.i503
  %cond.i507 = sdiv i32 %cond.in.i506, 100
  %add5.i508 = add i32 %sub157, %cond.i507
  %24 = tail call i32 @llvm.smax.i32(i32 %add5.i508, i32 0) #6
  %hs_exit = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 3
  %25 = ptrtoint ptr %hs_exit to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %hs_exit, align 4
  %hs_rqst_ckln = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 12
  %26 = ptrtoint ptr %hs_rqst_ckln to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond152, ptr %hs_rqst_ckln, align 4
  %reass.mul545 = mul i32 %add, 9
  %add180 = add i32 %shl, 59999
  %sub181 = add i32 %add180, %reass.mul545
  %div182 = sdiv i32 %sub181, %shl
  %sub183 = add i32 %div182, -1
  %sub.i511 = sub i32 64, %div182
  %mul.i512 = mul i32 %sub.i511, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i512)
  %cmp30.i513 = icmp slt i32 %mul.i512, 0
  %cond.in.v.i514 = select i1 %cmp30.i513, i32 -99, i32 99
  %cond.in.i515 = add i32 %cond.in.v.i514, %mul.i512
  %cond.i516 = sdiv i32 %cond.in.i515, 100
  %add5.i517 = add i32 %sub183, %cond.i516
  %27 = tail call i32 @llvm.smax.i32(i32 %add5.i517, i32 0) #6
  %shared_timings = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11
  %28 = ptrtoint ptr %shared_timings to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %shared_timings, align 4
  %shl187454 = add nuw i32 %11, %9
  %add193456 = add i32 %shl187454, %cond152
  %add205 = shl i32 %add193456, 3
  %mul206455 = add i32 %add205, 51
  %add209 = mul i32 %mul206455, %add
  %sub216 = sub i32 1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add209)
  %cmp210543 = icmp slt i32 %add209, 0
  %sub213.pn.v = select i1 %cmp210543, i32 %sub216, i32 %add37
  %sub213.pn = add i32 %sub213.pn.v, %add209
  %cond220 = sdiv i32 %sub213.pn, %shl
  %sub221 = add i32 %cond220, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub221)
  %cmp222 = icmp sgt i32 %sub221, 63
  br i1 %cmp222, label %if.then223, label %if.else

if.then223:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i520 = sub i32 127, %cond220
  %mul.i521 = mul i32 %sub.i520, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i521)
  %cmp30.i522 = icmp slt i32 %mul.i521, 0
  %cond.in.v.i523 = select i1 %cmp30.i522, i32 -99, i32 99
  %cond.in.i524 = add i32 %cond.in.v.i523, %mul.i521
  %cond.i525 = sdiv i32 %cond.in.i524, 100
  %add5.i526 = add i32 %cond.i525, %sub221
  %29 = tail call i32 @llvm.smax.i32(i32 %add5.i526, i32 0) #6
  %shr538 = lshr i32 %29, 1
  br label %if.end233

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i529 = sub i32 64, %cond220
  %mul.i530 = mul i32 %sub.i529, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i530)
  %cmp30.i531 = icmp slt i32 %mul.i530, 0
  %cond.in.v.i532 = select i1 %cmp30.i531, i32 -99, i32 99
  %cond.in.i533 = add i32 %cond.in.v.i532, %mul.i530
  %cond.i534 = sdiv i32 %cond.in.i533, 100
  %add5.i535 = add i32 %cond.i534, %sub221
  %30 = tail call i32 @llvm.smax.i32(i32 %add5.i535, i32 0) #6
  br label %if.end233

if.end233:                                        ; preds = %if.else, %if.then223
  %.sink546 = phi i32 [ %shr538, %if.then223 ], [ %30, %if.else ]
  %.sink = phi i8 [ 1, %if.then223 ], [ 0, %if.else ]
  %31 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink546, ptr %31, align 4
  %33 = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink, ptr %33, align 4
  %ta_go = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 8
  %35 = ptrtoint ptr %ta_go to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %ta_go, align 4
  %ta_sure = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 9
  %36 = ptrtoint ptr %ta_sure to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %ta_sure, align 4
  %ta_get = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 10
  %37 = ptrtoint ptr %ta_get to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %ta_get, align 4
  %38 = zext i8 %.sink to i32
  %hs_prep_dly = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 13
  %39 = ptrtoint ptr %hs_prep_dly to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hs_prep_dly, align 4
  %hs_prep_dly_ckln = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 14
  %41 = ptrtoint ptr %hs_prep_dly_ckln to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hs_prep_dly_ckln, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %.sink546, i32 noundef %27, i32 noundef %38, i32 noundef %11, i32 noundef %13, i32 noundef %9, i32 noundef %24, i32 noundef %19, i32 noundef %17, i32 noundef %21, i32 noundef %cond152, i32 noundef %cond152, i32 noundef 0, i32 noundef 0, i32 noundef %40, i32 noundef %42) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end233, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end233 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_dphy_timing_calc_v4(ptr nocapture noundef %timing, ptr nocapture noundef readonly %clk_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %escclk_rate = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %clk_req, i32 0, i32 1
  %2 = ptrtoint ptr %escclk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %escclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 %1, 1000
  %div.frozen = freeze i32 %div
  %div2 = udiv i32 1000000, %div.frozen
  %4 = mul i32 %div2, %div.frozen
  %rem4.decomposed = sub i32 1000000, %4
  %mul = mul nuw nsw i32 %div2, 1000
  %mul5 = mul nuw nsw i32 %rem4.decomposed, 1000
  %div7 = udiv i32 %mul5, %div
  %add = add nuw nsw i32 %div7, %mul
  %shl = shl i32 %add, 3
  %sub = add i32 %shl, 37999
  %div11 = sdiv i32 %sub, %shl
  %5 = tail call i32 @llvm.smax.i32(i32 %div11, i32 0)
  %div23 = sdiv i32 95000, %shl
  %6 = tail call i32 @llvm.smax.i32(i32 %div23, i32 0)
  %sub.i = sub nsw i32 %6, %5
  %mul.i = mul i32 %sub.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp30.i = icmp slt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp30.i, i32 -99, i32 99
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 100
  %add5.i = add i32 %cond.i, %5
  %7 = tail call i32 @llvm.smax.i32(i32 %add5.i, i32 0) #6
  %clk_prepare = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 2
  %8 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %clk_prepare, align 4
  %shl32.neg = mul i32 %add, -8
  %mul33.neg = mul i32 %shl32.neg, %7
  %sub34 = add i32 %mul33.neg, 300000
  %add37 = add i32 %shl, -1
  %sub38 = add i32 %add37, %sub34
  %sub41 = sub i32 %sub34, %shl
  %add42 = or i32 %sub41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34)
  %cmp35426 = icmp slt i32 %sub34, 0
  %sub38.pn = select i1 %cmp35426, i32 %add42, i32 %sub38
  %cond45 = sdiv i32 %sub38.pn, %shl
  %sub46 = add i32 %cond45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub46)
  %cmp47 = icmp sgt i32 %sub46, 255
  %cond48 = select i1 %cmp47, i32 511, i32 255
  %sub.i363 = sub i32 %cond48, %sub46
  %mul.i364 = shl i32 %sub.i363, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i364)
  %cmp30.i365 = icmp slt i32 %mul.i364, 0
  %cond.in.v.i366 = select i1 %cmp30.i365, i32 -99, i32 99
  %cond.in.i367 = add i32 %cond.in.v.i366, %mul.i364
  %cond.i368 = sdiv i32 %cond.in.i367, 100
  %add5.i369 = add i32 %cond.i368, %sub46
  %9 = tail call i32 @llvm.smax.i32(i32 %add5.i369, i32 0) #6
  %10 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %timing, align 4
  %mul51 = mul i32 %add, 3
  %add53 = add i32 %mul51, 59999
  %sub54 = add i32 %add53, %shl
  %div55 = sdiv i32 %sub54, %shl
  %mul57 = mul i32 %add, 12
  %sub60 = add i32 %mul57, 85000
  %add62 = add i32 %sub60, %mul51
  %div63 = sdiv i32 %add62, %shl
  %sub.i372 = sub i32 %div63, %div55
  %mul.i373 = mul i32 %sub.i372, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i373)
  %cmp30.i374 = icmp slt i32 %mul.i373, 0
  %cond.in.v.i375 = select i1 %cmp30.i374, i32 -99, i32 99
  %cond.in.i376 = add i32 %cond.in.v.i375, %mul.i373
  %cond.i377 = sdiv i32 %cond.in.i376, 100
  %add5.i378 = add i32 %cond.i377, %div55
  %11 = tail call i32 @llvm.smax.i32(i32 %add5.i378, i32 0) #6
  %clk_trail = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 1
  %12 = ptrtoint ptr %clk_trail to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %clk_trail, align 4
  %mul66 = shl i32 %add, 2
  %add67 = add i32 %mul66, 40000
  %sub74 = add i32 %add37, %add67
  %sub80 = sub i32 %add67, %shl
  %add81 = or i32 %sub80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add67)
  %cmp68427 = icmp slt i32 %add67, 0
  %sub74.pn = select i1 %cmp68427, i32 %add81, i32 %sub74
  %cond84 = sdiv i32 %sub74.pn, %shl
  %13 = tail call i32 @llvm.smax.i32(i32 %cond84, i32 0)
  %mul92 = mul i32 %add, 6
  %add93 = add i32 %mul92, 85000
  %div94 = sdiv i32 %add93, %shl
  %14 = tail call i32 @llvm.smax.i32(i32 %div94, i32 0)
  %sub.i381 = sub nsw i32 %14, %13
  %mul.i382 = mul i32 %sub.i381, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i382)
  %cmp30.i383 = icmp slt i32 %mul.i382, 0
  %cond.in.v.i384 = select i1 %cmp30.i383, i32 -99, i32 99
  %cond.in.i385 = add i32 %cond.in.v.i384, %mul.i382
  %cond.i386 = sdiv i32 %cond.in.i385, 100
  %add5.i387 = add i32 %cond.i386, %13
  %15 = tail call i32 @llvm.smax.i32(i32 %add5.i387, i32 0) #6
  %hs_prepare = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 5
  %16 = ptrtoint ptr %hs_prepare to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hs_prepare, align 4
  %mul107.neg = mul i32 %15, -8
  %reass.add = add i32 %mul107.neg, 10
  %reass.mul = mul i32 %reass.add, %add
  %sub108 = add i32 %reass.mul, 145000
  %sub112 = add i32 %add37, %sub108
  %sub115 = sub i32 %sub108, %shl
  %add116 = or i32 %sub115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub108)
  %cmp109428 = icmp slt i32 %sub108, 0
  %sub112.pn = select i1 %cmp109428, i32 %add116, i32 %sub112
  %cond119 = sdiv i32 %sub112.pn, %shl
  %sub120 = add i32 %cond119, -1
  %sub.i390 = sub i32 256, %cond119
  %mul.i391 = mul i32 %sub.i390, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i391)
  %cmp30.i392 = icmp slt i32 %mul.i391, 0
  %cond.in.v.i393 = select i1 %cmp30.i392, i32 -99, i32 99
  %cond.in.i394 = add i32 %cond.in.v.i393, %mul.i391
  %cond.i395 = sdiv i32 %cond.in.i394, 100
  %add5.i396 = add i32 %sub120, %cond.i395
  %17 = tail call i32 @llvm.smax.i32(i32 %add5.i396, i32 0) #6
  %hs_zero = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 4
  %18 = ptrtoint ptr %hs_zero to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %hs_zero, align 4
  %add125 = add i32 %mul66, 59999
  %sub126 = add i32 %add125, %shl
  %div127 = sdiv i32 %sub126, %shl
  %sub128 = add i32 %div127, -1
  %div134 = sdiv i32 %sub60, %shl
  %sub.i399 = sub i32 %div134, %div127
  %mul.i400 = mul i32 %sub.i399, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i400)
  %cmp30.i401 = icmp slt i32 %mul.i400, 0
  %cond.in.v.i402 = select i1 %cmp30.i401, i32 -99, i32 99
  %cond.in.i403 = add i32 %cond.in.v.i402, %mul.i400
  %cond.i404 = sdiv i32 %cond.in.i403, 100
  %add5.i405 = add i32 %sub128, %cond.i404
  %19 = tail call i32 @llvm.smax.i32(i32 %add5.i405, i32 0) #6
  %hs_trail = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 6
  %20 = ptrtoint ptr %hs_trail to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %hs_trail, align 4
  %add141 = add i32 %shl32.neg, 50000
  %sub145 = add i32 %add37, %add141
  %sub148 = sub i32 %add141, %shl
  %add149 = or i32 %sub148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add141)
  %cmp142429 = icmp slt i32 %add141, 0
  %sub145.pn = select i1 %cmp142429, i32 %add149, i32 %sub145
  %cond152 = sdiv i32 %sub145.pn, %shl
  %hs_rqst = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 7
  %21 = ptrtoint ptr %hs_rqst to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond152, ptr %hs_rqst, align 4
  %sub155 = add i32 %shl, 99999
  %div156 = sdiv i32 %sub155, %shl
  %sub157 = add i32 %div156, -1
  %sub.i408 = sub i32 256, %div156
  %mul.i409 = mul i32 %sub.i408, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i409)
  %cmp30.i410 = icmp slt i32 %mul.i409, 0
  %cond.in.v.i411 = select i1 %cmp30.i410, i32 -99, i32 99
  %cond.in.i412 = add i32 %cond.in.v.i411, %mul.i409
  %cond.i413 = sdiv i32 %cond.in.i412, 100
  %add5.i414 = add i32 %sub157, %cond.i413
  %22 = tail call i32 @llvm.smax.i32(i32 %add5.i414, i32 0) #6
  %hs_exit = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 3
  %23 = ptrtoint ptr %hs_exit to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %hs_exit, align 4
  %mul160 = mul i32 %add, 52
  %add163 = add nuw i32 %19, 1
  %mul164 = mul i32 %add163, %shl
  %mul166 = shl i32 %add, 4
  %add165 = add i32 %mul160, 59999
  %add167 = add i32 %add165, %mul166
  %sub168 = add i32 %add167, %mul164
  %div170 = sdiv i32 %sub168, %mul166
  %sub171 = add i32 %div170, -1
  %sub.i417 = sub i32 256, %div170
  %mul.i418 = mul i32 %sub.i417, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i418)
  %cmp30.i419 = icmp slt i32 %mul.i418, 0
  %cond.in.v.i420 = select i1 %cmp30.i419, i32 -99, i32 99
  %cond.in.i421 = add i32 %cond.in.v.i420, %mul.i418
  %cond.i422 = sdiv i32 %cond.in.i421, 100
  %add5.i423 = add i32 %sub171, %cond.i422
  %24 = tail call i32 @llvm.smax.i32(i32 %add5.i423, i32 0) #6
  %shared_timings = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11
  %25 = ptrtoint ptr %shared_timings to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %shared_timings, align 4
  %add176 = add nuw i32 %7, 1
  %add177 = add nuw i32 %add176, %9
  %mul178 = mul i32 %add177, %shl
  %add183 = add i32 %mul166, 105999
  %sub184 = add i32 %add183, %mul178
  %div186 = sdiv i32 %sub184, %mul166
  %sub187 = add i32 %div186, -1
  %sub188 = sub i32 256, %div186
  %mul189 = mul i32 %sub188, 125
  %sub191 = add i32 %mul189, 9999
  %div192 = sdiv i32 %sub191, 10000
  %add193 = add i32 %sub187, %div192
  %clk_pre = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %clk_pre to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add193, ptr %clk_pre, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %add193, i32 noundef %24, i32 noundef %9, i32 noundef %11, i32 noundef %7, i32 noundef %22, i32 noundef %17, i32 noundef %15, i32 noundef %19, i32 noundef %cond152) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_cphy_timing_calc_v4(ptr nocapture noundef %timing, ptr nocapture noundef readonly %clk_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %escclk_rate = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %clk_req, i32 0, i32 1
  %2 = ptrtoint ptr %escclk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %escclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 %1, 1000
  %div.frozen = freeze i32 %div
  %div2 = udiv i32 1000000, %div.frozen
  %4 = mul i32 %div2, %div.frozen
  %rem4.decomposed = sub i32 1000000, %4
  %mul = mul nuw nsw i32 %div2, 1000
  %mul5 = mul nuw nsw i32 %rem4.decomposed, 1000
  %div7 = udiv i32 %mul5, %div
  %add = add nuw nsw i32 %div7, %mul
  %mul8 = mul i32 %add, 7
  %sub = add i32 %mul8, 37999
  %div12 = sdiv i32 %sub, %mul8
  %5 = tail call i32 @llvm.smax.i32(i32 %div12, i32 0)
  %div24 = sdiv i32 95000, %mul8
  %6 = tail call i32 @llvm.smax.i32(i32 %div24, i32 0)
  %sub.i = sub nsw i32 %6, %5
  %mul.i = mul i32 %sub.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp30.i = icmp slt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp30.i, i32 -99, i32 99
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 100
  %add5.i = add i32 %cond.i, %5
  %7 = tail call i32 @llvm.smax.i32(i32 %add5.i, i32 0) #6
  %clk_prepare = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 2
  %8 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %clk_prepare, align 4
  %sub33 = add i32 %mul8, 49999
  %div34 = sdiv i32 %sub33, %mul8
  %sub.i130 = sub i32 255, %div34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i130)
  %cmp30.i131 = icmp slt i32 %sub.i130, 0
  %cond.in.v.i132 = select i1 %cmp30.i131, i32 -99, i32 99
  %cond.in.i133 = add i32 %cond.in.v.i132, %sub.i130
  %cond.i134 = sdiv i32 %cond.in.i133, 100
  %add5.i135 = add i32 %cond.i134, %div34
  %9 = tail call i32 @llvm.smax.i32(i32 %add5.i135, i32 0) #6
  %hs_rqst = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 7
  %10 = ptrtoint ptr %hs_rqst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %hs_rqst, align 4
  %sub38 = add i32 %mul8, 99999
  %div39 = sdiv i32 %sub38, %mul8
  %sub40 = add i32 %div39, -1
  %sub.i138 = sub i32 256, %div39
  %mul.i139 = mul i32 %sub.i138, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i139)
  %cmp30.i140 = icmp slt i32 %mul.i139, 0
  %cond.in.v.i141 = select i1 %cmp30.i140, i32 -99, i32 99
  %cond.in.i142 = add i32 %cond.in.v.i141, %mul.i139
  %cond.i143 = sdiv i32 %cond.in.i142, 100
  %add5.i144 = add i32 %sub40, %cond.i143
  %11 = tail call i32 @llvm.smax.i32(i32 %add5.i144, i32 0) #6
  %hs_exit = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 3
  %12 = ptrtoint ptr %hs_exit to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %hs_exit, align 4
  %shared_timings = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11
  %13 = ptrtoint ptr %shared_timings to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 26, ptr %shared_timings, align 4
  %sub48 = add i32 %mul8, 261999
  %div49 = sdiv i32 %sub48, %mul8
  %sub57 = add i32 %div49, -1
  %14 = tail call i32 @llvm.smin.i32(i32 %sub57, i32 64)
  %sub.i147 = sub i32 64, %14
  %mul.i148 = mul i32 %sub.i147, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i148)
  %cmp30.i149 = icmp slt i32 %mul.i148, 0
  %cond.in.v.i150 = select i1 %cmp30.i149, i32 -99, i32 99
  %cond.in.i151 = add i32 %cond.in.v.i150, %mul.i148
  %cond.i152 = sdiv i32 %cond.in.i151, 100
  %add5.i153 = add i32 %cond.i152, %14
  %15 = tail call i32 @llvm.smax.i32(i32 %add5.i153, i32 0) #6
  %clk_pre = getelementptr inbounds %struct.msm_dsi_dphy_timing, ptr %timing, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %clk_pre to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %clk_pre, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %15, i32 noundef 26, i32 noundef %7, i32 noundef %11, i32 noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_phy_driver_register() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dsi_phy_platform_driver, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_phy_driver_unregister() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @dsi_phy_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_phy_enable(ptr noundef %phy, ptr noundef %clk_req, ptr nocapture noundef writeonly %shared_timings) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cfg = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 13
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %enable = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call = tail call fastcc i32 @dsi_phy_enable_resource(ptr noundef nonnull %phy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.msm_dsi_phy_enable, i32 noundef %call) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %supplies.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 11
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  %regs1.i = getelementptr inbounds %struct.dsi_reg_config, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp59.i = icmp sgt i32 %11, 0
  br i1 %cmp59.i, label %if.end5.for.body.i_crit_edge, label %if.end5.for.end.i_crit_edge

if.end5.for.end.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %enable_load.i = getelementptr %struct.dsi_reg_entry, ptr %regs1.i, i32 %i.060.i, i32 1
  %12 = ptrtoint ptr %enable_load.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable_load.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp7.i = icmp sgt i32 %13, -1
  br i1 %cmp7.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %consumer.i = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.060.i, i32 1
  %14 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %consumer.i, align 4
  %call.i = tail call i32 @regulator_set_load(ptr noundef %15, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.i = icmp slt i32 %call.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev3.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef %i.060.i, i32 noundef %call.i) #6
  br label %fail.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end5.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end5.for.end.i_crit_edge ], [ %11, %for.inc.i.for.end.i_crit_edge ]
  %call14.i = tail call i32 @regulator_bulk_enable(i32 noundef %11, ptr noundef %supplies.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.end9

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev3.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.38, i32 noundef %call14.i) #6
  br label %fail.i

fail.i:                                           ; preds = %if.then16.i, %if.then12.i
  %i.058.i = phi i32 [ %i.060.i, %if.then12.i ], [ %i.0.lcssa.i, %if.then16.i ]
  %ret.0.i = phi i32 [ %call.i, %if.then12.i ], [ %call14.i, %if.then16.i ]
  %i.162.i = add i32 %i.058.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.162.i)
  %cmp1963.i = icmp sgt i32 %i.162.i, -1
  br i1 %cmp1963.i, label %fail.i.for.body20.i_crit_edge, label %fail.i.if.then8_crit_edge

fail.i.if.then8_crit_edge:                        ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

fail.i.for.body20.i_crit_edge:                    ; preds = %fail.i
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.body20.i.for.body20.i_crit_edge, %fail.i.for.body20.i_crit_edge
  %i.164.i = phi i32 [ %i.1.i, %for.body20.i.for.body20.i_crit_edge ], [ %i.162.i, %fail.i.for.body20.i_crit_edge ]
  %consumer22.i = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.164.i, i32 1
  %16 = ptrtoint ptr %consumer22.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %consumer22.i, align 4
  %disable_load.i = getelementptr %struct.dsi_reg_entry, ptr %regs1.i, i32 %i.164.i, i32 2
  %18 = ptrtoint ptr %disable_load.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %disable_load.i, align 4
  %call24.i = tail call i32 @regulator_set_load(ptr noundef %17, i32 noundef %19) #6
  %i.1.i = add nsw i32 %i.164.i, -1
  %cmp19.not.i = icmp eq i32 %i.164.i, 0
  br i1 %cmp19.not.i, label %for.body20.i.if.then8_crit_edge, label %for.body20.i.for.body20.i_crit_edge

for.body20.i.for.body20.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20.i

for.body20.i.if.then8_crit_edge:                  ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %for.body20.i.if.then8_crit_edge, %fail.i.if.then8_crit_edge
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.msm_dsi_phy_enable, i32 noundef %ret.0.i) #6
  br label %reg_en_fail

if.end9:                                          ; preds = %for.end.i
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 4
  %enable12 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %enable12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enable12, align 4
  %call13 = tail call i32 %23(ptr noundef nonnull %phy, ptr noundef %clk_req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.msm_dsi_phy_enable, i32 noundef %call13) #6
  br label %phy_en_fail

if.end16:                                         ; preds = %if.end9
  %shared_timings17 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 11
  %24 = call ptr @memcpy(ptr %shared_timings, ptr %shared_timings17, i32 12)
  %usecase = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 14
  %25 = ptrtoint ptr %usecase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usecase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.not = icmp eq i32 %26, 2
  br i1 %cmp.not, label %if.end16.cleanup_crit_edge, label %if.then18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  %27 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg, align 4
  %restore_pll_state.i = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %28, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %restore_pll_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %restore_pll_state.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then18.cleanup_crit_edge, label %land.lhs.true.i

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then18
  %state_saved.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 20
  %31 = ptrtoint ptr %state_saved.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %state_saved.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool1.not.i = icmp eq i8 %32, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i60

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i60:                                      ; preds = %land.lhs.true.i
  %call.i59 = tail call i32 %30(ptr noundef nonnull %phy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool5.not.i = icmp eq i32 %call.i59, 0
  br i1 %tobool5.not.i, label %if.end.i, label %if.then21

if.end.i:                                         ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %state_saved.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %state_saved.i, align 4
  br label %cleanup

if.then21:                                        ; preds = %if.then.i60
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.msm_dsi_phy_enable, i32 noundef %call.i59) #6
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg, align 4
  %disable = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %35, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disable, align 4
  %tobool26.not = icmp eq ptr %37, null
  br i1 %tobool26.not, label %if.then21.phy_en_fail_crit_edge, label %if.then27

if.then21.phy_en_fail_crit_edge:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_en_fail

if.then27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %37(ptr noundef nonnull %phy) #6
  br label %phy_en_fail

phy_en_fail:                                      ; preds = %if.then27, %if.then21.phy_en_fail_crit_edge, %if.then15
  %ret.0 = phi i32 [ %call13, %if.then15 ], [ %call.i59, %if.then27 ], [ %call.i59, %if.then21.phy_en_fail_crit_edge ]
  %38 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg, align 4
  %regs1.i64 = getelementptr inbounds %struct.dsi_reg_config, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36) #6
  %i.020.i = add i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.020.i)
  %cmp21.i = icmp sgt i32 %i.020.i, -1
  br i1 %cmp21.i, label %phy_en_fail.for.body.i66_crit_edge, label %phy_en_fail.dsi_phy_regulator_disable.exit_crit_edge

phy_en_fail.dsi_phy_regulator_disable.exit_crit_edge: ; preds = %phy_en_fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsi_phy_regulator_disable.exit

phy_en_fail.for.body.i66_crit_edge:               ; preds = %phy_en_fail
  br label %for.body.i66

for.body.i66:                                     ; preds = %for.inc.i70.for.body.i66_crit_edge, %phy_en_fail.for.body.i66_crit_edge
  %i.022.i = phi i32 [ %i.0.i, %for.inc.i70.for.body.i66_crit_edge ], [ %i.020.i, %phy_en_fail.for.body.i66_crit_edge ]
  %disable_load.i65 = getelementptr %struct.dsi_reg_entry, ptr %regs1.i64, i32 %i.022.i, i32 2
  %42 = ptrtoint ptr %disable_load.i65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %disable_load.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp6.i = icmp sgt i32 %43, -1
  br i1 %cmp6.i, label %if.then.i69, label %for.body.i66.for.inc.i70_crit_edge

for.body.i66.for.inc.i70_crit_edge:               ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i70

if.then.i69:                                      ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #8
  %consumer.i67 = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.022.i, i32 1
  %44 = ptrtoint ptr %consumer.i67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %consumer.i67, align 4
  %call.i68 = tail call i32 @regulator_set_load(ptr noundef %45, i32 noundef %43) #6
  br label %for.inc.i70

for.inc.i70:                                      ; preds = %if.then.i69, %for.body.i66.for.inc.i70_crit_edge
  %i.0.i = add i32 %i.022.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i70.for.body.i66_crit_edge, label %for.inc.i70.dsi_phy_regulator_disable.exit_crit_edge

for.inc.i70.dsi_phy_regulator_disable.exit_crit_edge: ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsi_phy_regulator_disable.exit

for.inc.i70.for.body.i66_crit_edge:               ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i66

dsi_phy_regulator_disable.exit:                   ; preds = %for.inc.i70.dsi_phy_regulator_disable.exit_crit_edge, %phy_en_fail.dsi_phy_regulator_disable.exit_crit_edge
  %call10.i = tail call i32 @regulator_bulk_disable(i32 noundef %41, ptr noundef %supplies.i) #6
  br label %reg_en_fail

reg_en_fail:                                      ; preds = %dsi_phy_regulator_disable.exit, %if.then8
  %ret.1 = phi i32 [ %ret.0.i, %if.then8 ], [ %ret.0, %dsi_phy_regulator_disable.exit ]
  %ahb_clk.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 10
  %46 = ptrtoint ptr %ahb_clk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ahb_clk.i, align 4
  tail call void @clk_disable(ptr noundef %47) #6
  tail call void @clk_unprepare(ptr noundef %47) #6
  %48 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %reg_en_fail, %if.end.i, %land.lhs.true.i.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ %call, %if.then4 ], [ %ret.1, %reg_en_fail ], [ 0, %if.end.i ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsi_phy_enable_resource(ptr nocapture noundef readonly %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  %ahb_clk = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 10
  %2 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ahb_clk, align 4
  %call.i9 = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool.not.i = icmp eq i32 %call.i9, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %if.then

if.then:                                          ; preds = %if.then3.i, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i9, %entry.if.then_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.dsi_phy_enable_resource, i32 noundef %retval.0.i.ph) #6
  %call.i10 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge
  %retval.0.i14 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %if.end.i.if.end_crit_edge ]
  ret i32 %retval.0.i14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_phy_pll_restore_state(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 13
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %restore_pll_state = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %1, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %restore_pll_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %restore_pll_state, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %state_saved = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 20
  %4 = ptrtoint ptr %state_saved to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state_saved, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %phy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %state_saved to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %state_saved, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsi_phy_disable_resource(ptr nocapture noundef readonly %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ahb_clk = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 10
  %0 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ahb_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_phy_disable(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %cfg = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 13
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %disable = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  tail call void %3(ptr noundef nonnull %phy) #6
  %supplies.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 11
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %regs1.i = getelementptr inbounds %struct.dsi_reg_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36) #6
  %i.020.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.020.i)
  %cmp21.i = icmp sgt i32 %i.020.i, -1
  br i1 %cmp21.i, label %if.end.for.body.i_crit_edge, label %if.end.dsi_phy_regulator_disable.exit_crit_edge

if.end.dsi_phy_regulator_disable.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsi_phy_regulator_disable.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.022.i = phi i32 [ %i.0.i, %for.inc.i.for.body.i_crit_edge ], [ %i.020.i, %if.end.for.body.i_crit_edge ]
  %disable_load.i = getelementptr %struct.dsi_reg_entry, ptr %regs1.i, i32 %i.022.i, i32 2
  %8 = ptrtoint ptr %disable_load.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %disable_load.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp6.i = icmp sgt i32 %9, -1
  br i1 %cmp6.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %consumer.i = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.022.i, i32 1
  %10 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer.i, align 4
  %call.i = tail call i32 @regulator_set_load(ptr noundef %11, i32 noundef %9) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %i.0.i = add i32 %i.022.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.dsi_phy_regulator_disable.exit_crit_edge

for.inc.i.dsi_phy_regulator_disable.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsi_phy_regulator_disable.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

dsi_phy_regulator_disable.exit:                   ; preds = %for.inc.i.dsi_phy_regulator_disable.exit_crit_edge, %if.end.dsi_phy_regulator_disable.exit_crit_edge
  %call10.i = tail call i32 @regulator_bulk_disable(i32 noundef %7, ptr noundef %supplies.i) #6
  %ahb_clk.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 10
  %12 = ptrtoint ptr %ahb_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ahb_clk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i, i32 noundef 5) #6
  br label %return

return:                                           ; preds = %dsi_phy_regulator_disable.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @msm_dsi_phy_set_usecase(ptr noundef writeonly %phy, i32 noundef %uc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %usecase = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 14
  %0 = ptrtoint ptr %usecase to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %uc, ptr %usecase, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @msm_dsi_phy_set_continuous_clock(ptr noundef %phy, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %cfg = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 13
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %set_continuous_clock = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %1, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %set_continuous_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_continuous_clock, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 %3(ptr noundef nonnull %phy, i1 noundef zeroext %enable) #6
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.end ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_phy_pll_save_state(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 13
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %save_pll_state = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %save_pll_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %save_pll_state, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %phy) #6
  %state_saved = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 20
  %4 = ptrtoint ptr %state_saved to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %state_saved, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_phy_snapshot(ptr noundef %disp_state, ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_size = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 5
  %0 = ptrtoint ptr %base_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_size, align 4
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %disp_state, i32 noundef %1, ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %5) #6
  %pll_on = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 18
  %6 = ptrtoint ptr %pll_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pll_on, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pll_size = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 6
  %8 = ptrtoint ptr %pll_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pll_size, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 2
  %10 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll_base, align 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %disp_state, i32 noundef %9, ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef %13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lane_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 4
  %14 = ptrtoint ptr %lane_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lane_base, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %lane_size = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 8
  %16 = ptrtoint ptr %lane_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lane_size, align 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %disp_state, i32 noundef %17, ptr noundef nonnull %15, ptr noundef nonnull @.str.11, i32 noundef %19) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %reg_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 3
  %20 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %reg_size = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 7
  %22 = ptrtoint ptr %reg_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_size, align 4
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %disp_state, i32 noundef %23, ptr noundef nonnull %21, ptr noundef nonnull @.str.12, i32 noundef %25) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_add_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_phy_driver_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %phy_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_type) #6
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phy_type, align 4, !annotation !94
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 240, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i158 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %provided_clocks = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %provided_clocks to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i158, ptr %provided_clocks, align 4
  %tobool5.not = icmp eq ptr %call.i158, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i158 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %call.i158, align 4
  %call10 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %cfg = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 13
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %cfg, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %call.i, align 4
  %call.i159 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.17) #6
  %tobool.not.i = icmp eq ptr %call.i159, null
  br i1 %tobool.not.i, label %if.end14.if.then18_crit_edge, label %for.cond.preheader.i

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

for.cond.preheader.i:                             ; preds = %if.end14
  %num_dsi_phy.i = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %call10, i32 0, i32 5
  %5 = ptrtoint ptr %num_dsi_phy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_dsi_phy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp15.i = icmp sgt i32 %6, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.then18_crit_edge

for.cond.preheader.i.if.then18_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %7 = ptrtoint ptr %call.i159 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i159, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.msm_dsi_phy_cfg, ptr %call10, i32 0, i32 4, i32 %i.016.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp3.i = icmp eq i32 %10, %8
  br i1 %cmp3.i, label %if.end20, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.if.then18_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then18_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.then18:                                        ; preds = %for.inc.i.if.then18_crit_edge, %for.cond.preheader.i.if.then18_crit_edge, %if.end14.if.then18_crit_edge
  %id166 = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %id166 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %id166, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.dsi_phy_driver_probe, i32 noundef -22) #6
  br label %cleanup

if.end20:                                         ; preds = %for.body.i
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.016.i, ptr %id, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i160 = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.15, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i160, null
  %regulator_ldo_mode = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 15
  %frombool = zext i1 %tobool.i to i8
  %15 = ptrtoint ptr %regulator_ldo_mode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %regulator_ldo_mode, align 4
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.16, ptr noundef nonnull %phy_type, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool24.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool24.not, label %if.then25, label %if.end20.if.end28_crit_edge

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %19)
  %cmp26 = icmp eq i32 %19, 11
  %cphy_mode = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 16
  %frombool27 = zext i1 %cmp26 to i8
  %20 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool27, ptr %cphy_mode, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end20.if.end28_crit_edge
  %base_size = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 5
  %call29 = call ptr @msm_ioremap_size(ptr noundef %pdev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %base_size) #6
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call29, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dsi_phy_driver_probe) #6
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %pll_size = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 6
  %call34 = call ptr @msm_ioremap_size(ptr noundef %pdev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %pll_size) #6
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %pll_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call34, ptr %pll_base, align 4
  %cmp.i161 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dsi_phy_driver_probe) #6
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg, align 4
  %has_phy_lane = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %has_phy_lane to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_phy_lane, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool41.not = icmp eq i8 %26, 0
  br i1 %tobool41.not, label %if.end39.if.end49_crit_edge, label %if.then42

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then42:                                        ; preds = %if.end39
  %lane_size = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 8
  %call43 = call ptr @msm_ioremap_size(ptr noundef %pdev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %lane_size) #6
  %lane_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %lane_base to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call43, ptr %lane_base, align 4
  %cmp.i162 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %if.then46, label %if.then42.if.end49_crit_edge

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.dsi_phy_driver_probe) #6
  br label %cleanup

if.end49:                                         ; preds = %if.then42.if.end49_crit_edge, %if.end39.if.end49_crit_edge
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg, align 4
  %has_phy_regulator = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %has_phy_regulator to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_phy_regulator, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool51.not = icmp eq i8 %31, 0
  br i1 %tobool51.not, label %if.end49.if.end59_crit_edge, label %if.then52

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then52:                                        ; preds = %if.end49
  %reg_size = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 7
  %call53 = call ptr @msm_ioremap_size(ptr noundef %pdev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef %reg_size) #6
  %reg_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call53, ptr %reg_base, align 4
  %cmp.i163 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then56, label %if.then52.if.end59_crit_edge

if.then52.if.end59_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.dsi_phy_driver_probe) #6
  br label %cleanup

if.end59:                                         ; preds = %if.then52.if.end59_crit_edge, %if.end49.if.end59_crit_edge
  %call60 = call fastcc i32 @dsi_phy_regulator_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %if.end59
  %call64 = call ptr @msm_clk_get(ptr noundef %pdev, ptr noundef nonnull @.str.29) #6
  %ahb_clk = getelementptr inbounds %struct.msm_dsi_phy, ptr %call.i, i32 0, i32 10
  %33 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call64, ptr %ahb_clk, align 4
  %cmp.i164 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.dsi_phy_driver_probe) #6
  %34 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ahb_clk, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %cleanup

if.end70:                                         ; preds = %if.end63
  %call71 = call fastcc i32 @dsi_phy_enable_resource(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end74:                                         ; preds = %if.end70
  %37 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg, align 4
  %ops = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %tobool76.not = icmp eq ptr %40, null
  br i1 %tobool76.not, label %if.end74.if.end85_crit_edge, label %if.then77

if.end74.if.end85_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then77:                                        ; preds = %if.end74
  %call81 = call i32 %40(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then77.if.end85_crit_edge, label %if.then83

if.then77.if.end85_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then83:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dsi_phy_driver_probe, i32 noundef %call81) #6
  br label %cleanup

if.end85:                                         ; preds = %if.then77.if.end85_crit_edge, %if.end74.if.end85_crit_edge
  %41 = ptrtoint ptr %provided_clocks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %provided_clocks, align 4
  %call87 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.then89

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dsi_phy_driver_probe, i32 noundef %call87) #6
  br label %cleanup

if.end90:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @dsi_phy_disable_resource(ptr noundef nonnull %call.i)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then89, %if.then83, %if.end70.cleanup_crit_edge, %if.then67, %if.end59.cleanup_crit_edge, %if.then56, %if.then46, %if.then37, %if.then32, %if.then18, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end90 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ -22, %if.then18 ], [ -12, %if.then32 ], [ -12, %if.then37 ], [ -12, %if.then46 ], [ -12, %if.then56 ], [ %call60, %if.end59.cleanup_crit_edge ], [ %36, %if.then67 ], [ %call71, %if.end70.cleanup_crit_edge ], [ %call81, %if.then83 ], [ %call87, %if.then89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_type) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsi_phy_regulator_init(ptr noundef %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 11
  %cfg = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 13
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %regs1 = getelementptr inbounds %struct.dsi_reg_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp30 = icmp sgt i32 %5, 0
  br i1 %cmp30, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dsi_reg_entry, ptr %regs1, i32 %i.031
  %arrayidx8 = getelementptr %struct.regulator_bulk_data, ptr %supplies, i32 %i.031
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev3, i32 noundef %5, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %if.then, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call)
  %cmp10.not = icmp eq i32 %call, -517
  br i1 %cmp10.not, label %if.then.cleanup_crit_edge, label %if.then11

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dsi_phy_regulator_init, i32 noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.then.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then11 ], [ -517, %if.then.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !72, !73, !75, !77, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 135, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 249, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 457, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 503, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 821, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.msm_dsi_phy_enable, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 828, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 835, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 851, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 924, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 930, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 935, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 940, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 792, i32 13}
!28 = !{ptr @dsi_phy_platform_driver, !29, !"dsi_phy_platform_driver", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 789, i32 31}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 702, i32 3}
!32 = !{ptr @__func__.dsi_phy_driver_probe, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 708, i32 5}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 709, i32 42}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 712, i32 37}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 712, i32 48}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 714, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 719, i32 41}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 719, i32 52}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 721, i32 3}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 727, i32 43}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 727, i32 59}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 729, i32 4}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 736, i32 42}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 736, i32 63}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 738, i32 4}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 748, i32 35}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 750, i32 3}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 765, i32 4}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 775, i32 3}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 524, i32 4}
!72 = !{ptr @__func__.dsi_phy_regulator_init, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @dsi_phy_dt_match, !74, !"dsi_phy_dt_match", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 608, i32 34}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 595, i32 3}
!77 = !{ptr @__func__.dsi_phy_enable_resource, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 558, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 564, i32 5}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy.c", i32 574, i32 3}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i8 0, i8 2}
!94 = !{!"auto-init"}
