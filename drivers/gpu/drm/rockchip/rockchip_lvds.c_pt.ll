; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/rockchip_lvds.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/rockchip_lvds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rockchip_lvds_soc_data = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rockchip_lvds = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.drm_connector, %struct.drm_encoder, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.dev_pin_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rockchip-lvds\00", [18 x i8] zeroinitializer }, align 32
@rockchip_lvds_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_lvds_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_lvds_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rockchip_lvds_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_lvds_probe, ptr @rockchip_lvds_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_lvds_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* missing rockchip,grf property\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Platform initialization failed\0A\00", [56 x i8] zeroinitializer }, align 32
@rockchip_lvds_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @rockchip_lvds_bind, ptr @rockchip_lvds_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* failed to add component\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"*ERROR* can't found port point, please init lvds panel port!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* lvds port does not have any children\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* failed to find panel and bridge node\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rockchip,output\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* invalid output type [%s]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"data-mapping\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* invalid data-mapping format [%s]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to initialize encoder: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rockchip_lvds_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* failed to initialize connector: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rockchip_lvds_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @rockchip_lvds_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"*ERROR* failed to initialize bridge connector: %pe\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* failed to attach encoder: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rgb\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvds\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"duallvds\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jeida-18\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jeida-24\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vesa-24\00", [24 x i8] zeroinitializer }, align 32
@rk3288_lvds_data = internal constant { %struct.rockchip_lvds_soc_data, [24 x i8] } { %struct.rockchip_lvds_soc_data { ptr @rk3288_lvds_probe, ptr @rk3288_lvds_encoder_helper_funcs }, [24 x i8] zeroinitializer }, align 32
@px30_lvds_data = internal constant { %struct.rockchip_lvds_soc_data, [24 x i8] } { %struct.rockchip_lvds_soc_data { ptr @px30_lvds_probe, ptr @px30_lvds_encoder_helper_funcs }, [24 x i8] zeroinitializer }, align 32
@rk3288_lvds_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk3288_lvds_encoder_disable, ptr @rk3288_lvds_encoder_enable, ptr @rockchip_lvds_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_lvds\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* could not get pclk_lvds\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"*ERROR* no pinctrl handle\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lcdc\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* no default pinctrl state\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to prepare pclk_lvds\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Could not write to GRF: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to power on LVDS: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* failed to configure LVDS: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* failed to set VOP source: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to enable lvds pclk %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* failed to get pm runtime: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@px30_lvds_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @px30_lvds_encoder_disable, ptr @px30_lvds_encoder_enable, ptr @rockchip_lvds_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dphy\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Unsupported display output %d\0A\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 746, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"rockchip_lvds_dt_ids\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 522, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"rockchip_lvds_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 742, i32 24 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 709, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 711, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 717, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"rockchip_lvds_component_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 683, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 725, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 551, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 557, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 566, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 570, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 578, i32 44 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 585, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 590, i32 38 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 597, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 608, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [30 x i8] c"rockchip_lvds_connector_funcs\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 105, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 622, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant [37 x i8] c"rockchip_lvds_connector_helper_funcs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 122, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 637, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 647, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 95, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 97, i32 22 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 99, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 83, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 85, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 87, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"rk3288_lvds_data\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 512, i32 44 }
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"px30_lvds_data\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 517, i32 44 }
@___asan_gen_.131 = private unnamed_addr constant [33 x i8] c"rk3288_lvds_encoder_helper_funcs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 427, i32 33 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 449, i32 39 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 451, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 462, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 467, i32 40 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 469, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 477, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 229, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 298, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 305, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 312, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 146, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 151, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [31 x i8] c"px30_lvds_encoder_helper_funcs\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 434, i32 33 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 497, i32 40 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [44 x i8] c"../drivers/gpu/drm/rockchip/rockchip_lvds.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 360, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @.str, ptr @rockchip_lvds_dt_ids, ptr @rockchip_lvds_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rockchip_lvds_component_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @rockchip_lvds_connector_funcs, ptr @.str.15, ptr @rockchip_lvds_connector_helper_funcs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rk3288_lvds_data, ptr @px30_lvds_data, ptr @rk3288_lvds_encoder_helper_funcs, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @px30_lvds_encoder_helper_funcs, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_lvds_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_lvds_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_lvds_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_lvds_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_lvds_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_lvds_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_lvds_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_lvds_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_lvds_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_lvds_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1168, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 8
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @of_match_node(ptr noundef nonnull @rockchip_lvds_dt_ids, ptr noundef %4) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %data = getelementptr inbounds %struct.of_device_id, ptr %call8, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %soc_data = getelementptr inbounds %struct.rockchip_lvds, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %soc_data, align 4
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call13 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %9, ptr noundef nonnull @.str.1) #6
  %grf = getelementptr inbounds %struct.rockchip_lvds, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %grf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call13, ptr %grf, align 8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #6
  %11 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %grf, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc_data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call21 = tail call i32 %17(ptr noundef %pdev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call26 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @rockchip_lvds_component_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.then27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #6
  %pclk = getelementptr inbounds %struct.rockchip_lvds, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pclk, align 4
  tail call void @clk_unprepare(ptr noundef %20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end24.cleanup_crit_edge, %if.then23, %if.then16, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then16 ], [ %call21, %if.then23 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ %call26, %if.then27 ], [ %call26, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_lvds_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @rockchip_lvds_component_ops) #6
  %pclk = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_lvds_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  %name = alloca ptr, align 4
  %endpoint_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #6
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endpoint_id) #6
  %3 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %endpoint_id, align 4
  %drm_dev1 = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %drm_dev1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_graph_get_port_by_id(ptr noundef %6, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_get_next_child(ptr noundef nonnull %call2, ptr noundef null) #6
  %cmp.not187 = icmp eq ptr %call3, null
  br i1 %cmp.not187, label %if.end.if.then12_crit_edge, label %for.body.lr.ph

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.body.lr.ph:                                   ; preds = %if.end
  %panel = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 9
  %bridge = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child_count.0189 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %endpoint.0188 = phi ptr [ %call3, %for.body.lr.ph ], [ %call10, %for.inc.for.body_crit_edge ]
  %inc = add i32 %child_count.0189, 1
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %endpoint.0188, ptr noundef nonnull @.str.7, ptr noundef nonnull %endpoint_id, i32 noundef 1, i32 noundef 0) #6
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %9 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %endpoint_id, align 4
  %call6 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %8, i32 noundef 1, i32 noundef %10, ptr noundef %panel, ptr noundef %bridge) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.end.thread, label %for.inc

for.inc:                                          ; preds = %for.body
  %call10 = call ptr @of_get_next_child(ptr noundef nonnull %call2, ptr noundef nonnull %endpoint.0188) #6
  %cmp.not = icmp eq ptr %call10, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool11.not = icmp eq i32 %inc, 0
  br i1 %tobool11.not, label %for.end.if.then12_crit_edge, label %if.else

for.end.if.then12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.end.thread:                                   ; preds = %for.body
  call void @of_node_put(ptr noundef nonnull %endpoint.0188) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool11.not180 = icmp eq i32 %inc, 0
  br i1 %tobool11.not180, label %for.end.thread.if.then12_crit_edge, label %for.end.thread.if.end16_crit_edge

for.end.thread.if.end16_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

for.end.thread.if.then12_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then12:                                        ; preds = %for.end.thread.if.then12_crit_edge, %for.end.if.then12_crit_edge, %if.end.if.then12_crit_edge
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8) #6
  br label %err_put_port

if.else:                                          ; preds = %for.end
  br i1 %cmp.not187, label %if.else.if.end16_crit_edge, label %if.then14

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #6
  br label %err_put_port

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %for.end.thread.if.end16_crit_edge
  %panel17 = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %panel17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %panel17, align 4
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %if.else23, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %of_node22 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  br label %if.end26

if.else23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %bridge24 = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %bridge24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bridge24, align 8
  %of_node25 = getelementptr inbounds %struct.drm_bridge, ptr %16, i32 0, i32 4
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %if.then19
  %remote.0.in = phi ptr [ %of_node22, %if.then19 ], [ %of_node25, %if.else23 ]
  %17 = ptrtoint ptr %remote.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %remote.0 = load ptr, ptr %remote.0.in, align 4
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call28 = call i32 @of_property_read_string(ptr noundef %19, ptr noundef nonnull @.str.10, ptr noundef nonnull %name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else31, label %if.end26.if.end34_crit_edge

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.else31:                                        ; preds = %if.end26
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %call.i = call i32 @strncmp(ptr noundef %21, ptr noundef nonnull dereferenceable(4) @.str.18, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.else31.if.end34_crit_edge, label %if.else.i

if.else31.if.end34_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.else.i:                                        ; preds = %if.else31
  %call1.i = call i32 @strncmp(ptr noundef %21, ptr noundef nonnull dereferenceable(5) @.str.19, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.else.i.if.end34_crit_edge, label %if.else4.i

if.else.i.if.end34_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 @strncmp(ptr noundef %21, ptr noundef nonnull dereferenceable(9) @.str.20, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  %..i = select i1 %cmp6.i, i32 2, i32 -22
  br label %if.end34

if.end34:                                         ; preds = %if.else4.i, %if.else.i.if.end34_crit_edge, %if.else31.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  %retval.0.i.sink = phi i32 [ 0, %if.end26.if.end34_crit_edge ], [ 0, %if.else31.if.end34_crit_edge ], [ 1, %if.else.i.if.end34_crit_edge ], [ %..i, %if.else4.i ]
  %output33 = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %output33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i.sink, ptr %output33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.sink)
  %cmp36 = icmp slt i32 %retval.0.i.sink, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %output35 = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, ptr noundef %24) #6
  %25 = ptrtoint ptr %output35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %output35, align 8
  br label %err_put_remote

if.end39:                                         ; preds = %if.end34
  %call40 = call i32 @of_property_read_string(ptr noundef %remote.0, ptr noundef nonnull @.str.12, ptr noundef nonnull %name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.else43, label %if.end39.if.end46_crit_edge

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.else43:                                        ; preds = %if.end39
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 4
  %call.i166 = call i32 @strncmp(ptr noundef %28, ptr noundef nonnull dereferenceable(9) @.str.21, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp.i167 = icmp eq i32 %call.i166, 0
  br i1 %cmp.i167, label %if.else43.if.end46_crit_edge, label %if.else.i170

if.else43.if.end46_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.else.i170:                                     ; preds = %if.else43
  %call1.i168 = call i32 @strncmp(ptr noundef %28, ptr noundef nonnull dereferenceable(9) @.str.22, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168)
  %cmp2.i169 = icmp eq i32 %call1.i168, 0
  br i1 %cmp2.i169, label %if.else.i170.if.end46_crit_edge, label %if.else4.i174

if.else.i170.if.end46_crit_edge:                  ; preds = %if.else.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.else4.i174:                                    ; preds = %if.else.i170
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i171 = call i32 @strncmp(ptr noundef %28, ptr noundef nonnull dereferenceable(8) @.str.23, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i171)
  %cmp6.i172 = icmp eq i32 %call5.i171, 0
  %..i173 = select i1 %cmp6.i172, i32 0, i32 -22
  br label %if.end46

if.end46:                                         ; preds = %if.else4.i174, %if.else.i170.if.end46_crit_edge, %if.else43.if.end46_crit_edge, %if.end39.if.end46_crit_edge
  %retval.0.i175.sink = phi i32 [ 2, %if.end39.if.end46_crit_edge ], [ 3, %if.else43.if.end46_crit_edge ], [ 1, %if.else.i170.if.end46_crit_edge ], [ %..i173, %if.else4.i174 ]
  %format45 = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %format45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i175.sink, ptr %format45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i175.sink)
  %cmp48 = icmp slt i32 %retval.0.i175.sink, 0
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %format47 = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13, ptr noundef %31) #6
  %32 = ptrtoint ptr %format47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format47, align 4
  br label %err_put_remote

if.end51:                                         ; preds = %if.end46
  %encoder52 = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call54 = call i32 @drm_of_find_possible_crtcs(ptr noundef %data, ptr noundef %35) #6
  %possible_crtcs = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 12, i32 6
  %36 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call54, ptr %possible_crtcs, align 4
  %call55 = call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %encoder52, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %dev58 = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 2
  %37 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev58, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.14, i32 noundef %call55) #6
  br label %err_put_remote

if.end59:                                         ; preds = %if.end51
  %soc_data = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %soc_data, align 4
  %helper_funcs = getelementptr inbounds %struct.rockchip_lvds_soc_data, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %helper_funcs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %helper_funcs, align 4
  %helper_private.i = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 12, i32 11
  %43 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %helper_private.i, align 4
  %connector60 = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 11
  %44 = ptrtoint ptr %panel17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %panel17, align 4
  %tobool62.not = icmp eq ptr %45, null
  br i1 %tobool62.not, label %if.else69, label %if.then63

if.then63:                                        ; preds = %if.end59
  %dpms = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 11, i32 34
  %46 = ptrtoint ptr %dpms to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %dpms, align 8
  %call64 = call i32 @drm_connector_init(ptr noundef %data, ptr noundef %connector60, ptr noundef nonnull @rockchip_lvds_connector_funcs, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %dev67 = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 2
  %47 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev67, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %48, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15, i32 noundef %call64) #6
  br label %err_free_encoder

if.end68:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %helper_private.i176 = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 11, i32 35
  %49 = ptrtoint ptr %helper_private.i176 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @rockchip_lvds_connector_helper_funcs, ptr %helper_private.i176, align 4
  br label %if.end82

if.else69:                                        ; preds = %if.end59
  %bridge70 = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 10
  %50 = ptrtoint ptr %bridge70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bridge70, align 8
  %call71 = call i32 @drm_bridge_attach(ptr noundef %encoder52, ptr noundef %51, ptr noundef null, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.else69.err_free_encoder_crit_edge

if.else69.err_free_encoder_crit_edge:             ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_encoder

if.end74:                                         ; preds = %if.else69
  %52 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %drm_dev1, align 8
  %call76 = call ptr @drm_bridge_connector_init(ptr noundef %53, ptr noundef %encoder52) #6
  %cmp.i177 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then78, label %if.end74.if.end82_crit_edge

if.end74.if.end82_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %dev79 = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 2
  %54 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev79, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %55, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16, ptr noundef nonnull %call76) #6
  %56 = ptrtoint ptr %call76 to i32
  br label %err_free_encoder

if.end82:                                         ; preds = %if.end74.if.end82_crit_edge, %if.end68
  %connector.0 = phi ptr [ %connector60, %if.end68 ], [ %call76, %if.end74.if.end82_crit_edge ]
  %call83 = call i32 @drm_connector_attach_encoder(ptr noundef %connector.0, ptr noundef %encoder52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %dev86 = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 2
  %57 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev86, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %58, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17, i32 noundef %call83) #6
  call void @drm_connector_cleanup(ptr noundef %connector.0) #6
  br label %err_free_encoder

if.end87:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  call void @pm_runtime_enable(ptr noundef %dev) #6
  call void @of_node_put(ptr noundef %remote.0) #6
  call void @of_node_put(ptr noundef nonnull %call2) #6
  br label %cleanup

err_free_encoder:                                 ; preds = %if.then85, %if.then78, %if.else69.err_free_encoder_crit_edge, %if.then66
  %ret.2 = phi i32 [ %call64, %if.then66 ], [ %call83, %if.then85 ], [ %call71, %if.else69.err_free_encoder_crit_edge ], [ %56, %if.then78 ]
  call void @drm_encoder_cleanup(ptr noundef %encoder52) #6
  br label %err_put_remote

err_put_remote:                                   ; preds = %err_free_encoder, %if.then57, %if.then49, %if.then37
  %ret.3 = phi i32 [ %26, %if.then37 ], [ %33, %if.then49 ], [ %call55, %if.then57 ], [ %ret.2, %err_free_encoder ]
  call void @of_node_put(ptr noundef %remote.0) #6
  br label %err_put_port

err_put_port:                                     ; preds = %err_put_remote, %if.then14, %if.then12
  %ret.4 = phi i32 [ -517, %if.then14 ], [ %ret.3, %err_put_remote ], [ -22, %if.then12 ]
  call void @of_node_put(ptr noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %err_put_port, %if.end87, %if.then
  %retval.0 = phi i32 [ %ret.4, %err_put_port ], [ 0, %if.end87 ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endpoint_id) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_lvds_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_data = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data, align 4
  %helper_funcs = getelementptr inbounds %struct.rockchip_lvds_soc_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %helper_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %helper_funcs, align 4
  %disable = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable, align 4
  %encoder = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 12
  tail call void %7(ptr noundef %encoder) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %connector = getelementptr inbounds %struct.rockchip_lvds, ptr %1, i32 0, i32 11
  tail call void @drm_connector_cleanup(ptr noundef %connector) #6
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_lvds_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %panel1 = getelementptr i8, ptr %connector, i32 -12
  %0 = ptrtoint ptr %panel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel1, align 4
  %call = tail call i32 @drm_panel_get_modes(ptr noundef %1, ptr noundef %connector) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3288_lvds_probe(ptr noundef %pdev, ptr nocapture noundef %lvds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.rockchip_lvds, ptr %lvds, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %lvds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lvds, align 8
  %call5 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.24) #6
  %pclk = getelementptr inbounds %struct.rockchip_lvds, ptr %lvds, i32 0, i32 3
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %pclk, align 4
  %cmp.i75 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %lvds to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lvds, align 8
  br i1 %cmp.i75, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #6
  %7 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pclk, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 20, i32 noundef 3520) #6
  %pins = getelementptr inbounds %struct.rockchip_lvds, ptr %lvds, i32 0, i32 13
  %10 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %pins, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %lvds to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lvds, align 8
  %call19 = tail call ptr @devm_pinctrl_get(ptr noundef %12) #6
  %13 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pins, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call19, ptr %14, align 4
  %16 = load ptr, ptr %pins, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %cmp.i76 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.end17.if.end42.sink.split_crit_edge, label %if.else

if.end17.if.end42.sink.split_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.sink.split

if.else:                                          ; preds = %if.end17
  %call31 = tail call ptr @pinctrl_lookup_state(ptr noundef %18, ptr noundef nonnull @.str.27) #6
  %19 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pins, align 8
  %default_state = getelementptr inbounds %struct.dev_pin_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %default_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call31, ptr %default_state, align 4
  %22 = load ptr, ptr %pins, align 8
  %default_state34 = getelementptr inbounds %struct.dev_pin_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %default_state34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %default_state34, align 4
  %cmp.i77 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.else.if.end42.sink.split_crit_edge, label %if.else.if.end42_crit_edge

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.else.if.end42.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.else.if.end42.sink.split_crit_edge, %if.end17.if.end42.sink.split_crit_edge
  %.str.28.sink = phi ptr [ @.str.26, %if.end17.if.end42.sink.split_crit_edge ], [ @.str.28, %if.else.if.end42.sink.split_crit_edge ]
  %25 = ptrtoint ptr %lvds to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lvds, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull %.str.28.sink) #6
  %27 = ptrtoint ptr %lvds to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lvds, align 8
  %29 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pins, align 8
  tail call void @devm_kfree(ptr noundef %28, ptr noundef %30) #6
  %31 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %pins, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.else.if.end42_crit_edge
  %32 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pclk, align 4
  %call44 = tail call i32 @clk_prepare(ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp = icmp slt i32 %call44, 0
  br i1 %cmp, label %if.then45, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %lvds to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lvds, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.29) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end42.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %9, %if.then8 ], [ %call44, %if.then45 ], [ -12, %if.end12.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3288_lvds_encoder_disable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %encoder, i32 -1088
  %panel = getelementptr i8, ptr %encoder, i32 -1052
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %call = tail call i32 @drm_panel_disable(ptr noundef %1) #6
  %regs.i.i = getelementptr i8, ptr %encoder, i32 -1084
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1845493760) #6, !srcloc !103
  %output.i.i = getelementptr i8, ptr %encoder, i32 -1064
  %4 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %output.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 1
  br i1 %cmp.i.i, label %entry.rk3288_writel.exit.i_crit_edge, label %if.end.i.i

entry.rk3288_writel.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %7, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 -1845493760) #6, !srcloc !103
  br label %rk3288_writel.exit.i

rk3288_writel.exit.i:                             ; preds = %if.end.i.i, %entry.rk3288_writel.exit.i_crit_edge
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 0) #6, !srcloc !103
  %10 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %output.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i14.i = icmp eq i32 %11, 1
  br i1 %cmp.i14.i, label %rk3288_writel.exit.i.rk3288_writel.exit18.i_crit_edge, label %if.end.i17.i

rk3288_writel.exit.i.rk3288_writel.exit18.i_crit_edge: ; preds = %rk3288_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit18.i

if.end.i17.i:                                     ; preds = %rk3288_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i16.i = getelementptr i8, ptr %13, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i16.i, i32 0) #6, !srcloc !103
  br label %rk3288_writel.exit18.i

rk3288_writel.exit18.i:                           ; preds = %if.end.i17.i, %rk3288_writel.exit.i.rk3288_writel.exit18.i_crit_edge
  %grf.i = getelementptr i8, ptr %encoder, i32 -1080
  %14 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %grf.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 608, i32 noundef -1739548592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %rk3288_writel.exit18.i.rk3288_lvds_poweroff.exit_crit_edge, label %if.then.i

rk3288_writel.exit18.i.rk3288_lvds_poweroff.exit_crit_edge: ; preds = %rk3288_writel.exit18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_lvds_poweroff.exit

if.then.i:                                        ; preds = %rk3288_writel.exit18.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.30, i32 noundef %call.i) #6
  br label %rk3288_lvds_poweroff.exit

rk3288_lvds_poweroff.exit:                        ; preds = %if.then.i, %rk3288_writel.exit18.i.rk3288_lvds_poweroff.exit_crit_edge
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 5) #6
  %pclk.i = getelementptr i8, ptr %encoder, i32 -1076
  %20 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  %22 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %panel, align 4
  %call2 = tail call i32 @drm_panel_unprepare(ptr noundef %23) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3288_lvds_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  %endpoint.i.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %encoder, i32 -1088
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %panel = getelementptr i8, ptr %encoder, i32 -1052
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %call = tail call i32 @drm_panel_prepare(ptr noundef %5) #6
  %pclk.i = getelementptr i8, ptr %encoder, i32 -1076
  %6 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.34, i32 noundef %call.i) #6
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.35, i32 noundef %call.i.i) #6
  %12 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  br label %if.then

if.end7.i:                                        ; preds = %if.end.i
  %output.i = getelementptr i8, ptr %encoder, i32 -1064
  %14 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.i = icmp eq i32 %15, 0
  %regs.i.i = getelementptr i8, ptr %encoder, i32 -1084
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 2130706432) #6, !srcloc !103
  %18 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 1
  br i1 %cmp.i.i, label %if.then9.i.rk3288_writel.exit.i_crit_edge, label %if.end.i.i

if.then9.i.rk3288_writel.exit.i_crit_edge:        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit.i

if.end.i.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %21, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 2130706432) #6, !srcloc !103
  br label %rk3288_writel.exit.i

rk3288_writel.exit.i:                             ; preds = %if.end.i.i, %if.then9.i.rk3288_writel.exit.i_crit_edge
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !103
  %24 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i42.i = icmp eq i32 %25, 1
  br i1 %cmp.i42.i, label %rk3288_writel.exit.i.rk3288_writel.exit45.i_crit_edge, label %if.end.i44.i

rk3288_writel.exit.i.rk3288_writel.exit45.i_crit_edge: ; preds = %rk3288_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit45.i

if.end.i44.i:                                     ; preds = %rk3288_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i43.i = getelementptr i8, ptr %27, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i43.i, i32 0) #6, !srcloc !103
  br label %rk3288_writel.exit45.i

rk3288_writel.exit45.i:                           ; preds = %if.end.i44.i, %rk3288_writel.exit.i.rk3288_writel.exit45.i_crit_edge
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 1056964608) #6, !srcloc !103
  %30 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i49.i = icmp eq i32 %31, 1
  br i1 %cmp.i49.i, label %rk3288_writel.exit45.i.rk3288_writel.exit53.i_crit_edge, label %if.end.i52.i

rk3288_writel.exit45.i.rk3288_writel.exit53.i_crit_edge: ; preds = %rk3288_writel.exit45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit53.i

if.end.i52.i:                                     ; preds = %rk3288_writel.exit45.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i51.i = getelementptr i8, ptr %33, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i51.i, i32 1056964608) #6, !srcloc !103
  br label %rk3288_writel.exit53.i

rk3288_writel.exit53.i:                           ; preds = %if.end.i52.i, %rk3288_writel.exit45.i.rk3288_writel.exit53.i_crit_edge
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 1056964608) #6, !srcloc !103
  %36 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i57.i = icmp eq i32 %37, 1
  br i1 %cmp.i57.i, label %rk3288_writel.exit53.i.if.end11.i_crit_edge, label %if.end.i60.i

rk3288_writel.exit53.i.if.end11.i_crit_edge:      ; preds = %rk3288_writel.exit53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.end.i60.i:                                     ; preds = %rk3288_writel.exit53.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i59.i = getelementptr i8, ptr %39, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i59.i, i32 1056964608) #6, !srcloc !103
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1090519040) #6, !srcloc !103
  %40 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i64.i = icmp eq i32 %41, 1
  br i1 %cmp.i64.i, label %if.else.i.rk3288_writel.exit67.i_crit_edge, label %if.end.i66.i

if.else.i.rk3288_writel.exit67.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit67.i

if.end.i66.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i65.i = getelementptr i8, ptr %43, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i65.i, i32 -1090519040) #6, !srcloc !103
  br label %rk3288_writel.exit67.i

rk3288_writel.exit67.i:                           ; preds = %if.end.i66.i, %if.else.i.rk3288_writel.exit67.i_crit_edge
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 1056964608) #6, !srcloc !103
  %46 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i71.i = icmp eq i32 %47, 1
  br i1 %cmp.i71.i, label %rk3288_writel.exit67.i.rk3288_writel.exit75.i_crit_edge, label %if.end.i74.i

rk3288_writel.exit67.i.rk3288_writel.exit75.i_crit_edge: ; preds = %rk3288_writel.exit67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit75.i

if.end.i74.i:                                     ; preds = %rk3288_writel.exit67.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i73.i = getelementptr i8, ptr %49, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i73.i, i32 1056964608) #6, !srcloc !103
  br label %rk3288_writel.exit75.i

rk3288_writel.exit75.i:                           ; preds = %if.end.i74.i, %rk3288_writel.exit67.i.rk3288_writel.exit75.i_crit_edge
  %50 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 -33554432) #6, !srcloc !103
  %52 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i79.i = icmp eq i32 %53, 1
  br i1 %cmp.i79.i, label %rk3288_writel.exit75.i.rk3288_writel.exit83.i_crit_edge, label %if.end.i82.i

rk3288_writel.exit75.i.rk3288_writel.exit83.i_crit_edge: ; preds = %rk3288_writel.exit75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit83.i

if.end.i82.i:                                     ; preds = %rk3288_writel.exit75.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i81.i = getelementptr i8, ptr %55, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i81.i, i32 -33554432) #6, !srcloc !103
  br label %rk3288_writel.exit83.i

rk3288_writel.exit83.i:                           ; preds = %if.end.i82.i, %rk3288_writel.exit75.i.rk3288_writel.exit83.i_crit_edge
  %56 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %57, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 0) #6, !srcloc !103
  %58 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i87.i = icmp eq i32 %59, 1
  br i1 %cmp.i87.i, label %rk3288_writel.exit83.i.rk3288_writel.exit91.i_crit_edge, label %if.end.i90.i

rk3288_writel.exit83.i.rk3288_writel.exit91.i_crit_edge: ; preds = %rk3288_writel.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit91.i

if.end.i90.i:                                     ; preds = %rk3288_writel.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i89.i = getelementptr i8, ptr %61, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i89.i, i32 0) #6, !srcloc !103
  br label %rk3288_writel.exit91.i

rk3288_writel.exit91.i:                           ; preds = %if.end.i90.i, %rk3288_writel.exit83.i.rk3288_writel.exit91.i_crit_edge
  %62 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %63, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 0) #6, !srcloc !103
  %64 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i95.i = icmp eq i32 %65, 1
  br i1 %cmp.i95.i, label %rk3288_writel.exit91.i.if.end11.i_crit_edge, label %if.end.i98.i

rk3288_writel.exit91.i.if.end11.i_crit_edge:      ; preds = %rk3288_writel.exit91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.end.i98.i:                                     ; preds = %rk3288_writel.exit91.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i97.i = getelementptr i8, ptr %67, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i97.i, i32 0) #6, !srcloc !103
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i98.i, %rk3288_writel.exit91.i.if.end11.i_crit_edge, %if.end.i60.i, %rk3288_writel.exit53.i.if.end11.i_crit_edge
  %68 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %69, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 1174405120) #6, !srcloc !103
  %70 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp.i103.i = icmp eq i32 %71, 1
  br i1 %cmp.i103.i, label %if.end11.i.rk3288_writel.exit107.i_crit_edge, label %if.end.i106.i

if.end11.i.rk3288_writel.exit107.i_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit107.i

if.end.i106.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i105.i = getelementptr i8, ptr %73, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i105.i, i32 1174405120) #6, !srcloc !103
  br label %rk3288_writel.exit107.i

rk3288_writel.exit107.i:                          ; preds = %if.end.i106.i, %if.end11.i.rk3288_writel.exit107.i_crit_edge
  %74 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %75, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 167772160) #6, !srcloc !103
  %76 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp.i111.i = icmp eq i32 %77, 1
  br i1 %cmp.i111.i, label %rk3288_writel.exit107.i.rk3288_writel.exit115.i_crit_edge, label %if.end.i114.i

rk3288_writel.exit107.i.rk3288_writel.exit115.i_crit_edge: ; preds = %rk3288_writel.exit107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit115.i

if.end.i114.i:                                    ; preds = %rk3288_writel.exit107.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i113.i = getelementptr i8, ptr %79, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i113.i, i32 167772160) #6, !srcloc !103
  br label %rk3288_writel.exit115.i

rk3288_writel.exit115.i:                          ; preds = %if.end.i114.i, %rk3288_writel.exit107.i.rk3288_writel.exit115.i_crit_edge
  %80 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %81, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 1140850688) #6, !srcloc !103
  %82 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp.i119.i = icmp eq i32 %83, 1
  br i1 %cmp.i119.i, label %rk3288_writel.exit115.i.rk3288_writel.exit123.i_crit_edge, label %if.end.i122.i

rk3288_writel.exit115.i.rk3288_writel.exit123.i_crit_edge: ; preds = %rk3288_writel.exit115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit123.i

if.end.i122.i:                                    ; preds = %rk3288_writel.exit115.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i121.i = getelementptr i8, ptr %85, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i121.i, i32 1140850688) #6, !srcloc !103
  br label %rk3288_writel.exit123.i

rk3288_writel.exit123.i:                          ; preds = %if.end.i122.i, %rk3288_writel.exit115.i.rk3288_writel.exit123.i_crit_edge
  %86 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %87, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 0) #6, !srcloc !103
  %88 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp.i127.i = icmp eq i32 %89, 1
  br i1 %cmp.i127.i, label %rk3288_writel.exit123.i.rk3288_writel.exit131.i_crit_edge, label %if.end.i130.i

rk3288_writel.exit123.i.rk3288_writel.exit131.i_crit_edge: ; preds = %rk3288_writel.exit123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk3288_writel.exit131.i

if.end.i130.i:                                    ; preds = %rk3288_writel.exit123.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i129.i = getelementptr i8, ptr %91, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i129.i, i32 0) #6, !srcloc !103
  br label %rk3288_writel.exit131.i

rk3288_writel.exit131.i:                          ; preds = %if.end.i130.i, %rk3288_writel.exit123.i.rk3288_writel.exit131.i_crit_edge
  %92 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i133.i = getelementptr i8, ptr %93, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133.i, i32 -1845493760) #6, !srcloc !103
  %94 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp.i135.i = icmp eq i32 %95, 1
  br i1 %cmp.i135.i, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %rk3288_writel.exit131.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i56 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 11
  %96 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags.i56, align 4
  br label %if.end14.thread.i

if.then:                                          ; preds = %if.then4.i, %if.then.i
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.then4.i ], [ %call.i, %if.then.i ]
  %98 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %99, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.31, i32 noundef %retval.0.i.ph) #6
  %100 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_panel_unprepare(ptr noundef %101) #6
  br label %cleanup

if.end:                                           ; preds = %rk3288_writel.exit131.i
  %102 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i137.i = getelementptr i8, ptr %103, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i137.i, i32 -1845493760) #6, !srcloc !103
  %104 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr = load i32, ptr %output.i, align 8
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 11
  %105 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i39 = icmp eq i32 %.pr, 0
  br i1 %cmp.i39, label %if.then.i40, label %if.end.if.end14.thread.i_crit_edge

if.end.if.end14.thread.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.thread.i

if.end14.thread.i:                                ; preds = %if.end.if.end14.thread.i_crit_edge, %if.end.thread
  %107 = phi i32 [ %97, %if.end.thread ], [ %106, %if.end.if.end14.thread.i_crit_edge ]
  %108 = phi i32 [ 1, %if.end.thread ], [ %.pr, %if.end.if.end14.thread.i_crit_edge ]
  %format65.i = getelementptr i8, ptr %encoder, i32 -1060
  %109 = ptrtoint ptr %format65.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %format65.i, align 4
  br label %if.else.i43

if.then.i40:                                      ; preds = %if.end
  %pins.i = getelementptr i8, ptr %encoder, i32 72
  %111 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pins.i, align 8
  %tobool7.not.i = icmp eq ptr %112, null
  br i1 %tobool7.not.i, label %if.then.i40.if.end14.i_crit_edge, label %land.lhs.true.i

if.then.i40.if.end14.i_crit_edge:                 ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.then.i40
  %default_state.i = getelementptr inbounds %struct.dev_pin_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %default_state.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %default_state.i, align 4
  %cmp.i.i41 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i41, label %land.lhs.true.i.if.end14.i_crit_edge, label %if.then9.i42

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then9.i42:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %112, align 4
  %call13.i = tail call i32 @pinctrl_select_state(ptr noundef %116, ptr noundef %114) #6
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i42, %land.lhs.true.i.if.end14.i_crit_edge, %if.then.i40.if.end14.i_crit_edge
  %117 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pr.i = load i32, ptr %output.i, align 8
  %format.i = getelementptr i8, ptr %encoder, i32 -1060
  %118 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp16.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp16.i, label %if.then18.i, label %if.end14.i.if.else.i43_crit_edge

if.end14.i.if.else.i43_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i43

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %or19.i = or i32 %119, 6208
  br label %if.end26.i

if.else.i43:                                      ; preds = %if.end14.i.if.else.i43_crit_edge, %if.end14.thread.i
  %120 = phi i32 [ %107, %if.end14.thread.i ], [ %106, %if.end14.i.if.else.i43_crit_edge ]
  %121 = phi i32 [ %110, %if.end14.thread.i ], [ %119, %if.end14.i.if.else.i43_crit_edge ]
  %122 = phi i32 [ %108, %if.end14.thread.i ], [ %.pr.i, %if.end14.i.if.else.i43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %122)
  %cmp21.i = icmp eq i32 %122, 2
  %spec.select.v.i = select i1 %cmp21.i, i32 6160, i32 2048
  %spec.select.i = or i32 %spec.select.v.i, %121
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i43, %if.then18.i
  %123 = phi i32 [ %106, %if.then18.i ], [ %120, %if.else.i43 ]
  %val.0.i = phi i32 [ %or19.i, %if.then18.i ], [ %spec.select.i, %if.else.i43 ]
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 4
  %124 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %htotal.i, align 2
  %conv27.i = zext i16 %125 to i32
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 2
  %126 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %hsync_start.i, align 2
  %conv28.i = zext i16 %127 to i32
  %sub.i = sub nsw i32 %conv27.i, %conv28.i
  %and29.i = shl nsw i32 %sub.i, 7
  %128 = and i32 %and29.i, 128
  %129 = shl i32 %123, 1
  %shl.i = and i32 %129, 256
  %130 = shl i32 %123, 9
  %shl36.i = and i32 %130, 512
  %131 = or i32 %shl.i, %shl36.i
  %or37.i = or i32 %131, %val.0.i
  %or38.i = or i32 %or37.i, %128
  %or39.i = or i32 %or38.i, -65536
  %grf.i = getelementptr i8, ptr %encoder, i32 -1080
  %132 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %grf.i, align 8
  %call40.i = tail call i32 @regmap_write(ptr noundef %133, i32 noundef 608, i32 noundef %or39.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  %134 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr, align 8
  br i1 %tobool41.not.i, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %135, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.30, i32 noundef %call40.i) #6
  %136 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %137, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.32, i32 noundef %call40.i) #6
  %138 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %panel, align 4
  %call8 = tail call i32 @drm_panel_unprepare(ptr noundef %139) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end26.i
  %of_node.i = getelementptr inbounds %struct.device, ptr %135, i32 0, i32 27
  %140 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i.i) #6
  %142 = ptrtoint ptr %endpoint.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %endpoint.i.i, align 4, !annotation !102
  %143 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i.i, i32 0, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %143, align 4, !annotation !102
  %145 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i.i, i32 0, i32 2
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr inttoptr (i32 -1 to ptr), ptr %145, align 4, !annotation !102
  %call.i.i44 = call i32 @drm_of_encoder_active_endpoint(ptr noundef %141, ptr noundef %encoder, ptr noundef nonnull %endpoint.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %tobool.not.i.i = icmp eq i32 %call.i.i44, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end9.drm_of_encoder_active_endpoint_id.exit.i_crit_edge

if.end9.drm_of_encoder_active_endpoint_id.exit.i_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_of_encoder_active_endpoint_id.exit.i

cond.false.i.i:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %143, align 4
  br label %drm_of_encoder_active_endpoint_id.exit.i

drm_of_encoder_active_endpoint_id.exit.i:         ; preds = %cond.false.i.i, %if.end9.drm_of_encoder_active_endpoint_id.exit.i_crit_edge
  %cond.i.i = phi i32 [ %148, %cond.false.i.i ], [ %call.i.i44, %if.end9.drm_of_encoder_active_endpoint_id.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp.i45 = icmp slt i32 %cond.i.i, 0
  br i1 %cmp.i45, label %drm_of_encoder_active_endpoint_id.exit.i.if.then12_crit_edge, label %rk3288_lvds_set_vop_source.exit

drm_of_encoder_active_endpoint_id.exit.i.if.then12_crit_edge: ; preds = %drm_of_encoder_active_endpoint_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

rk3288_lvds_set_vop_source.exit:                  ; preds = %drm_of_encoder_active_endpoint_id.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool.not.i = icmp eq i32 %cond.i.i, 0
  %spec.select.i46 = select i1 %tobool.not.i, i32 524288, i32 524296
  %149 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %grf.i, align 8
  %call3.i = call i32 @regmap_write(ptr noundef %150, i32 noundef 604, i32 noundef %spec.select.i46) #6
  %151 = call i32 @llvm.smin.i32(i32 %call3.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %tobool11.not = icmp sgt i32 %call3.i, -1
  br i1 %tobool11.not, label %if.end16, label %rk3288_lvds_set_vop_source.exit.if.then12_crit_edge

rk3288_lvds_set_vop_source.exit.if.then12_crit_edge: ; preds = %rk3288_lvds_set_vop_source.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then12:                                        ; preds = %rk3288_lvds_set_vop_source.exit.if.then12_crit_edge, %drm_of_encoder_active_endpoint_id.exit.i.if.then12_crit_edge
  %retval.0.i4955 = phi i32 [ %151, %rk3288_lvds_set_vop_source.exit.if.then12_crit_edge ], [ %cond.i.i, %drm_of_encoder_active_endpoint_id.exit.i.if.then12_crit_edge ]
  %152 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %153, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i4955) #6
  %154 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %panel, align 4
  %call15 = call i32 @drm_panel_unprepare(ptr noundef %155) #6
  br label %cleanup

if.end16:                                         ; preds = %rk3288_lvds_set_vop_source.exit
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %panel, align 4
  %call18 = call i32 @drm_panel_enable(ptr noundef %157) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then12, %if.then5, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rockchip_lvds_encoder_atomic_check(ptr nocapture noundef readnone %encoder, ptr nocapture noundef writeonly %crtc_state, ptr nocapture noundef readnone %conn_state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %output_mode = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 2
  %0 = ptrtoint ptr %output_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %output_mode, align 4
  %output_type = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 1
  %1 = ptrtoint ptr %output_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 7, ptr %output_type, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @px30_lvds_probe(ptr noundef %pdev, ptr nocapture noundef %lvds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rockchip_lvds, ptr %lvds, i32 0, i32 2
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1080, i32 noundef 134219776, i32 noundef 134219776, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @devm_phy_get(ptr noundef %dev, ptr noundef nonnull @.str.36) #6
  %dphy = getelementptr inbounds %struct.rockchip_lvds, ptr %lvds, i32 0, i32 4
  %2 = ptrtoint ptr %dphy to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %dphy, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call i32 @phy_init(ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dphy, align 8
  %call14 = tail call i32 @phy_set_mode_ext(ptr noundef %5, i32 noundef 18, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dphy, align 8
  %call19 = tail call i32 @phy_power_on(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ %call19, %if.end17 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @px30_lvds_encoder_disable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %encoder, i32 -1088
  %panel = getelementptr i8, ptr %encoder, i32 -1052
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %call = tail call i32 @drm_panel_disable(ptr noundef %1) #6
  %grf.i = getelementptr i8, ptr %encoder, i32 -1080
  %2 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1080, i32 noundef 272633920, i32 noundef 272629760, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %call.i3.i = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #6
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  %call2 = tail call i32 @drm_panel_unprepare(ptr noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @px30_lvds_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  %endpoint.i.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %encoder, i32 -1088
  %panel = getelementptr i8, ptr %encoder, i32 -1052
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %call = tail call i32 @drm_panel_prepare(ptr noundef %1) #6
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %px30_lvds_poweron.exit.thread, label %px30_lvds_poweron.exit

px30_lvds_poweron.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.35, i32 noundef %call.i.i) #6
  br label %if.then

px30_lvds_poweron.exit:                           ; preds = %entry
  %grf.i = getelementptr i8, ptr %encoder, i32 -1080
  %6 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grf.i, align 8
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1080, i32 noundef 272633920, i32 noundef 272633920, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool.not = icmp eq i32 %call.i7.i, 0
  br i1 %tobool.not, label %if.end, label %px30_lvds_poweron.exit.if.then_crit_edge

px30_lvds_poweron.exit.if.then_crit_edge:         ; preds = %px30_lvds_poweron.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %px30_lvds_poweron.exit.if.then_crit_edge, %px30_lvds_poweron.exit.thread
  %retval.0.i53 = phi i32 [ %call.i.i, %px30_lvds_poweron.exit.thread ], [ %call.i7.i, %px30_lvds_poweron.exit.if.then_crit_edge ]
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.31, i32 noundef %retval.0.i53) #6
  %10 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_panel_unprepare(ptr noundef %11) #6
  br label %cleanup

if.end:                                           ; preds = %px30_lvds_poweron.exit
  %output.i = getelementptr i8, ptr %encoder, i32 -1064
  %12 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %output.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 1
  br i1 %cmp.not.i, label %px30_lvds_grf_config.exit, label %px30_lvds_grf_config.exit.thread

px30_lvds_grf_config.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.37, i32 noundef %13) #6
  br label %if.then6

px30_lvds_grf_config.exit:                        ; preds = %if.end
  %16 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %grf.i, align 8
  %format.i = getelementptr i8, ptr %encoder, i32 -1060
  %18 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format.i, align 4
  %shl.i = shl i32 %19, 13
  %or.i = or i32 %shl.i, 1610612736
  %call.i.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1080, i32 noundef %or.i, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %tobool5.not = icmp eq i32 %call.i.i41, 0
  br i1 %tobool5.not, label %if.end10, label %px30_lvds_grf_config.exit.if.then6_crit_edge

px30_lvds_grf_config.exit.if.then6_crit_edge:     ; preds = %px30_lvds_grf_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %px30_lvds_grf_config.exit.if.then6_crit_edge, %px30_lvds_grf_config.exit.thread
  %retval.0.i4356 = phi i32 [ -22, %px30_lvds_grf_config.exit.thread ], [ %call.i.i41, %px30_lvds_grf_config.exit.if.then6_crit_edge ]
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i4356) #6
  %22 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %panel, align 4
  %call9 = tail call i32 @drm_panel_unprepare(ptr noundef %23) #6
  br label %cleanup

if.end10:                                         ; preds = %px30_lvds_grf_config.exit
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i.i) #6
  %28 = ptrtoint ptr %endpoint.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %endpoint.i.i, align 4, !annotation !102
  %29 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4, !annotation !102
  %31 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %31, align 4, !annotation !102
  %call.i.i44 = call i32 @drm_of_encoder_active_endpoint(ptr noundef %27, ptr noundef %encoder, ptr noundef nonnull %endpoint.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %tobool.not.i.i = icmp eq i32 %call.i.i44, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end10.drm_of_encoder_active_endpoint_id.exit.i_crit_edge

if.end10.drm_of_encoder_active_endpoint_id.exit.i_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_of_encoder_active_endpoint_id.exit.i

cond.false.i.i:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %29, align 4
  br label %drm_of_encoder_active_endpoint_id.exit.i

drm_of_encoder_active_endpoint_id.exit.i:         ; preds = %cond.false.i.i, %if.end10.drm_of_encoder_active_endpoint_id.exit.i_crit_edge
  %cond.i.i = phi i32 [ %34, %cond.false.i.i ], [ %call.i.i44, %if.end10.drm_of_encoder_active_endpoint_id.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp.i45 = icmp slt i32 %cond.i.i, 0
  br i1 %cmp.i45, label %drm_of_encoder_active_endpoint_id.exit.i.if.then13_crit_edge, label %px30_lvds_set_vop_source.exit

drm_of_encoder_active_endpoint_id.exit.i.if.then13_crit_edge: ; preds = %drm_of_encoder_active_endpoint_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

px30_lvds_set_vop_source.exit:                    ; preds = %drm_of_encoder_active_endpoint_id.exit.i
  %35 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %grf.i, align 8
  %shl.i47 = shl nuw i32 %cond.i.i, 1
  %or.i48 = or i32 %shl.i47, 131072
  %call.i5.i = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 1080, i32 noundef 131074, i32 noundef %or.i48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool12.not = icmp eq i32 %call.i5.i, 0
  br i1 %tobool12.not, label %if.end17, label %px30_lvds_set_vop_source.exit.if.then13_crit_edge

px30_lvds_set_vop_source.exit.if.then13_crit_edge: ; preds = %px30_lvds_set_vop_source.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then13:                                        ; preds = %px30_lvds_set_vop_source.exit.if.then13_crit_edge, %drm_of_encoder_active_endpoint_id.exit.i.if.then13_crit_edge
  %retval.0.i5059 = phi i32 [ %call.i5.i, %px30_lvds_set_vop_source.exit.if.then13_crit_edge ], [ %cond.i.i, %drm_of_encoder_active_endpoint_id.exit.i.if.then13_crit_edge ]
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i5059) #6
  %39 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %panel, align 4
  %call16 = call i32 @drm_panel_unprepare(ptr noundef %40) #6
  br label %cleanup

if.end17:                                         ; preds = %px30_lvds_set_vop_source.exit
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %panel, align 4
  %call19 = call i32 @drm_panel_enable(ptr noundef %42) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then13, %if.then6, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 746, i32 14}
!2 = !{ptr @rockchip_lvds_driver, !3, !"rockchip_lvds_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 742, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 709, i32 11}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 711, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 717, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 725, i32 3}
!13 = !{ptr @rockchip_lvds_component_ops, !14, !"rockchip_lvds_component_ops", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 683, i32 35}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 551, i32 3}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 557, i32 34}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 566, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 570, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 578, i32 44}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 585, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 590, i32 38}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 597, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 608, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 622, i32 4}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 637, i32 4}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 647, i32 3}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 95, i32 17}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 97, i32 22}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 99, i32 22}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 83, i32 17}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 85, i32 22}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 87, i32 22}
!51 = !{ptr @rockchip_lvds_connector_funcs, !52, !"rockchip_lvds_connector_funcs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 105, i32 41}
!53 = !{ptr @rockchip_lvds_connector_helper_funcs, !54, !"rockchip_lvds_connector_helper_funcs", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 122, i32 35}
!55 = !{ptr @rockchip_lvds_dt_ids, !56, !"rockchip_lvds_dt_ids", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 522, i32 34}
!57 = !{ptr @rk3288_lvds_data, !58, !"rk3288_lvds_data", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 512, i32 44}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 449, i32 39}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 451, i32 3}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 462, i32 3}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 467, i32 40}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 469, i32 4}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 477, i32 3}
!71 = !{ptr @rk3288_lvds_encoder_helper_funcs, !72, !"rk3288_lvds_encoder_helper_funcs", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 427, i32 33}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 229, i32 3}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 298, i32 3}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 305, i32 3}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 312, i32 3}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 146, i32 3}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 151, i32 3}
!85 = !{ptr @px30_lvds_data, !86, !"px30_lvds_data", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 517, i32 44}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 497, i32 40}
!89 = !{ptr @px30_lvds_encoder_helper_funcs, !90, !"px30_lvds_encoder_helper_funcs", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 434, i32 33}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/rockchip/rockchip_lvds.c", i32 360, i32 3}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{i64 5987854}
