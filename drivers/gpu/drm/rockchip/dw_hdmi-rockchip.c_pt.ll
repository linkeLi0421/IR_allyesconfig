; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_hdmi_plat_data = type { ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i8 }
%struct.dw_hdmi_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.rockchip_hdmi_chip_data = type { i32, i32, i32 }
%struct.dw_hdmi_mpll_config = type { i32, [3 x %struct.anon.85] }
%struct.anon.85 = type { i16, i16 }
%struct.dw_hdmi_curr_ctrl = type { i32, [3 x i16] }
%struct.dw_hdmi_phy_config = type { i32, i16, i16, i16 }
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
%struct.rockchip_hdmi = type { ptr, ptr, %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwhdmi-rockchip\00", [16 x i8] zeroinitializer }, align 32
@dw_hdmi_rockchip_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_hdmi_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_hdmi_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_hdmi_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_hdmi_drv_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@dw_hdmi_rockchip_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @dw_hdmi_rockchip_resume, ptr null, ptr @dw_hdmi_rockchip_resume, ptr null, ptr @dw_hdmi_rockchip_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw_hdmi_rockchip_pltfm_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_hdmi_rockchip_probe, ptr @dw_hdmi_rockchip_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_hdmi_rockchip_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_hdmi_rockchip_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@dw_hdmi_rockchip_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @dw_hdmi_rockchip_bind, ptr @dw_hdmi_rockchip_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* Unable to parse OF data\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"*ERROR* failed to get phy\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Failed to enable HDMI vpll: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@dw_hdmi_rockchip_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @dw_hdmi_rockchip_encoder_mode_fixup, ptr null, ptr null, ptr @dw_hdmi_rockchip_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @dw_hdmi_rockchip_encoder_disable, ptr @dw_hdmi_rockchip_encoder_enable, ptr @dw_hdmi_rockchip_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Unable to get rockchip,grf\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vpll\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* failed to get vpll clock\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"grf\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* failed to get grf clock\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to enable grfclk %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Could not write to GRF: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vop %s output to hdmi\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LIT\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BIG\00", [28 x i8] zeroinitializer }, align 32
@rk3228_hdmi_drv_data = internal constant { %struct.dw_hdmi_plat_data, [36 x i8] } { %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 0, i8 0, ptr null, ptr @dw_hdmi_rockchip_mode_valid, ptr @rk3228_hdmi_phy_ops, ptr @.str.17, ptr @rk3228_chip_data, i32 1, ptr @rockchip_mpll_cfg, ptr @rockchip_cur_ctr, ptr @rockchip_phy_config, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@rk3288_hdmi_drv_data = internal constant { %struct.dw_hdmi_plat_data, [36 x i8] } { %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 0, i8 0, ptr null, ptr @dw_hdmi_rockchip_mode_valid, ptr null, ptr null, ptr @rk3288_chip_data, i32 0, ptr @rockchip_mpll_cfg, ptr @rockchip_cur_ctr, ptr @rockchip_phy_config, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@rk3328_hdmi_drv_data = internal constant { %struct.dw_hdmi_plat_data, [36 x i8] } { %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 1, i8 0, ptr null, ptr @dw_hdmi_rockchip_mode_valid, ptr @rk3328_hdmi_phy_ops, ptr @.str.17, ptr @rk3328_chip_data, i32 1, ptr @rockchip_mpll_cfg, ptr @rockchip_cur_ctr, ptr @rockchip_phy_config, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@rk3399_hdmi_drv_data = internal constant { %struct.dw_hdmi_plat_data, [36 x i8] } { %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 1, i8 0, ptr null, ptr @dw_hdmi_rockchip_mode_valid, ptr null, ptr null, ptr @rk3399_chip_data, i32 0, ptr @rockchip_mpll_cfg, ptr @rockchip_cur_ctr, ptr @rockchip_phy_config, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@rk3228_hdmi_phy_ops = internal constant { %struct.dw_hdmi_phy_ops, [44 x i8] } { %struct.dw_hdmi_phy_ops { ptr @dw_hdmi_rockchip_genphy_init, ptr @dw_hdmi_rockchip_genphy_disable, ptr @dw_hdmi_phy_read_hpd, ptr @dw_hdmi_phy_update_hpd, ptr @dw_hdmi_rk3228_setup_hpd }, [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inno_dw_hdmi_phy2\00", [46 x i8] zeroinitializer }, align 32
@rk3228_chip_data = internal global { %struct.rockchip_hdmi_chip_data, [20 x i8] } { %struct.rockchip_hdmi_chip_data { i32 -1, i32 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rockchip_mpll_cfg = internal constant { [13 x %struct.dw_hdmi_mpll_config], [48 x i8] } { [13 x %struct.dw_hdmi_mpll_config] [%struct.dw_hdmi_mpll_config { i32 27000000, [3 x %struct.anon.85] [%struct.anon.85 { i16 179, i16 0 }, %struct.anon.85 { i16 8531, i16 0 }, %struct.anon.85 { i16 16627, i16 0 }] }, %struct.dw_hdmi_mpll_config { i32 36000000, [3 x %struct.anon.85] [%struct.anon.85 { i16 179, i16 0 }, %struct.anon.85 { i16 8531, i16 0 }, %struct.anon.85 { i16 16627, i16 0 }] }, %struct.dw_hdmi_mpll_config { i32 40000000, [3 x %struct.anon.85] [%struct.anon.85 { i16 179, i16 0 }, %struct.anon.85 { i16 8531, i16 0 }, %struct.anon.85 { i16 16627, i16 0 }] }, %struct.dw_hdmi_mpll_config { i32 54000000, [3 x %struct.anon.85] [%struct.anon.85 { i16 114, i16 1 }, %struct.anon.85 { i16 8514, i16 1 }, %struct.anon.85 { i16 16546, i16 1 }] }, %struct.dw_hdmi_mpll_config { i32 65000000, [3 x %struct.anon.85] [%struct.anon.85 { i16 114, i16 1 }, %struct.anon.85 { i16 8514, i16 1 }, %struct.anon.85 { i16 16546, i16 1 }] }, %struct.dw_hdmi_mpll_config { i32 66000000, [3 x %struct.anon.85] [%struct.anon.85 { i16 318, i16 3 }, %struct.anon.85 { i16 8574, i16 2 }, %struct.anon.85 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 74250000, [3 x %struct.anon.85] [%struct.anon.85 { i16 114, i16 1 }, %struct.anon.85 { i16 8517, i16 2 }, %struct.anon.85 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 83500000, [3 x %struct.anon.85] [%struct.anon.85 { i16 114, i16 1 }, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer] }, %struct.dw_hdmi_mpll_config { i32 108000000, [3 x %struct.anon.85] [%struct.anon.85 { i16 81, i16 2 }, %struct.anon.85 { i16 8517, i16 2 }, %struct.anon.85 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 106500000, [3 x %struct.anon.85] [%struct.anon.85 { i16 81, i16 2 }, %struct.anon.85 { i16 8517, i16 2 }, %struct.anon.85 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 146250000, [3 x %struct.anon.85] [%struct.anon.85 { i16 81, i16 2 }, %struct.anon.85 { i16 8517, i16 2 }, %struct.anon.85 { i16 16481, i16 2 }] }, %struct.dw_hdmi_mpll_config { i32 148500000, [3 x %struct.anon.85] [%struct.anon.85 { i16 81, i16 3 }, %struct.anon.85 { i16 8524, i16 3 }, %struct.anon.85 { i16 16484, i16 3 }] }, %struct.dw_hdmi_mpll_config { i32 -1, [3 x %struct.anon.85] [%struct.anon.85 { i16 160, i16 10 }, %struct.anon.85 { i16 8193, i16 15 }, %struct.anon.85 { i16 16386, i16 15 }] }], [48 x i8] zeroinitializer }, align 32
@rockchip_cur_ctr = internal constant { [8 x %struct.dw_hdmi_curr_ctrl], [32 x i8] } { [8 x %struct.dw_hdmi_curr_ctrl] [%struct.dw_hdmi_curr_ctrl { i32 40000000, [3 x i16] [i16 24, i16 24, i16 24] }, %struct.dw_hdmi_curr_ctrl { i32 65000000, [3 x i16] [i16 40, i16 40, i16 40] }, %struct.dw_hdmi_curr_ctrl { i32 66000000, [3 x i16] [i16 56, i16 56, i16 56] }, %struct.dw_hdmi_curr_ctrl { i32 74250000, [3 x i16] [i16 40, i16 56, i16 56] }, %struct.dw_hdmi_curr_ctrl { i32 83500000, [3 x i16] [i16 40, i16 56, i16 56] }, %struct.dw_hdmi_curr_ctrl { i32 146250000, [3 x i16] [i16 56, i16 56, i16 56] }, %struct.dw_hdmi_curr_ctrl { i32 148500000, [3 x i16] [i16 0, i16 56, i16 56] }, %struct.dw_hdmi_curr_ctrl { i32 -1, [3 x i16] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@rockchip_phy_config = internal constant { [4 x %struct.dw_hdmi_phy_config], [48 x i8] } { [4 x %struct.dw_hdmi_phy_config] [%struct.dw_hdmi_phy_config { i32 74250000, i16 -32759, i16 4, i16 626 }, %struct.dw_hdmi_phy_config { i32 148500000, i16 -32725, i16 4, i16 653 }, %struct.dw_hdmi_phy_config { i32 297000000, i16 -32711, i16 5, i16 653 }, %struct.dw_hdmi_phy_config { i32 -1, i16 0, i16 0, i16 0 }], [48 x i8] zeroinitializer }, align 32
@rk3288_chip_data = internal global { %struct.rockchip_hdmi_chip_data, [20 x i8] } { %struct.rockchip_hdmi_chip_data { i32 604, i32 1048576, i32 1048592 }, [20 x i8] zeroinitializer }, align 32
@rk3328_hdmi_phy_ops = internal constant { %struct.dw_hdmi_phy_ops, [44 x i8] } { %struct.dw_hdmi_phy_ops { ptr @dw_hdmi_rockchip_genphy_init, ptr @dw_hdmi_rockchip_genphy_disable, ptr @dw_hdmi_rk3328_read_hpd, ptr @dw_hdmi_phy_update_hpd, ptr @dw_hdmi_rk3328_setup_hpd }, [44 x i8] zeroinitializer }, align 32
@rk3328_chip_data = internal global { %struct.rockchip_hdmi_chip_data, [20 x i8] } { %struct.rockchip_hdmi_chip_data { i32 -1, i32 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rk3399_chip_data = internal global { %struct.rockchip_hdmi_chip_data, [20 x i8] } { %struct.rockchip_hdmi_chip_data { i32 25168, i32 4194304, i32 4194368 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@__sancov_gen_cov_switch_values.19 = internal global [14 x i64] [i64 12, i64 32, i64 27000000, i64 36000000, i64 40000000, i64 54000000, i64 65000000, i64 66000000, i64 74250000, i64 83500000, i64 106500000, i64 108000000, i64 146250000, i64 148500000]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 610, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [24 x i8] c"dw_hdmi_rockchip_dt_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 470, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"dw_hdmi_rockchip_pm\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 602, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant [30 x i8] c"dw_hdmi_rockchip_pltfm_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 606, i32 24 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"dw_hdmi_rockchip_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 576, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 528, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 532, i32 41 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 536, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 542, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [38 x i8] c"dw_hdmi_rockchip_encoder_helper_funcs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 306, i32 46 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 193, i32 53 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 195, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 199, i32 43 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 205, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 209, i32 42 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 215, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 280, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 286, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 289, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"rk3228_hdmi_drv_data\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 406, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"rk3288_hdmi_drv_data\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 423, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant [21 x i8] c"rk3328_hdmi_drv_data\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 443, i32 39 }
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"rk3399_hdmi_drv_data\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 461, i32 39 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"rk3228_hdmi_phy_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 394, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 413, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"rk3228_chip_data\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 402, i32 39 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"rockchip_mpll_cfg\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 80, i32 41 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"rockchip_cur_ctr\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 160, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"rockchip_phy_config\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 181, i32 40 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"rk3288_chip_data\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 417, i32 39 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"rk3328_hdmi_phy_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 431, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"rk3328_chip_data\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 439, i32 39 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"rk3399_chip_data\00", align 1
@___asan_gen_.126 = private constant [47 x i8] c"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 455, i32 39 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @.str, ptr @dw_hdmi_rockchip_dt_ids, ptr @dw_hdmi_rockchip_pm, ptr @dw_hdmi_rockchip_pltfm_driver, ptr @dw_hdmi_rockchip_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dw_hdmi_rockchip_encoder_helper_funcs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rk3228_hdmi_drv_data, ptr @rk3288_hdmi_drv_data, ptr @rk3328_hdmi_drv_data, ptr @rk3399_hdmi_drv_data, ptr @rk3228_hdmi_phy_ops, ptr @.str.17, ptr @rk3228_chip_data, ptr @rockchip_mpll_cfg, ptr @rockchip_cur_ctr, ptr @rockchip_phy_config, ptr @rk3288_chip_data, ptr @rk3328_hdmi_phy_ops, ptr @rk3328_chip_data, ptr @rk3399_chip_data], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_rockchip_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_rockchip_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_rockchip_pltfm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_rockchip_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_rockchip_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_hdmi_drv_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_hdmi_drv_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_hdmi_drv_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_hdmi_drv_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_hdmi_phy_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_chip_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mpll_cfg to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_cur_ctr to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_phy_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_chip_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_hdmi_phy_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_chip_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_chip_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @dw_hdmi_rockchip_ops) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @dw_hdmi_rockchip_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @of_match_node(ptr noundef nonnull @dw_hdmi_rockchip_dt_ids, ptr noundef %3) #6
  %data10 = getelementptr inbounds %struct.of_device_id, ptr %call8, i32 0, i32 3
  %4 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data10, align 4
  %call11 = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef %5, i32 noundef 60, i32 noundef 3264) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end5.cleanup_crit_edge, label %if.end14

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %phy_data = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %call11, i32 0, i32 9
  %7 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_data, align 4
  %chip_data = getelementptr inbounds %struct.rockchip_hdmi, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %chip_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %chip_data, align 4
  store ptr %call.i, ptr %phy_data, align 4
  %encoder18 = getelementptr inbounds %struct.rockchip_hdmi, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call20 = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %data, ptr noundef %11) #6
  %possible_crtcs = getelementptr inbounds %struct.rockchip_hdmi, ptr %call.i, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call20, ptr %possible_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp eq i32 %call20, 0
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end23

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call.i102 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %16, ptr noundef nonnull @.str.6) #6
  %regmap.i = getelementptr inbounds %struct.rockchip_hdmi, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i102, ptr %regmap.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i102, inttoptr (i32 -4096 to ptr)
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #6
  br label %rockchip_hdmi_parse_dt.exit

if.end.i:                                         ; preds = %if.end23
  %call7.i = tail call ptr @devm_clk_get(ptr noundef %19, ptr noundef nonnull @.str.8) #6
  %vpll_clk.i = getelementptr inbounds %struct.rockchip_hdmi, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %vpll_clk.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %vpll_clk.i, align 4
  %magicptr.i = ptrtoint ptr %call7.i to i32
  %21 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i, label %if.else16.i [
    i32 -2, label %if.then10.i
    i32 -517, label %if.end.i.if.then26_crit_edge
  ]

if.end.i.if.then26_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %vpll_clk.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %vpll_clk.i, align 4
  br label %if.end25.i

if.else16.i:                                      ; preds = %if.end.i
  %cmp.i68.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68.i, label %if.then19.i, label %if.else16.i.if.end25.i_crit_edge

if.else16.i.if.end25.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then19.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #6
  br label %rockchip_hdmi_parse_dt.exit

if.end25.i:                                       ; preds = %if.else16.i.if.end25.i_crit_edge, %if.then10.i
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %call27.i = tail call ptr @devm_clk_get(ptr noundef %26, ptr noundef nonnull @.str.10) #6
  %grf_clk.i = getelementptr inbounds %struct.rockchip_hdmi, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %grf_clk.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call27.i, ptr %grf_clk.i, align 4
  %magicptr70.i = ptrtoint ptr %call27.i to i32
  %28 = zext i32 %magicptr70.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %magicptr70.i, label %if.else38.i [
    i32 -2, label %if.then31.i
    i32 -517, label %if.end25.i.if.then26_crit_edge
  ]

if.end25.i.if.then26_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.then31.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %grf_clk.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %grf_clk.i, align 4
  br label %if.end28

if.else38.i:                                      ; preds = %if.end25.i
  %cmp.i69.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69.i, label %if.then41.i, label %if.else38.i.if.end28_crit_edge

if.else38.i.if.end28_crit_edge:                   ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then41.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #6
  br label %rockchip_hdmi_parse_dt.exit

rockchip_hdmi_parse_dt.exit:                      ; preds = %if.then41.i, %if.then19.i, %if.then.i
  %retval.0.i.in.in = phi ptr [ %regmap.i, %if.then.i ], [ %grf_clk.i, %if.then41.i ], [ %vpll_clk.i, %if.then19.i ]
  %32 = ptrtoint ptr %retval.0.i.in.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %retval.0.i.in = load ptr, ptr %retval.0.i.in.in, align 4
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool25.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool25.not, label %rockchip_hdmi_parse_dt.exit.if.end28_crit_edge, label %rockchip_hdmi_parse_dt.exit.if.then26_crit_edge

rockchip_hdmi_parse_dt.exit.if.then26_crit_edge:  ; preds = %rockchip_hdmi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

rockchip_hdmi_parse_dt.exit.if.end28_crit_edge:   ; preds = %rockchip_hdmi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then26:                                        ; preds = %rockchip_hdmi_parse_dt.exit.if.then26_crit_edge, %if.end25.i.if.then26_crit_edge, %if.end.i.if.then26_crit_edge
  %retval.0.i113 = phi i32 [ %retval.0.i, %rockchip_hdmi_parse_dt.exit.if.then26_crit_edge ], [ %magicptr.i, %if.end.i.if.then26_crit_edge ], [ %magicptr70.i, %if.end25.i.if.then26_crit_edge ]
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %34, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end28:                                         ; preds = %rockchip_hdmi_parse_dt.exit.if.end28_crit_edge, %if.else38.i.if.end28_crit_edge, %if.then31.i
  %call29 = tail call ptr @devm_phy_optional_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %phy = getelementptr inbounds %struct.rockchip_hdmi, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call29, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.end28
  %cmp35.not = icmp eq ptr %call29, inttoptr (i32 -517 to ptr)
  br i1 %cmp35.not, label %if.then32.cleanup_crit_edge, label %if.then36

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %call29 to i32
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %vpll_clk = getelementptr inbounds %struct.rockchip_hdmi, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %vpll_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vpll_clk, align 4
  %call.i103 = tail call i32 @clk_prepare(ptr noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i, label %if.end.i104, label %if.end39.if.then42_crit_edge

if.end39.if.then42_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

if.end.i104:                                      ; preds = %if.end39
  %call1.i = tail call i32 @clk_enable(ptr noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end44, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %40) #6
  br label %if.then42

if.then42:                                        ; preds = %if.then3.i, %if.end39.if.then42_crit_edge
  %retval.0.i105.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i103, %if.end39.if.then42_crit_edge ]
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %42, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i105.ph) #6
  br label %cleanup

if.end44:                                         ; preds = %if.end.i104
  %helper_private.i = getelementptr inbounds %struct.rockchip_hdmi, ptr %call.i, i32 0, i32 2, i32 11
  %43 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @dw_hdmi_rockchip_encoder_helper_funcs, ptr %helper_private.i, align 4
  %call45 = tail call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %encoder18, i32 noundef 2) #6
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call46 = tail call ptr @dw_hdmi_bind(ptr noundef %add.ptr, ptr noundef %encoder18, ptr noundef nonnull %call11) #6
  %hdmi47 = getelementptr inbounds %struct.rockchip_hdmi, ptr %call.i, i32 0, i32 6
  %45 = ptrtoint ptr %hdmi47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call46, ptr %hdmi47, align 4
  %cmp.i106 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then50, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %call46 to i32
  tail call void @drm_encoder_cleanup(ptr noundef %encoder18) #6
  %47 = ptrtoint ptr %vpll_clk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vpll_clk, align 4
  tail call void @clk_disable(ptr noundef %48) #6
  tail call void @clk_unprepare(ptr noundef %48) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.end44.cleanup_crit_edge, %if.then42, %if.then36, %if.then32.cleanup_crit_edge, %if.then26, %if.end14.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i113, %if.then26 ], [ %retval.0.i105.ph, %if.then42 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -517, %if.end14.cleanup_crit_edge ], [ %36, %if.then36 ], [ -517, %if.then32.cleanup_crit_edge ], [ %46, %if.then50 ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_rockchip_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hdmi1 = getelementptr inbounds %struct.rockchip_hdmi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi1, align 4
  tail call void @dw_hdmi_unbind(ptr noundef %3) #6
  %vpll_clk = getelementptr inbounds %struct.rockchip_hdmi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vpll_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpll_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_hdmi_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dw_hdmi_rockchip_encoder_mode_fixup(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adj_mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_rockchip_encoder_mode_set(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readonly %adj_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vpll_clk = getelementptr i8, ptr %encoder, i32 76
  %0 = ptrtoint ptr %vpll_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpll_clk, align 4
  %2 = ptrtoint ptr %adj_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adj_mode, align 4
  %mul = mul i32 %3, 1000
  %call = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef %mul) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dw_hdmi_rockchip_encoder_disable(ptr nocapture noundef %encoder) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_rockchip_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  %endpoint.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %encoder, i32 -8
  %chip_data = getelementptr i8, ptr %encoder, i32 72
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i) #6
  %8 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %endpoint.i, align 4, !annotation !78
  %9 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !78
  %11 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %11, align 4, !annotation !78
  %call.i = call i32 @drm_of_encoder_active_endpoint(ptr noundef %7, ptr noundef %encoder, ptr noundef nonnull %endpoint.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %drm_of_encoder_active_endpoint_id.exit, label %drm_of_encoder_active_endpoint_id.exit.thread

drm_of_encoder_active_endpoint_id.exit.thread:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i) #6
  br label %if.then1

drm_of_encoder_active_endpoint_id.exit:           ; preds = %if.end
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.else, label %drm_of_encoder_active_endpoint_id.exit.if.then1_crit_edge

drm_of_encoder_active_endpoint_id.exit.if.then1_crit_edge: ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then1

if.then1:                                         ; preds = %drm_of_encoder_active_endpoint_id.exit.if.then1_crit_edge, %drm_of_encoder_active_endpoint_id.exit.thread
  %15 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip_data, align 4
  %lcdsel_lit = getelementptr inbounds %struct.rockchip_hdmi_chip_data, ptr %16, i32 0, i32 2
  br label %if.end4

if.else:                                          ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip_data, align 4
  %lcdsel_big = getelementptr inbounds %struct.rockchip_hdmi_chip_data, ptr %18, i32 0, i32 1
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %val.0.in = phi ptr [ %lcdsel_lit, %if.then1 ], [ %lcdsel_big, %if.else ]
  %19 = ptrtoint ptr %val.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %val.0 = load i32, ptr %val.0.in, align 4
  %grf_clk = getelementptr i8, ptr %encoder, i32 80
  %20 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %grf_clk, align 4
  %call.i38 = call i32 @clk_prepare(ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i39 = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i39, label %if.end.i, label %if.end4.clk_prepare_enable.exit_crit_edge

if.end4.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end4
  %call1.i = call i32 @clk_enable(ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9_crit_edge, label %if.then3.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %21) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end4.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i38, %if.end4.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp6 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp6, label %if.then7, label %clk_prepare_enable.exit.if.end9_crit_edge

clk_prepare_enable.exit.if.end9_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i) #6
  br label %cleanup

if.end9:                                          ; preds = %clk_prepare_enable.exit.if.end9_crit_edge, %if.end.i.if.end9_crit_edge
  %regmap = getelementptr i8, ptr %encoder, i32 -4
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %26 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip_data, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %call12 = call i32 @regmap_write(ptr noundef %25, i32 noundef %29, i32 noundef %val.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end9.if.end16_crit_edge, label %if.then14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, i32 noundef %call12) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  %cond = phi ptr [ @.str.15, %if.then14 ], [ @.str.16, %if.end9.if.end16_crit_edge ]
  %32 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %grf_clk, align 4
  call void @clk_disable(ptr noundef %33) #6
  call void @clk_unprepare(ptr noundef %33) #6
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %35, i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dw_hdmi_rockchip_encoder_atomic_check(ptr nocapture noundef readnone %encoder, ptr nocapture noundef writeonly %crtc_state, ptr nocapture noundef readnone %conn_state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %output_mode = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 2
  %0 = ptrtoint ptr %output_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 15, ptr %output_mode, align 4
  %output_type = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 1
  %1 = ptrtoint ptr %output_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 11, ptr %output_type, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_unbind(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_mode_valid(ptr nocapture noundef readnone %hdmi, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  %2 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %mul, label %for.cond.11 [
    i32 27000000, label %entry.for.end_crit_edge
    i32 36000000, label %entry.for.end_crit_edge8
    i32 40000000, label %entry.for.end_crit_edge9
    i32 54000000, label %entry.for.end_crit_edge10
    i32 65000000, label %entry.for.end_crit_edge11
    i32 66000000, label %entry.for.end_crit_edge12
    i32 74250000, label %entry.for.end_crit_edge13
    i32 83500000, label %entry.for.end_crit_edge14
    i32 108000000, label %entry.for.end_crit_edge15
    i32 106500000, label %entry.for.end_crit_edge16
    i32 146250000, label %entry.for.end_crit_edge17
    i32 148500000, label %entry.for.end_crit_edge18
  ]

entry.for.end_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge15:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.11:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.cond.11, %entry.for.end_crit_edge, %entry.for.end_crit_edge8, %entry.for.end_crit_edge9, %entry.for.end_crit_edge10, %entry.for.end_crit_edge11, %entry.for.end_crit_edge12, %entry.for.end_crit_edge13, %entry.for.end_crit_edge14, %entry.for.end_crit_edge15, %entry.for.end_crit_edge16, %entry.for.end_crit_edge17, %entry.for.end_crit_edge18
  %valid.0.off0 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -2, %for.cond.11 ], [ 0, %entry.for.end_crit_edge8 ], [ 0, %entry.for.end_crit_edge9 ], [ 0, %entry.for.end_crit_edge10 ], [ 0, %entry.for.end_crit_edge11 ], [ 0, %entry.for.end_crit_edge12 ], [ 0, %entry.for.end_crit_edge13 ], [ 0, %entry.for.end_crit_edge14 ], [ 0, %entry.for.end_crit_edge15 ], [ 0, %entry.for.end_crit_edge16 ], [ 0, %entry.for.end_crit_edge17 ], [ 0, %entry.for.end_crit_edge18 ]
  ret i32 %valid.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_genphy_init(ptr nocapture noundef readnone %dw_hdmi, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %display, ptr nocapture noundef readnone %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.rockchip_hdmi, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 @phy_power_on(ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_rockchip_genphy_disable(ptr nocapture noundef readnone %dw_hdmi, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.rockchip_hdmi, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_hdmi_phy_read_hpd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_update_hpd(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_rk3228_setup_hpd(ptr noundef %dw_hdmi, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dw_hdmi_phy_setup_hpd(ptr noundef %dw_hdmi, ptr noundef %data) #6
  %regmap = getelementptr inbounds %struct.rockchip_hdmi, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1048, i32 noundef 7340144) #6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1032, i32 noundef 1610637312) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_phy_setup_hpd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rk3328_read_hpd(ptr noundef %dw_hdmi, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dw_hdmi_phy_read_hpd(ptr noundef %dw_hdmi, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %regmap = getelementptr inbounds %struct.rockchip_hdmi, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %. = select i1 %cmp, i32 100664832, i32 100663296
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1040, i32 noundef %.) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_rk3328_setup_hpd(ptr noundef %dw_hdmi, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dw_hdmi_phy_setup_hpd(ptr noundef %dw_hdmi, ptr noundef %data) #6
  %regmap = getelementptr inbounds %struct.rockchip_hdmi, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1040, i32 noundef 788529152) #6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1036, i32 noundef -268435456) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 1032, i32 noundef 201591808) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_rockchip_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hdmi1 = getelementptr inbounds %struct.rockchip_hdmi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi1, align 4
  tail call void @dw_hdmi_resume(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 610, i32 11}
!2 = !{ptr @dw_hdmi_rockchip_pltfm_driver, !3, !"dw_hdmi_rockchip_pltfm_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 606, i32 24}
!4 = !{ptr @dw_hdmi_rockchip_ops, !5, !"dw_hdmi_rockchip_ops", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 576, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 528, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 532, i32 41}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 536, i32 4}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 542, i32 3}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 193, i32 53}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 195, i32 3}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 199, i32 43}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 205, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 209, i32 42}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 215, i32 3}
!27 = !{ptr @dw_hdmi_rockchip_encoder_helper_funcs, !28, !"dw_hdmi_rockchip_encoder_helper_funcs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 306, i32 46}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 280, i32 3}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 286, i32 3}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 289, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dw_hdmi_rockchip_dt_ids, !38, !"dw_hdmi_rockchip_dt_ids", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 470, i32 34}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 413, i32 14}
!41 = !{ptr @rk3228_hdmi_drv_data, !42, !"rk3228_hdmi_drv_data", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 406, i32 39}
!43 = !{ptr @rk3228_hdmi_phy_ops, !44, !"rk3228_hdmi_phy_ops", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 394, i32 37}
!45 = !{ptr @rk3228_chip_data, !46, !"rk3228_chip_data", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 402, i32 39}
!47 = !{ptr @rockchip_mpll_cfg, !48, !"rockchip_mpll_cfg", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 80, i32 41}
!49 = !{ptr @rockchip_cur_ctr, !50, !"rockchip_cur_ctr", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 160, i32 39}
!51 = !{ptr @rockchip_phy_config, !52, !"rockchip_phy_config", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 181, i32 40}
!53 = !{ptr @rk3288_hdmi_drv_data, !54, !"rk3288_hdmi_drv_data", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 423, i32 39}
!55 = !{ptr @rk3288_chip_data, !56, !"rk3288_chip_data", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 417, i32 39}
!57 = !{ptr @rk3328_hdmi_drv_data, !58, !"rk3328_hdmi_drv_data", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 443, i32 39}
!59 = !{ptr @rk3328_hdmi_phy_ops, !60, !"rk3328_hdmi_phy_ops", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 431, i32 37}
!61 = !{ptr @rk3328_chip_data, !62, !"rk3328_chip_data", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 439, i32 39}
!63 = !{ptr @rk3399_hdmi_drv_data, !64, !"rk3399_hdmi_drv_data", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 461, i32 39}
!65 = !{ptr @rk3399_chip_data, !66, !"rk3399_chip_data", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 455, i32 39}
!67 = !{ptr @dw_hdmi_rockchip_pm, !68, !"dw_hdmi_rockchip_pm", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c", i32 602, i32 32}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
