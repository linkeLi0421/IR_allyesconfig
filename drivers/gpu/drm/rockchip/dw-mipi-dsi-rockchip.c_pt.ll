; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_mipi_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_mipi_dsi_host_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dphy_pll_parameter_map = type { i32, i8, i8, i8 }
%struct.hstt = type { i32, %struct.dw_mipi_dsi_dphy_timing }
%struct.dw_mipi_dsi_dphy_timing = type { i16, i16, i16, i16 }
%struct.component_ops = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rockchip_dw_dsi_chip_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32 }
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
%struct.dw_mipi_dsi_rockchip = type { ptr, %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, %union.phy_configure_opts, i32, %struct.mutex, ptr, %struct.phy_configure_opts_mipi_dphy, i32, i16, i16, i32, ptr, ptr, %struct.dw_mipi_dsi_plat_data, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dw_mipi_dsi_plat_data = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dw-mipi-dsi-rockchip\00", [43 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_rockchip_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_chip_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_rockchip_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mipi_dsi_rockchip_resume, ptr null, ptr @dw_mipi_dsi_rockchip_resume, ptr null, ptr @dw_mipi_dsi_rockchip_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_rockchip_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_mipi_dsi_rockchip_probe, ptr @dw_mipi_dsi_rockchip_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_mipi_dsi_rockchip_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mipi_dsi_rockchip_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* Unable to get dsi registers\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* no dsi-config for %s node\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dphy\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to get mipi dphy: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* Unable to get pclk: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"*ERROR* Unable to get pll reference clock: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy_cfg\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Unable to get phy_cfg_clk: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"grf\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* Unable to get grf_clk: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Unable to get rockchip,grf\0A\00", [60 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_rockchip_phy_ops = internal constant { %struct.dw_mipi_dsi_phy_ops, [40 x i8] } { %struct.dw_mipi_dsi_phy_ops { ptr @dw_mipi_dsi_phy_init, ptr @dw_mipi_dsi_phy_power_on, ptr @dw_mipi_dsi_phy_power_off, ptr @dw_mipi_dsi_get_lane_mbps, ptr @dw_mipi_dsi_phy_get_timing, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_rockchip_host_ops = internal constant { %struct.dw_mipi_dsi_host_ops, [24 x i8] } { %struct.dw_mipi_dsi_host_ops { ptr @dw_mipi_dsi_rockchip_host_attach, ptr @dw_mipi_dsi_rockchip_host_detach }, [24 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_rockchip_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dsi->usage_mutex\00", [46 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_dphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @dw_mipi_dsi_dphy_init, ptr @dw_mipi_dsi_dphy_exit, ptr @dw_mipi_dsi_dphy_power_on, ptr @dw_mipi_dsi_dphy_power_off, ptr null, ptr null, ptr null, ptr @dw_mipi_dsi_dphy_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"*ERROR* failed to create PHY\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Failed to probe dw_mipi_dsi: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"*ERROR* failed to get parameter for %dmbps clock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to enable phy_cfg_clk\0A\00", [58 x i8] zeroinitializer }, align 32
@dppa_map = internal constant { [39 x %struct.dphy_pll_parameter_map], [72 x i8] } { [39 x %struct.dphy_pll_parameter_map] [%struct.dphy_pll_parameter_map { i32 89, i8 0, i8 1, i8 2 }, %struct.dphy_pll_parameter_map { i32 99, i8 16, i8 1, i8 2 }, %struct.dphy_pll_parameter_map { i32 109, i8 32, i8 1, i8 2 }, %struct.dphy_pll_parameter_map { i32 129, i8 1, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 139, i8 17, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 149, i8 33, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 169, i8 2, i8 9, i8 2 }, %struct.dphy_pll_parameter_map { i32 179, i8 18, i8 9, i8 2 }, %struct.dphy_pll_parameter_map { i32 199, i8 34, i8 9, i8 2 }, %struct.dphy_pll_parameter_map { i32 219, i8 3, i8 2, i8 2 }, %struct.dphy_pll_parameter_map { i32 239, i8 19, i8 2, i8 2 }, %struct.dphy_pll_parameter_map { i32 249, i8 35, i8 2, i8 2 }, %struct.dphy_pll_parameter_map { i32 269, i8 4, i8 9, i8 4 }, %struct.dphy_pll_parameter_map { i32 299, i8 20, i8 9, i8 4 }, %struct.dphy_pll_parameter_map { i32 329, i8 5, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 359, i8 21, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 399, i8 37, i8 1, i8 1 }, %struct.dphy_pll_parameter_map { i32 449, i8 6, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 499, i8 22, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 549, i8 7, i8 6, i8 8 }, %struct.dphy_pll_parameter_map { i32 599, i8 23, i8 6, i8 8 }, %struct.dphy_pll_parameter_map { i32 649, i8 8, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 699, i8 24, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 749, i8 9, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 799, i8 25, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 849, i8 41, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 899, i8 57, i8 6, i8 4 }, %struct.dphy_pll_parameter_map { i32 949, i8 10, i8 11, i8 16 }, %struct.dphy_pll_parameter_map { i32 999, i8 26, i8 11, i8 16 }, %struct.dphy_pll_parameter_map { i32 1049, i8 42, i8 11, i8 16 }, %struct.dphy_pll_parameter_map { i32 1099, i8 58, i8 11, i8 16 }, %struct.dphy_pll_parameter_map { i32 1149, i8 11, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1199, i8 27, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1249, i8 43, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1299, i8 59, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1349, i8 12, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1399, i8 28, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1449, i8 44, i8 11, i8 8 }, %struct.dphy_pll_parameter_map { i32 1500, i8 60, i8 11, i8 8 }], [72 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to set phy mode: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"*ERROR* failed to get bpp for pixel format %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* DPHY clock frequency is out of range\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Can not find best_freq for DPHY\0A\00", [55 x i8] zeroinitializer }, align 32
@hstt_table = internal constant { [39 x %struct.hstt], [108 x i8] } { [39 x %struct.hstt] [%struct.hstt { i32 90, %struct.dw_mipi_dsi_dphy_timing { i16 13, i16 26, i16 20, i16 32 } }, %struct.hstt { i32 100, %struct.dw_mipi_dsi_dphy_timing { i16 14, i16 28, i16 23, i16 35 } }, %struct.hstt { i32 110, %struct.dw_mipi_dsi_dphy_timing { i16 13, i16 26, i16 22, i16 32 } }, %struct.hstt { i32 130, %struct.dw_mipi_dsi_dphy_timing { i16 13, i16 27, i16 20, i16 31 } }, %struct.hstt { i32 140, %struct.dw_mipi_dsi_dphy_timing { i16 14, i16 26, i16 22, i16 33 } }, %struct.hstt { i32 150, %struct.dw_mipi_dsi_dphy_timing { i16 14, i16 26, i16 21, i16 33 } }, %struct.hstt { i32 170, %struct.dw_mipi_dsi_dphy_timing { i16 13, i16 27, i16 20, i16 32 } }, %struct.hstt { i32 180, %struct.dw_mipi_dsi_dphy_timing { i16 15, i16 30, i16 23, i16 36 } }, %struct.hstt { i32 200, %struct.dw_mipi_dsi_dphy_timing { i16 15, i16 33, i16 22, i16 40 } }, %struct.hstt { i32 220, %struct.dw_mipi_dsi_dphy_timing { i16 15, i16 33, i16 22, i16 40 } }, %struct.hstt { i32 240, %struct.dw_mipi_dsi_dphy_timing { i16 16, i16 36, i16 24, i16 44 } }, %struct.hstt { i32 250, %struct.dw_mipi_dsi_dphy_timing { i16 17, i16 38, i16 24, i16 48 } }, %struct.hstt { i32 270, %struct.dw_mipi_dsi_dphy_timing { i16 17, i16 38, i16 24, i16 48 } }, %struct.hstt { i32 300, %struct.dw_mipi_dsi_dphy_timing { i16 18, i16 41, i16 27, i16 50 } }, %struct.hstt { i32 330, %struct.dw_mipi_dsi_dphy_timing { i16 18, i16 45, i16 28, i16 56 } }, %struct.hstt { i32 360, %struct.dw_mipi_dsi_dphy_timing { i16 19, i16 48, i16 28, i16 59 } }, %struct.hstt { i32 400, %struct.dw_mipi_dsi_dphy_timing { i16 20, i16 50, i16 30, i16 61 } }, %struct.hstt { i32 450, %struct.dw_mipi_dsi_dphy_timing { i16 21, i16 55, i16 31, i16 67 } }, %struct.hstt { i32 500, %struct.dw_mipi_dsi_dphy_timing { i16 22, i16 59, i16 31, i16 73 } }, %struct.hstt { i32 550, %struct.dw_mipi_dsi_dphy_timing { i16 24, i16 63, i16 36, i16 79 } }, %struct.hstt { i32 600, %struct.dw_mipi_dsi_dphy_timing { i16 25, i16 68, i16 37, i16 83 } }, %struct.hstt { i32 650, %struct.dw_mipi_dsi_dphy_timing { i16 27, i16 73, i16 38, i16 90 } }, %struct.hstt { i32 700, %struct.dw_mipi_dsi_dphy_timing { i16 28, i16 77, i16 40, i16 95 } }, %struct.hstt { i32 750, %struct.dw_mipi_dsi_dphy_timing { i16 28, i16 84, i16 40, i16 102 } }, %struct.hstt { i32 800, %struct.dw_mipi_dsi_dphy_timing { i16 30, i16 87, i16 42, i16 106 } }, %struct.hstt { i32 850, %struct.dw_mipi_dsi_dphy_timing { i16 31, i16 93, i16 44, i16 113 } }, %struct.hstt { i32 900, %struct.dw_mipi_dsi_dphy_timing { i16 32, i16 98, i16 47, i16 118 } }, %struct.hstt { i32 950, %struct.dw_mipi_dsi_dphy_timing { i16 34, i16 102, i16 47, i16 124 } }, %struct.hstt { i32 1000, %struct.dw_mipi_dsi_dphy_timing { i16 35, i16 107, i16 49, i16 130 } }, %struct.hstt { i32 1050, %struct.dw_mipi_dsi_dphy_timing { i16 37, i16 111, i16 51, i16 135 } }, %struct.hstt { i32 1100, %struct.dw_mipi_dsi_dphy_timing { i16 38, i16 114, i16 51, i16 139 } }, %struct.hstt { i32 1150, %struct.dw_mipi_dsi_dphy_timing { i16 40, i16 120, i16 54, i16 146 } }, %struct.hstt { i32 1200, %struct.dw_mipi_dsi_dphy_timing { i16 41, i16 125, i16 57, i16 153 } }, %struct.hstt { i32 1250, %struct.dw_mipi_dsi_dphy_timing { i16 42, i16 130, i16 58, i16 158 } }, %struct.hstt { i32 1300, %struct.dw_mipi_dsi_dphy_timing { i16 44, i16 135, i16 58, i16 163 } }, %struct.hstt { i32 1350, %struct.dw_mipi_dsi_dphy_timing { i16 45, i16 140, i16 60, i16 168 } }, %struct.hstt { i32 1400, %struct.dw_mipi_dsi_dphy_timing { i16 47, i16 144, i16 64, i16 172 } }, %struct.hstt { i32 1450, %struct.dw_mipi_dsi_dphy_timing { i16 48, i16 148, i16 65, i16 176 } }, %struct.hstt { i32 1500, %struct.dw_mipi_dsi_dphy_timing { i16 50, i16 153, i16 66, i16 181 } }], [108 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* dsi controller already in use\0A\00", [57 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_rockchip_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @dw_mipi_dsi_rockchip_bind, ptr @dw_mipi_dsi_rockchip_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* Failed to register component: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clock-master\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* only one clock-master allowed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* no clock-master defined\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* could not get slaves data\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Failed to enable pllref_clk: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to enable grf_clk: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to create drm encoder\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"*ERROR* Failed to bind: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to initialize encoder with drm\0A\00", [57 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mipi_dsi_encoder_enable, ptr @dw_mipi_dsi_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c\00", [48 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_rockchip_dphy_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @dw_mipi_dsi_rockchip_dphy_bind, ptr @dw_mipi_dsi_rockchip_dphy_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lanes %d - data_rate_mbps %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to enable device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* Failed to enable pclk: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* Failed to enable phy_cfg_clk: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"*ERROR* hardware-specific phy bringup failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"*ERROR* hardware-specific phy shutdown failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@px30_chip_data = internal constant { [2 x %struct.rockchip_dw_dsi_chip_data], [40 x i8] } { [2 x %struct.rockchip_dw_dsi_chip_data] [%struct.rockchip_dw_dsi_chip_data { i32 -12255232, i32 1080, i32 65536, i32 65537, i32 0, i32 0, i32 1080, i32 132120576, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, i32 4 }, %struct.rockchip_dw_dsi_chip_data zeroinitializer], [40 x i8] zeroinitializer }, align 32
@rk3288_chip_data = internal constant { [3 x %struct.rockchip_dw_dsi_chip_data], [44 x i8] } { [3 x %struct.rockchip_dw_dsi_chip_data] [%struct.rockchip_dw_dsi_chip_data { i32 -6946816, i32 604, i32 4194304, i32 4194368, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, i32 4 }, %struct.rockchip_dw_dsi_chip_data { i32 -6930432, i32 604, i32 33554432, i32 33554944, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, i32 4 }, %struct.rockchip_dw_dsi_chip_data zeroinitializer], [44 x i8] zeroinitializer }, align 32
@rk3399_chip_data = internal constant { [3 x %struct.rockchip_dw_dsi_chip_data], [44 x i8] } { [3 x %struct.rockchip_dw_dsi_chip_data] [%struct.rockchip_dw_dsi_chip_data { i32 -6946816, i32 25168, i32 65536, i32 65537, i32 0, i32 0, i32 25176, i32 -65536, i32 0, i32 0, ptr null, ptr null, ptr null, i32 3, i32 4 }, %struct.rockchip_dw_dsi_chip_data { i32 -6914048, i32 25168, i32 1048576, i32 1048592, i32 25180, i32 983055, i32 25180, i32 -65536, i32 25184, i32 14680256, ptr @rk3399_dphy_tx1rx1_init, ptr @rk3399_dphy_tx1rx1_power_on, ptr @rk3399_dphy_tx1rx1_power_off, i32 3, i32 4 }, %struct.rockchip_dw_dsi_chip_data zeroinitializer], [44 x i8] zeroinitializer }, align 32
@switch.table.dw_mipi_dsi_get_lane_mbps = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1631, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [28 x i8] c"dw_mipi_dsi_rockchip_dt_ids\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1610, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"dw_mipi_dsi_rockchip_pm_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1313, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"dw_mipi_dsi_rockchip_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1625, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1335, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1350, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1355, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1358, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1362, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1365, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1369, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1379, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1387, i32 40 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1390, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1397, i32 36 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1400, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1405, i32 56 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1407, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [29 x i8] c"dw_mipi_dsi_rockchip_phy_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 707, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant [30 x i8] c"dw_mipi_dsi_rockchip_host_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1067, i32 42 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1419, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [21 x i8] c"dw_mipi_dsi_dphy_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1279, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1423, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1436, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 413, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 421, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [9 x i8] c"dppa_map\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 282, i32 44 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 512, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 547, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 560, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 623, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [11 x i8] c"hstt_table\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 647, i32 20 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1017, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [25 x i8] c"dw_mipi_dsi_rockchip_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1002, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1027, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 897, i32 7 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 902, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 907, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 919, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 934, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 946, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 958, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 964, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 812, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [33 x i8] c"dw_mipi_dsi_encoder_helper_funcs\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 796, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 756, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [30 x i8] c"dw_mipi_dsi_rockchip_dphy_ops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1092, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1181, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1193, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1199, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1211, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1219, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1268, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"px30_chip_data\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1453, i32 47 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"rk3288_chip_data\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1471, i32 47 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"rk3399_chip_data\00", align 1
@___asan_gen_.215 = private constant [51 x i8] c"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1560, i32 47 }
@___asan_gen_.217 = private unnamed_addr constant [39 x i8] c"switch.table.dw_mipi_dsi_get_lane_mbps\00", align 1
@llvm.compiler.used = appending global [59 x ptr] [ptr @.str, ptr @dw_mipi_dsi_rockchip_dt_ids, ptr @dw_mipi_dsi_rockchip_pm_ops, ptr @dw_mipi_dsi_rockchip_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @dw_mipi_dsi_rockchip_phy_ops, ptr @dw_mipi_dsi_rockchip_host_ops, ptr @dw_mipi_dsi_rockchip_probe.__key, ptr @.str.16, ptr @dw_mipi_dsi_dphy_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @dppa_map, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @hstt_table, ptr @.str.25, ptr @dw_mipi_dsi_rockchip_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @dw_mipi_dsi_encoder_helper_funcs, ptr @.str.36, ptr @dw_mipi_dsi_rockchip_dphy_ops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @px30_chip_data, ptr @rk3288_chip_data, ptr @rk3399_chip_data, ptr @switch.table.dw_mipi_dsi_get_lane_mbps], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_rockchip_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_rockchip_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_rockchip_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_rockchip_phy_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_rockchip_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_rockchip_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_dphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dppa_map to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hstt_table to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_rockchip_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_rockchip_dphy_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_chip_data to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_chip_data to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_chip_data to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dw_mipi_dsi_get_lane_mbps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 460, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #6
  %base = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not222 = icmp eq i32 %4, 0
  br i1 %tobool11.not222, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %5 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp228 = icmp eq i32 %4, %6
  br i1 %cmp228, label %while.body.lr.ph.if.then14_crit_edge, label %while.body.lr.ph.while.cond_crit_edge

while.body.lr.ph.while.cond_crit_edge:            ; preds = %while.body.lr.ph
  br label %while.cond

while.body.lr.ph.if.then14_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #6
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.body.lr.ph.while.cond_crit_edge
  %i.0223229 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %while.body.lr.ph.while.cond_crit_edge ]
  %inc = add i32 %i.0223229, 1
  %arrayidx = getelementptr %struct.rockchip_dw_dsi_chip_data, ptr %call, i32 %inc
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %cmp = icmp eq i32 %11, %6
  br i1 %cmp, label %while.body.if.then14_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.if.then14_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %while.body.if.then14_crit_edge, %while.body.lr.ph.if.then14_crit_edge
  %arrayidx224.lcssa = phi ptr [ %call, %while.body.lr.ph.if.then14_crit_edge ], [ %arrayidx, %while.body.if.then14_crit_edge ]
  %cdata16 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 21
  %12 = ptrtoint ptr %cdata16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx224.lcssa, ptr %cdata16, align 4
  br label %while.end

while.end:                                        ; preds = %if.then14, %while.cond.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %cdata18 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 21
  %13 = ptrtoint ptr %cdata18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdata18, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef %16) #6
  br label %cleanup

if.end21:                                         ; preds = %while.end
  %call22 = tail call ptr @devm_phy_optional_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #6
  %phy = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call22, ptr %phy, align 4
  %cmp.i211 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call22 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %18) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #6
  %pclk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call29, ptr %pclk, align 4
  %cmp.i212 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call29 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef %20) #6
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %call36 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #6
  %pllref_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call36, ptr %pllref_clk, align 4
  %cmp.i213 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then39, label %if.end35.if.end47_crit_edge

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then39:                                        ; preds = %if.end35
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %tobool41.not = icmp eq ptr %23, null
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %pllref_clk, align 4
  br label %if.end47

if.else:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call36 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef %25) #6
  br label %cleanup

if.end47:                                         ; preds = %if.then42, %if.end35.if.end47_crit_edge
  %26 = ptrtoint ptr %cdata18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cdata18, align 4
  %flags = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.end47.if.end58_crit_edge, label %if.then50

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then50:                                        ; preds = %if.end47
  %call51 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #6
  %phy_cfg_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %phy_cfg_clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call51, ptr %phy_cfg_clk, align 4
  %cmp.i214 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then54, label %if.then50.if.end58_crit_edge

if.then50.if.end58_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call51 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef %31) #6
  br label %cleanup

if.end58:                                         ; preds = %if.then50.if.end58_crit_edge, %if.end47.if.end58_crit_edge
  %32 = ptrtoint ptr %cdata18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cdata18, align 4
  %flags60 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags60, align 4
  %and61 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end58.if.end71_crit_edge, label %if.then63

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then63:                                        ; preds = %if.end58
  %call64 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.12) #6
  %grf_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %grf_clk to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call64, ptr %grf_clk, align 4
  %cmp.i215 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215, label %if.then67, label %if.then63.if.end71_crit_edge

if.then63.if.end71_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %call64 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, i32 noundef %37) #6
  br label %cleanup

if.end71:                                         ; preds = %if.then63.if.end71_crit_edge, %if.end58.if.end71_crit_edge
  %call72 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.14) #6
  %grf_regmap = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call72, ptr %grf_regmap, align 4
  %cmp.i216 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #6
  %39 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %grf_regmap, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev1, ptr %call.i, align 4
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %pdata = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 22
  %45 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %pdata, align 4
  %46 = ptrtoint ptr %cdata18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cdata18, align 4
  %max_data_lanes = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %max_data_lanes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_data_lanes, align 4
  %max_data_lanes84 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 22, i32 1
  %50 = ptrtoint ptr %max_data_lanes84 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %max_data_lanes84, align 4
  %phy_ops = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 22, i32 3
  %51 = ptrtoint ptr %phy_ops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @dw_mipi_dsi_rockchip_phy_ops, ptr %phy_ops, align 4
  %host_ops = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 22, i32 4
  %52 = ptrtoint ptr %host_ops to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @dw_mipi_dsi_rockchip_host_ops, ptr %host_ops, align 4
  %priv_data = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 22, i32 5
  %53 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %priv_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %usage_mutex = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %usage_mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @dw_mipi_dsi_rockchip_probe.__key) #6
  %call88 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @dw_mipi_dsi_dphy_ops) #6
  %dphy = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 14
  %55 = ptrtoint ptr %dphy to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call88, ptr %dphy, align 4
  %cmp.i217 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then91, label %if.end95

if.then91:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17) #6
  %56 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dphy, align 4
  %58 = ptrtoint ptr %57 to i32
  br label %cleanup

if.end95:                                         ; preds = %if.end78
  %driver_data.i.i218 = getelementptr inbounds %struct.device, ptr %call88, i32 0, i32 8
  %59 = ptrtoint ptr %driver_data.i.i218 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %driver_data.i.i218, align 4
  %call97 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i219 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then99, label %if.end101

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %call97 to i32
  br label %cleanup

if.end101:                                        ; preds = %if.end95
  %call103 = tail call ptr @dw_mipi_dsi_probe(ptr noundef %pdev, ptr noundef %pdata) #6
  %dmd = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %call.i, i32 0, i32 20
  %61 = ptrtoint ptr %dmd to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call103, ptr %dmd, align 4
  %cmp.i220 = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then106, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then106:                                       ; preds = %if.end101
  %cmp109.not = icmp eq ptr %call103, inttoptr (i32 -517 to ptr)
  br i1 %cmp109.not, label %if.then106.cleanup_crit_edge, label %if.then110

if.then106.cleanup_crit_edge:                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then110:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %call103 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18, i32 noundef %62) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %if.then106.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %if.then99, %if.then91, %if.then75, %if.then67, %if.then54, %if.else, %if.then32, %if.then25, %if.then20, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then7 ], [ %18, %if.then25 ], [ %20, %if.then32 ], [ %31, %if.then54 ], [ %37, %if.then67 ], [ %41, %if.then75 ], [ %58, %if.then91 ], [ %60, %if.then99 ], [ %25, %if.else ], [ -22, %if.then20 ], [ -12, %entry.cleanup_crit_edge ], [ %62, %if.then110 ], [ -517, %if.then106.cleanup_crit_edge ], [ 0, %if.end101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dmd = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %dmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmd, align 4
  tail call void @dw_mipi_dsi_remove(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_mipi_dsi_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_phy_init(ptr noundef readonly %priv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 10
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lane_mbps = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 16
  %2 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lane_mbps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %3)
  %cmp = icmp ult i32 %3, 200
  %add = add i32 %3, 100
  %div = udiv i32 %add, 200
  %4 = shl i32 %div, 27
  %5 = and i32 %4, 939524096
  %phi.cast = or i32 %5, -2097152000
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.06.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %i.06.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp2.not.i = icmp ult i32 %7, %3
  br i1 %cmp2.not.i, label %for.inc.i, label %if.end6

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 39
  br i1 %exitcond.not.i, label %if.then4, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then4:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv_data, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef %3) #6
  br label %cleanup

if.end6:                                          ; preds = %for.body.i
  %phy_cfg_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 7
  %10 = ptrtoint ptr %phy_cfg_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_cfg_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.if.then9_crit_edge

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end.i:                                         ; preds = %if.end6
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end11, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %if.then9

if.then9:                                         ; preds = %if.then3.i, %if.end6.if.then9_crit_edge
  %retval.0.i139.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end6.if.then9_crit_edge ]
  %12 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv_data, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %base.i.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 2
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %17, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 268435712) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %19, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 0) #6, !srcloc !124
  %conv1.i = select i1 %cmp, i32 -2097152000, i32 %phi.cast
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %21, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %conv1.i) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %23, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 33554432) #6, !srcloc !124
  %icpctrl = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %i.06.i, i32 2
  %24 = ptrtoint ptr %icpctrl to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %icpctrl, align 1
  %26 = and i8 %25, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i141 = getelementptr i8, ptr %28, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i141, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i142 = getelementptr i8, ptr %30, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i142, i32 285212928) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i143 = getelementptr i8, ptr %32, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i143, i32 0) #6, !srcloc !124
  %conv1.i144 = zext i8 %26 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %33 = shl nuw nsw i32 %conv1.i144, 24
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i145 = getelementptr i8, ptr %35, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i145, i32 %33) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i146 = getelementptr i8, ptr %37, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i146, i32 33554432) #6, !srcloc !124
  %lpfctrl = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %i.06.i, i32 3
  %38 = ptrtoint ptr %lpfctrl to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %lpfctrl, align 2
  %40 = or i8 %39, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i148 = getelementptr i8, ptr %42, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i148, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i149 = getelementptr i8, ptr %44, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i149, i32 301990144) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i150 = getelementptr i8, ptr %46, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i150, i32 0) #6, !srcloc !124
  %conv1.i151 = zext i8 %40 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %47 = shl nuw i32 %conv1.i151, 24
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i152 = getelementptr i8, ptr %49, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i152, i32 %47) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i153 = getelementptr i8, ptr %51, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i153, i32 33554432) #6, !srcloc !124
  %hsfreqrange = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %i.06.i, i32 1
  %52 = ptrtoint ptr %hsfreqrange to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hsfreqrange, align 4
  %54 = shl i8 %53, 1
  %55 = and i8 %54, 126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i155 = getelementptr i8, ptr %57, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i155, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i156 = getelementptr i8, ptr %59, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i156, i32 1140850944) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i157 = getelementptr i8, ptr %61, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i157, i32 0) #6, !srcloc !124
  %conv1.i158 = zext i8 %55 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %62 = shl nuw nsw i32 %conv1.i158, 24
  %63 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i159 = getelementptr i8, ptr %64, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i159, i32 %62) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i160 = getelementptr i8, ptr %66, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i160, i32 33554432) #6, !srcloc !124
  %input_div = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 17
  %67 = ptrtoint ptr %input_div to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %input_div, align 4
  %69 = add i16 %68, 127
  %70 = and i16 %69, 127
  %conv29 = zext i16 %70 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i162 = getelementptr i8, ptr %72, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i162, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %73 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i163 = getelementptr i8, ptr %74, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i163, i32 385876224) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %75 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i164 = getelementptr i8, ptr %76, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i164, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %77 = shl nuw nsw i32 %conv29, 24
  %78 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i166 = getelementptr i8, ptr %79, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i166, i32 %77) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i167 = getelementptr i8, ptr %81, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i167, i32 33554432) #6, !srcloc !124
  %feedback_div = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 18
  %82 = ptrtoint ptr %feedback_div to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %feedback_div, align 2
  %84 = add i16 %83, 31
  %85 = and i16 %84, 31
  %conv34 = zext i16 %85 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %86 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i169 = getelementptr i8, ptr %87, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i169, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i170 = getelementptr i8, ptr %89, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i170, i32 402653440) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i171 = getelementptr i8, ptr %91, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i171, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %92 = shl nuw nsw i32 %conv34, 24
  %93 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i173 = getelementptr i8, ptr %94, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i173, i32 %92) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %95 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i174 = getelementptr i8, ptr %96, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i174, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i176 = getelementptr i8, ptr %98, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i176, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %99 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i177 = getelementptr i8, ptr %100, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i177, i32 419430656) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %101 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i178 = getelementptr i8, ptr %102, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i178, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %103 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i179 = getelementptr i8, ptr %104, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i179, i32 805306368) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %105 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i180 = getelementptr i8, ptr %106, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i180, i32 33554432) #6, !srcloc !124
  %107 = ptrtoint ptr %feedback_div to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %feedback_div, align 2
  %conv36 = zext i16 %108 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %109 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i182 = getelementptr i8, ptr %110, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i182, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %111 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i183 = getelementptr i8, ptr %112, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i183, i32 402653440) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %113 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i184 = getelementptr i8, ptr %114, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i184, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %sub37 = shl i32 %conv36, 19
  %115 = add i32 %sub37, 267911168
  %conv40 = and i32 %115, 251658240
  %116 = or i32 %conv40, -2147483648
  %117 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i186 = getelementptr i8, ptr %118, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i186, i32 %116) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %119 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i187 = getelementptr i8, ptr %120, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i187, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %121 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i189 = getelementptr i8, ptr %122, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i189, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %123 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i190 = getelementptr i8, ptr %124, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i190, i32 419430656) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %125 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i191 = getelementptr i8, ptr %126, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i191, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %127 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i192 = getelementptr i8, ptr %128, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i192, i32 805306368) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %129 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i193 = getelementptr i8, ptr %130, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i193, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %131 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i195 = getelementptr i8, ptr %132, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i195, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %133 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i196 = getelementptr i8, ptr %134, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i196, i32 570425600) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %135 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i197 = getelementptr i8, ptr %136, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i197, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %137 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i198 = getelementptr i8, ptr %138, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i198, i32 117440512) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %139 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i199 = getelementptr i8, ptr %140, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i199, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %141 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i201 = getelementptr i8, ptr %142, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i201, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %143 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i202 = getelementptr i8, ptr %144, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i202, i32 570425600) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %145 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i203 = getelementptr i8, ptr %146, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i203, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %147 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i204 = getelementptr i8, ptr %148, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i204, i32 -2030043136) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %149 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i205 = getelementptr i8, ptr %150, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i205, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %151 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i207 = getelementptr i8, ptr %152, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i207, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %153 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i208 = getelementptr i8, ptr %154, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i208, i32 536871168) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %155 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i209 = getelementptr i8, ptr %156, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i209, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %157 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i210 = getelementptr i8, ptr %158, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i210, i32 1291845632) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %159 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i211 = getelementptr i8, ptr %160, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i211, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %161 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i213 = getelementptr i8, ptr %162, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i213, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %163 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i214 = getelementptr i8, ptr %164, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i214, i32 553648384) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %165 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i215 = getelementptr i8, ptr %166, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i215, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %167 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i216 = getelementptr i8, ptr %168, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i216, i32 1023410176) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %169 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i217 = getelementptr i8, ptr %170, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i217, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %171 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i219 = getelementptr i8, ptr %172, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i219, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %173 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i220 = getelementptr i8, ptr %174, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i220, i32 553648384) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %175 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i221 = getelementptr i8, ptr %176, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i221, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %177 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i222 = getelementptr i8, ptr %178, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i222, i32 -553648128) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %179 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i223 = getelementptr i8, ptr %180, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i223, i32 33554432) #6, !srcloc !124
  %181 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %lane_mbps, align 4
  %mul.i = mul i32 %182, 500
  %div2.i = lshr i32 %mul.i, 3
  %sub.i = add nuw nsw i32 %div2.i, 999
  %div1.i = udiv i32 %sub.i, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %183 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i225 = getelementptr i8, ptr %184, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i225, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %185 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i226 = getelementptr i8, ptr %186, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i226, i32 1610612992) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %187 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i227 = getelementptr i8, ptr %188, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i227, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %conv43 = shl i32 %div1.i, 24
  %189 = or i32 %conv43, -2147483648
  %190 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i229 = getelementptr i8, ptr %191, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i229, i32 %189) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %192 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i230 = getelementptr i8, ptr %193, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i230, i32 33554432) #6, !srcloc !124
  %194 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %lane_mbps, align 4
  %mul.i232 = mul i32 %195, 40
  %sub.i233 = add i32 %mul.i232, 999
  %div.i = udiv i32 %sub.i233, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %196 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i235 = getelementptr i8, ptr %197, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i235, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %198 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i236 = getelementptr i8, ptr %199, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i236, i32 1627390208) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %200 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i237 = getelementptr i8, ptr %201, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i237, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %conv46 = shl i32 %div.i, 24
  %202 = or i32 %conv46, -2147483648
  %203 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i239 = getelementptr i8, ptr %204, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i239, i32 %202) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %205 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i240 = getelementptr i8, ptr %206, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i240, i32 33554432) #6, !srcloc !124
  %207 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %lane_mbps, align 4
  %mul.i242 = mul i32 %208, 300
  %div2.i243 = lshr i32 %mul.i242, 3
  %sub.i244 = add nuw nsw i32 %div2.i243, 999
  %div1.i245 = udiv i32 %sub.i244, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %209 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i247 = getelementptr i8, ptr %210, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i247, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %211 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i248 = getelementptr i8, ptr %212, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i248, i32 1644167424) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %213 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i249 = getelementptr i8, ptr %214, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i249, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %conv49 = shl i32 %div1.i245, 24
  %215 = or i32 %conv49, 1073741824
  %216 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i251 = getelementptr i8, ptr %217, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i251, i32 %215) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %218 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i252 = getelementptr i8, ptr %219, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i252, i32 33554432) #6, !srcloc !124
  %220 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %lane_mbps, align 4
  %mul.i254 = mul i32 %221, 100
  %sub.i255 = add i32 %mul.i254, 999
  %div.i256 = udiv i32 %sub.i255, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %222 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i258 = getelementptr i8, ptr %223, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i258, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %224 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i259 = getelementptr i8, ptr %225, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i259, i32 1660944640) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %226 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i260 = getelementptr i8, ptr %227, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i260, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %conv52 = shl i32 %div.i256, 24
  %228 = or i32 %conv52, -2147483648
  %229 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i262 = getelementptr i8, ptr %230, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i262, i32 %228) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %231 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i263 = getelementptr i8, ptr %232, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i263, i32 33554432) #6, !srcloc !124
  %233 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %lane_mbps, align 4
  %mul.i265 = mul i32 %234, 100
  %div2.i266 = lshr i32 %mul.i265, 3
  %sub.i267 = add nuw nsw i32 %div2.i266, 999
  %div1.i268 = udiv i32 %sub.i267, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %235 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i270 = getelementptr i8, ptr %236, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i270, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %237 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i271 = getelementptr i8, ptr %238, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i271, i32 1677721856) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %239 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i272 = getelementptr i8, ptr %240, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i272, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %conv55 = shl i32 %div1.i268, 24
  %241 = or i32 %conv55, 536870912
  %242 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i274 = getelementptr i8, ptr %243, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i274, i32 %241) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %244 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i275 = getelementptr i8, ptr %245, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i275, i32 33554432) #6, !srcloc !124
  %246 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %lane_mbps, align 4
  %mul.i277 = mul i32 %247, 60
  %div2.i278 = lshr i32 %mul.i277, 3
  %sub.i279 = add nuw nsw i32 %div2.i278, 999
  %div1.i280 = udiv i32 %sub.i279, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %248 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i282 = getelementptr i8, ptr %249, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i282, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %250 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i283 = getelementptr i8, ptr %251, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i283, i32 1694499072) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %252 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i284 = getelementptr i8, ptr %253, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i284, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %254 = shl i32 %div1.i280, 24
  %conv59 = add i32 %254, 117440512
  %255 = or i32 %conv59, 536870912
  %256 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i286 = getelementptr i8, ptr %257, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i286, i32 %255) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %258 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i287 = getelementptr i8, ptr %259, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i287, i32 33554432) #6, !srcloc !124
  %260 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %lane_mbps, align 4
  %mul.i289 = mul i32 %261, 500
  %div2.i290 = lshr i32 %mul.i289, 3
  %sub.i291 = add nuw nsw i32 %div2.i290, 999
  %div1.i292 = udiv i32 %sub.i291, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %262 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i294 = getelementptr i8, ptr %263, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i294, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %264 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i295 = getelementptr i8, ptr %265, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i295, i32 1879048448) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %266 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i296 = getelementptr i8, ptr %267, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i296, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %conv62 = shl i32 %div1.i292, 24
  %268 = or i32 %conv62, -2147483648
  %269 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i298 = getelementptr i8, ptr %270, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i298, i32 %268) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %271 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i299 = getelementptr i8, ptr %272, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i299, i32 33554432) #6, !srcloc !124
  %273 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %lane_mbps, align 4
  %mul.i301 = mul i32 %274, 50
  %sub.i302 = add i32 %mul.i301, 999
  %div.i303 = udiv i32 %sub.i302, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %275 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i305 = getelementptr i8, ptr %276, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i305, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %277 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i306 = getelementptr i8, ptr %278, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i306, i32 1895825664) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %279 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i307 = getelementptr i8, ptr %280, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i307, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %281 = shl i32 %div.i303, 24
  %conv66 = add i32 %281, 335544320
  %282 = or i32 %conv66, -2147483648
  %283 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i309 = getelementptr i8, ptr %284, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i309, i32 %282) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %285 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i310 = getelementptr i8, ptr %286, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i310, i32 33554432) #6, !srcloc !124
  %287 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %lane_mbps, align 4
  %mul.i312 = mul i32 %288, 140
  %div2.i313 = lshr i32 %mul.i312, 3
  %sub.i314 = add nuw nsw i32 %div2.i313, 999
  %div1.i315 = udiv i32 %sub.i314, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %289 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i317 = getelementptr i8, ptr %290, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i317, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %291 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i318 = getelementptr i8, ptr %292, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i318, i32 1912602880) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %293 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i319 = getelementptr i8, ptr %294, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i319, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %295 = shl i32 %div1.i315, 24
  %conv70 = add i32 %295, 33554432
  %296 = or i32 %conv70, 1073741824
  %297 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i321 = getelementptr i8, ptr %298, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i321, i32 %296) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %299 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i322 = getelementptr i8, ptr %300, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i322, i32 33554432) #6, !srcloc !124
  %301 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %lane_mbps, align 4
  %mul.i324 = mul i32 %302, 60
  %sub.i325 = add i32 %mul.i324, 999
  %div.i326 = udiv i32 %sub.i325, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %303 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i328 = getelementptr i8, ptr %304, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i328, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %305 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i329 = getelementptr i8, ptr %306, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i329, i32 1929380096) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %307 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i330 = getelementptr i8, ptr %308, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i330, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %309 = shl i32 %div.i326, 24
  %conv74 = add i32 %309, 134217728
  %310 = or i32 %conv74, -2147483648
  %311 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i332 = getelementptr i8, ptr %312, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i332, i32 %310) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %313 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i333 = getelementptr i8, ptr %314, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i333, i32 33554432) #6, !srcloc !124
  %315 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %lane_mbps, align 4
  %mul.i335 = mul i32 %316, 100
  %div2.i336 = lshr i32 %mul.i335, 3
  %sub.i337 = add nuw nsw i32 %div2.i336, 999
  %div1.i338 = udiv i32 %sub.i337, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %317 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i340 = getelementptr i8, ptr %318, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i340, i32 33554432) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %319 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i341 = getelementptr i8, ptr %320, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i341, i32 1946157312) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %321 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i342 = getelementptr i8, ptr %322, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i342, i32 0) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %conv77 = shl i32 %div1.i338, 24
  %323 = or i32 %conv77, 536870912
  %324 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14.i344 = getelementptr i8, ptr %325, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i344, i32 %323) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %326 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i345 = getelementptr i8, ptr %327, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i345, i32 33554432) #6, !srcloc !124
  %328 = ptrtoint ptr %phy_cfg_clk to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %phy_cfg_clk, align 4
  tail call void @clk_disable(ptr noundef %329) #6
  tail call void @clk_unprepare(ptr noundef %329) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ %retval.0.i139.ph, %if.then9 ], [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_phy_power_on(ptr noundef %priv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 10
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 @phy_set_mode_ext(ptr noundef %1, i32 noundef 16, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_data, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %phy_opts = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 11
  %call2 = tail call i32 @phy_configure(ptr noundef %5, ptr noundef %phy_opts) #6
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call4 = tail call i32 @phy_power_on(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_phy_power_off(ptr nocapture noundef readonly %priv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 10
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_get_lane_mbps(ptr noundef %priv_data, ptr nocapture noundef readonly %mode, i32 noundef %mode_flags, i32 noundef %lanes, i32 noundef %format, ptr nocapture noundef writeonly %lane_mbps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 19
  %0 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %format, ptr %format1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %format)
  %1 = icmp ult i32 %format, 4
  br i1 %1, label %switch.lookup, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_data, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22, i32 noundef %format) #6
  br label %cleanup496

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dw_mipi_dsi_get_lane_mbps, i32 0, i32 %format
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %sub.off = add i32 %6, 1998
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %sub.off)
  %7 = icmp ult i32 %sub.off, 1999
  br i1 %7, label %switch.lookup.if.end12_crit_edge, label %if.then4

switch.lookup.if.end12_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then4:                                         ; preds = %switch.lookup
  %sub = add nuw i32 %6, 999
  %div = sdiv i32 %sub, 1000
  %div5 = udiv i32 %switch.load, %lanes
  %mul = mul nsw i32 %div, 10
  %mul6 = mul nsw i32 %mul, %div5
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %mul6)
  %cmp8 = icmp ult i32 %mul6, 12000
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %div7715 = lshr i32 %mul6, 3
  br label %if.end12

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv_data, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #6
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9, %switch.lookup.if.end12_crit_edge
  %target_mbps.0 = phi i32 [ %div7715, %if.then9 ], [ 1000, %if.else ], [ 1000, %switch.lookup.if.end12_crit_edge ]
  %phy = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 10
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end22, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %mul17 = mul i32 %13, 10000
  %div18 = sdiv i32 %mul17, 8
  %phy_opts = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 11
  %call19 = tail call i32 @phy_mipi_dphy_get_default_config(i32 noundef %div18, i32 noundef %switch.load, i32 noundef %lanes, ptr noundef %phy_opts) #6
  %lane_mbps20 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 16
  %14 = ptrtoint ptr %lane_mbps20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %target_mbps.0, ptr %lane_mbps20, align 4
  %15 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %target_mbps.0, ptr %lane_mbps, align 4
  br label %cleanup496

if.end22:                                         ; preds = %if.end12
  %pllref_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 5
  %16 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pllref_clk, align 4
  %call23 = tail call i32 @clk_get_rate(ptr noundef %17) #6
  %sub26 = add i32 %call23, 39999999
  %div27 = udiv i32 %sub26, 40000000
  %div28 = udiv i32 %call23, 5000000
  call void @__sanitizer_cov_trace_cmp4(i32 %div27, i32 %div28)
  %cmp29.not800 = icmp ugt i32 %div27, %div28
  br i1 %cmp29.not800, label %if.end22.if.else493_crit_edge, label %for.body.lr.ph

if.end22.if.else493_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else493

for.body.lr.ph:                                   ; preds = %if.end22
  %mul24 = mul nuw nsw i32 %target_mbps.0, 1000000
  %conv = zext i32 %mul24 to i64
  %conv68 = zext i32 %call23 to i64
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %min_delta.0807 = phi i32 [ -1, %for.body.lr.ph ], [ %min_delta.2, %cleanup.for.body_crit_edge ]
  %best_fbdiv.0806 = phi i32 [ -1, %for.body.lr.ph ], [ %best_fbdiv.2, %cleanup.for.body_crit_edge ]
  %best_prediv.0805 = phi i32 [ -1, %for.body.lr.ph ], [ %best_prediv.2, %cleanup.for.body_crit_edge ]
  %_prediv.0802 = phi i32 [ %div27, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %best_freq.0801 = phi i32 [ 0, %for.body.lr.ph ], [ %best_freq.2, %cleanup.for.body_crit_edge ]
  %conv31 = zext i32 %_prediv.0802 to i64
  %mul32 = mul nuw nsw i64 %conv31, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul32)
  %cmp209 = icmp ult i64 %mul32, 4294967296
  br i1 %cmp209, label %if.then213, label %if.else219, !prof !125

if.then213:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv214 = trunc i64 %mul32 to i32
  %div217 = udiv i32 %conv214, %call23
  br label %if.end223

if.else219:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call23, i64 %mul32) #9, !srcloc !126
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  %extract.t798 = trunc i64 %asmresult1.i to i32
  br label %if.end223

if.end223:                                        ; preds = %if.else219, %if.then213
  %tmp30.0.off0 = phi i32 [ %div217, %if.then213 ], [ %extract.t798, %if.else219 ]
  %19 = add i32 %tmp30.0.off0, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -507, i32 %19)
  %20 = icmp ult i32 %19, -507
  br i1 %20, label %if.end223.cleanup_crit_edge, label %if.end231

if.end223.cleanup_crit_edge:                      ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end231:                                        ; preds = %if.end223
  %rem232 = and i32 %tmp30.0.off0, 1
  %add233 = add nuw nsw i32 %rem232, %tmp30.0.off0
  %conv234 = zext i32 %add233 to i64
  %mul236 = mul nuw nsw i64 %conv234, %conv68
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul236)
  %cmp438 = icmp ult i64 %mul236, 4294967296
  br i1 %cmp438, label %if.then446, label %if.else452, !prof !125

if.then446:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  %conv447 = trunc i64 %mul236 to i32
  %div450 = udiv i32 %conv447, %_prediv.0802
  %conv451 = zext i32 %div450 to i64
  br label %if.end456

if.else452:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %_prediv.0802, i64 %mul236) #9, !srcloc !126
  %asmresult1.i742 = extractvalue { i64, i64 } %21, 1
  br label %if.end456

if.end456:                                        ; preds = %if.else452, %if.then446
  %tmp30.1 = phi i64 [ %conv451, %if.then446 ], [ %asmresult1.i742, %if.else452 ]
  %22 = add i64 %tmp30.1, -1500000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1420000001, i64 %22)
  %23 = icmp ult i64 %22, -1420000001
  br i1 %23, label %if.end456.cleanup_crit_edge, label %if.end466

if.end456.cleanup_crit_edge:                      ; preds = %if.end456
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end466:                                        ; preds = %if.end456
  %sub468 = sub nsw i64 %conv, %tmp30.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub468)
  %cmp470 = icmp slt i64 %sub468, 0
  %24 = trunc i64 %sub468 to i32
  %extract.t = sub i32 0, %24
  %cond476.off0 = select i1 %cmp470, i32 %extract.t, i32 %24
  call void @__sanitizer_cov_trace_cmp4(i32 %cond476.off0, i32 %min_delta.0807)
  %cmp478 = icmp ult i32 %cond476.off0, %min_delta.0807
  br i1 %cmp478, label %if.then480, label %if.end466.cleanup_crit_edge

if.end466.cleanup_crit_edge:                      ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then480:                                       ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #8
  %conv481 = trunc i64 %tmp30.1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then480, %if.end466.cleanup_crit_edge, %if.end456.cleanup_crit_edge, %if.end223.cleanup_crit_edge
  %best_freq.2 = phi i32 [ %best_freq.0801, %if.end223.cleanup_crit_edge ], [ %best_freq.0801, %if.end456.cleanup_crit_edge ], [ %conv481, %if.then480 ], [ %best_freq.0801, %if.end466.cleanup_crit_edge ]
  %best_prediv.2 = phi i32 [ %best_prediv.0805, %if.end223.cleanup_crit_edge ], [ %best_prediv.0805, %if.end456.cleanup_crit_edge ], [ %_prediv.0802, %if.then480 ], [ %best_prediv.0805, %if.end466.cleanup_crit_edge ]
  %best_fbdiv.2 = phi i32 [ %best_fbdiv.0806, %if.end223.cleanup_crit_edge ], [ %best_fbdiv.0806, %if.end456.cleanup_crit_edge ], [ %add233, %if.then480 ], [ %best_fbdiv.0806, %if.end466.cleanup_crit_edge ]
  %min_delta.2 = phi i32 [ %min_delta.0807, %if.end223.cleanup_crit_edge ], [ %min_delta.0807, %if.end456.cleanup_crit_edge ], [ %cond476.off0, %if.then480 ], [ %min_delta.0807, %if.end466.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %_prediv.0802, 1
  %exitcond = icmp eq i32 %_prediv.0802, %div28
  br i1 %exitcond, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_freq.2)
  %tobool484.not = icmp eq i32 %best_freq.2, 0
  br i1 %tobool484.not, label %for.end.if.else493_crit_edge, label %if.then485

for.end.if.else493_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else493

if.then485:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub487 = add i32 %best_freq.2, 999999
  %div488 = udiv i32 %sub487, 1000000
  %lane_mbps489 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 16
  %25 = ptrtoint ptr %lane_mbps489 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div488, ptr %lane_mbps489, align 4
  %26 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div488, ptr %lane_mbps, align 4
  %conv491 = trunc i32 %best_prediv.2 to i16
  %input_div = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 17
  %27 = ptrtoint ptr %input_div to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv491, ptr %input_div, align 4
  %conv492 = trunc i32 %best_fbdiv.2 to i16
  %feedback_div = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 18
  %28 = ptrtoint ptr %feedback_div to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv492, ptr %feedback_div, align 2
  br label %cleanup496

if.else493:                                       ; preds = %for.end.if.else493_crit_edge, %if.end22.if.else493_crit_edge
  %29 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv_data, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %30, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #6
  br label %cleanup496

cleanup496:                                       ; preds = %if.else493, %if.then485, %if.then14, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then14 ], [ 0, %if.then485 ], [ -22, %if.else493 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @dw_mipi_dsi_phy_get_timing(ptr nocapture noundef readnone %priv_data, i32 noundef %lane_mbps, ptr nocapture noundef writeonly %timing) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [39 x %struct.hstt], ptr @hstt_table, i32 0, i32 %i.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lane_mbps)
  %cmp1 = icmp ugt i32 %1, %lane_mbps
  br i1 %cmp1, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 39
  br i1 %exitcond.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %i.012)
  %cmp2 = icmp eq i32 %i.012, 39
  br i1 %cmp2, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %2

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %for.inc.for.end.thread_crit_edge
  br label %2

2:                                                ; preds = %for.end.thread, %for.end._crit_edge
  %3 = phi i32 [ 38, %for.end.thread ], [ %i.012, %for.end._crit_edge ]
  %timing6 = getelementptr [39 x %struct.hstt], ptr @hstt_table, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %timing6 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %timing6, align 4
  %6 = ptrtoint ptr %timing to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %timing, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mipi_dsi_phy_write(ptr nocapture noundef readonly %dsi, i8 noundef zeroext %test_code, i8 noundef zeroext %test_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %dsi, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #6, !srcloc !124
  %conv = zext i8 %test_code to i32
  %or = or i32 %conv, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %4, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %2) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %6, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #6, !srcloc !124
  %conv1 = zext i8 %test_data to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %7 = shl nuw i32 %conv1, 24
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %7) #6, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 33554432) #6, !srcloc !124
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_get_default_config(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_host_attach(ptr noundef %priv_data, ptr nocapture noundef readnone %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usage_mutex = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %usage_mutex, i32 noundef 0) #6
  %usage_mode = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 12
  %0 = ptrtoint ptr %usage_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_data, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #6
  tail call void @mutex_unlock(ptr noundef %usage_mutex) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %usage_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %usage_mode, align 4
  tail call void @mutex_unlock(ptr noundef %usage_mutex) #6
  %5 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv_data, align 4
  %call = tail call i32 @component_add(ptr noundef %6, ptr noundef nonnull @dw_mipi_dsi_rockchip_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv_data, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26, i32 noundef %call) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call fastcc ptr @dw_mipi_dsi_rockchip_find_second(ptr noundef %priv_data)
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %tobool13.not = icmp eq ptr %call8, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @component_add(ptr noundef nonnull %call8, ptr noundef nonnull @dw_mipi_dsi_rockchip_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.cleanup_crit_edge, label %if.then17

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef nonnull %call8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26, i32 noundef %call15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.then14.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then10, %if.then5, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %call, %if.then5 ], [ %9, %if.then10 ], [ %call15, %if.then17 ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_host_detach(ptr noundef %priv_data, ptr nocapture noundef readnone %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dw_mipi_dsi_rockchip_find_second(ptr noundef %priv_data)
  %tobool.not = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @component_del(ptr noundef nonnull %call, ptr noundef nonnull @dw_mipi_dsi_rockchip_ops) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  tail call void @component_del(ptr noundef %1, ptr noundef nonnull @dw_mipi_dsi_rockchip_ops) #6
  %usage_mutex = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %usage_mutex, i32 noundef 0) #6
  %usage_mode = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %priv_data, i32 0, i32 12
  %2 = ptrtoint ptr %usage_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usage_mode, align 4
  tail call void @mutex_unlock(ptr noundef %usage_mutex) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dw_mipi_dsi_rockchip_find_second(ptr nocapture noundef readonly %dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %driver = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_match_table, align 4
  %call = tail call ptr @of_match_device(ptr noundef %5, ptr noundef %1) #6
  %6 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsi, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @of_graph_get_remote_node(ptr noundef %9, i32 noundef 1, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup30_crit_edge, label %while.cond.preheader

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

while.cond.preheader:                             ; preds = %entry
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 2
  %call452 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %compatible) #6
  %tobool5.not53 = icmp eq ptr %call452, null
  br i1 %tobool5.not53, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %cleanup29.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call454 = phi ptr [ %call4, %cleanup29.while.body_crit_edge ], [ %call452, %while.cond.preheader.while.body_crit_edge ]
  %10 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsi, align 4
  %of_node7 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node7, align 8
  %cmp = icmp eq ptr %call454, %13
  br i1 %cmp, label %while.body.cleanup29_crit_edge, label %if.end9

while.body.cleanup29_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

if.end9:                                          ; preds = %while.body
  %call10 = tail call ptr @of_graph_get_remote_node(ptr noundef nonnull %call454, i32 noundef 1, i32 noundef 0) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup29_crit_edge, label %if.end13

if.end9.cleanup29_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

if.end13:                                         ; preds = %if.end9
  %cmp14 = icmp eq ptr %call10, %call3
  br i1 %cmp14, label %if.then15, label %if.end28

if.then15:                                        ; preds = %if.end13
  %call16 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call454) #6
  tail call void @of_node_put(ptr noundef nonnull %call3) #6
  tail call void @of_node_put(ptr noundef nonnull %call454) #6
  tail call void @of_node_put(ptr noundef nonnull %call3) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then15.cleanup30_crit_edge, label %if.end20

if.then15.cleanup30_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

if.end20:                                         ; preds = %if.then15
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call16, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_device_put(ptr noundef nonnull %call16) #6
  br label %cleanup30

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %call16, i32 0, i32 3
  br label %cleanup30

if.end28:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %call10) #6
  br label %cleanup29

cleanup29:                                        ; preds = %if.end28, %if.end9.cleanup29_crit_edge, %while.body.cleanup29_crit_edge
  %call4 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %call454, ptr noundef null, ptr noundef %compatible) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %cleanup29.while.end_crit_edge, label %cleanup29.while.body_crit_edge

cleanup29.while.body_crit_edge:                   ; preds = %cleanup29
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup29.while.end_crit_edge:                    ; preds = %cleanup29
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cleanup29.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call3) #6
  br label %cleanup30

cleanup30:                                        ; preds = %while.end, %if.end25, %if.then23, %if.then15.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.3 = phi ptr [ null, %while.end ], [ null, %entry.cleanup30_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.then15.cleanup30_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.then23 ], [ %dev26, %if.end25 ]
  ret ptr %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc ptr @dw_mipi_dsi_rockchip_find_second(ptr noundef %1)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.if.end33_crit_edge, label %if.then4

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then4:                                         ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.27, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i, null
  %of_node7 = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 27
  %7 = ptrtoint ptr %of_node7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node7, align 8
  %call.i131 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.27, ptr noundef null) #6
  %tobool.i132 = icmp ne ptr %call.i131, null
  %9 = select i1 %tobool.i, i1 %tobool.i132, i1 false
  br i1 %9, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.28) #6
  br label %cleanup

if.end14:                                         ; preds = %if.then4
  %brmerge130 = select i1 %tobool.i, i1 true, i1 %tobool.i132
  br i1 %brmerge130, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  br i1 %tobool.i, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %is_slave = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %is_slave to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_slave, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %driver_data.i133 = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i133 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i133, align 4
  %slave = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %slave, align 4
  %tobool26.not = icmp eq ptr %16, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %is_slave30 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %16, i32 0, i32 8
  %18 = ptrtoint ptr %is_slave30 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %is_slave30, align 4
  %dmd = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %dmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dmd, align 4
  %21 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave, align 4
  %dmd32 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %dmd32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dmd32, align 4
  tail call void @dw_mipi_dsi_set_slave(ptr noundef %20, ptr noundef %24) #6
  tail call void @put_device(ptr noundef nonnull %call1) #6
  br label %if.end33

if.end33:                                         ; preds = %if.end28, %if.end.if.end33_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i134 = tail call i32 @__pm_runtime_resume(ptr noundef %26, i32 noundef 4) #6
  %slave36 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %slave36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slave36, align 4
  %tobool37.not = icmp eq ptr %28, null
  br i1 %tobool37.not, label %if.end33.if.end42_crit_edge, label %if.then38

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call.i135 = tail call i32 @__pm_runtime_resume(ptr noundef %30, i32 noundef 4) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end33.if.end42_crit_edge
  %pllref_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pllref_clk, align 4
  %call.i136 = tail call i32 @clk_prepare(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool.not.i = icmp eq i32 %call.i136, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end42.if.then45_crit_edge

if.end42.if.then45_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.end.i:                                         ; preds = %if.end42
  %call1.i = tail call i32 @clk_enable(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end46, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %32) #6
  br label %if.then45

if.then45:                                        ; preds = %if.then3.i, %if.end42.if.then45_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i136, %if.end42.if.then45_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31, i32 noundef %retval.0.i.ph) #6
  br label %out_pm_runtime

if.end46:                                         ; preds = %if.end.i
  %grf_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %grf_clk, align 4
  %call.i137 = tail call i32 @clk_prepare(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i138 = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i138, label %if.end.i141, label %if.end46.if.then49_crit_edge

if.end46.if.then49_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.end.i141:                                      ; preds = %if.end46
  %call1.i139 = tail call i32 @clk_enable(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i139)
  %tobool2.not.i140 = icmp eq i32 %call1.i139, 0
  br i1 %tobool2.not.i140, label %if.end51, label %if.then3.i142

if.then3.i142:                                    ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %34) #6
  br label %if.then49

if.then49:                                        ; preds = %if.then3.i142, %if.end46.if.then49_crit_edge
  %retval.0.i143.ph = phi i32 [ %call1.i139, %if.then3.i142 ], [ %call.i137, %if.end46.if.then49_crit_edge ]
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i143.ph) #6
  br label %out_pll_clk

if.end51:                                         ; preds = %if.end.i141
  %cdata.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 21
  %37 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cdata.i, align 4
  %lanecfg1_grf_reg.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %lanecfg1_grf_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lanecfg1_grf_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i145 = icmp eq i32 %40, 0
  br i1 %tobool.not.i145, label %if.end51.if.end.i147_crit_edge, label %if.then.i

if.end51.if.end.i147_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i147

if.then.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %grf_regmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %grf_regmap.i, align 4
  %lanecfg1.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %38, i32 0, i32 7
  %43 = ptrtoint ptr %lanecfg1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lanecfg1.i, align 4
  %call.i146 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %40, i32 noundef %44) #6
  br label %if.end.i147

if.end.i147:                                      ; preds = %if.then.i, %if.end51.if.end.i147_crit_edge
  %45 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cdata.i, align 4
  %lanecfg2_grf_reg.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %lanecfg2_grf_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lanecfg2_grf_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool5.not.i = icmp eq i32 %48, 0
  br i1 %tobool5.not.i, label %if.end.i147.if.end12.i_crit_edge, label %if.then6.i

if.end.i147.if.end12.i_crit_edge:                 ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then6.i:                                       ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap7.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %grf_regmap7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %grf_regmap7.i, align 4
  %lanecfg2.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %46, i32 0, i32 9
  %51 = ptrtoint ptr %lanecfg2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lanecfg2.i, align 4
  %call11.i = tail call i32 @regmap_write(ptr noundef %50, i32 noundef %48, i32 noundef %52) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then6.i, %if.end.i147.if.end12.i_crit_edge
  %53 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cdata.i, align 4
  %enable_grf_reg.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %enable_grf_reg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %enable_grf_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool14.not.i = icmp eq i32 %56, 0
  br i1 %tobool14.not.i, label %if.end12.i.dw_mipi_dsi_rockchip_config.exit_crit_edge, label %if.then15.i

if.end12.i.dw_mipi_dsi_rockchip_config.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dw_mipi_dsi_rockchip_config.exit

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap16.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %grf_regmap16.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %grf_regmap16.i, align 4
  %enable.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %54, i32 0, i32 5
  %59 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %enable.i, align 4
  %call20.i = tail call i32 @regmap_write(ptr noundef %58, i32 noundef %56, i32 noundef %60) #6
  br label %dw_mipi_dsi_rockchip_config.exit

dw_mipi_dsi_rockchip_config.exit:                 ; preds = %if.then15.i, %if.end12.i.dw_mipi_dsi_rockchip_config.exit_crit_edge
  %61 = ptrtoint ptr %slave36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %slave36, align 4
  %tobool53.not = icmp eq ptr %62, null
  br i1 %tobool53.not, label %dw_mipi_dsi_rockchip_config.exit.if.end56_crit_edge, label %if.then54

dw_mipi_dsi_rockchip_config.exit.if.end56_crit_edge: ; preds = %dw_mipi_dsi_rockchip_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then54:                                        ; preds = %dw_mipi_dsi_rockchip_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dw_mipi_dsi_rockchip_config(ptr noundef nonnull %62)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %dw_mipi_dsi_rockchip_config.exit.if.end56_crit_edge
  %63 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %grf_clk, align 4
  tail call void @clk_disable(ptr noundef %64) #6
  tail call void @clk_unprepare(ptr noundef %64) #6
  %encoder1.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 27
  %67 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %of_node.i, align 8
  %call.i148 = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %data, ptr noundef %68) #6
  %possible_crtcs.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 1, i32 6
  %69 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call.i148, ptr %possible_crtcs.i, align 4
  %call2.i = tail call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %encoder1.i, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i149 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i149, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #6
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33) #6
  br label %out_pll_clk

if.end61:                                         ; preds = %if.end56
  %helper_private.i.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 1, i32 11
  %70 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @dw_mipi_dsi_encoder_helper_funcs, ptr %helper_private.i.i, align 4
  %dmd62 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 20
  %71 = ptrtoint ptr %dmd62 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dmd62, align 4
  %call63 = tail call i32 @dw_mipi_dsi_bind(ptr noundef %72, ptr noundef %encoder1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.34, i32 noundef %call63) #6
  br label %out_pll_clk

if.end66:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %dsi_bound = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 23
  %73 = ptrtoint ptr %dsi_bound to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %dsi_bound, align 4
  br label %cleanup

out_pll_clk:                                      ; preds = %if.then65, %if.then60, %if.then49
  %ret.0 = phi i32 [ %retval.0.i143.ph, %if.then49 ], [ %call2.i, %if.then60 ], [ %call63, %if.then65 ]
  %74 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pllref_clk, align 4
  tail call void @clk_disable(ptr noundef %75) #6
  tail call void @clk_unprepare(ptr noundef %75) #6
  br label %out_pm_runtime

out_pm_runtime:                                   ; preds = %out_pll_clk, %if.then45
  %ret.1 = phi i32 [ %retval.0.i.ph, %if.then45 ], [ %ret.0, %out_pll_clk ]
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %call.i152 = tail call i32 @__pm_runtime_idle(ptr noundef %77, i32 noundef 5) #6
  %78 = ptrtoint ptr %slave36 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %slave36, align 4
  %tobool71.not = icmp eq ptr %79, null
  br i1 %tobool71.not, label %out_pm_runtime.cleanup_crit_edge, label %if.then72

out_pm_runtime.cleanup_crit_edge:                 ; preds = %out_pm_runtime
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then72:                                        ; preds = %out_pm_runtime
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %call.i153 = tail call i32 @__pm_runtime_idle(ptr noundef %81, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %out_pm_runtime.cleanup_crit_edge, %if.end66, %if.then27, %if.then22, %if.then18, %if.then12, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ -22, %if.then12 ], [ 0, %if.end66 ], [ -19, %if.then27 ], [ 0, %if.then22 ], [ -22, %if.then18 ], [ %ret.1, %if.then72 ], [ %ret.1, %out_pm_runtime.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_rockchip_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %is_slave = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %is_slave to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_slave, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsi_bound = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %dsi_bound to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %dsi_bound, align 4
  %dmd = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %dmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dmd, align 4
  tail call void @dw_mipi_dsi_unbind(ptr noundef %6) #6
  %pllref_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pllref_clk, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  tail call void @clk_unprepare(ptr noundef %8) #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #6
  %slave = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slave, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call.i15 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_mipi_dsi_set_slave(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mipi_dsi_rockchip_config(ptr nocapture noundef readonly %dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cdata = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %dsi, i32 0, i32 21
  %0 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdata, align 4
  %lanecfg1_grf_reg = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %lanecfg1_grf_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lanecfg1_grf_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %dsi, i32 0, i32 3
  %4 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf_regmap, align 4
  %lanecfg1 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %lanecfg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lanecfg1, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %3, i32 noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdata, align 4
  %lanecfg2_grf_reg = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %lanecfg2_grf_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lanecfg2_grf_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap7 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %dsi, i32 0, i32 3
  %12 = ptrtoint ptr %grf_regmap7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %grf_regmap7, align 4
  %lanecfg2 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %9, i32 0, i32 9
  %14 = ptrtoint ptr %lanecfg2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lanecfg2, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %11, i32 noundef %15) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  %16 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cdata, align 4
  %enable_grf_reg = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %enable_grf_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enable_grf_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %if.then15

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap16 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %dsi, i32 0, i32 3
  %20 = ptrtoint ptr %grf_regmap16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %grf_regmap16, align 4
  %enable = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enable, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %19, i32 noundef %23) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end12.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mipi_dsi_bind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  %endpoint.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %encoder, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i) #6
  %4 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %endpoint.i, align 4, !annotation !128
  %5 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !128
  %7 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !128
  %call.i = call i32 @drm_of_encoder_active_endpoint(ptr noundef %3, ptr noundef %encoder, ptr noundef nonnull %endpoint.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.drm_of_encoder_active_endpoint_id.exit_crit_edge

entry.drm_of_encoder_active_endpoint_id.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_of_encoder_active_endpoint_id.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 4
  br label %drm_of_encoder_active_endpoint_id.exit

drm_of_encoder_active_endpoint_id.exit:           ; preds = %cond.false.i, %entry.drm_of_encoder_active_endpoint_id.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.false.i ], [ %call.i, %entry.drm_of_encoder_active_endpoint_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp = icmp slt i32 %cond.i, 0
  br i1 %cmp, label %drm_of_encoder_active_endpoint_id.exit.cleanup_crit_edge, label %if.end

drm_of_encoder_active_endpoint_id.exit.cleanup_crit_edge: ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %drm_of_encoder_active_endpoint_id.exit
  %grf_clk = getelementptr i8, ptr %encoder, i32 88
  %11 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %grf_clk, align 4
  %call.i23 = call i32 @clk_prepare(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %if.end.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @clk_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %12) #6
  br label %if.then3

if.then3:                                         ; preds = %if.then3.i, %if.end.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i23, %if.end.if.then3_crit_edge ]
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i.ph) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %grf_regmap.i = getelementptr i8, ptr %encoder, i32 76
  %15 = ptrtoint ptr %grf_regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %grf_regmap.i, align 4
  %cdata.i = getelementptr i8, ptr %encoder, i32 424
  %17 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cdata.i, align 4
  %lcdsel_grf_reg.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %lcdsel_grf_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lcdsel_grf_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not.i25 = icmp eq i32 %cond.i, 0
  %lcdsel_lit.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %18, i32 0, i32 3
  %lcdsel_big.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %18, i32 0, i32 2
  %cond.in.i = select i1 %tobool.not.i25, ptr %lcdsel_big.i, ptr %lcdsel_lit.i
  %21 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %cond.i26 = load i32, ptr %cond.in.i, align 4
  %call.i27 = call i32 @regmap_write(ptr noundef %16, i32 noundef %20, i32 noundef %cond.i26) #6
  %slave = getelementptr i8, ptr %encoder, i32 100
  %22 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slave, align 4
  %tobool6.not = icmp eq ptr %23, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap.i28 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %grf_regmap.i28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %grf_regmap.i28, align 4
  %cdata.i29 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %23, i32 0, i32 21
  %26 = ptrtoint ptr %cdata.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cdata.i29, align 4
  %lcdsel_grf_reg.i30 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %lcdsel_grf_reg.i30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lcdsel_grf_reg.i30, align 4
  %lcdsel_lit.i32 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %27, i32 0, i32 3
  %lcdsel_big.i33 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %27, i32 0, i32 2
  %cond.in.i34 = select i1 %tobool.not.i25, ptr %lcdsel_big.i33, ptr %lcdsel_lit.i32
  %30 = ptrtoint ptr %cond.in.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %cond.i35 = load i32, ptr %cond.in.i34, align 4
  %call.i36 = call i32 @regmap_write(ptr noundef %25, i32 noundef %29, i32 noundef %cond.i35) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %31 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %grf_clk, align 4
  call void @clk_disable(ptr noundef %32) #6
  call void @clk_unprepare(ptr noundef %32) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then3, %drm_of_encoder_active_endpoint_id.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_encoder_atomic_check(ptr nocapture noundef readonly %encoder, ptr nocapture noundef writeonly %crtc_state, ptr nocapture noundef readnone %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr i8, ptr %encoder, i32 416
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb4
    i32 3, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 756, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 2, %sw.bb6 ], [ 1, %sw.bb4 ], [ %1, %entry.sw.epilog_crit_edge ]
  %output_mode7 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 2
  %3 = ptrtoint ptr %output_mode7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %output_mode7, align 4
  %output_type = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 1
  %4 = ptrtoint ptr %output_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %output_type, align 4
  %slave = getelementptr i8, ptr %encoder, i32 100
  %5 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slave, align 4
  %tobool23.not = icmp eq ptr %6, null
  br i1 %tobool23.not, label %sw.epilog.cleanup_crit_edge, label %if.then24

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %output_flags = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 4
  %7 = ptrtoint ptr %output_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %output_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then24 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_mipi_dsi_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_dphy_init(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usage_mutex = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %usage_mutex, i32 noundef 0) #6
  %usage_mode = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %usage_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usage_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %usage_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %usage_mode, align 4
  tail call void @mutex_unlock(ptr noundef %usage_mutex) #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call5 = tail call i32 @component_add(ptr noundef %8, ptr noundef nonnull @dw_mipi_dsi_rockchip_dphy_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.err_graph_crit_edge, label %if.end8

if.end.err_graph_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_graph

if.end8:                                          ; preds = %if.end
  %cdata = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdata, align 4
  %dphy_rx_init = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %dphy_rx_init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dphy_rx_init, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.then9

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end8
  %pclk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then9.clk_prepare_enable.exit_crit_edge

if.then9.clk_prepare_enable.exit_crit_edge:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then9
  %call1.i = tail call i32 @clk_enable(ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end13_crit_edge, label %if.then3.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %14) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.then9.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then9.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp11 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp11, label %clk_prepare_enable.exit.err_init_crit_edge, label %clk_prepare_enable.exit.if.end13_crit_edge

clk_prepare_enable.exit.if.end13_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

clk_prepare_enable.exit.err_init_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_init

if.end13:                                         ; preds = %clk_prepare_enable.exit.if.end13_crit_edge, %if.end.i.if.end13_crit_edge
  %grf_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %grf_clk, align 4
  %call.i55 = tail call i32 @clk_prepare(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end.i59, label %if.end13.if.then16_crit_edge

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end.i59:                                       ; preds = %if.end13
  %call1.i57 = tail call i32 @clk_enable(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool2.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool2.not.i58, label %if.end18, label %if.then3.i60

if.then3.i60:                                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %16) #6
  br label %if.then16

if.then16:                                        ; preds = %if.then3.i60, %if.end13.if.then16_crit_edge
  %retval.0.i61.ph = phi i32 [ %call1.i57, %if.then3.i60 ], [ %call.i55, %if.end13.if.then16_crit_edge ]
  %17 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %18) #6
  tail call void @clk_unprepare(ptr noundef %18) #6
  br label %err_init

if.end18:                                         ; preds = %if.end.i59
  %19 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdata, align 4
  %dphy_rx_init20 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %dphy_rx_init20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dphy_rx_init20, align 4
  %call21 = tail call i32 %22(ptr noundef %phy) #6
  %23 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %grf_clk, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  %25 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %26) #6
  tail call void @clk_unprepare(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp24 = icmp slt i32 %call21, 0
  br i1 %cmp24, label %if.end18.err_init_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18.err_init_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_init

err_init:                                         ; preds = %if.end18.err_init_crit_edge, %if.then16, %clk_prepare_enable.exit.err_init_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %clk_prepare_enable.exit.err_init_crit_edge ], [ %retval.0.i61.ph, %if.then16 ], [ %call21, %if.end18.err_init_crit_edge ]
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  tail call void @component_del(ptr noundef %28, ptr noundef nonnull @dw_mipi_dsi_rockchip_dphy_ops) #6
  br label %err_graph

err_graph:                                        ; preds = %err_init, %if.end.err_graph_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end.err_graph_crit_edge ], [ %ret.0, %err_init ]
  tail call void @mutex_lock_nested(ptr noundef %usage_mutex, i32 noundef 0) #6
  %29 = ptrtoint ptr %usage_mode to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %usage_mode, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_graph, %if.then
  %retval.0.ph = phi i32 [ %ret.1, %err_graph ], [ -16, %if.then ]
  tail call void @mutex_unlock(ptr noundef %usage_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end18.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_dphy_exit(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @component_del(ptr noundef %3, ptr noundef nonnull @dw_mipi_dsi_rockchip_dphy_ops) #6
  %usage_mutex = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %usage_mutex, i32 noundef 0) #6
  %usage_mode = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %usage_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %usage_mode, align 4
  tail call void @mutex_unlock(ptr noundef %usage_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_dphy_power_on(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lanes = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 15, i32 24
  %4 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lanes, align 4
  %conv = zext i8 %5 to i32
  %lane_mbps = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lane_mbps, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef %7) #6
  %8 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lane_mbps, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %i.06.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp2.not.i = icmp ult i32 %11, %9
  br i1 %cmp2.not.i, label %for.inc.i, label %if.end

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 39
  br i1 %exitcond.not.i, label %if.then, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then:                                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef %9) #6
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38, i32 noundef %call.i) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %pclk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pclk, align 4
  %call.i92 = tail call i32 @clk_prepare(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end16, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %if.then14

if.then14:                                        ; preds = %if.then3.i, %if.end12.if.then14_crit_edge
  %retval.0.i93.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i92, %if.end12.if.then14_crit_edge ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %21, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i93.ph) #6
  br label %err_pclk

if.end16:                                         ; preds = %if.end.i
  %grf_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %grf_clk, align 4
  %call.i94 = tail call i32 @clk_prepare(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool.not.i95 = icmp eq i32 %call.i94, 0
  br i1 %tobool.not.i95, label %if.end.i98, label %if.end16.if.then19_crit_edge

if.end16.if.then19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end.i98:                                       ; preds = %if.end16
  %call1.i96 = tail call i32 @clk_enable(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool2.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool2.not.i97, label %if.end21, label %if.then3.i99

if.then3.i99:                                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %23) #6
  br label %if.then19

if.then19:                                        ; preds = %if.then3.i99, %if.end16.if.then19_crit_edge
  %retval.0.i100.ph = phi i32 [ %call1.i96, %if.then3.i99 ], [ %call.i94, %if.end16.if.then19_crit_edge ]
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i100.ph) #6
  br label %err_grf_clk

if.end21:                                         ; preds = %if.end.i98
  %phy_cfg_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %phy_cfg_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_cfg_clk, align 4
  %call.i102 = tail call i32 @clk_prepare(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i103 = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i103, label %if.end.i106, label %if.end21.if.then24_crit_edge

if.end21.if.then24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.end.i106:                                      ; preds = %if.end21
  %call1.i104 = tail call i32 @clk_enable(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104)
  %tobool2.not.i105 = icmp eq i32 %call1.i104, 0
  br i1 %tobool2.not.i105, label %if.end26, label %if.then3.i107

if.then3.i107:                                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %27) #6
  br label %if.then24

if.then24:                                        ; preds = %if.then3.i107, %if.end21.if.then24_crit_edge
  %retval.0.i108.ph = phi i32 [ %call1.i104, %if.then3.i107 ], [ %call.i102, %if.end21.if.then24_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i108.ph) #6
  br label %err_phy_cfg_clk

if.end26:                                         ; preds = %if.end.i106
  %cdata = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 21
  %30 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cdata, align 4
  %dphy_rx_power_on = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %dphy_rx_power_on to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dphy_rx_power_on, align 4
  %tobool27.not = icmp eq ptr %33, null
  br i1 %tobool27.not, label %if.end26.if.end37_crit_edge, label %if.then28

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then28:                                        ; preds = %if.end26
  %call31 = tail call i32 %33(ptr noundef %phy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.then28.if.end37_crit_edge

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.41, i32 noundef %call31) #6
  %36 = ptrtoint ptr %phy_cfg_clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_cfg_clk, align 4
  tail call void @clk_disable(ptr noundef %37) #6
  tail call void @clk_unprepare(ptr noundef %37) #6
  br label %err_phy_cfg_clk

if.end37:                                         ; preds = %if.then28.if.end37_crit_edge, %if.end26.if.end37_crit_edge
  %ret.0 = phi i32 [ %call31, %if.then28.if.end37_crit_edge ], [ 0, %if.end26.if.end37_crit_edge ]
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 0)
  %hsfreqrange = getelementptr [39 x %struct.dphy_pll_parameter_map], ptr @dppa_map, i32 0, i32 %i.06.i, i32 1
  %38 = ptrtoint ptr %hsfreqrange to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hsfreqrange, align 4
  %40 = shl i8 %39, 1
  %41 = and i8 %40, 126
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %1, i8 noundef zeroext 68, i8 noundef zeroext %41)
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext 0)
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %1, i8 noundef zeroext -124, i8 noundef zeroext 0)
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %1, i8 noundef zeroext -108, i8 noundef zeroext 0)
  tail call fastcc void @dw_mipi_dsi_phy_write(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %42 = ptrtoint ptr %phy_cfg_clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy_cfg_clk, align 4
  tail call void @clk_disable(ptr noundef %43) #6
  tail call void @clk_unprepare(ptr noundef %43) #6
  %44 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %grf_clk, align 4
  tail call void @clk_disable(ptr noundef %45) #6
  tail call void @clk_unprepare(ptr noundef %45) #6
  br label %cleanup

err_phy_cfg_clk:                                  ; preds = %if.then34, %if.then24
  %ret.1 = phi i32 [ %retval.0.i108.ph, %if.then24 ], [ %call31, %if.then34 ]
  %46 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %grf_clk, align 4
  tail call void @clk_disable(ptr noundef %47) #6
  tail call void @clk_unprepare(ptr noundef %47) #6
  br label %err_grf_clk

err_grf_clk:                                      ; preds = %err_phy_cfg_clk, %if.then19
  %ret.2 = phi i32 [ %retval.0.i100.ph, %if.then19 ], [ %ret.1, %err_phy_cfg_clk ]
  %48 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %49) #6
  tail call void @clk_unprepare(ptr noundef %49) #6
  br label %err_pclk

err_pclk:                                         ; preds = %err_grf_clk, %if.then14
  %ret.3 = phi i32 [ %retval.0.i93.ph, %if.then14 ], [ %ret.2, %err_grf_clk ]
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i110 = tail call i32 @__pm_runtime_idle(ptr noundef %51, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %err_pclk, %if.end37, %if.then10, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call.i, %if.then10 ], [ %ret.3, %err_pclk ], [ %ret.0, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_dphy_power_off(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %grf_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %if.then

if.then:                                          ; preds = %if.then3.i, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i.ph) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %cdata = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdata, align 4
  %dphy_rx_power_off = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %dphy_rx_power_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dphy_rx_power_off, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %call6 = tail call i32 %9(ptr noundef %phy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.42, i32 noundef %call6) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then7 ], [ %call6, %if.then3.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ]
  %12 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %grf_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %pclk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i28 = tail call i32 @__pm_runtime_idle(ptr noundef %17, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ %ret.0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_dphy_configure(ptr nocapture noundef readonly %phy, ptr noundef %opts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @phy_mipi_dphy_config_validate(ptr noundef %opts) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dphy_config = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 15
  %2 = call ptr @memcpy(ptr %dphy_config, ptr %opts, i32 100)
  %hs_clk_rate = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %opts, i32 0, i32 22
  %3 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hs_clk_rate, align 4
  %conv = zext i32 %4 to i64
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv) #9, !srcloc !129
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv, i64 %5, i32 0) #9, !srcloc !130
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 18
  %conv3 = trunc i64 %div1581.i.i to i32
  %lane_mbps = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv3, ptr %lane_mbps, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_dphy_bind(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dw_mipi_dsi_rockchip_dphy_unbind(ptr nocapture noundef %dev, ptr nocapture noundef %master, ptr nocapture noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_mipi_dsi_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3399_dphy_tx1rx1_init(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %grf_regmap = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf_regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 25184, i32 noundef 1048576) #6
  %4 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf_regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 25184, i32 noundef 8388608) #6
  %6 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grf_regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 25184, i32 noundef 2097152) #6
  %8 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %grf_regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 25180, i32 noundef 983040) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3399_dphy_tx1rx1_power_on(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #6, !srcloc !124
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %grf_regmap = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf_regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 25184, i32 noundef 8388608) #6
  %6 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grf_regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 25184, i32 noundef 2097184) #6
  %8 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %grf_regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 25180, i32 noundef 15728640) #6
  %10 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %grf_regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 25180, i32 noundef 251658240) #6
  %12 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %grf_regmap, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 25184, i32 noundef 983040) #6
  %14 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %grf_regmap, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 25180, i32 noundef -268374016) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 33554432) #6, !srcloc !124
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %18 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %grf_regmap, align 4
  %lanes = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 15, i32 24
  %20 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lanes, align 4
  %conv = zext i8 %21 to i32
  %sub13 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub13
  %or = or i32 %shr, 983040
  %call14 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 25180, i32 noundef %or) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3399_dphy_tx1rx1_power_off(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %grf_regmap = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf_regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 25180, i32 noundef 983040) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_rockchip_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dsi_bound = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %dsi_bound to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dsi_bound, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %grf_clk = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.then3_crit_edge

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %if.then3

if.then3:                                         ; preds = %if.then3.i, %if.then.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.if.then3_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i.ph) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %cdata.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdata.i, align 4
  %lanecfg1_grf_reg.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %lanecfg1_grf_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lanecfg1_grf_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i20 = icmp eq i32 %11, 0
  br i1 %tobool.not.i20, label %if.end.if.end.i22_crit_edge, label %if.then.i

if.end.if.end.i22_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i22

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %grf_regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %grf_regmap.i, align 4
  %lanecfg1.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %9, i32 0, i32 7
  %14 = ptrtoint ptr %lanecfg1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lanecfg1.i, align 4
  %call.i21 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %11, i32 noundef %15) #6
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i, %if.end.if.end.i22_crit_edge
  %16 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cdata.i, align 4
  %lanecfg2_grf_reg.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %lanecfg2_grf_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lanecfg2_grf_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp eq i32 %19, 0
  br i1 %tobool5.not.i, label %if.end.i22.if.end12.i_crit_edge, label %if.then6.i

if.end.i22.if.end12.i_crit_edge:                  ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then6.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap7.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %grf_regmap7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %grf_regmap7.i, align 4
  %lanecfg2.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %17, i32 0, i32 9
  %22 = ptrtoint ptr %lanecfg2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lanecfg2.i, align 4
  %call11.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %19, i32 noundef %23) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then6.i, %if.end.i22.if.end12.i_crit_edge
  %24 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cdata.i, align 4
  %enable_grf_reg.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %enable_grf_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enable_grf_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool14.not.i = icmp eq i32 %27, 0
  br i1 %tobool14.not.i, label %if.end12.i.dw_mipi_dsi_rockchip_config.exit_crit_edge, label %if.then15.i

if.end12.i.dw_mipi_dsi_rockchip_config.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dw_mipi_dsi_rockchip_config.exit

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap16.i = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %grf_regmap16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %grf_regmap16.i, align 4
  %enable.i = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %25, i32 0, i32 5
  %30 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %enable.i, align 4
  %call20.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %27, i32 noundef %31) #6
  br label %dw_mipi_dsi_rockchip_config.exit

dw_mipi_dsi_rockchip_config.exit:                 ; preds = %if.then15.i, %if.end12.i.dw_mipi_dsi_rockchip_config.exit_crit_edge
  %slave = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %slave, align 4
  %tobool5.not = icmp eq ptr %33, null
  br i1 %tobool5.not, label %dw_mipi_dsi_rockchip_config.exit.if.end8_crit_edge, label %if.then6

dw_mipi_dsi_rockchip_config.exit.if.end8_crit_edge: ; preds = %dw_mipi_dsi_rockchip_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %dw_mipi_dsi_rockchip_config.exit
  %cdata.i23 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %cdata.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cdata.i23, align 4
  %lanecfg1_grf_reg.i24 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %lanecfg1_grf_reg.i24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lanecfg1_grf_reg.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i25 = icmp eq i32 %37, 0
  br i1 %tobool.not.i25, label %if.then6.if.end.i32_crit_edge, label %if.then.i29

if.then6.if.end.i32_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i32

if.then.i29:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap.i26 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %33, i32 0, i32 3
  %38 = ptrtoint ptr %grf_regmap.i26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %grf_regmap.i26, align 4
  %lanecfg1.i27 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %35, i32 0, i32 7
  %40 = ptrtoint ptr %lanecfg1.i27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lanecfg1.i27, align 4
  %call.i28 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef %37, i32 noundef %41) #6
  br label %if.end.i32

if.end.i32:                                       ; preds = %if.then.i29, %if.then6.if.end.i32_crit_edge
  %42 = ptrtoint ptr %cdata.i23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cdata.i23, align 4
  %lanecfg2_grf_reg.i30 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %lanecfg2_grf_reg.i30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lanecfg2_grf_reg.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool5.not.i31 = icmp eq i32 %45, 0
  br i1 %tobool5.not.i31, label %if.end.i32.if.end12.i39_crit_edge, label %if.then6.i36

if.end.i32.if.end12.i39_crit_edge:                ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i39

if.then6.i36:                                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap7.i33 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %33, i32 0, i32 3
  %46 = ptrtoint ptr %grf_regmap7.i33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %grf_regmap7.i33, align 4
  %lanecfg2.i34 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %43, i32 0, i32 9
  %48 = ptrtoint ptr %lanecfg2.i34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lanecfg2.i34, align 4
  %call11.i35 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef %45, i32 noundef %49) #6
  br label %if.end12.i39

if.end12.i39:                                     ; preds = %if.then6.i36, %if.end.i32.if.end12.i39_crit_edge
  %50 = ptrtoint ptr %cdata.i23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cdata.i23, align 4
  %enable_grf_reg.i37 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %enable_grf_reg.i37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %enable_grf_reg.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool14.not.i38 = icmp eq i32 %53, 0
  br i1 %tobool14.not.i38, label %if.end12.i39.if.end8_crit_edge, label %if.then15.i43

if.end12.i39.if.end8_crit_edge:                   ; preds = %if.end12.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then15.i43:                                    ; preds = %if.end12.i39
  call void @__sanitizer_cov_trace_pc() #8
  %grf_regmap16.i40 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, ptr %33, i32 0, i32 3
  %54 = ptrtoint ptr %grf_regmap16.i40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %grf_regmap16.i40, align 4
  %enable.i41 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, ptr %51, i32 0, i32 5
  %56 = ptrtoint ptr %enable.i41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %enable.i41, align 4
  %call20.i42 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef %53, i32 noundef %57) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then15.i43, %if.end12.i39.if.end8_crit_edge, %dw_mipi_dsi_rockchip_config.exit.if.end8_crit_edge
  %58 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %grf_clk, align 4
  tail call void @clk_disable(ptr noundef %59) #6
  tail call void @clk_unprepare(ptr noundef %59) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then3 ], [ 0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1631, i32 11}
!2 = !{ptr @dw_mipi_dsi_rockchip_driver, !3, !"dw_mipi_dsi_rockchip_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1625, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1335, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1350, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1355, i32 40}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1358, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1362, i32 32}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1365, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1369, i32 38}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1379, i32 4}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1387, i32 40}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1390, i32 4}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1397, i32 36}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1400, i32 4}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1405, i32 56}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1407, i32 3}
!33 = !{ptr @dw_mipi_dsi_rockchip_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1419, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1423, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1436, i32 4}
!40 = !{ptr @dw_mipi_dsi_rockchip_phy_ops, !41, !"dw_mipi_dsi_rockchip_phy_ops", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 707, i32 41}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 413, i32 3}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 421, i32 3}
!46 = !{ptr @dppa_map, !47, !"dppa_map", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 282, i32 44}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 512, i32 3}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 547, i32 3}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 560, i32 4}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 623, i32 3}
!56 = !{ptr @hstt_table, !57, !"hstt_table", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 647, i32 20}
!58 = !{ptr @dw_mipi_dsi_rockchip_host_ops, !59, !"dw_mipi_dsi_rockchip_host_ops", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1067, i32 42}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1017, i32 3}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1027, i32 3}
!64 = !{ptr @dw_mipi_dsi_rockchip_ops, !65, !"dw_mipi_dsi_rockchip_ops", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1002, i32 35}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 897, i32 7}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 902, i32 4}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 907, i32 4}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 919, i32 4}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 934, i32 3}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 946, i32 3}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 958, i32 3}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 964, i32 3}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 812, i32 3}
!84 = !{ptr @dw_mipi_dsi_encoder_helper_funcs, !85, !"dw_mipi_dsi_encoder_helper_funcs", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 796, i32 1}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 756, i32 3}
!88 = !{ptr @dw_mipi_dsi_dphy_ops, !89, !"dw_mipi_dsi_dphy_ops", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1279, i32 29}
!90 = !{ptr @dw_mipi_dsi_rockchip_dphy_ops, !91, !"dw_mipi_dsi_rockchip_dphy_ops", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1092, i32 35}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1181, i32 2}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1193, i32 3}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1199, i32 3}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1211, i32 3}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1219, i32 4}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1268, i32 4}
!104 = !{ptr @dw_mipi_dsi_rockchip_dt_ids, !105, !"dw_mipi_dsi_rockchip_dt_ids", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1610, i32 34}
!106 = !{ptr @px30_chip_data, !107, !"px30_chip_data", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1453, i32 47}
!108 = !{ptr @rk3288_chip_data, !109, !"rk3288_chip_data", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1471, i32 47}
!110 = !{ptr @rk3399_chip_data, !111, !"rk3399_chip_data", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1560, i32 47}
!112 = !{ptr @dw_mipi_dsi_rockchip_pm_ops, !113, !"dw_mipi_dsi_rockchip_pm_ops", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c", i32 1313, i32 32}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2157023064}
!124 = !{i64 3119568}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2148672935, i64 2148673215, i64 2148673549, i64 2148673883}
!127 = !{i8 0, i8 2}
!128 = !{!"auto-init"}
!129 = !{i64 1187104, i64 1187131}
!130 = !{i64 1187799, i64 1187826, i64 1187859, i64 1187880, i64 1187907, i64 1187933}
