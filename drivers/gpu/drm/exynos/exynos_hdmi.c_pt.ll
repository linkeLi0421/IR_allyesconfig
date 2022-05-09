; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_driver_data = type { i32, i8, %struct.hdmiphy_configs, %struct.string_array_spec, %struct.string_array_spec }
%struct.hdmiphy_configs = type { i32, ptr }
%struct.string_array_spec = type { i32, ptr }
%struct.hdmiphy_config = type { i32, [32 x i8] }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.hdmi_context = type { %struct.drm_encoder, ptr, ptr, %struct.drm_connector, i8, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, %struct.exynos_drm_clk, ptr, %struct.mutex, %struct.hdmi_audio, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.exynos_drm_clk = type { ptr }
%struct.hdmi_audio = type { ptr, %struct.hdmi_audio_infoframe, %struct.hdmi_codec_params, i8 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%struct.cec_connector_info = type { i32, %union.anon.119 }
%union.anon.119 = type { [16 x i32] }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.89 }
%union.anon.89 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos-hdmi\00", [20 x i8] zeroinitializer }, align 32
@hdmi_match_types = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_hdmi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4212_hdmi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_hdmi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_hdmi_driver_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@exynos_hdmi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_hdmi_suspend, ptr @exynos_hdmi_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@hdmi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hdmi_probe, ptr @hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hdmi_match_types, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_hdmi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@hdmi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hdata->mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* hdmi_resources_init failed\0A\00", [60 x i8] zeroinitializer }, align 32
@hdmi_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&hdata->hotplug_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@hdmi_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&hdata->hotplug_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to register hdmi interrupt\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,syscon-phandle\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* syscon regmap lookup failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,sysreg-phandle\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* sysreg regmap lookup failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* failed to enable hdmi-en regulator\0A\00", [52 x i8] zeroinitializer }, align 32
@hdmi_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @hdmi_bind, ptr @hdmi_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI resource init\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hpd\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* cannot get hpd gpio property\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to get GPIO irq\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdmi-en\00", [24 x i8] zeroinitializer }, align 32
@hdmi_clks_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 1705, ptr @.str.2, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot get clock %s, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdmi_clks_get\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/exynos/exynos_hdmi.c\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hdmi_clks_get._entry_ptr = internal global ptr @hdmi_clks_get._entry, section ".printk_index", align 4
@hdmi_clk_set_parents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.23, i32 789, ptr @.str.2, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot set clock parent of '%s' to '%s', %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdmi_clk_set_parents\00", [43 x i8] zeroinitializer }, align 32
@hdmi_clk_set_parents._entry_ptr = internal global ptr @hdmi_clk_set_parents._entry, section ".printk_index", align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_osc\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to get remote port parent\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung,exynos4210-hdmiddc\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddc\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"*ERROR* Failed to find ddc node in device tree\0A\00", [48 x i8] zeroinitializer }, align 32
@hdmi_get_ddc_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.23, i32 1908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] Failed to get ddc i2c adapter by node\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdmi_get_ddc_adapter\00", [43 x i8] zeroinitializer }, align 32
@hdmi_get_ddc_adapter._entry_ptr = internal global ptr @hdmi_get_ddc_adapter._entry, section ".printk_index", align 4
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung,exynos4212-hdmiphy\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"*ERROR* Failed to find hdmiphy node in device tree\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to ioremap hdmi phy\0A\00", [60 x i8] zeroinitializer }, align 32
@hdmi_get_phy_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.23, i32 1944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016[drm] Failed to get hdmi phy i2c client\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdmi_get_phy_io\00", [16 x i8] zeroinitializer }, align 32
@hdmi_get_phy_io._entry_ptr = internal global ptr @hdmi_get_phy_io._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@audio_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr null, ptr @hdmi_audio_hw_params, ptr null, ptr @hdmi_audio_shutdown, ptr @hdmi_audio_mute, ptr @hdmi_audio_get_eld, ptr null, ptr null, i8 -128 }, [60 x i8] zeroinitializer }, align 32
@__const.hdmi_register_audio_device.codec_data = private unnamed_addr constant { ptr, i8, [3 x i8], i32, ptr } { ptr @audio_codec_ops, i8 -128, [3 x i8] zeroinitializer, i32 6, ptr null }, align 4
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@hdmi_audio_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.23, i32 1602, ptr @.str.2, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Bad flags %d %d %d %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdmi_audio_hw_params\00", [43 x i8] zeroinitializer }, align 32
@hdmi_audio_hw_params._entry_ptr = internal global ptr @hdmi_audio_hw_params._entry, section ".printk_index", align 4
@hdmi_reg_map = internal constant { [6 x [2 x i32]], [48 x i8] } { [6 x [2 x i32]] [[2 x i32] [i32 65556, i32 32], [2 x i32] [i32 20, i32 116], [2 x i32] [i32 65920, i32 66560], [2 x i32] [i32 65924, i32 66576], [2 x i32] [i32 65936, i32 66592], [2 x i32] [i32 65952, i32 66608]], [48 x i8] zeroinitializer }, align 32
@exynos_hdmi_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @hdmi_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_disable, ptr @hdmi_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to create connector ret = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@hdmiphy_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.23, i32 1490, ptr @.str.2, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable HDMIPHY device.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmiphy_enable\00", [17 x i8] zeroinitializer }, align 32
@hdmiphy_enable._entry_ptr = internal global ptr @hdmiphy_enable._entry, section ".printk_index", align 4
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulator bulk\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to find hdmiphy conf\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to configure hdmiphy\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not find phy config for %d\0A\00", [62 x i8] zeroinitializer }, align 32
@exynos5433_hdmi_driver_data = internal constant { %struct.hdmi_driver_data, [32 x i8] } { %struct.hdmi_driver_data { i32 1, i8 -64, %struct.hdmiphy_configs { i32 10, ptr @hdmiphy_5433_configs }, %struct.string_array_spec { i32 5, ptr @hdmi_clk_gates5433 }, %struct.string_array_spec { i32 6, ptr @hdmi_clk_muxes5433 } }, [32 x i8] zeroinitializer }, align 32
@hdmiphy_5433_configs = internal constant { [10 x %struct.hdmiphy_config], [88 x i8] } { [10 x %struct.hdmiphy_config] [%struct.hdmiphy_config { i32 27000000, [32 x i8] c"\01Q-u\01\00\88\02rPD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 27027000, [32 x i8] c"\01Q-rd\09\88\C3qPD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 40000000, [32 x i8] c"\01Q2U\01\00\88\02MPD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 50000000, [32 x i8] c"\01Q4@d\09\88\C3=PD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 65000000, [32 x i8] c"\01Q61@\10\04\C6.\E8D\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 74176000, [32 x i8] c"\01Q>5[\DE\88BSQD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 74250000, [32 x i8] c"\01Q>5@\F0\88\C2RQD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 108000000, [32 x i8] c"\01Q-\15\01\00\88\02rRD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 148500000, [32 x i8] c"\01Q\1F\00@\F8\88\C1RR$\0C$\0F|\A5\D4+\87\00\00\04\000\08\10\01\01HJ\00@" }, %struct.hdmiphy_config { i32 297000000, [32 x i8] c"\01Q>\05@\F0\88\C2RSD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }], [88 x i8] zeroinitializer }, align 32
@hdmi_clk_gates5433 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], [44 x i8] zeroinitializer }, align 32
@hdmi_clk_muxes5433 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.57, ptr @.str.60, ptr @.str.61], [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdmi_pclk\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hdmi_i_pclk\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i_tmds_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i_pixel_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i_spdif_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"oscclk\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tmds_clko\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tmds_clko_user\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pixel_clko\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pixel_clko_user\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PLL stabilized after %d tries\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* PLL could not reach steady state\0A\00", [54 x i8] zeroinitializer }, align 32
@hdmi_mode_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.23, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] desired mode doesn't exist so\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdmi_mode_fixup\00", [16 x i8] zeroinitializer }, align 32
@hdmi_mode_fixup._entry_ptr = internal global ptr @hdmi_mode_fixup._entry, section ".printk_index", align 4
@hdmi_mode_fixup._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.23, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016[drm] use the most suitable mode among modes.\0A\00", [47 x i8] zeroinitializer }, align 32
@hdmi_mode_fixup._entry_ptr.68 = internal global ptr @hdmi_mode_fixup._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adjusted Mode: [%d]x[%d] [%d]Hz\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"xres=%d, yres=%d, refresh=%d, intl=%d clock=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@hdmi_reg_infoframes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.23, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016[drm] %s: invalid AVI infoframe (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdmi_reg_infoframes\00", [44 x i8] zeroinitializer }, align 32
@hdmi_reg_infoframes._entry_ptr = internal global ptr @hdmi_reg_infoframes._entry, section ".printk_index", align 4
@hdmi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @hdmi_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @hdmi_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"*ERROR* Failed to initialize connector with drm\0A\00", [47 x i8] zeroinitializer }, align 32
@hdmi_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @hdmi_get_modes, ptr null, ptr @hdmi_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Failed to allocate CEC notifier\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s : width[%d] x height[%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dvi monitor\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdmi monitor\00", [19 x i8] zeroinitializer }, align 32
@exynos4210_hdmi_driver_data = internal constant { %struct.hdmi_driver_data, [32 x i8] } { %struct.hdmi_driver_data { i32 0, i8 0, %struct.hdmiphy_configs { i32 5, ptr @hdmiphy_v13_configs }, %struct.string_array_spec { i32 2, ptr @hdmi_clk_gates4 }, %struct.string_array_spec { i32 3, ptr @hdmi_clk_muxes4 } }, [32 x i8] zeroinitializer }, align 32
@exynos4212_hdmi_driver_data = internal constant { %struct.hdmi_driver_data, [32 x i8] } { %struct.hdmi_driver_data { i32 1, i8 0, %struct.hdmiphy_configs { i32 18, ptr @hdmiphy_v14_configs }, %struct.string_array_spec { i32 2, ptr @hdmi_clk_gates4 }, %struct.string_array_spec { i32 3, ptr @hdmi_clk_muxes4 } }, [32 x i8] zeroinitializer }, align 32
@exynos5420_hdmi_driver_data = internal constant { %struct.hdmi_driver_data, [32 x i8] } { %struct.hdmi_driver_data { i32 1, i8 -128, %struct.hdmiphy_configs { i32 18, ptr @hdmiphy_5420_configs }, %struct.string_array_spec { i32 2, ptr @hdmi_clk_gates4 }, %struct.string_array_spec { i32 3, ptr @hdmi_clk_muxes4 } }, [32 x i8] zeroinitializer }, align 32
@hdmiphy_v13_configs = internal constant { [5 x %struct.hdmiphy_config], [44 x i8] } { [5 x %struct.hdmiphy_config] [%struct.hdmiphy_config { i32 27000000, [32 x i8] c"\01\05\00\D8\10\1C0@k\10\02Q\DF\F2T\87\84\0008\00\08\10\E0\22@\E3&\00\00\00\80" }, %struct.hdmiphy_config { i32 27027000, [32 x i8] c"\01\05\00\D4\10\9C\09dk\10\02Q\DF\F2T\87\84\0008\00\08\10\E0\22@\E3&\00\00\00\80" }, %struct.hdmiphy_config { i32 74176000, [32 x i8] c"\01\05\00\D8\10\9C\EF[m\10\01Q\EF\F3T\B9\84\0008\00\08\10\E0\22@\A5&\01\00\00\80" }, %struct.hdmiphy_config { i32 74250000, [32 x i8] c"\01\05\00\D8\10\9C\F8@j\10\01Q\FF\F1T\BA\84\00\108\00\08\10\E0\22@\A4&\01\00\00\80" }, %struct.hdmiphy_config { i32 148500000, [32 x i8] c"\01\05\00\D8\10\9C\F8@j\18\00Q\FF\F1T\BA\84\00\108\00\08\10\E0\22@\A4&\02\00\00\80" }], [44 x i8] zeroinitializer }, align 32
@hdmi_clk_gates4 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.8, ptr @.str.78], [24 x i8] zeroinitializer }, align 32
@hdmi_clk_muxes4 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81], [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_hdmi\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_pixel\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_hdmiphy\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mout_hdmi\00", [22 x i8] zeroinitializer }, align 32
@hdmiphy_v14_configs = internal constant { [18 x %struct.hdmiphy_config], [184 x i8] } { [18 x %struct.hdmiphy_config] [%struct.hdmiphy_config { i32 25200000, [32 x i8] c"\01Q*u@\01\00\08\82\80\FC\D8E\A0\AC\80\08\80\11\04\02\22D\86T\F4$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 27000000, [32 x i8] c"\01\D1\22Q@\08\FC \98\A0\CB\D8E\A0\AC\80\06\80\11\04\02\22D\86T\E4$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 27027000, [32 x i8] c"\01\D1-r@d\12\08C\A0\0E\D9E\A0\AC\80\08\80\11\04\02\22D\86T\E3$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 36000000, [32 x i8] c"\01Q-U@\01\00\08\82\80\0E\D9E\A0\AC\80\08\80\11\04\02\22D\86T\AB$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 40000000, [32 x i8] c"\01Q2U@\01\00\08\82\80,\D9E\A0\AC\80\08\80\11\04\02\22D\86T\9A$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 65000000, [32 x i8] c"\01\D164@\1E\0A\08\82\A0E\D9E\A0\AC\80\08\80\11\04\02\22D\86T\BD$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 71000000, [32 x i8] c"\01\D1;5@\0C\04\08\85\A0c\D9E\A0\AC\80\08\80\11\04\02\22D\86T\AD$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 73250000, [32 x i8] c"\01\D1=5@\18\02\08\83\A0n\D9E\A0\AC\80\08\80\11\04\02\22D\86T\A8$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 74176000, [32 x i8] c"\01\D1>5@[\DE\08\82\A0s\D9E\A0\AC\80V\80\11\04\02\22D\86T\A6$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 74250000, [32 x i8] c"\01\D1\1F\10@@\F8\08\81\A0\BA\D8E\A0\AC\80<\80\11\04\02\22D\86T\A5$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 83500000, [32 x i8] c"\01\D1#\11@\0C\FB\08\85\A0\D1\D8E\A0\AC\80\08\80\11\04\02\22D\86T\93$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 85500000, [32 x i8] c"\01\D1$\11@@\D0\08\84\A0\D6\D8E\A0\AC\80\08\80\11\04\02\22D\86T\90$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 106500000, [32 x i8] c"\01\D1,\12@\0C\09\08\84\A0\0A\D9E\A0\AC\80\08\80\11\04\02\22D\86Ts$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 108000000, [32 x i8] c"\01Q-\15@\01\00\08\82\80\0E\D9E\A0\AC\80\08\80\11\04\02\22D\86T\C7%\03\00\00\01\80" }, %struct.hdmiphy_config { i32 115500000, [32 x i8] c"\01\D10\12@@\10\08\80\80!\D9E\A0\AC\80\08\80\11\04\02\22D\86T\AA%\03\00\00\01\80" }, %struct.hdmiphy_config { i32 119000000, [32 x i8] c"\01\D12\1A@0\D8\08\04\A0*\D9E\A0\AC\80\08\80\11\04\02\22D\86T\9D%\03\00\00\01\80" }, %struct.hdmiphy_config { i32 146250000, [32 x i8] c"\01\D1=\15@\18\FD\08\83\A0n\D9E\A0\AC\80\08\80\11\04\02\22D\86TP%\03\00\00\01\80" }, %struct.hdmiphy_config { i32 148500000, [32 x i8] c"\01\D1\1F\00@@\F8\08\81\A0\BA\D8E\A0\AC\80<\80\11\04\02\22D\86TK%\03\00\00\01\80" }], [184 x i8] zeroinitializer }, align 32
@hdmiphy_5420_configs = internal constant { [18 x %struct.hdmiphy_config], [184 x i8] } { [18 x %struct.hdmiphy_config] [%struct.hdmiphy_config { i32 25200000, [32 x i8] c"\01R?U@\01\00\C8\82\C8\BD\D8E\A0\AC\80\06\80\01\84\05\02$fT\F4$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 27000000, [32 x i8] c"\01\D1\22Q@\08\FC\E0\98\E8\CB\D8E\A0\AC\80\06\80\09\84\05\02$fT\E4$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 27027000, [32 x i8] c"\01\D1-r@d\12\C8C\E8\0E\D9E\A0\AC\80&\80\09\84\05\02$fT\E3$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 36000000, [32 x i8] c"\01Q-U@@\00\C8\02\C8\0E\D9E\A0\AC\80\08\80\09\84\05\02$fT\AB$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 40000000, [32 x i8] c"\01\D1!1@<(\C8\87\E8\C8\D8E\A0\AC\80\08\80\09\84\05\02$fT\9A$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 65000000, [32 x i8] c"\01\D164@\0C\04\C8\82\E8E\D9E\A0\AC\80\08\80\09\84\05\02$fT\BD$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 71000000, [32 x i8] c"\01\D1;5@\0C\04\C8\85\E8c\D9E\A0\AC\80\08\80\09\84\05\02$fTW$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 73250000, [32 x i8] c"\01\D1\1F\10@x\8D\C8\81\E8\B7\D8E\A0\AC\80V\80\09\84\05\02$fT\A8$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 74176000, [32 x i8] c"\01\D1\1F\10@[\EF\C8\81\E8\B9\D8E\A0\AC\80V\80\09\84\05\02$fT\A6$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 74250000, [32 x i8] c"\01\D1\1F\10@@\F8\08\81\E8\BA\D8E\A0\AC\80&\80\09\84\05\22$fT\A5$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 83500000, [32 x i8] c"\01\D1#\11@\0C\FB\C8\85\E8\D1\D8E\A0\AC\80\08\80\09\84\05\02$fTJ$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 88750000, [32 x i8] c"\01\D1%\11@\18\FF\C8\83\E8\DE\D8E\A0\AC\80\08\80\09\84\05\02$fTE$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 106500000, [32 x i8] c"\01\D1,\12@\0C\09\C8\84\E8\0A\D9E\A0\AC\80\08\80\09\84\05\02$fTs$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 108000000, [32 x i8] c"\01Q-\15@\01\00\C8\82\C8\0E\D9E\A0\AC\80\08\80\09\84\05\02$fT\C7%\03\00\00\01\80" }, %struct.hdmiphy_config { i32 115500000, [32 x i8] c"\01\D10\14@\0C\03\C8\88\E8!\D9E\A0\AC\80\08\80\09\84\05\02$fTj$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 146250000, [32 x i8] c"\01\D1=\15@\18\FD\C8\83\E8n\D9E\A0\AC\80\08\80\09\84\05\02$fTT$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 148500000, [32 x i8] c"\01\D1\1F\00@@\F8\08\81\E8\BA\D8E\A0\AC\80&\80\09\84\05\22$fTK%\03\00\80\01\80" }, %struct.hdmiphy_config { i32 154000000, [32 x i8] c"\01\D1 \01@0\08\CC\8C\E8\C1\D8E\A0\AC\80\08\80\09\84\05\02$\86T?%\03\00\00\01\80" }], [184 x i8] zeroinitializer }, align 32
@hdmi_clk_enable_gates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.23, i32 757, ptr @.str.2, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot enable clock '%s', %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hdmi_clk_enable_gates\00", [42 x i8] zeroinitializer }, align 32
@hdmi_clk_enable_gates._entry_ptr = internal global ptr @hdmi_clk_enable_gates._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 24]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 16, i64 1024, i64 1280, i64 1366]
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 2128, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"hdmi_match_types\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1824, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"exynos_hdmi_pm_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 2118, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"hdmi_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 2124, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1972, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1977, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1995, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 2000, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 2002, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 2007, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 2009, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 2016, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 2018, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 2027, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [19 x i8] c"hdmi_component_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1881, i32 35 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1786, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1788, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1790, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1796, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1813, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1815, i32 56 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1704, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 787, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 75, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 76, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 77, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1768, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1888, i32 31 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1896, i32 46 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1899, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1908, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1919, i32 31 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1925, i32 46 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1927, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1936, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1944, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"audio_codec_ops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1648, i32 36 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1665, i32 15 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1599, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [13 x i8] c"hdmi_reg_map\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 65, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant [33 x i8] c"exynos_hdmi_encoder_helper_funcs\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1570, i32 46 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1868, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1490, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1495, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1440, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1452, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 920, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [28 x i8] c"exynos5433_hdmi_driver_data\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 668, i32 38 }
@___asan_gen_.288 = private unnamed_addr constant [21 x i8] c"hdmiphy_5433_configs\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 536, i32 36 }
@___asan_gen_.291 = private unnamed_addr constant [19 x i8] c"hdmi_clk_gates5433\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 637, i32 27 }
@___asan_gen_.294 = private unnamed_addr constant [19 x i8] c"hdmi_clk_muxes5433\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 641, i32 27 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 638, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 638, i32 15 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 638, i32 30 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 638, i32 44 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 638, i32 59 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 642, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 642, i32 12 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 642, i32 25 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 643, i32 12 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 643, i32 26 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1196, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1204, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1024, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1025, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1027, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 931, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 835, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant [21 x i8] c"hdmi_connector_funcs\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 874, i32 41 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 965, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [28 x i8] c"hdmi_connector_helper_funcs\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 945, i32 48 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 982, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 897, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [28 x i8] c"exynos4210_hdmi_driver_data\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 646, i32 38 }
@___asan_gen_.387 = private unnamed_addr constant [28 x i8] c"exynos4212_hdmi_driver_data\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 653, i32 38 }
@___asan_gen_.390 = private unnamed_addr constant [28 x i8] c"exynos5420_hdmi_driver_data\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 660, i32 38 }
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c"hdmiphy_v13_configs\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 158, i32 36 }
@___asan_gen_.396 = private unnamed_addr constant [16 x i8] c"hdmi_clk_gates4\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 629, i32 27 }
@___asan_gen_.399 = private unnamed_addr constant [16 x i8] c"hdmi_clk_muxes4\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 633, i32 27 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 630, i32 10 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 634, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 634, i32 16 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 634, i32 32 }
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c"hdmiphy_v14_configs\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 206, i32 36 }
@___asan_gen_.417 = private unnamed_addr constant [21 x i8] c"hdmiphy_5420_configs\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 371, i32 36 }
@___asan_gen_.420 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.427 = private constant [40 x i8] c"../drivers/gpu/drm/exynos/exynos_hdmi.c\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 756, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @hdmi_audio_hw_params._entry, ptr @hdmi_audio_hw_params._entry_ptr, ptr @hdmi_clk_enable_gates._entry, ptr @hdmi_clk_enable_gates._entry_ptr, ptr @hdmi_clk_set_parents._entry, ptr @hdmi_clk_set_parents._entry_ptr, ptr @hdmi_clks_get._entry, ptr @hdmi_clks_get._entry_ptr, ptr @hdmi_get_ddc_adapter._entry, ptr @hdmi_get_ddc_adapter._entry_ptr, ptr @hdmi_get_phy_io._entry, ptr @hdmi_get_phy_io._entry_ptr, ptr @hdmi_mode_fixup._entry, ptr @hdmi_mode_fixup._entry.66, ptr @hdmi_mode_fixup._entry_ptr, ptr @hdmi_mode_fixup._entry_ptr.68, ptr @hdmi_reg_infoframes._entry, ptr @hdmi_reg_infoframes._entry_ptr, ptr @hdmiphy_enable._entry, ptr @hdmiphy_enable._entry_ptr, ptr @.str, ptr @hdmi_match_types, ptr @exynos_hdmi_pm_ops, ptr @hdmi_driver, ptr @hdmi_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @hdmi_probe.__key.4, ptr @.str.5, ptr @hdmi_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @hdmi_component_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @audio_codec_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @hdmi_reg_map, ptr @exynos_hdmi_encoder_helper_funcs, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @exynos5433_hdmi_driver_data, ptr @hdmiphy_5433_configs, ptr @hdmi_clk_gates5433, ptr @hdmi_clk_muxes5433, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @hdmi_connector_funcs, ptr @.str.73, ptr @hdmi_connector_helper_funcs, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @exynos4210_hdmi_driver_data, ptr @exynos4212_hdmi_driver_data, ptr @exynos5420_hdmi_driver_data, ptr @hdmiphy_v13_configs, ptr @hdmi_clk_gates4, ptr @hdmi_clk_muxes4, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @hdmiphy_v14_configs, ptr @hdmiphy_5420_configs, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_match_types to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_hdmi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_clks_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_clk_set_parents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_get_ddc_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_get_phy_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_audio_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_reg_map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_hdmi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmiphy_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_hdmi_driver_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmiphy_5433_configs to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_clk_gates5433 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_clk_muxes5433 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_mode_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_mode_fixup._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_reg_infoframes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4210_hdmi_driver_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4212_hdmi_driver_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_hdmi_driver_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmiphy_v13_configs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_clk_gates4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_clk_muxes4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmiphy_v14_configs to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmiphy_5420_configs to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_clk_enable_gates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i.i180 = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1672, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %drv_data = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %drv_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev3 = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev3, align 8
  %mutex = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @hdmi_probe.__key) #8
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.15) #8
  %call.i169 = tail call ptr @devm_gpiod_get(ptr noundef %4, ptr noundef nonnull @.str.16, i32 noundef 1) #8
  %hpd_gpio.i = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 12
  %5 = ptrtoint ptr %hpd_gpio.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i169, ptr %hpd_gpio.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i169, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17) #8
  %6 = ptrtoint ptr %hpd_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hpd_gpio.i, align 8
  %8 = ptrtoint ptr %7 to i32
  br label %hdmi_resources_init.exit

if.end.i:                                         ; preds = %if.end
  %call7.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i169) #8
  %irq.i = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 13
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call7.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18) #8
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  br label %hdmi_resources_init.exit

if.end11.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv_data, align 4
  %clk_gates.i.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %clk_gates.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_gates.i.i, align 4
  %clk_muxes.i.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %clk_muxes.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clk_muxes.i.i, align 4
  %add.i.i = add i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool.not.i.i, label %if.end11.i.if.end14.i_crit_edge, label %if.end.i.i

if.end11.i.if.end14.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end.i.i:                                       ; preds = %if.end11.i
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i, i32 4) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.end.i.i.if.then7_crit_edge, label %devm_kcalloc.exit.i.i, !prof !221

if.end.i.i.if.then7_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

devm_kcalloc.exit.i.i:                            ; preds = %if.end.i.i
  %20 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev3, align 8
  %22 = extractvalue { i32, i1 } %18, 0
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef %22, i32 noundef 3520) #8
  %tobool5.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %devm_kcalloc.exit.i.i.if.then7_crit_edge, label %if.end7.i.i

devm_kcalloc.exit.i.i.if.then7_crit_edge:         ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end7.i.i:                                      ; preds = %devm_kcalloc.exit.i.i
  %clk_gates8.i.i = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 16
  %23 = ptrtoint ptr %clk_gates8.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i.i.i, ptr %clk_gates8.i.i, align 8
  %24 = ptrtoint ptr %clk_gates.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clk_gates.i.i, align 4
  %add.ptr.i.i = getelementptr ptr, ptr %call5.i.i.i.i, i32 %25
  %clk_muxes11.i.i = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 17
  %26 = ptrtoint ptr %clk_muxes11.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i.i, ptr %clk_muxes11.i.i, align 4
  %27 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev3, align 8
  %29 = load i32, ptr %clk_gates.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp21.i.i.i = icmp sgt i32 %29, 0
  br i1 %cmp21.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end7.i.i.if.end17.i.i_crit_edge

if.end7.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end7.i.i
  %data.i.i.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %13, i32 0, i32 3, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.022.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %30 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %31, i32 %i.022.i.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = tail call ptr @devm_clk_get(ptr noundef %28, ptr noundef %33) #8
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %hdmi_clks_get.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %arrayidx6.i.i.i = getelementptr ptr, ptr %call5.i.i.i.i, i32 %i.022.i.i.i
  %34 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i.i, ptr %arrayidx6.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.022.i.i.i, 1
  %35 = ptrtoint ptr %clk_gates.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clk_gates.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %36
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.if.end17.i.i_crit_edge

for.inc.i.i.i.if.end17.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

hdmi_clks_get.exit.i.i:                           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %call.i.i.i to i32
  %38 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr ptr, ptr %39, i32 %i.022.i.i.i
  %40 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx5.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.21, ptr noundef %41, i32 noundef %37) #11
  br label %hdmi_resources_init.exit

if.end17.i.i:                                     ; preds = %for.inc.i.i.i.if.end17.i.i_crit_edge, %if.end7.i.i.if.end17.i.i_crit_edge
  %42 = ptrtoint ptr %clk_muxes11.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_muxes11.i.i, align 4
  %44 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev3, align 8
  %46 = ptrtoint ptr %clk_muxes.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %clk_muxes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp21.i41.i.i = icmp sgt i32 %47, 0
  br i1 %cmp21.i41.i.i, label %for.body.lr.ph.i43.i.i, label %if.end17.i.i.if.end14.i_crit_edge

if.end17.i.i.if.end14.i_crit_edge:                ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

for.body.lr.ph.i43.i.i:                           ; preds = %if.end17.i.i
  %data.i42.i.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %13, i32 0, i32 4, i32 1
  br label %for.body.i48.i.i

for.body.i48.i.i:                                 ; preds = %for.inc.i54.i.i.for.body.i48.i.i_crit_edge, %for.body.lr.ph.i43.i.i
  %i.022.i44.i.i = phi i32 [ 0, %for.body.lr.ph.i43.i.i ], [ %inc.i52.i.i, %for.inc.i54.i.i.for.body.i48.i.i_crit_edge ]
  %48 = ptrtoint ptr %data.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i42.i.i, align 4
  %arrayidx.i45.i.i = getelementptr ptr, ptr %49, i32 %i.022.i44.i.i
  %50 = ptrtoint ptr %arrayidx.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i45.i.i, align 4
  %call.i46.i.i = tail call ptr @devm_clk_get(ptr noundef %45, ptr noundef %51) #8
  %cmp.i.i47.i.i = icmp ugt ptr %call.i46.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i47.i.i, label %cleanup.thread.i50.i.i, label %for.inc.i54.i.i

cleanup.thread.i50.i.i:                           ; preds = %for.body.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %call.i46.i.i to i32
  %53 = ptrtoint ptr %data.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i42.i.i, align 4
  %arrayidx5.i49.i.i = getelementptr ptr, ptr %54, i32 %i.022.i44.i.i
  %55 = ptrtoint ptr %arrayidx5.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx5.i49.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.21, ptr noundef %56, i32 noundef %52) #11
  br label %hdmi_resources_init.exit

for.inc.i54.i.i:                                  ; preds = %for.body.i48.i.i
  %arrayidx6.i51.i.i = getelementptr ptr, ptr %43, i32 %i.022.i44.i.i
  %57 = ptrtoint ptr %arrayidx6.i51.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i46.i.i, ptr %arrayidx6.i51.i.i, align 4
  %inc.i52.i.i = add nuw nsw i32 %i.022.i44.i.i, 1
  %58 = ptrtoint ptr %clk_muxes.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %clk_muxes.i.i, align 4
  %cmp.i53.i.i = icmp slt i32 %inc.i52.i.i, %59
  br i1 %cmp.i53.i.i, label %for.inc.i54.i.i.for.body.i48.i.i_crit_edge, label %for.inc.i54.i.i.if.end14.i_crit_edge

for.inc.i54.i.i.if.end14.i_crit_edge:             ; preds = %for.inc.i54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

for.inc.i54.i.i.for.body.i48.i.i_crit_edge:       ; preds = %for.inc.i54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i48.i.i

if.end14.i:                                       ; preds = %for.inc.i54.i.i.if.end14.i_crit_edge, %if.end17.i.i.if.end14.i_crit_edge, %if.end11.i.if.end14.i_crit_edge
  %60 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev3, align 8
  %62 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %drv_data, align 4
  %clk_muxes31.i.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %clk_muxes31.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %clk_muxes31.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp32.i.i = icmp sgt i32 %65, 0
  br i1 %cmp32.i.i, label %for.body.lr.ph.i.i, label %if.end14.i.for.body.preheader.i_crit_edge

if.end14.i.for.body.preheader.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

for.body.lr.ph.i.i:                               ; preds = %if.end14.i
  %clk_muxes2.i.i = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.backedge, %for.body.lr.ph.i.i
  %i.033.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %i.033.i.i.be, %for.body.i.i.backedge ]
  %66 = ptrtoint ptr %clk_muxes2.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk_muxes2.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %67, i32 %i.033.i.i
  %arrayidx3.i.i = getelementptr ptr, ptr %arrayidx.i.i, i32 2
  %68 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx3.i.i, align 4
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @clk_set_parent(ptr noundef %69, ptr noundef %71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i72.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i72.i, label %cleanup.i.i, label %cleanup.i.i.thread

cleanup.i.i:                                      ; preds = %for.body.i.i
  %add15.i.i = add i32 %i.033.i.i, 3
  %72 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %drv_data, align 4
  %clk_muxes.i74.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %clk_muxes.i74.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %clk_muxes.i74.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i.i, i32 %75)
  %cmp.i75.i = icmp slt i32 %add15.i.i, %75
  br i1 %cmp.i75.i, label %cleanup.i.i.for.body.i.i.backedge_crit_edge, label %cleanup.i.i.for.body.preheader.i_crit_edge

cleanup.i.i.for.body.preheader.i_crit_edge:       ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

cleanup.i.i.for.body.i.i.backedge_crit_edge:      ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.backedge

for.body.i.i.backedge:                            ; preds = %cleanup.i.i.thread.for.body.i.i.backedge_crit_edge, %cleanup.i.i.for.body.i.i.backedge_crit_edge
  %i.033.i.i.be = phi i32 [ %add15.i.i, %cleanup.i.i.for.body.i.i.backedge_crit_edge ], [ %add15.i.i198, %cleanup.i.i.thread.for.body.i.i.backedge_crit_edge ]
  br label %for.body.i.i

cleanup.i.i.thread:                               ; preds = %for.body.i.i
  %76 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %drv_data, align 4
  %data.i.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %77, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i, align 4
  %add.i73.i = add i32 %i.033.i.i, 2
  %arrayidx8.i.i = getelementptr ptr, ptr %79, i32 %add.i73.i
  %80 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx8.i.i, align 4
  %arrayidx14.i.i = getelementptr ptr, ptr %79, i32 %i.033.i.i
  %82 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx14.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.25, ptr noundef %81, ptr noundef %83, i32 noundef %call.i.i) #11
  %add15.i.i198 = add i32 %i.033.i.i, 3
  %84 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %drv_data, align 4
  %clk_muxes.i74.i199 = getelementptr inbounds %struct.hdmi_driver_data, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %clk_muxes.i74.i199 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %clk_muxes.i74.i199, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i.i198, i32 %87)
  %cmp.i75.i200 = icmp slt i32 %add15.i.i198, %87
  br i1 %cmp.i75.i200, label %cleanup.i.i.thread.for.body.i.i.backedge_crit_edge, label %cleanup.i.i.thread.hdmi_resources_init.exit_crit_edge

cleanup.i.i.thread.hdmi_resources_init.exit_crit_edge: ; preds = %cleanup.i.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_resources_init.exit

cleanup.i.i.thread.for.body.i.i.backedge_crit_edge: ; preds = %cleanup.i.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.backedge

for.body.preheader.i:                             ; preds = %cleanup.i.i.for.body.preheader.i_crit_edge, %if.end14.i.for.body.preheader.i_crit_edge
  %arrayidx20.i = getelementptr %struct.hdmi_context, ptr %call.i, i32 0, i32 18, i32 0
  %88 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.27, ptr %arrayidx20.i, align 4
  %arrayidx20.1.i = getelementptr %struct.hdmi_context, ptr %call.i, i32 0, i32 18, i32 1
  %89 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.28, ptr %arrayidx20.1.i, align 4
  %arrayidx20.2.i = getelementptr %struct.hdmi_context, ptr %call.i, i32 0, i32 18, i32 2
  %90 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.29, ptr %arrayidx20.2.i, align 4
  %call22.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %4, i32 noundef 3, ptr noundef %arrayidx20.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end26.i, label %if.then24.i

if.then24.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %call25.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %call22.i, ptr noundef nonnull @.str.19) #8
  br label %hdmi_resources_init.exit

if.end26.i:                                       ; preds = %for.body.preheader.i
  %call27.i = tail call ptr @devm_regulator_get_optional(ptr noundef %4, ptr noundef nonnull @.str.20) #8
  %reg_hdmi_en.i = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 19
  %91 = ptrtoint ptr %reg_hdmi_en.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call27.i, ptr %reg_hdmi_en.i, align 4
  %92 = ptrtoint ptr %call27.i to i32
  %cmp30.not.i = icmp ne ptr %call27.i, inttoptr (i32 -19 to ptr)
  %cmp.i76.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  %or.cond.i = and i1 %cmp30.not.i, %cmp.i76.i
  br i1 %or.cond.i, label %if.end26.i.hdmi_resources_init.exit_crit_edge, label %if.end38.i

if.end26.i.hdmi_resources_init.exit_crit_edge:    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_resources_init.exit

if.end38.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %call39.i = tail call fastcc i32 @hdmi_bridge_init(ptr noundef %call.i) #8
  br label %hdmi_resources_init.exit

hdmi_resources_init.exit:                         ; preds = %if.end38.i, %if.end26.i.hdmi_resources_init.exit_crit_edge, %if.then24.i, %cleanup.i.i.thread.hdmi_resources_init.exit_crit_edge, %cleanup.thread.i50.i.i, %hdmi_clks_get.exit.i.i, %if.then9.i, %if.then.i
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ %11, %if.then9.i ], [ %call25.i, %if.then24.i ], [ %call39.i, %if.end38.i ], [ %92, %if.end26.i.hdmi_resources_init.exit_crit_edge ], [ %37, %hdmi_clks_get.exit.i.i ], [ %52, %cleanup.thread.i50.i.i ], [ %call.i.i, %cleanup.i.i.thread.hdmi_resources_init.exit_crit_edge ]
  %93 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %hdmi_resources_init.exit.if.then7_crit_edge [
    i32 0, label %if.end9
    i32 -517, label %hdmi_resources_init.exit.cleanup_crit_edge
  ]

hdmi_resources_init.exit.cleanup_crit_edge:       ; preds = %hdmi_resources_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

hdmi_resources_init.exit.if.then7_crit_edge:      ; preds = %hdmi_resources_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %hdmi_resources_init.exit.if.then7_crit_edge, %devm_kcalloc.exit.i.i.if.then7_crit_edge, %if.end.i.i.if.then7_crit_edge
  %retval.0.i202 = phi i32 [ %retval.0.i, %hdmi_resources_init.exit.if.then7_crit_edge ], [ -12, %devm_kcalloc.exit.i.i.if.then7_crit_edge ], [ -12, %if.end.i.i.if.then7_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end9:                                          ; preds = %hdmi_resources_init.exit
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 8
  %94 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call10, ptr %regs, align 8
  %cmp.i170 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call.i171 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31) #8
  %tobool.not.i = icmp eq ptr %call.i171, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i172

if.then.i172:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call ptr @of_get_next_parent(ptr noundef nonnull %call.i171) #8
  br label %if.end.i176

if.else.i:                                        ; preds = %if.end16
  %96 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev3, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %97, i32 0, i32 27
  %98 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %100 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i173 = call i32 @__of_parse_phandle_with_args(ptr noundef %99, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i173)
  %tobool.not.i.i174 = icmp eq i32 %call.i.i173, 0
  br i1 %tobool.not.i.i174, label %if.end.i.i175, label %if.else.i.of_parse_phandle.exit.i_crit_edge

if.else.i.of_parse_phandle.exit.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit.i

if.end.i.i175:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i175, %if.else.i.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %102, %if.end.i.i175 ], [ null, %if.else.i.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  br label %if.end.i176

if.end.i176:                                      ; preds = %of_parse_phandle.exit.i, %if.then.i172
  %np.0.i = phi ptr [ %call1.i, %if.then.i172 ], [ %retval.0.i.i, %of_parse_phandle.exit.i ]
  %tobool3.not.i = icmp eq ptr %np.0.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev3, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %104, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.33) #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i176
  %call7.i177 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %np.0.i) #8
  call void @of_node_put(ptr noundef nonnull %np.0.i) #8
  %tobool8.not.i = icmp eq ptr %call7.i177, null
  br i1 %tobool8.not.i, label %do.end.i, label %if.end20

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end6.i
  %ddc_adpt.i = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 11
  %105 = ptrtoint ptr %ddc_adpt.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call7.i177, ptr %ddc_adpt.i, align 4
  %call.i181 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36) #8
  %tobool.not.i182 = icmp eq ptr %call.i181, null
  br i1 %tobool.not.i182, label %if.then.i187, label %if.end20.if.end5.i_crit_edge

if.end20.if.end5.i_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i187:                                     ; preds = %if.end20
  %106 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev3, align 8
  %of_node.i184 = getelementptr inbounds %struct.device, ptr %107, i32 0, i32 27
  %108 = ptrtoint ptr %of_node.i184 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %of_node.i184, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i180) #8
  %110 = call ptr @memset(ptr %args.i.i180, i32 255, i32 72)
  %call.i.i185 = call i32 @__of_parse_phandle_with_args(ptr noundef %109, ptr noundef nonnull @.str.37, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i180) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i185)
  %tobool.not.i.i186 = icmp eq i32 %call.i.i185, 0
  br i1 %tobool.not.i.i186, label %of_parse_phandle.exit.i188, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i180) #8
  br label %hdmi_get_phy_io.exit.thread

of_parse_phandle.exit.i188:                       ; preds = %if.then.i187
  %111 = ptrtoint ptr %args.i.i180 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %args.i.i180, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i180) #8
  %tobool2.not.i = icmp eq ptr %112, null
  br i1 %tobool2.not.i, label %of_parse_phandle.exit.i188.hdmi_get_phy_io.exit.thread_crit_edge, label %of_parse_phandle.exit.i188.if.end5.i_crit_edge

of_parse_phandle.exit.i188.if.end5.i_crit_edge:   ; preds = %of_parse_phandle.exit.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

of_parse_phandle.exit.i188.hdmi_get_phy_io.exit.thread_crit_edge: ; preds = %of_parse_phandle.exit.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_get_phy_io.exit.thread

hdmi_get_phy_io.exit.thread:                      ; preds = %of_parse_phandle.exit.i188.hdmi_get_phy_io.exit.thread_crit_edge, %of_parse_phandle.exit.thread.i
  %113 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev3, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %114, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.38) #8
  br label %err_ddc

if.end5.i:                                        ; preds = %of_parse_phandle.exit.i188.if.end5.i_crit_edge, %if.end20.if.end5.i_crit_edge
  %np.0.i189 = phi ptr [ %call.i181, %if.end20.if.end5.i_crit_edge ], [ %112, %of_parse_phandle.exit.i188.if.end5.i_crit_edge ]
  %115 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %drv_data, align 4
  %is_apb_phy.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %is_apb_phy.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load.i = load i8, ptr %is_apb_phy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool6.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool6.not.i, label %if.else.i191, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  %call8.i = call ptr @of_iomap(ptr noundef nonnull %np.0.i189, i32 noundef 0) #8
  %regs_hdmiphy.i = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 9
  %118 = ptrtoint ptr %regs_hdmiphy.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call8.i, ptr %regs_hdmiphy.i, align 4
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.then7.i.do.body26_crit_edge

if.then7.i.do.body26_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

if.then11.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev3, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %120, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.39) #8
  br label %hdmi_get_phy_io.exit

if.else.i191:                                     ; preds = %if.end5.i
  %call14.i = call ptr @of_find_i2c_device_by_node(ptr noundef nonnull %np.0.i189) #8
  %hdmiphy_port.i = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 10
  %121 = ptrtoint ptr %hdmiphy_port.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call14.i, ptr %hdmiphy_port.i, align 8
  %tobool16.not.i190 = icmp eq ptr %call14.i, null
  br i1 %tobool16.not.i190, label %do.end.i192, label %if.else.i191.do.body26_crit_edge

if.else.i191.do.body26_crit_edge:                 ; preds = %if.else.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

do.end.i192:                                      ; preds = %if.else.i191
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #11
  br label %hdmi_get_phy_io.exit

hdmi_get_phy_io.exit:                             ; preds = %do.end.i192, %if.then11.i
  %ret.0.i = phi i32 [ -12, %if.then11.i ], [ -517, %do.end.i192 ]
  call void @of_node_put(ptr noundef nonnull %np.0.i189) #8
  br label %err_ddc

do.body26:                                        ; preds = %if.else.i191.do.body26_crit_edge, %if.then7.i.do.body26_crit_edge
  call void @of_node_put(ptr noundef nonnull %np.0.i189) #8
  %hotplug_work = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 5
  call void @__init_work(ptr noundef %hotplug_work, i32 noundef 0) #8
  %122 = ptrtoint ptr %hotplug_work to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -64, ptr %hotplug_work, align 4
  %lockdep_map = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @hdmi_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry33 = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %123 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %124 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %entry33, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %125 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @hdmi_hotplug_work_func, ptr %func, align 4
  %timer = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 5, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @hdmi_probe.__key.6) #8
  %irq = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 13
  %126 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %irq, align 4
  %call44 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %127, ptr noundef null, ptr noundef nonnull @hdmi_irq_thread, i32 noundef 8195, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #8
  br label %err_hdmiphy

if.end47:                                         ; preds = %do.body26
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %128 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %of_node, align 8
  %call48 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %129, ptr noundef nonnull @.str.10) #8
  %pmureg = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 14
  %130 = ptrtoint ptr %pmureg to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call48, ptr %pmureg, align 8
  %cmp.i194 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i194, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #8
  br label %err_hdmiphy

if.end52:                                         ; preds = %if.end47
  %131 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %drv_data, align 4
  %has_sysreg = getelementptr inbounds %struct.hdmi_driver_data, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %has_sysreg to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load = load i8, ptr %has_sysreg, align 4
  %134 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool54.not = icmp eq i8 %134, 0
  br i1 %tobool54.not, label %if.end52.if.end62_crit_edge, label %if.then55

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then55:                                        ; preds = %if.end52
  %135 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %of_node, align 8
  %call57 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %136, ptr noundef nonnull @.str.12) #8
  %sysreg = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 15
  %137 = ptrtoint ptr %sysreg to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call57, ptr %sysreg, align 4
  %cmp.i195 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195, label %if.then60, label %if.then55.if.end62_crit_edge

if.then55.if.end62_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then60:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13) #8
  br label %err_hdmiphy

if.end62:                                         ; preds = %if.then55.if.end62_crit_edge, %if.end52.if.end62_crit_edge
  %reg_hdmi_en = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 19
  %138 = ptrtoint ptr %reg_hdmi_en to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_hdmi_en, align 4
  %cmp.i196 = icmp ugt ptr %139, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %if.end62.if.end70_crit_edge, label %if.then64

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then64:                                        ; preds = %if.end62
  %call66 = call i32 @regulator_enable(ptr noundef %139) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then64.if.end70_crit_edge, label %if.then68

if.then64.if.end70_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.14) #8
  br label %err_hdmiphy

if.end70:                                         ; preds = %if.then64.if.end70_crit_edge, %if.end62.if.end70_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %audio = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 23
  %infoframe = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 23, i32 1
  %call71 = call i32 @hdmi_audio_infoframe_init(ptr noundef %infoframe) #8
  %coding_type = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 23, i32 1, i32 4
  %140 = ptrtoint ptr %coding_type to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %coding_type, align 4
  %sample_size = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 23, i32 1, i32 5
  %141 = ptrtoint ptr %sample_size to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %sample_size, align 4
  %sample_frequency = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 23, i32 1, i32 6
  %142 = ptrtoint ptr %sample_frequency to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %sample_frequency, align 4
  %channels = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 23, i32 1, i32 3
  %143 = ptrtoint ptr %channels to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 2, ptr %channels, align 2
  %call72 = call fastcc i32 @hdmi_register_audio_device(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end70.err_rpm_disable_crit_edge

if.end70.err_rpm_disable_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rpm_disable

if.end75:                                         ; preds = %if.end70
  %call77 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @hdmi_component_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end75.cleanup_crit_edge, label %err_unregister_audio

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_unregister_audio:                             ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %audio, align 4
  call void @platform_device_unregister(ptr noundef %145) #8
  br label %err_rpm_disable

err_rpm_disable:                                  ; preds = %err_unregister_audio, %if.end70.err_rpm_disable_crit_edge
  %ret.0 = phi i32 [ %call72, %if.end70.err_rpm_disable_crit_edge ], [ %call77, %err_unregister_audio ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  %146 = ptrtoint ptr %reg_hdmi_en to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_hdmi_en, align 4
  %cmp.i197 = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %err_rpm_disable.err_hdmiphy_crit_edge, label %if.then85

err_rpm_disable.err_hdmiphy_crit_edge:            ; preds = %err_rpm_disable
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_hdmiphy

if.then85:                                        ; preds = %err_rpm_disable
  call void @__sanitizer_cov_trace_pc() #10
  %call87 = call i32 @regulator_disable(ptr noundef %147) #8
  br label %err_hdmiphy

err_hdmiphy:                                      ; preds = %if.then85, %err_rpm_disable.err_hdmiphy_crit_edge, %if.then68, %if.then60, %if.then51, %if.then46
  %ret.1 = phi i32 [ %call44, %if.then46 ], [ -517, %if.then51 ], [ -517, %if.then60 ], [ %ret.0, %err_rpm_disable.err_hdmiphy_crit_edge ], [ %ret.0, %if.then85 ], [ %call66, %if.then68 ]
  %hdmiphy_port = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 10
  %148 = ptrtoint ptr %hdmiphy_port to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hdmiphy_port, align 8
  %tobool89.not = icmp eq ptr %149, null
  br i1 %tobool89.not, label %err_hdmiphy.if.end93_crit_edge, label %if.then90

err_hdmiphy.if.end93_crit_edge:                   ; preds = %err_hdmiphy
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then90:                                        ; preds = %err_hdmiphy
  call void @__sanitizer_cov_trace_pc() #10
  %dev92 = getelementptr inbounds %struct.i2c_client, ptr %149, i32 0, i32 4
  call void @put_device(ptr noundef %dev92) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %err_hdmiphy.if.end93_crit_edge
  %regs_hdmiphy = getelementptr inbounds %struct.hdmi_context, ptr %call.i, i32 0, i32 9
  %150 = ptrtoint ptr %regs_hdmiphy to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs_hdmiphy, align 4
  %tobool94.not = icmp eq ptr %151, null
  br i1 %tobool94.not, label %if.end93.err_ddc_crit_edge, label %if.then95

if.end93.err_ddc_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ddc

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef nonnull %151) #8
  br label %err_ddc

err_ddc:                                          ; preds = %if.then95, %if.end93.err_ddc_crit_edge, %hdmi_get_phy_io.exit, %hdmi_get_phy_io.exit.thread
  %ret.2 = phi i32 [ %ret.0.i, %hdmi_get_phy_io.exit ], [ %ret.1, %if.then95 ], [ %ret.1, %if.end93.err_ddc_crit_edge ], [ -19, %hdmi_get_phy_io.exit.thread ]
  %152 = ptrtoint ptr %ddc_adpt.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ddc_adpt.i, align 4
  %dev98 = getelementptr inbounds %struct.i2c_adapter, ptr %153, i32 0, i32 9
  call void @put_device(ptr noundef %dev98) #8
  br label %cleanup

cleanup:                                          ; preds = %err_ddc, %if.end75.cleanup_crit_edge, %do.end.i, %if.then4.i, %if.then13, %if.then7, %hdmi_resources_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %95, %if.then13 ], [ %ret.2, %err_ddc ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %hdmi_resources_init.exit.cleanup_crit_edge ], [ %retval.0.i202, %if.then7 ], [ 0, %if.end75.cleanup_crit_edge ], [ -19, %if.then4.i ], [ -517, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hotplug_work = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 5
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hotplug_work) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @hdmi_component_ops) #8
  %audio = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %audio, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %reg_hdmi_en = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %reg_hdmi_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_hdmi_en, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @regulator_disable(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hdmiphy_port = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %hdmiphy_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdmiphy_port, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void @put_device(ptr noundef %dev9) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %regs_hdmiphy = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %regs_hdmiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs_hdmiphy, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %9) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %ddc_adpt = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %ddc_adpt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc_adpt, align 4
  %dev15 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev15) #8
  %mutex = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 22
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_hotplug_work_func(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drm_dev = getelementptr i8, ptr %work, i32 -1048
  %0 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_irq_thread(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %hotplug_work = getelementptr inbounds %struct.hdmi_context, ptr %arg, i32 0, i32 5
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %hotplug_work, i32 noundef 110) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_register_audio_device(ptr nocapture noundef %hdata) unnamed_addr #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %codec_data = alloca %struct.hdmi_codec_pdata, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %codec_data) #8
  %0 = call ptr @memcpy(ptr %codec_data, ptr @__const.hdmi_register_audio_device.codec_data, i32 16)
  %dev = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %3 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 255, i32 48)
  %5 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fwnode.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.42, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %codec_data, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %audio = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 23
  %16 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %audio, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %17 = ptrtoint ptr %call.i.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %17, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data) #8
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_bridge_init(ptr nocapture noundef %hdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %3, i32 noundef 1, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call) #8
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.30) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call2) #8
  %bridge = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 21
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %bridge, align 4
  tail call void @of_node_put(ptr noundef nonnull %call2) #8
  %5 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bridge, align 4
  %tobool8.not = icmp eq ptr %6, null
  %. = select i1 %tobool8.not, i32 -517, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_audio_hw_params(ptr noundef %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %daifmt, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %buf.i = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %daifmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %bit_clk_inv = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %daifmt, i32 0, i32 1
  %4 = ptrtoint ptr %bit_clk_inv to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %bit_clk_inv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load)
  %5 = icmp ult i8 %bf.load, 16
  br i1 %5, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %bit_clk_inv18 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %daifmt, i32 0, i32 1
  %6 = ptrtoint ptr %bit_clk_inv18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load19 = load i8, ptr %bit_clk_inv18, align 4
  %bf.lshr20 = lshr i8 %bf.load19, 7
  %bf.cast21 = zext i8 %bf.lshr20 to i32
  %bf.lshr24 = lshr i8 %bf.load19, 6
  %bf.clear25 = and i8 %bf.lshr24, 1
  %bf.cast26 = zext i8 %bf.clear25 to i32
  %bf.lshr29 = lshr i8 %bf.load19, 5
  %bf.clear30 = and i8 %bf.lshr29, 1
  %bf.cast31 = zext i8 %bf.clear30 to i32
  %bf.lshr34 = lshr i8 %bf.load19, 4
  %bf.clear35 = and i8 %bf.lshr34, 1
  %bf.cast36 = zext i8 %bf.clear35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %bf.cast21, i32 noundef %bf.cast26, i32 noundef %bf.cast31, i32 noundef %bf.cast36) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %params37 = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 23, i32 2
  %7 = call ptr @memcpy(ptr %params37, ptr %params, i32 216)
  %powered = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %powered, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool38.not = icmp eq i8 %9, 0
  br i1 %tobool38.not, label %if.end.if.end41_crit_edge, label %if.then39

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then39:                                        ; preds = %if.end
  tail call fastcc void @hdmi_audio_config(ptr noundef %1)
  %infoframe1.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 23, i32 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buf.i) #8
  %10 = call ptr @memset(ptr %buf.i, i32 255, i32 14)
  %call.i = call i32 @hdmi_audio_infoframe_pack(ptr noundef %infoframe1.i, ptr noundef nonnull %buf.i, i32 noundef 14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then39.hdmi_audio_infoframe_apply.exit_crit_edge, label %if.end.i

if.then39.hdmi_audio_infoframe_apply.exit_crit_edge: ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_audio_infoframe_apply.exit

if.end.i:                                         ; preds = %if.then39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  call void @arm_heavy_mb() #8
  %regs.i.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 67584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #8, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not5.i.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not5.i.i, label %if.end.i.hdmi_audio_infoframe_apply.exit_crit_edge, label %if.end.i.do.body.i.i_crit_edge

if.end.i.do.body.i.i_crit_edge:                   ; preds = %if.end.i
  br label %do.body.i.i

if.end.i.hdmi_audio_infoframe_apply.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_audio_infoframe_apply.exit

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end.i.do.body.i.i_crit_edge
  %size.addr.08.i.i = phi i32 [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %call.i, %if.end.i.do.body.i.i_crit_edge ]
  %buf.addr.07.i.i = phi ptr [ %incdec.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %buf.i, %if.end.i.do.body.i.i_crit_edge ]
  %reg_id.addr.06.i.i = phi i32 [ %add.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 67600, %if.end.i.do.body.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  call void @arm_heavy_mb() #8
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.addr.07.i.i, i32 1
  %13 = ptrtoint ptr %buf.addr.07.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf.addr.07.i.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %15 = shl nuw i32 %conv.i.i, 24
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %17, i32 %reg_id.addr.06.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %15) #8, !srcloc !224
  %dec.i.i = add i32 %size.addr.08.i.i, -1
  %add.i.i = add i32 %reg_id.addr.06.i.i, 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.hdmi_audio_infoframe_apply.exit_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.body.i.i.hdmi_audio_infoframe_apply.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_audio_infoframe_apply.exit

hdmi_audio_infoframe_apply.exit:                  ; preds = %do.body.i.i.hdmi_audio_infoframe_apply.exit_crit_edge, %if.end.i.hdmi_audio_infoframe_apply.exit_crit_edge, %if.then39.hdmi_audio_infoframe_apply.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buf.i) #8
  br label %if.end41

if.end41:                                         ; preds = %hdmi_audio_infoframe_apply.exit, %if.end.if.end41_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_audio_shutdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %mute = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 23, i32 3
  %2 = ptrtoint ptr %mute to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %mute, align 4
  %powered = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 24
  %3 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %powered, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %dvi_mode.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %dvi_mode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dvi_mode.i, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %regs.i.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 67584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !224
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %10, i32 65536
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %12 = and i32 %11, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %14, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %12) #8, !srcloc !224
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_audio_mute(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, i1 noundef zeroext %mute, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %mute to i8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %mute1 = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 23, i32 3
  %2 = ptrtoint ptr %mute1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %mute1, align 4
  %powered = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 24
  %3 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %powered, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %dvi_mode.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %dvi_mode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dvi_mode.i, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = select i1 %mute, i32 0, i32 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %regs.i.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 67584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i) #8, !srcloc !224
  %cond5.i = select i1 %mute, i32 0, i32 4
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %10, i32 65536
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %12 = and i32 %11, -67108865
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %or.i.i = or i32 %13, %cond5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %16, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %14) #8, !srcloc !224
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_audio_get_eld(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %len, i32 128)
  %eld = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 3, i32 42
  %3 = call ptr @memcpy(ptr %buf, ptr %eld, i32 %2)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_audio_config(ptr noundef readonly %hdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sample_width = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 23, i32 2, i32 3
  %0 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sample_width, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %1, label %sw.default [
    i32 20, label %entry.hdmi_reg_writeb.exit.4_crit_edge
    i32 24, label %sw.bb1
  ]

entry.hdmi_reg_writeb.exit.4_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_reg_writeb.exit.4

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_reg_writeb.exit.4

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_reg_writeb.exit.4

hdmi_reg_writeb.exit.4:                           ; preds = %sw.default, %sw.bb1, %entry.hdmi_reg_writeb.exit.4_crit_edge
  %bit_ch.0 = phi i32 [ 0, %sw.default ], [ 268435456, %sw.bb1 ], [ 268435456, %entry.hdmi_reg_writeb.exit.4_crit_edge ]
  %data_num.0 = phi i32 [ 67108864, %sw.default ], [ 201326592, %sw.bb1 ], [ 134217728, %entry.hdmi_reg_writeb.exit.4_crit_edge ]
  %sample_rate = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 23, i32 2, i32 2
  %3 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sample_rate, align 4
  %rem.i = urem i32 %4, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %mul.i = shl i32 %4, 7
  %div.i = select i1 %tobool.not.i, i32 900, i32 1000
  %div1.i = udiv i32 %mul.i, %div.i
  %drv_data.i.i.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 7
  %5 = ptrtoint ptr %drv_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv_data.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %arrayidx2.i.i.i = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 5, i32 %8
  %9 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.i.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %and.i.i = shl i32 %div1.i, 24
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and.i.i) #8, !srcloc !224
  %add.i.i = add i32 %10, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %13 = shl i32 %div1.i, 16
  %and.i.1.i = and i32 %13, -16777216
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %15, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 %and.i.1.i) #8, !srcloc !224
  %add.i.1.i = add i32 %10, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %16 = shl nuw nsw i32 %div1.i, 8
  %and.i.2.i = and i32 %16, 2130706432
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %18, i32 %add.i.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 %and.i.2.i) #8, !srcloc !224
  %cond.i = select i1 %tobool.not.i, i32 30000, i32 27000
  %19 = ptrtoint ptr %drv_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drv_data.i.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %arrayidx2.i.i9.i = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 3, i32 %22
  %23 = ptrtoint ptr %arrayidx2.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx2.i.i9.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %and.i14.i = shl i32 %cond.i, 24
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %26, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %and.i14.i) #8, !srcloc !224
  %add.i17.i = add i32 %24, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %27 = shl nuw nsw i32 %cond.i, 16
  %and.i14.1.i = and i32 %27, 2097152000
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i15.1.i = getelementptr i8, ptr %29, i32 %add.i17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.1.i, i32 %and.i14.1.i) #8, !srcloc !224
  %add.i17.1.i = add i32 %24, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i15.2.i = getelementptr i8, ptr %31, i32 %add.i17.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.2.i, i32 0) #8, !srcloc !224
  %32 = ptrtoint ptr %drv_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drv_data.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %arrayidx2.i.i23.i = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 4, i32 %35
  %36 = ptrtoint ptr %arrayidx2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.i.i23.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %39, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %and.i14.i) #8, !srcloc !224
  %add.i31.i = add i32 %37, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i29.1.i = getelementptr i8, ptr %41, i32 %add.i31.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.1.i, i32 %and.i14.1.i) #8, !srcloc !224
  %add.i31.1.i = add i32 %37, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i29.2.i = getelementptr i8, ptr %43, i32 %add.i31.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.2.i, i32 0) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 8
  %46 = ptrtoint ptr %drv_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %drv_data.i.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %arrayidx2.i.i38.i = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 2, i32 %49
  %50 = ptrtoint ptr %arrayidx2.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx2.i.i38.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %45, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 67108864) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %53, i32 262176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 385875968) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i36 = getelementptr i8, ptr %55, i32 262228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 1056964608) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i38 = getelementptr i8, ptr %57, i32 262232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 50331648) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i40 = getelementptr i8, ptr %59, i32 262144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 0) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %61, i32 262144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 16777216) #8, !srcloc !224
  %62 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %63, i32 262172
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #8, !srcloc !226
  %65 = and i32 %64, -33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  %conv = or i32 %65, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i46 = getelementptr i8, ptr %67, i32 262172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %conv) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %69, i32 262156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 1442840576) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %71, i32 262160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 872415232) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i52 = getelementptr i8, ptr %73, i32 262164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 301989888) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i54 = getelementptr i8, ptr %75, i32 262168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %77, i32 262148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 0) #8, !srcloc !224
  %or7 = or i32 %data_num.0, %bit_ch.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i59 = getelementptr i8, ptr %79, i32 262152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %or7) #8, !srcloc !224
  %iec = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 23, i32 2, i32 1
  %80 = ptrtoint ptr %iec to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %iec, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i.i, align 8
  %conv.i61 = zext i8 %81 to i32
  %84 = shl nuw i32 %conv.i61, 24
  %add.ptr.i62 = getelementptr i8, ptr %83, i32 262184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %84) #8, !srcloc !224
  %arrayidx.1 = getelementptr %struct.hdmi_context, ptr %hdata, i32 0, i32 23, i32 2, i32 1, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %87 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i, align 8
  %conv.i61.1 = zext i8 %86 to i32
  %89 = shl nuw i32 %conv.i61.1, 24
  %add.ptr.i62.1 = getelementptr i8, ptr %88, i32 262188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.1, i32 %89) #8, !srcloc !224
  %arrayidx.2 = getelementptr %struct.hdmi_context, ptr %hdata, i32 0, i32 23, i32 2, i32 1, i32 0, i32 2
  %90 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i, align 8
  %conv.i61.2 = zext i8 %91 to i32
  %94 = shl nuw i32 %conv.i61.2, 24
  %add.ptr.i62.2 = getelementptr i8, ptr %93, i32 262192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.2, i32 %94) #8, !srcloc !224
  %arrayidx.3 = getelementptr %struct.hdmi_context, ptr %hdata, i32 0, i32 23, i32 2, i32 1, i32 0, i32 3
  %95 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %97 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i.i, align 8
  %conv.i61.3 = zext i8 %96 to i32
  %99 = shl nuw i32 %conv.i61.3, 24
  %add.ptr.i62.3 = getelementptr i8, ptr %98, i32 262196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.3, i32 %99) #8, !srcloc !224
  %arrayidx.4 = getelementptr %struct.hdmi_context, ptr %hdata, i32 0, i32 23, i32 2, i32 1, i32 0, i32 4
  %100 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.4, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i.i, align 8
  %conv.i61.4 = zext i8 %101 to i32
  %104 = shl nuw i32 %conv.i61.4, 24
  %add.ptr.i62.4 = getelementptr i8, ptr %103, i32 262200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.4, i32 %104) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %105 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %106, i32 262180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 16777216) #8, !srcloc !224
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  %conn_info.i = alloca %struct.cec_connector_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_dev2 = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %drm_dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %drm_dev2, align 4
  %phy_clk = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %phy_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hdmiphy_clk_enable, ptr %phy_clk, align 8
  %call3 = tail call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %1, i32 noundef 2) #8
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @exynos_hdmi_encoder_helper_funcs, ptr %helper_private.i, align 4
  %call4 = tail call i32 @exynos_drm_set_possible_crtcs(ptr noundef %1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @exynos_drm_crtc_get_by_type(ptr noundef %data, i32 noundef 2) #8
  %pipe_clk = getelementptr inbounds %struct.exynos_drm_crtc, ptr %call5, i32 0, i32 4
  %5 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %phy_clk, ptr %pipe_clk, align 4
  %connector1.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %conn_info.i) #8
  %6 = call ptr @memset(ptr %conn_info.i, i32 255, i32 68)
  %interlace_allowed.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 3, i32 12
  %7 = ptrtoint ptr %interlace_allowed.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %interlace_allowed.i, align 8
  %polled.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 3, i32 33
  %8 = ptrtoint ptr %polled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %polled.i, align 4
  %9 = ptrtoint ptr %drm_dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm_dev2, align 4
  %ddc_adpt.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %ddc_adpt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddc_adpt.i, align 4
  %call2.i = tail call i32 @drm_connector_init_with_ddc(ptr noundef %10, ptr noundef %connector1.i, ptr noundef nonnull @hdmi_connector_funcs, i32 noundef 11, ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.73) #8
  br label %hdmi_create_connector.exit.thread

if.end.i:                                         ; preds = %if.end
  %helper_private.i.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 3, i32 35
  %15 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hdmi_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %call3.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector1.i, ptr noundef %1) #8
  %bridge.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bridge.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef nonnull %17, ptr noundef null, i32 noundef 0) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %ret.0.i = phi i32 [ %call7.i, %if.then5.i ], [ 0, %if.end.i.if.end8.i_crit_edge ]
  call void @cec_fill_conn_info_from_drm(ptr noundef nonnull %conn_info.i, ptr noundef %connector1.i) #8
  %dev9.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9.i, align 8
  %call10.i = call ptr @cec_notifier_conn_register(ptr noundef %19, ptr noundef null, ptr noundef nonnull %conn_info.i) #8
  %notifier.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %notifier.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call10.i, ptr %notifier.i, align 8
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %hdmi_create_connector.exit

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev9.i, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.74) #8
  br label %hdmi_create_connector.exit.thread

hdmi_create_connector.exit.thread:                ; preds = %if.then13.i, %if.then.i
  %retval.0.i.ph = phi i32 [ -12, %if.then13.i ], [ %call2.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %conn_info.i) #8
  br label %if.then8

hdmi_create_connector.exit:                       ; preds = %if.end8.i
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %conn_info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %hdmi_create_connector.exit.cleanup_crit_edge, label %hdmi_create_connector.exit.if.then8_crit_edge

hdmi_create_connector.exit.if.then8_crit_edge:    ; preds = %hdmi_create_connector.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

hdmi_create_connector.exit.cleanup_crit_edge:     ; preds = %hdmi_create_connector.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %hdmi_create_connector.exit.if.then8_crit_edge, %hdmi_create_connector.exit.thread
  %retval.0.i30 = phi i32 [ %retval.0.i.ph, %hdmi_create_connector.exit.thread ], [ %ret.0.i, %hdmi_create_connector.exit.if.then8_crit_edge ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.45, i32 noundef %retval.0.i30) #8
  call void @drm_encoder_cleanup(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %hdmi_create_connector.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i30, %if.then8 ], [ %call4, %entry.cleanup_crit_edge ], [ 0, %hdmi_create_connector.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hdmi_unbind(ptr nocapture noundef %dev, ptr nocapture noundef %master, ptr nocapture noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmiphy_clk_enable(ptr noundef %clk, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %clk, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %clk, i32 -1312
  tail call fastcc void @hdmiphy_enable(ptr noundef %add.ptr)
  br label %if.end

if.else:                                          ; preds = %entry
  %powered.i = getelementptr i8, ptr %clk, i32 352
  %0 = ptrtoint ptr %powered.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered.i, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %regs.i.i = getelementptr i8, ptr %clk, i32 -80
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 65536
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %7, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %5) #8, !srcloc !224
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %9, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %11 = or i32 %10, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i14.i = getelementptr i8, ptr %13, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i14.i, i32 %11) #8, !srcloc !224
  %sysreg.i.i = getelementptr i8, ptr %clk, i32 -52
  %14 = ptrtoint ptr %sysreg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sysreg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.hdmi_set_refclk.exit.i_crit_edge, label %if.end.i.i

if.end.i.hdmi_set_refclk.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_set_refclk.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %15, i32 noundef 4104, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %hdmi_set_refclk.exit.i

hdmi_set_refclk.exit.i:                           ; preds = %if.end.i.i, %if.end.i.hdmi_set_refclk.exit.i_crit_edge
  %pmureg.i = getelementptr i8, ptr %clk, i32 -56
  %16 = ptrtoint ptr %pmureg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pmureg.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1792, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %regul_bulk.i = getelementptr i8, ptr %clk, i32 -40
  %call1.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %regul_bulk.i) #8
  %dev.i = getelementptr i8, ptr %clk, i32 -1240
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  %call.i15.i = tail call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 4) #8
  %20 = ptrtoint ptr %powered.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %powered.i, align 8
  br label %if.end

if.end:                                           ; preds = %hdmi_set_refclk.exit.i, %if.else.if.end_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_set_possible_crtcs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_crtc_get_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmiphy_enable(ptr noundef %hdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %powered = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 24
  %0 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !233
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.46) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %regul_bulk = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 18
  %call4 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %regul_bulk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.if.end8_crit_edge, label %if.then6

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str.48) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3.if.end8_crit_edge
  %pmureg = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 14
  %9 = ptrtoint ptr %pmureg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pmureg, align 8
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 1792, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sysreg.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 15
  %11 = ptrtoint ptr %sysreg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sysreg.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end8.hdmi_set_refclk.exit_crit_edge, label %if.end.i

if.end8.hdmi_set_refclk.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_set_refclk.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %12, i32 noundef 4104, i32 noundef 1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %hdmi_set_refclk.exit

hdmi_set_refclk.exit:                             ; preds = %if.end.i, %if.end8.hdmi_set_refclk.exit_crit_edge
  %regs.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 8
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 48
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %16 = and i32 %15, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %18, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %16) #8, !srcloc !224
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %hdata, i32 0, i32 8
  %19 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crtc.i, align 4
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state.i, align 4
  %mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode.i, align 4
  %mul.i = mul i32 %24, 1000
  %drv_data.i.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 7
  %25 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drv_data.i.i, align 4
  %phy_confs.i.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %phy_confs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phy_confs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp11.i.i = icmp sgt i32 %28, 0
  br i1 %cmp11.i.i, label %for.body.lr.ph.i.i, label %hdmi_set_refclk.exit.if.then.i21_crit_edge

hdmi_set_refclk.exit.if.then.i21_crit_edge:       ; preds = %hdmi_set_refclk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i21

for.body.lr.ph.i.i:                               ; preds = %hdmi_set_refclk.exit
  %data.i.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %26, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.hdmiphy_config, ptr %30, i32 %i.012.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %mul.i)
  %cmp2.i.i = icmp eq i32 %32, %mul.i
  br i1 %cmp2.i.i, label %if.end.i22, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %28
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then.i21_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.then.i21_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i21

if.then.i21:                                      ; preds = %for.inc.i.i.if.then.i21_crit_edge, %hdmi_set_refclk.exit.if.then.i21_crit_edge
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %34, i32 noundef 4, ptr noundef nonnull @.str.51, i32 noundef %mul.i) #8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %36, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.49) #8
  br label %hdmiphy_conf_apply.exit

if.end.i22:                                       ; preds = %for.body.i.i
  %conf.i = getelementptr %struct.hdmiphy_config, ptr %30, i32 %i.012.i.i, i32 1
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %clk_muxes31.i.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %26, i32 0, i32 4
  %39 = ptrtoint ptr %clk_muxes31.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %clk_muxes31.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp32.i.i = icmp sgt i32 %40, 0
  br i1 %cmp32.i.i, label %for.body.lr.ph.i23.i, label %if.end.i22.hdmi_clk_set_parents.exit.i_crit_edge

if.end.i22.hdmi_clk_set_parents.exit.i_crit_edge: ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_clk_set_parents.exit.i

for.body.lr.ph.i23.i:                             ; preds = %if.end.i22
  %clk_muxes2.i.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 17
  br label %for.body.i25.i

for.body.i25.i:                                   ; preds = %cleanup.i.i.for.body.i25.i_crit_edge, %for.body.lr.ph.i23.i
  %i.033.i.i = phi i32 [ 0, %for.body.lr.ph.i23.i ], [ %add15.i.i, %cleanup.i.i.for.body.i25.i_crit_edge ]
  %41 = ptrtoint ptr %clk_muxes2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk_muxes2.i.i, align 4
  %arrayidx.i24.i = getelementptr ptr, ptr %42, i32 %i.033.i.i
  %arrayidx3.i.i = getelementptr ptr, ptr %arrayidx.i24.i, i32 2
  %43 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx3.i.i, align 4
  %45 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i24.i, align 4
  %call.i.i23 = tail call i32 @clk_set_parent(ptr noundef %44, ptr noundef %46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %tobool5.not.i.i = icmp eq i32 %call.i.i23, 0
  br i1 %tobool5.not.i.i, label %for.body.i25.i.cleanup.i.i_crit_edge, label %do.end.i.i

for.body.i25.i.cleanup.i.i_crit_edge:             ; preds = %for.body.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i

do.end.i.i:                                       ; preds = %for.body.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %drv_data.i.i, align 4
  %data.i26.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %48, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %data.i26.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i26.i, align 4
  %add.i.i = add i32 %i.033.i.i, 2
  %arrayidx8.i.i = getelementptr ptr, ptr %50, i32 %add.i.i
  %51 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx8.i.i, align 4
  %arrayidx14.i.i = getelementptr ptr, ptr %50, i32 %i.033.i.i
  %53 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx14.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.25, ptr noundef %52, ptr noundef %54, i32 noundef %call.i.i23) #11
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %do.end.i.i, %for.body.i25.i.cleanup.i.i_crit_edge
  %add15.i.i = add i32 %i.033.i.i, 3
  %55 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %drv_data.i.i, align 4
  %clk_muxes.i.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %clk_muxes.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %clk_muxes.i.i, align 4
  %cmp.i.i = icmp slt i32 %add15.i.i, %58
  br i1 %cmp.i.i, label %cleanup.i.i.for.body.i25.i_crit_edge, label %cleanup.i.i.hdmi_clk_set_parents.exit.i_crit_edge

cleanup.i.i.hdmi_clk_set_parents.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_clk_set_parents.exit.i

cleanup.i.i.for.body.i25.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i25.i

hdmi_clk_set_parents.exit.i:                      ; preds = %cleanup.i.i.hdmi_clk_set_parents.exit.i_crit_edge, %if.end.i22.hdmi_clk_set_parents.exit.i_crit_edge
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %60, i32 128
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %62 = and i32 %61, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %64, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %62) #8, !srcloc !224
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i.i = getelementptr i8, ptr %66, i32 128
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %68 = or i32 %67, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 8
  %add.ptr5.i7.i.i = getelementptr i8, ptr %70, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i7.i.i, i32 %68) #8, !srcloc !224
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %71 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %drv_data.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %arrayidx2.i.i.i.i = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 1, i32 %74
  %75 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %77 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i, align 8
  %add.ptr.i9.i.i = getelementptr i8, ptr %78, i32 %76
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %80 = or i32 %79, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 8
  %add.ptr5.i12.i.i = getelementptr i8, ptr %82, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i12.i.i, i32 %80) #8, !srcloc !224
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %83 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %drv_data.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %arrayidx2.i.i14.i.i = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 1, i32 %86
  %87 = ptrtoint ptr %arrayidx2.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx2.i.i14.i.i, align 4
  %89 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i, align 8
  %add.ptr.i16.i.i = getelementptr i8, ptr %90, i32 %88
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %92 = and i32 %91, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %93 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i, align 8
  %add.ptr5.i18.i.i = getelementptr i8, ptr %94, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i18.i.i, i32 %92) #8, !srcloc !224
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %95 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %drv_data.i.i, align 4
  %cmp.i29.i = icmp eq ptr %96, @exynos5433_hdmi_driver_data
  br i1 %cmp.i29.i, label %do.body.i.i, label %hdmi_clk_set_parents.exit.i.hdmiphy_enable_mode_set.exit.i_crit_edge

hdmi_clk_set_parents.exit.i.hdmiphy_enable_mode_set.exit.i_crit_edge: ; preds = %hdmi_clk_set_parents.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmiphy_enable_mode_set.exit.i

do.body.i.i:                                      ; preds = %hdmi_clk_set_parents.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  tail call void @arm_heavy_mb() #8
  %regs_hdmiphy.i.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 9
  %97 = ptrtoint ptr %regs_hdmiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs_hdmiphy.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %98, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !224
  br label %hdmiphy_enable_mode_set.exit.i

hdmiphy_enable_mode_set.exit.i:                   ; preds = %do.body.i.i, %hdmi_clk_set_parents.exit.i.hdmiphy_enable_mode_set.exit.i_crit_edge
  %hdmiphy_port.i.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 10
  %99 = ptrtoint ptr %hdmiphy_port.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hdmiphy_port.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %if.then1.i.i

for.cond.preheader.i.i:                           ; preds = %hdmiphy_enable_mode_set.exit.i
  %regs_hdmiphy.i30.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 9
  br label %do.body.i35.i

if.then1.i.i:                                     ; preds = %hdmiphy_enable_mode_set.exit.i
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef nonnull %100, ptr noundef %conf.i, i32 noundef 32, i16 noundef zeroext 0) #8
  %101 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call.i.i.i, label %if.then3.i [
    i32 32, label %if.then1.i.i.if.end5.i_crit_edge
    i32 0, label %if.then1.i.i.if.end5.i_crit_edge38
  ]

if.then1.i.i.if.end5.i_crit_edge38:               ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then1.i.i.if.end5.i_crit_edge:                 ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

do.body.i35.i:                                    ; preds = %do.body.i35.i.do.body.i35.i_crit_edge, %for.cond.preheader.i.i
  %i.01.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i33.i, %do.body.i35.i.do.body.i35.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  tail call void @arm_heavy_mb() #8
  %arrayidx.i31.i = getelementptr i8, ptr %conf.i, i32 %i.01.i.i
  %102 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i31.i, align 1
  %conv.i.i = zext i8 %103 to i32
  %104 = shl nuw i32 %conv.i.i, 24
  %105 = ptrtoint ptr %regs_hdmiphy.i30.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs_hdmiphy.i30.i, align 4
  %shl.i.i = shl nuw nsw i32 %i.01.i.i, 2
  %add.ptr.i32.i = getelementptr i8, ptr %106, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %104) #8, !srcloc !224
  %inc.i33.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i34.i = icmp eq i32 %inc.i33.i, 32
  br i1 %exitcond.not.i34.i, label %do.body.i35.i.if.end5.i_crit_edge, label %do.body.i35.i.do.body.i35.i_crit_edge

do.body.i35.i.do.body.i35.i_crit_edge:            ; preds = %do.body.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i35.i

do.body.i35.i.if.end5.i_crit_edge:                ; preds = %do.body.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %108, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.50) #8
  br label %hdmiphy_conf_apply.exit

if.end5.i:                                        ; preds = %do.body.i35.i.if.end5.i_crit_edge, %if.then1.i.i.if.end5.i_crit_edge, %if.then1.i.i.if.end5.i_crit_edge38
  %109 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %drv_data.i.i, align 4
  %cmp.i37.i = icmp eq ptr %110, @exynos5433_hdmi_driver_data
  br i1 %cmp.i37.i, label %do.body.i40.i, label %if.end5.i.hdmiphy_enable_mode_set.exit41.i_crit_edge

if.end5.i.hdmiphy_enable_mode_set.exit41.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmiphy_enable_mode_set.exit41.i

do.body.i40.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  tail call void @arm_heavy_mb() #8
  %regs_hdmiphy.i38.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 9
  %111 = ptrtoint ptr %regs_hdmiphy.i38.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs_hdmiphy.i38.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %112, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 -2147483648) #8, !srcloc !224
  br label %hdmiphy_enable_mode_set.exit41.i

hdmiphy_enable_mode_set.exit41.i:                 ; preds = %do.body.i40.i, %if.end5.i.hdmiphy_enable_mode_set.exit41.i_crit_edge
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 8
  %115 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %drv_data.i.i, align 4
  %clk_muxes31.i44.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %clk_muxes31.i44.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %clk_muxes31.i44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp32.i45.i = icmp sgt i32 %118, 0
  br i1 %cmp32.i45.i, label %for.body.lr.ph.i47.i, label %hdmiphy_enable_mode_set.exit41.i.hdmi_clk_set_parents.exit65.i_crit_edge

hdmiphy_enable_mode_set.exit41.i.hdmi_clk_set_parents.exit65.i_crit_edge: ; preds = %hdmiphy_enable_mode_set.exit41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_clk_set_parents.exit65.i

for.body.lr.ph.i47.i:                             ; preds = %hdmiphy_enable_mode_set.exit41.i
  %clk_muxes2.i46.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 17
  br label %for.body.i53.i

for.body.i53.i:                                   ; preds = %cleanup.i62.i.for.body.i53.i_crit_edge, %for.body.lr.ph.i47.i
  %i.033.i48.i = phi i32 [ 0, %for.body.lr.ph.i47.i ], [ %add15.i59.i, %cleanup.i62.i.for.body.i53.i_crit_edge ]
  %119 = ptrtoint ptr %clk_muxes2.i46.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %clk_muxes2.i46.i, align 4
  %arrayidx.i49.i = getelementptr ptr, ptr %120, i32 %i.033.i48.i
  %arrayidx3.i50.i = getelementptr ptr, ptr %arrayidx.i49.i, i32 2
  %121 = ptrtoint ptr %arrayidx3.i50.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx3.i50.i, align 4
  %arrayidx4.i.i = getelementptr ptr, ptr %arrayidx.i49.i, i32 1
  %123 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx4.i.i, align 4
  %call.i51.i = tail call i32 @clk_set_parent(ptr noundef %122, ptr noundef %124) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool5.not.i52.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool5.not.i52.i, label %for.body.i53.i.cleanup.i62.i_crit_edge, label %do.end.i58.i

for.body.i53.i.cleanup.i62.i_crit_edge:           ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i62.i

do.end.i58.i:                                     ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %drv_data.i.i, align 4
  %data.i54.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %126, i32 0, i32 4, i32 1
  %127 = ptrtoint ptr %data.i54.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i54.i, align 4
  %add.i55.i = add i32 %i.033.i48.i, 2
  %arrayidx8.i56.i = getelementptr ptr, ptr %128, i32 %add.i55.i
  %129 = ptrtoint ptr %arrayidx8.i56.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx8.i56.i, align 4
  %add13.i.i = add nsw i32 %i.033.i48.i, 1
  %arrayidx14.i57.i = getelementptr ptr, ptr %128, i32 %add13.i.i
  %131 = ptrtoint ptr %arrayidx14.i57.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx14.i57.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.25, ptr noundef %130, ptr noundef %132, i32 noundef %call.i51.i) #11
  br label %cleanup.i62.i

cleanup.i62.i:                                    ; preds = %do.end.i58.i, %for.body.i53.i.cleanup.i62.i_crit_edge
  %add15.i59.i = add i32 %i.033.i48.i, 3
  %133 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %drv_data.i.i, align 4
  %clk_muxes.i60.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %clk_muxes.i60.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %clk_muxes.i60.i, align 4
  %cmp.i61.i = icmp slt i32 %add15.i59.i, %136
  br i1 %cmp.i61.i, label %cleanup.i62.i.for.body.i53.i_crit_edge, label %cleanup.i62.i.hdmi_clk_set_parents.exit65.i_crit_edge

cleanup.i62.i.hdmi_clk_set_parents.exit65.i_crit_edge: ; preds = %cleanup.i62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_clk_set_parents.exit65.i

cleanup.i62.i.for.body.i53.i_crit_edge:           ; preds = %cleanup.i62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i53.i

hdmi_clk_set_parents.exit65.i:                    ; preds = %cleanup.i62.i.hdmi_clk_set_parents.exit65.i_crit_edge, %hdmiphy_enable_mode_set.exit41.i.hdmi_clk_set_parents.exit65.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  br label %for.body.i71.i

for.body.i71.i:                                   ; preds = %if.end.i.i.for.body.i71.i_crit_edge, %hdmi_clk_set_parents.exit65.i
  %tries.010.i.i = phi i32 [ 0, %hdmi_clk_set_parents.exit65.i ], [ %inc.i73.i, %if.end.i.i.for.body.i71.i_crit_edge ]
  %137 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs.i, align 8
  %139 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %drv_data.i.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  %arrayidx2.i.i.i68.i = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 0, i32 %142
  %143 = ptrtoint ptr %arrayidx2.i.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx2.i.i.i68.i, align 4
  %add.ptr.i.i69.i = getelementptr i8, ptr %138, i32 %144
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i69.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  %146 = and i32 %145, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i70.i = icmp eq i32 %146, 0
  br i1 %tobool.not.i70.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %148, i32 noundef 4, ptr noundef nonnull @.str.62, i32 noundef %tries.010.i.i) #8
  br label %hdmiphy_conf_apply.exit

if.end.i.i:                                       ; preds = %for.body.i71.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %inc.i73.i = add nuw nsw i32 %tries.010.i.i, 1
  %exitcond.not.i74.i = icmp eq i32 %inc.i73.i, 10
  br i1 %exitcond.not.i74.i, label %for.end.i76.i, label %if.end.i.i.for.body.i71.i_crit_edge

if.end.i.i.for.body.i71.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i71.i

for.end.i76.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %150, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.63) #8
  br label %hdmiphy_conf_apply.exit

hdmiphy_conf_apply.exit:                          ; preds = %for.end.i76.i, %if.then.i.i, %if.then3.i, %if.then.i21
  %151 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %powered, align 8
  br label %cleanup

cleanup:                                          ; preds = %hdmiphy_conf_apply.exit, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hdmi_mode_fixup(ptr noundef readonly %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #8
  %2 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !236
  %3 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !236
  tail call void @drm_mode_set_crtcinfo(ptr noundef %adjusted_mode, i32 noundef 0) #8
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %conn_iter) #8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then7.critedge, label %while.body

while.body:                                       ; preds = %while.cond
  %encoder2 = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 41
  %5 = ptrtoint ptr %encoder2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder2, align 4
  %cmp = icmp eq ptr %6, %encoder
  br i1 %cmp, label %if.then4.critedge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then4.critedge:                                ; preds = %while.body
  %base.i = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 6
  call void @drm_mode_object_get(ptr noundef %base.i) #8
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #8
  %call9 = call i32 @hdmi_mode_valid(ptr noundef nonnull %call, ptr noundef %adjusted_mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then4.critedge.cleanup_crit_edge, label %if.end12

if.then4.critedge.cleanup_crit_edge:              ; preds = %if.then4.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7.critedge:                                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #8
  br label %cleanup34

if.end12:                                         ; preds = %if.then4.critedge
  %modes = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 17
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end12
  %.pn.in = phi ptr [ %modes, %if.end12 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp14.not = icmp eq ptr %.pn, %modes
  br i1 %cmp14.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %m.0 = getelementptr i8, ptr %.pn, i32 -64
  %call15 = call i32 @hdmi_mode_valid(ptr noundef nonnull %call, ptr noundef %m.0)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #11
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #11
  %dev25 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev25, align 4
  %hdisplay = getelementptr i8, ptr %.pn, i32 -60
  %10 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %11 to i32
  %vdisplay = getelementptr i8, ptr %.pn, i32 -50
  %12 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdisplay, align 2
  %conv26 = zext i16 %13 to i32
  %call27 = call i32 @drm_mode_vrefresh(ptr noundef %m.0) #8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.69, i32 noundef %conv, i32 noundef %conv26, i32 noundef %call27) #8
  call void @drm_mode_copy(ptr noundef %adjusted_mode, ptr noundef %m.0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.cleanup_crit_edge, %if.then4.critedge.cleanup_crit_edge
  call void @drm_mode_object_put(ptr noundef %base.i) #8
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup, %if.then7.critedge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #8
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_disable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.hdmi_context, ptr %encoder, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %powered = getelementptr inbounds %struct.hdmi_context, ptr %encoder, i32 0, i32 24
  %0 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %hotplug_work = getelementptr inbounds %struct.hdmi_context, ptr %encoder, i32 0, i32 5
  %call2 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %hotplug_work) #8
  %notifier = getelementptr inbounds %struct.hdmi_context, ptr %encoder, i32 0, i32 6
  %2 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notifier, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cec_notifier_set_phys_addr(ptr noundef nonnull %3, i16 noundef zeroext -1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_enable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.hdmi_context, ptr %encoder, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call fastcc void @hdmiphy_enable(ptr noundef %encoder)
  tail call fastcc void @hdmi_conf_apply(ptr noundef %encoder)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_mode_valid(ptr nocapture noundef readonly %connector, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %connector, i32 -8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %4 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay, align 2
  %conv1 = zext i16 %5 to i32
  %call2 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #8
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = lshr i32 %7, 4
  %and.lobit = and i32 %and, 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %mul = mul i32 %9, 1000
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.70, i32 noundef %conv, i32 noundef %conv1, i32 noundef %call2, i32 noundef %and.lobit, i32 noundef %mul) #8
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %mul4 = mul i32 %11, 1000
  %drv_data.i = getelementptr i8, ptr %connector, i32 1148
  %12 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv_data.i, align 4
  %phy_confs.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %phy_confs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_confs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp11.i = icmp sgt i32 %15, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %entry..loopexit_crit_edge

entry..loopexit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit

for.body.lr.ph.i:                                 ; preds = %entry
  %data.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %13, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hdmiphy_config, ptr %17, i32 %i.012.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %mul4)
  %cmp2.i = icmp eq i32 %19, %mul4
  br i1 %cmp2.i, label %for.body.i.hdmi_find_phy_conf.exit_crit_edge, label %for.inc.i

for.body.i.hdmi_find_phy_conf.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_find_phy_conf.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i..loopexit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i..loopexit_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit

.loopexit:                                        ; preds = %for.inc.i..loopexit_crit_edge, %entry..loopexit_crit_edge
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %21, i32 noundef 4, ptr noundef nonnull @.str.51, i32 noundef %mul4) #8
  br label %hdmi_find_phy_conf.exit

hdmi_find_phy_conf.exit:                          ; preds = %.loopexit, %for.body.i.hdmi_find_phy_conf.exit_crit_edge
  %22 = phi i32 [ -2, %.loopexit ], [ 0, %for.body.i.hdmi_find_phy_conf.exit_crit_edge ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_conf_apply(ptr noundef %hdata) unnamed_addr #0 align 64 {
entry:
  %buf.i.i.i = alloca [14 x i8], align 1
  %frm.i.i = alloca %union.hdmi_infoframe, align 4
  %buf.i.i = alloca [25 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %hdata, i32 0, i32 8
  %0 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc.i, align 4
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 8, i32 11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %5, 3
  %6 = and i32 %and.i, 2
  %regs.i.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 8
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 65536
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %10 = and i32 %9, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %12, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %10) #8, !srcloc !224
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %14, i32 327680
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %16 = and i32 %15, -50331649
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %or.i10.i = or i32 %17, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i10.i) #8
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i11.i = getelementptr i8, ptr %20, i32 327680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i11.i, i32 %18) #8, !srcloc !224
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %24 = and i32 %23, -1275068417
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #8, !srcloc !224
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i6 = getelementptr i8, ptr %28, i32 65600
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %30 = and i32 %29, -50331649
  %31 = or i32 %30, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i.i7 = getelementptr i8, ptr %33, i32 65600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i7, i32 %31) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %35, i32 65544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 0) #8, !srcloc !224
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %37, i32 65536
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %39 = and i32 %38, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i28.i = getelementptr i8, ptr %41, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i28.i, i32 %39) #8, !srcloc !224
  %dvi_mode.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 4
  %42 = ptrtoint ptr %dvi_mode.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dvi_mode.i, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i30.i = getelementptr i8, ptr %45, i32 65600
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %47 = and i32 %46, -50331649
  %48 = or i32 %47, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i33.i = getelementptr i8, ptr %50, i32 65600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i33.i, i32 %48) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i35.i = getelementptr i8, ptr %52, i32 65544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 570425344) #8, !srcloc !224
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %drv_data.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 7
  %53 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %drv_data.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i = icmp eq i32 %56, 0
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i37.i = getelementptr i8, ptr %58, i32 65616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 301989888) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i39.i = getelementptr i8, ptr %60, i32 65620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 872415232) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i41.i = getelementptr i8, ptr %62, i32 65624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 1442840576) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i43.i = getelementptr i8, ptr %64, i32 66304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 33554432) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i45.i = getelementptr i8, ptr %66, i32 66336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 0) #8, !srcloc !224
  %67 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i47.i = getelementptr i8, ptr %68, i32 65540
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %70 = and i32 %69, -537001985
  %71 = or i32 %70, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i50.i = getelementptr i8, ptr %73, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i50.i, i32 %71) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i52.i = getelementptr i8, ptr %75, i32 66560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 33554432) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i54.i = getelementptr i8, ptr %77, i32 66400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 33554432) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i56.i = getelementptr i8, ptr %79, i32 65920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 67108864) #8, !srcloc !224
  br label %hdmi_conf_init.exit

if.else.i:                                        ; preds = %if.end.i
  %80 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %crtc.i, align 4
  %state.i.i = getelementptr inbounds %struct.drm_crtc, ptr %81, i32 0, i32 22
  %82 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %state.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %83, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frm.i.i) #8
  %84 = call ptr @memset(ptr %frm.i.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %buf.i.i) #8
  %85 = getelementptr inbounds [25 x i8], ptr %buf.i.i, i32 0, i32 1
  %86 = getelementptr inbounds [25 x i8], ptr %buf.i.i, i32 0, i32 3
  %87 = call ptr @memset(ptr %buf.i.i, i32 255, i32 25)
  %88 = ptrtoint ptr %dvi_mode.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %dvi_mode.i, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %91, i32 67328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i45.i.i = getelementptr i8, ptr %93, i32 68608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i.i, i32 0) #8, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i47.i.i = getelementptr i8, ptr %95, i32 67584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i.i, i32 0) #8, !srcloc !224
  br label %hdmi_reg_infoframes.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  %connector.i.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 3
  %call.i.i = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frm.i.i, ptr noundef %connector.i.i, ptr noundef %mode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i.i.if.end4.i.i_crit_edge

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %frm.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 25) #8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.end.i.i.if.end4.i.i_crit_edge ], [ %call3.i.i, %if.then2.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp.i.i = icmp sgt i32 %ret.0.i.i, 0
  br i1 %cmp.i.i, label %do.body.lr.ph.i.i.i, label %do.end.i.i

do.body.lr.ph.i.i.i:                              ; preds = %if.end4.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i49.i.i = getelementptr i8, ptr %97, i32 67328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i.i, i32 33554432) #8, !srcloc !224
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.lr.ph.i.i.i
  %size.addr.08.i.i.i = phi i32 [ %ret.0.i.i, %do.body.lr.ph.i.i.i ], [ %dec.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %buf.addr.07.i.i.i = phi ptr [ %buf.i.i, %do.body.lr.ph.i.i.i ], [ %incdec.ptr.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %reg_id.addr.06.i.i.i = phi i32 [ 67344, %do.body.lr.ph.i.i.i ], [ %add.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  call void @arm_heavy_mb() #8
  %incdec.ptr.i.i.i = getelementptr i8, ptr %buf.addr.07.i.i.i, i32 1
  %98 = ptrtoint ptr %buf.addr.07.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %buf.addr.07.i.i.i, align 1
  %conv.i.i.i = zext i8 %99 to i32
  %100 = shl nuw i32 %conv.i.i.i, 24
  %101 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i51.i.i = getelementptr i8, ptr %102, i32 %reg_id.addr.06.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i.i, i32 %100) #8, !srcloc !224
  %dec.i.i.i = add i32 %size.addr.08.i.i.i, -1
  %add.i.i.i = add i32 %reg_id.addr.06.i.i.i, 4
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end8.i.i_crit_edge, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

do.body.i.i.i.if.end8.i.i_crit_edge:              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

do.end.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %ret.0.i.i) #11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.i.if.end8.i.i_crit_edge
  %call10.i.i = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef nonnull %frm.i.i, ptr noundef %connector.i.i, ptr noundef %mode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.end8.i.i.if.end15.i.i_crit_edge

if.end8.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i.i = call i32 @hdmi_vendor_infoframe_pack(ptr noundef nonnull %frm.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 25) #8
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then12.i.i, %if.end8.i.i.if.end15.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %call10.i.i, %if.end8.i.i.if.end15.i.i_crit_edge ], [ %call14.i.i, %if.then12.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %cmp16.i.i = icmp sgt i32 %ret.1.i.i, 0
  br i1 %cmp16.i.i, label %if.then17.i.i, label %if.end15.i.i.if.end20.i.i_crit_edge

if.end15.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  call void @arm_heavy_mb() #8
  %103 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i53.i.i = getelementptr i8, ptr %104, i32 68608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.i, i32 33554432) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  call void @arm_heavy_mb() #8
  %105 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %buf.i.i, align 1
  %conv.i60.i.i = zext i8 %106 to i32
  %107 = shl nuw i32 %conv.i60.i.i, 24
  %108 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i61.i.i = getelementptr i8, ptr %109, i32 68624
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i.i, i32 %107) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  call void @arm_heavy_mb() #8
  %incdec.ptr.i59.1.i.i = getelementptr inbounds [25 x i8], ptr %buf.i.i, i32 0, i32 2
  %110 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %85, align 1
  %conv.i60.1.i.i = zext i8 %111 to i32
  %112 = shl nuw i32 %conv.i60.1.i.i, 24
  %113 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i61.1.i.i = getelementptr i8, ptr %114, i32 68628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.1.i.i, i32 %112) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  call void @arm_heavy_mb() #8
  %115 = ptrtoint ptr %incdec.ptr.i59.1.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %incdec.ptr.i59.1.i.i, align 1
  %conv.i60.2.i.i = zext i8 %116 to i32
  %117 = shl nuw i32 %conv.i60.2.i.i, 24
  %118 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i61.2.i.i = getelementptr i8, ptr %119, i32 68632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.2.i.i, i32 %117) #8, !srcloc !224
  %sub.i.i = add nsw i32 %ret.1.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not5.i67.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not5.i67.i.i, label %if.then17.i.i.if.end20.i.i_crit_edge, label %if.then17.i.i.do.body.i79.i.i_crit_edge

if.then17.i.i.do.body.i79.i.i_crit_edge:          ; preds = %if.then17.i.i
  br label %do.body.i79.i.i

if.then17.i.i.if.end20.i.i_crit_edge:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

do.body.i79.i.i:                                  ; preds = %do.body.i79.i.i.do.body.i79.i.i_crit_edge, %if.then17.i.i.do.body.i79.i.i_crit_edge
  %size.addr.08.i70.i.i = phi i32 [ %dec.i76.i.i, %do.body.i79.i.i.do.body.i79.i.i_crit_edge ], [ %sub.i.i, %if.then17.i.i.do.body.i79.i.i_crit_edge ]
  %buf.addr.07.i71.i.i = phi ptr [ %incdec.ptr.i73.i.i, %do.body.i79.i.i.do.body.i79.i.i_crit_edge ], [ %86, %if.then17.i.i.do.body.i79.i.i_crit_edge ]
  %reg_id.addr.06.i72.i.i = phi i32 [ %add.i77.i.i, %do.body.i79.i.i.do.body.i79.i.i_crit_edge ], [ 68640, %if.then17.i.i.do.body.i79.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  call void @arm_heavy_mb() #8
  %incdec.ptr.i73.i.i = getelementptr i8, ptr %buf.addr.07.i71.i.i, i32 1
  %120 = ptrtoint ptr %buf.addr.07.i71.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %buf.addr.07.i71.i.i, align 1
  %conv.i74.i.i = zext i8 %121 to i32
  %122 = shl nuw i32 %conv.i74.i.i, 24
  %123 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i75.i.i = getelementptr i8, ptr %124, i32 %reg_id.addr.06.i72.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i.i, i32 %122) #8, !srcloc !224
  %dec.i76.i.i = add i32 %size.addr.08.i70.i.i, -1
  %add.i77.i.i = add i32 %reg_id.addr.06.i72.i.i, 4
  %tobool.not.i78.i.i = icmp eq i32 %dec.i76.i.i, 0
  br i1 %tobool.not.i78.i.i, label %do.body.i79.i.i.if.end20.i.i_crit_edge, label %do.body.i79.i.i.do.body.i79.i.i_crit_edge

do.body.i79.i.i.do.body.i79.i.i_crit_edge:        ; preds = %do.body.i79.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i79.i.i

do.body.i79.i.i.if.end20.i.i_crit_edge:           ; preds = %do.body.i79.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.body.i79.i.i.if.end20.i.i_crit_edge, %if.then17.i.i.if.end20.i.i_crit_edge, %if.end15.i.i.if.end20.i.i_crit_edge
  %infoframe1.i.i.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 23, i32 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buf.i.i.i) #8
  %125 = call ptr @memset(ptr %buf.i.i.i, i32 255, i32 14)
  %call.i.i.i = call i32 @hdmi_audio_infoframe_pack(ptr noundef %infoframe1.i.i.i, ptr noundef nonnull %buf.i.i.i, i32 noundef 14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end20.i.i.hdmi_audio_infoframe_apply.exit.i.i_crit_edge, label %if.end.i.i.i

if.end20.i.i.hdmi_audio_infoframe_apply.exit.i.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_audio_infoframe_apply.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end20.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  call void @arm_heavy_mb() #8
  %126 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %127, i32 67584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 33554432) #8, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not5.i.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not5.i.i.i.i, label %if.end.i.i.i.hdmi_audio_infoframe_apply.exit.i.i_crit_edge, label %if.end.i.i.i.do.body.i.i.i.i_crit_edge

if.end.i.i.i.do.body.i.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  br label %do.body.i.i.i.i

if.end.i.i.i.hdmi_audio_infoframe_apply.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_audio_infoframe_apply.exit.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i.i.i.do.body.i.i.i.i_crit_edge
  %size.addr.08.i.i.i.i = phi i32 [ %dec.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %call.i.i.i, %if.end.i.i.i.do.body.i.i.i.i_crit_edge ]
  %buf.addr.07.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %buf.i.i.i, %if.end.i.i.i.do.body.i.i.i.i_crit_edge ]
  %reg_id.addr.06.i.i.i.i = phi i32 [ %add.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ 67600, %if.end.i.i.i.do.body.i.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  call void @arm_heavy_mb() #8
  %incdec.ptr.i.i.i.i = getelementptr i8, ptr %buf.addr.07.i.i.i.i, i32 1
  %128 = ptrtoint ptr %buf.addr.07.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %buf.addr.07.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %129 to i32
  %130 = shl nuw i32 %conv.i.i.i.i, 24
  %131 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %132, i32 %reg_id.addr.06.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %130) #8, !srcloc !224
  %dec.i.i.i.i = add i32 %size.addr.08.i.i.i.i, -1
  %add.i.i.i.i = add i32 %reg_id.addr.06.i.i.i.i, 4
  %tobool.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.hdmi_audio_infoframe_apply.exit.i.i_crit_edge, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

do.body.i.i.i.i.hdmi_audio_infoframe_apply.exit.i.i_crit_edge: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_audio_infoframe_apply.exit.i.i

hdmi_audio_infoframe_apply.exit.i.i:              ; preds = %do.body.i.i.i.i.hdmi_audio_infoframe_apply.exit.i.i_crit_edge, %if.end.i.i.i.hdmi_audio_infoframe_apply.exit.i.i_crit_edge, %if.end20.i.i.hdmi_audio_infoframe_apply.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buf.i.i.i) #8
  br label %hdmi_reg_infoframes.exit.i

hdmi_reg_infoframes.exit.i:                       ; preds = %hdmi_audio_infoframe_apply.exit.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frm.i.i) #8
  %133 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i58.i = getelementptr i8, ptr %134, i32 65540
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.i) #8, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %136 = and i32 %135, -1610612737
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  call void @arm_heavy_mb() #8
  %137 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i60.i = getelementptr i8, ptr %138, i32 65540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i60.i, i32 %136) #8, !srcloc !224
  br label %hdmi_conf_init.exit

hdmi_conf_init.exit:                              ; preds = %hdmi_reg_infoframes.exit.i, %if.then1.i
  call fastcc void @hdmi_audio_config(ptr noundef %hdata)
  %139 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %drv_data.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp.i9 = icmp eq i32 %142, 0
  %143 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %crtc.i, align 4
  %state.i.i11 = getelementptr inbounds %struct.drm_crtc, ptr %144, i32 0, i32 22
  %145 = ptrtoint ptr %state.i.i11 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %state.i.i11, align 4
  br i1 %cmp.i9, label %if.then.i14, label %if.else.i16

if.then.i14:                                      ; preds = %hdmi_conf_init.exit
  %htotal.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 4
  %147 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %htotal.i.i, align 2
  %conv.i.i = zext i16 %148 to i32
  %hdisplay.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 1
  %149 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %hdisplay.i.i, align 4
  %conv1.i.i = zext i16 %150 to i32
  %sub.i.i12 = sub nsw i32 %conv.i.i, %conv1.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i.i.i = shl i32 %sub.i.i12, 24
  %151 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.i13 = getelementptr i8, ptr %152, i32 65696
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i13, i32 %and.i.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %153 = shl i32 %sub.i.i12, 16
  %and.i.1.i.i = and i32 %153, -16777216
  %154 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.1.i.i = getelementptr i8, ptr %155, i32 65700
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i, i32 %and.i.1.i.i) #8, !srcloc !224
  %156 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %htotal.i.i, align 2
  %conv3.i.i = zext i16 %157 to i32
  %vtotal.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 9
  %158 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %vtotal.i.i, align 4
  %conv4.i.i = zext i16 %159 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i237.i.i = shl i32 %conv4.i.i, 24
  %160 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i238.i.i = getelementptr i8, ptr %161, i32 65728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238.i.i, i32 %and.i237.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %162 = shl i32 %conv3.i.i, 28
  %163 = shl nuw i32 %conv4.i.i, 16
  %.masked.i.i = and i32 %163, -16777216
  %and.i237.1.i.i = or i32 %.masked.i.i, %162
  %164 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i238.1.i.i = getelementptr i8, ptr %165, i32 65732
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238.1.i.i, i32 %and.i237.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %166 = shl i32 %conv3.i.i, 20
  %and.i237.2.i.i = and i32 %166, -16777216
  %167 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i238.2.i.i = getelementptr i8, ptr %168, i32 65736
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238.2.i.i, i32 %and.i237.2.i.i) #8, !srcloc !224
  %flags.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 11
  %169 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %flags.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %171 = shl i32 %170, 21
  %and.i249.i.i = and i32 %171, 16777216
  %172 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i250.i.i = getelementptr i8, ptr %173, i32 65764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i250.i.i, i32 %and.i249.i.i) #8, !srcloc !224
  %174 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %flags.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %176 = shl i32 %175, 20
  %and.i261.i.i = and i32 %176, 16777216
  %177 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i262.i.i = getelementptr i8, ptr %178, i32 65768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262.i.i, i32 %and.i261.i.i) #8, !srcloc !224
  %hsync_start.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 2
  %179 = ptrtoint ptr %hsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %hsync_start.i.i, align 2
  %conv9.i.i = zext i16 %180 to i32
  %181 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %hdisplay.i.i, align 4
  %conv11.i.i = zext i16 %182 to i32
  %sub12.i.i = add nsw i32 %conv9.i.i, -2
  %sub13.i.i = sub nsw i32 %sub12.i.i, %conv11.i.i
  %hsync_end.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 3
  %183 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %hsync_end.i.i, align 4
  %conv14.i.i = zext i16 %184 to i32
  %sub17.i.i = sub nsw i32 %conv14.i.i, %conv11.i.i
  %sub18.i.i = shl nsw i32 %sub17.i.i, 10
  %shl19.i.i = add nsw i32 %sub18.i.i, -2048
  %185 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %flags.i.i, align 4
  %187 = shl i32 %186, 19
  %shl25.i.i = and i32 %187, 1048576
  %or20.i.i = or i32 %shl25.i.i, %sub13.i.i
  %or26.i.i = or i32 %or20.i.i, %shl19.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i273.i.i = shl i32 %sub13.i.i, 24
  %188 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i274.i.i = getelementptr i8, ptr %189, i32 65824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.i.i, i32 %and.i273.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %190 = shl i32 %or26.i.i, 16
  %and.i273.1.i.i = and i32 %190, -16777216
  %191 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i274.1.i.i = getelementptr i8, ptr %192, i32 65828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.1.i.i, i32 %and.i273.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %193 = shl i32 %or26.i.i, 8
  %and.i273.2.i.i = and i32 %193, -16777216
  %194 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i274.2.i.i = getelementptr i8, ptr %195, i32 65832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.2.i.i, i32 %and.i273.2.i.i) #8, !srcloc !224
  %196 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %flags.i.i, align 4
  %and28.i.i = and i32 %197, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.else.i.i, label %if.then.i.i15

if.then.i.i15:                                    ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  %vsync_end.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 8
  %198 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %vsync_end.i.i, align 2
  %conv30.i.i = zext i16 %199 to i32
  %vdisplay.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 6
  %200 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %vdisplay.i.i, align 2
  %conv31.i.i = zext i16 %201 to i32
  %sub32.i.i = sub nsw i32 %conv30.i.i, %conv31.i.i
  %div.i.i = sdiv i32 %sub32.i.i, 2
  %vsync_start.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 7
  %202 = ptrtoint ptr %vsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %vsync_start.i.i, align 4
  %conv33.i.i = zext i16 %203 to i32
  %sub36.i.i = sub nsw i32 %conv33.i.i, %conv31.i.i
  %div37.i.i = sdiv i32 %sub36.i.i, 2
  %shl38.i.i = shl nsw i32 %div37.i.i, 12
  %or39.i.i = or i32 %shl38.i.i, %div.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i285.i.i = shl i32 %div.i.i, 24
  %204 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i286.i.i = getelementptr i8, ptr %205, i32 65840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.i.i, i32 %and.i285.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %206 = shl i32 %or39.i.i, 16
  %and.i285.1.i.i = and i32 %206, -16777216
  %207 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i286.1.i.i = getelementptr i8, ptr %208, i32 65844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.1.i.i, i32 %and.i285.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %209 = shl i32 %or39.i.i, 8
  %and.i285.2.i.i = and i32 %209, -16777216
  %210 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i286.2.i.i = getelementptr i8, ptr %211, i32 65848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.2.i.i, i32 %and.i285.2.i.i) #8, !srcloc !224
  %212 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %vtotal.i.i, align 4
  %conv41.i.i = zext i16 %213 to i32
  %div42232.i.i = lshr i32 %conv41.i.i, 1
  %214 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %vdisplay.i.i, align 2
  %conv46.i.i = zext i16 %215 to i32
  %sub47.i.i = sub nsw i32 %conv41.i.i, %conv46.i.i
  %div48.i.i = sdiv i32 %sub47.i.i, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i297.i.i = shl i32 %div42232.i.i, 24
  %216 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i298.i.i = getelementptr i8, ptr %217, i32 65712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i298.i.i, i32 %and.i297.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %218 = shl i32 %div48.i.i, 27
  %219 = shl nuw nsw i32 %div42232.i.i, 16
  %.masked511.i.i = and i32 %219, 2130706432
  %and.i297.1.i.i = or i32 %218, %.masked511.i.i
  %220 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i298.1.i.i = getelementptr i8, ptr %221, i32 65716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i298.1.i.i, i32 %and.i297.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %222 = shl i32 %div48.i.i, 19
  %and.i297.2.i.i = and i32 %222, -16777216
  %223 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i298.2.i.i = getelementptr i8, ptr %224, i32 65720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i298.2.i.i, i32 %and.i297.2.i.i) #8, !srcloc !224
  %225 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %vtotal.i.i, align 4
  %conv52.i.i = zext i16 %226 to i32
  %227 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %vsync_end.i.i, align 2
  %conv54.i.i = zext i16 %228 to i32
  %229 = ptrtoint ptr %vsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %vsync_start.i.i, align 4
  %conv56.i.i = zext i16 %230 to i32
  %sub57.i.i = sub nsw i32 %conv54.i.i, %conv56.i.i
  %mul.i.i = shl nsw i32 %sub57.i.i, 2
  %add.i.i = add nuw nsw i32 %conv52.i.i, 5
  %add58.i.i = add nsw i32 %add.i.i, %mul.i.i
  %div59.i.i = sdiv i32 %add58.i.i, 2
  %shl62.i.i = shl nuw nsw i32 %conv52.i.i, 11
  %or63.i.i = or i32 %div59.i.i, %shl62.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i309.i.i = shl i32 %div59.i.i, 24
  %231 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i310.i.i = getelementptr i8, ptr %232, i32 65808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i310.i.i, i32 %and.i309.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %233 = shl i32 %or63.i.i, 16
  %and.i309.1.i.i = and i32 %233, -16777216
  %234 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i310.1.i.i = getelementptr i8, ptr %235, i32 65812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i310.1.i.i, i32 %and.i309.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %236 = shl i32 %or63.i.i, 8
  %and.i309.2.i.i = and i32 %236, -16777216
  %237 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i310.2.i.i = getelementptr i8, ptr %238, i32 65816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i310.2.i.i, i32 %and.i309.2.i.i) #8, !srcloc !224
  %239 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %vtotal.i.i, align 4
  %241 = lshr i16 %240, 1
  %div66.i.i = zext i16 %241 to i32
  %add67.i.i = add nuw nsw i32 %div66.i.i, 7
  %add71.i.i = shl nuw nsw i32 %div66.i.i, 12
  %shl72.i.i = add nuw nsw i32 %add71.i.i, 8192
  %or73.i.i = or i32 %shl72.i.i, %add67.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i321.i.i = shl i32 %add67.i.i, 24
  %242 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i322.i.i = getelementptr i8, ptr %243, i32 65856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i322.i.i, i32 %and.i321.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %244 = shl i32 %or73.i.i, 16
  %and.i321.1.i.i = and i32 %244, -16777216
  %245 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i322.1.i.i = getelementptr i8, ptr %246, i32 65860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i322.1.i.i, i32 %and.i321.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %247 = shl i32 %shl72.i.i, 8
  %and.i321.2.i.i = and i32 %247, -16777216
  %248 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i322.2.i.i = getelementptr i8, ptr %249, i32 65864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i322.2.i.i, i32 %and.i321.2.i.i) #8, !srcloc !224
  %250 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %htotal.i.i, align 2
  %252 = lshr i16 %251, 1
  %div76.i.i = zext i16 %252 to i32
  %253 = ptrtoint ptr %hsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %hsync_start.i.i, align 2
  %conv78.i.i = zext i16 %254 to i32
  %255 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %hdisplay.i.i, align 4
  %conv80.i.i = zext i16 %256 to i32
  %sub81.i.i = sub nsw i32 %conv78.i.i, %conv80.i.i
  %add82.i.i = add nsw i32 %sub81.i.i, %div76.i.i
  %shl92.i.i = shl nsw i32 %add82.i.i, 12
  %or93.i.i = or i32 %shl92.i.i, %add82.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i333.i.i = shl i32 %add82.i.i, 24
  %257 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i334.i.i = getelementptr i8, ptr %258, i32 65872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334.i.i, i32 %and.i333.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %259 = shl i32 %or93.i.i, 16
  %and.i333.1.i.i = and i32 %259, -16777216
  %260 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i334.1.i.i = getelementptr i8, ptr %261, i32 65876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334.1.i.i, i32 %and.i333.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %262 = shl i32 %or93.i.i, 8
  %and.i333.2.i.i = and i32 %262, -16777216
  %263 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i334.2.i.i = getelementptr i8, ptr %264, i32 65880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334.2.i.i, i32 %and.i333.2.i.i) #8, !srcloc !224
  %265 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %vtotal.i.i, align 4
  %conv95.i.i = zext i16 %266 to i32
  %267 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %vdisplay.i.i, align 2
  %conv97.i.i = zext i16 %268 to i32
  %sub98.i.i = sub nsw i32 %conv95.i.i, %conv97.i.i
  %div99.i.i = sdiv i32 %sub98.i.i, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i345.i.i = shl i32 %div99.i.i, 24
  %269 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i346.i.i = getelementptr i8, ptr %270, i32 327752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i346.i.i, i32 %and.i345.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %271 = shl nsw i32 %div99.i.i, 16
  %and.i345.1.i.i = and i32 %271, -16777216
  %272 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i346.1.i.i = getelementptr i8, ptr %273, i32 327756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i346.1.i.i, i32 %and.i345.1.i.i) #8, !srcloc !224
  %274 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %vdisplay.i.i, align 2
  %276 = lshr i16 %275, 1
  %div102.i.i = zext i16 %276 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i357.i.i = shl i32 %div102.i.i, 24
  %277 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i358.i.i = getelementptr i8, ptr %278, i32 327760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i358.i.i, i32 %and.i357.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %279 = shl nuw nsw i32 %div102.i.i, 16
  %and.i357.1.i.i = and i32 %279, 2130706432
  %280 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i358.1.i.i = getelementptr i8, ptr %281, i32 327764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i358.1.i.i, i32 %and.i357.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %282 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i370.i.i = getelementptr i8, ptr %283, i32 327776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370.i.i, i32 1224736768) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %284 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i370.1.i.i = getelementptr i8, ptr %285, i32 327780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370.1.i.i, i32 33554432) #8, !srcloc !224
  br label %hdmi_v13_mode_apply.exit.i

if.else.i.i:                                      ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  %286 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %vtotal.i.i, align 4
  %conv104.i.i = zext i16 %287 to i32
  %vdisplay107.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 6
  %288 = ptrtoint ptr %vdisplay107.i.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %vdisplay107.i.i, align 2
  %conv108.i.i = zext i16 %289 to i32
  %sub109.i.i = sub nsw i32 %conv104.i.i, %conv108.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i381.i.i = shl i32 %conv104.i.i, 24
  %290 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i382.i.i = getelementptr i8, ptr %291, i32 65712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i382.i.i, i32 %and.i381.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %292 = shl i32 %sub109.i.i, 27
  %293 = shl nuw i32 %conv104.i.i, 16
  %.masked512.i.i = and i32 %293, -16777216
  %and.i381.1.i.i = or i32 %292, %.masked512.i.i
  %294 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i382.1.i.i = getelementptr i8, ptr %295, i32 65716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i382.1.i.i, i32 %and.i381.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %296 = shl i32 %sub109.i.i, 19
  %and.i381.2.i.i = and i32 %296, -16777216
  %297 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i382.2.i.i = getelementptr i8, ptr %298, i32 65720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i382.2.i.i, i32 %and.i381.2.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %299 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i394.i.i = getelementptr i8, ptr %300, i32 65808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i394.i.i, i32 0) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %301 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i394.1.i.i = getelementptr i8, ptr %302, i32 65812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i394.1.i.i, i32 0) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %303 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i394.2.i.i = getelementptr i8, ptr %304, i32 65816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i394.2.i.i, i32 0) #8, !srcloc !224
  %vsync_end112.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 8
  %305 = ptrtoint ptr %vsync_end112.i.i to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %vsync_end112.i.i, align 2
  %conv113.i.i = zext i16 %306 to i32
  %307 = ptrtoint ptr %vdisplay107.i.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %vdisplay107.i.i, align 2
  %conv115.i.i = zext i16 %308 to i32
  %sub116.i.i = sub nsw i32 %conv113.i.i, %conv115.i.i
  %vsync_start117.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 7
  %309 = ptrtoint ptr %vsync_start117.i.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %vsync_start117.i.i, align 4
  %conv118.i.i = zext i16 %310 to i32
  %sub121.i.i = sub nsw i32 %conv118.i.i, %conv115.i.i
  %shl122.i.i = shl nsw i32 %sub121.i.i, 12
  %or123.i.i = or i32 %shl122.i.i, %sub116.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i405.i.i = shl i32 %sub116.i.i, 24
  %311 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i406.i.i = getelementptr i8, ptr %312, i32 65840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i406.i.i, i32 %and.i405.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %313 = shl i32 %or123.i.i, 16
  %and.i405.1.i.i = and i32 %313, -16777216
  %314 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i406.1.i.i = getelementptr i8, ptr %315, i32 65844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i406.1.i.i, i32 %and.i405.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %316 = shl i32 %or123.i.i, 8
  %and.i405.2.i.i = and i32 %316, -16777216
  %317 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i406.2.i.i = getelementptr i8, ptr %318, i32 65848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i406.2.i.i, i32 %and.i405.2.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %319 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i418.i.i = getelementptr i8, ptr %320, i32 65856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i418.i.i, i32 16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %321 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i418.1.i.i = getelementptr i8, ptr %322, i32 65860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i418.1.i.i, i32 268435456) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %323 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i418.2.i.i = getelementptr i8, ptr %324, i32 65864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i418.2.i.i, i32 0) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %325 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i430.i.i = getelementptr i8, ptr %326, i32 65872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i430.i.i, i32 16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %327 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i430.1.i.i = getelementptr i8, ptr %328, i32 65876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i430.1.i.i, i32 268435456) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %329 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i430.2.i.i = getelementptr i8, ptr %330, i32 65880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i430.2.i.i, i32 0) #8, !srcloc !224
  %331 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %vtotal.i.i, align 4
  %conv125.i.i = zext i16 %332 to i32
  %333 = ptrtoint ptr %vdisplay107.i.i to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %vdisplay107.i.i, align 2
  %conv127.i.i = zext i16 %334 to i32
  %sub128.i.i = sub nsw i32 %conv125.i.i, %conv127.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i441.i.i = shl i32 %sub128.i.i, 24
  %335 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i442.i.i = getelementptr i8, ptr %336, i32 327752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i442.i.i, i32 %and.i441.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %337 = shl i32 %sub128.i.i, 16
  %and.i441.1.i.i = and i32 %337, -16777216
  %338 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i442.1.i.i = getelementptr i8, ptr %339, i32 327756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i442.1.i.i, i32 %and.i441.1.i.i) #8, !srcloc !224
  %340 = ptrtoint ptr %vdisplay107.i.i to i32
  call void @__asan_load2_noabort(i32 %340)
  %341 = load i16, ptr %vdisplay107.i.i, align 2
  %conv130.i.i = zext i16 %341 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i453.i.i = shl i32 %conv130.i.i, 24
  %342 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i454.i.i = getelementptr i8, ptr %343, i32 327760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i454.i.i, i32 %and.i453.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %344 = shl nuw i32 %conv130.i.i, 16
  %and.i453.1.i.i = and i32 %344, -16777216
  %345 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i454.1.i.i = getelementptr i8, ptr %346, i32 327764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i454.1.i.i, i32 %and.i453.1.i.i) #8, !srcloc !224
  br label %hdmi_v13_mode_apply.exit.i

hdmi_v13_mode_apply.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i15
  %347 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %htotal.i.i, align 2
  %conv132.i.i = zext i16 %348 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i465.i.i = shl i32 %conv132.i.i, 24
  %349 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i466.i.i = getelementptr i8, ptr %350, i32 327704
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i466.i.i, i32 %and.i465.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %351 = shl nuw i32 %conv132.i.i, 16
  %and.i465.1.i.i = and i32 %351, -16777216
  %352 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i466.1.i.i = getelementptr i8, ptr %353, i32 327708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i466.1.i.i, i32 %and.i465.1.i.i) #8, !srcloc !224
  %354 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %htotal.i.i, align 2
  %conv134.i.i = zext i16 %355 to i32
  %356 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %hdisplay.i.i, align 4
  %conv136.i.i = zext i16 %357 to i32
  %sub137.i.i = sub nsw i32 %conv134.i.i, %conv136.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i477.i.i = shl i32 %sub137.i.i, 24
  %358 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i478.i.i = getelementptr i8, ptr %359, i32 327712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i478.i.i, i32 %and.i477.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %360 = shl i32 %sub137.i.i, 16
  %and.i477.1.i.i = and i32 %360, -16777216
  %361 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i478.1.i.i = getelementptr i8, ptr %362, i32 327716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i478.1.i.i, i32 %and.i477.1.i.i) #8, !srcloc !224
  %363 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %hdisplay.i.i, align 4
  %conv139.i.i = zext i16 %364 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i489.i.i = shl i32 %conv139.i.i, 24
  %365 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i490.i.i = getelementptr i8, ptr %366, i32 327720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i490.i.i, i32 %and.i489.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %367 = shl nuw i32 %conv139.i.i, 16
  %and.i489.1.i.i = and i32 %367, -16777216
  %368 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i490.1.i.i = getelementptr i8, ptr %369, i32 327724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i490.1.i.i, i32 %and.i489.1.i.i) #8, !srcloc !224
  %370 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %vtotal.i.i, align 4
  %conv141.i.i = zext i16 %371 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i501.i.i = shl i32 %conv141.i.i, 24
  %372 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i502.i.i = getelementptr i8, ptr %373, i32 327728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i502.i.i, i32 %and.i501.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %374 = shl nuw i32 %conv141.i.i, 16
  %and.i501.1.i.i = and i32 %374, -16777216
  %375 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i502.1.i.i = getelementptr i8, ptr %376, i32 327732
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i502.1.i.i, i32 %and.i501.1.i.i) #8, !srcloc !224
  br label %hdmi_mode_apply.exit

if.else.i16:                                      ; preds = %hdmi_conf_init.exit
  %vdisplay.i6.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 6
  %377 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %vdisplay.i6.i, align 2
  %vdisplay4.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 7, i32 6
  %379 = ptrtoint ptr %vdisplay4.i.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %vdisplay4.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %378, i16 %380)
  %cmp.not.i.i = icmp eq i16 %378, %380
  br i1 %cmp.not.i.i, label %if.else.i16.if.end.i.i17_crit_edge, label %land.lhs.true.i.i

if.else.i16.if.end.i.i17_crit_edge:               ; preds = %if.else.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i17

land.lhs.true.i.i:                                ; preds = %if.else.i16
  %hdisplay.i7.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 1
  %381 = ptrtoint ptr %hdisplay.i7.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %hdisplay.i7.i, align 4
  %383 = zext i16 %382 to i64
  call void @__sanitizer_cov_trace_switch(i64 %383, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %382, label %land.lhs.true.i.i.if.end.i.i17_crit_edge [
    i16 1280, label %land.lhs.true.i.i.if.then.i8.i_crit_edge
    i16 1024, label %land.lhs.true.i.i.if.then.i8.i_crit_edge25
    i16 1366, label %land.lhs.true.i.i.if.then.i8.i_crit_edge26
  ]

land.lhs.true.i.i.if.then.i8.i_crit_edge26:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i8.i

land.lhs.true.i.i.if.then.i8.i_crit_edge25:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i8.i

land.lhs.true.i.i.if.then.i8.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i8.i

land.lhs.true.i.i.if.end.i.i17_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i17

if.then.i8.i:                                     ; preds = %land.lhs.true.i.i.if.then.i8.i_crit_edge, %land.lhs.true.i.i.if.then.i8.i_crit_edge25, %land.lhs.true.i.i.if.then.i8.i_crit_edge26
  br label %if.end.i.i17

if.end.i.i17:                                     ; preds = %if.then.i8.i, %land.lhs.true.i.i.if.end.i.i17_crit_edge, %if.else.i16.if.end.i.i17_crit_edge
  %hquirk.0.i.i = phi i32 [ 258, %if.then.i8.i ], [ 0, %if.else.i16.if.end.i.i17_crit_edge ], [ 0, %land.lhs.true.i.i.if.end.i.i17_crit_edge ]
  %htotal.i9.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 4
  %384 = ptrtoint ptr %htotal.i9.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %htotal.i9.i, align 2
  %conv19.i.i = zext i16 %385 to i32
  %hdisplay20.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 1
  %386 = ptrtoint ptr %hdisplay20.i.i to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %hdisplay20.i.i, align 4
  %conv21.i.i = zext i16 %387 to i32
  %sub.i10.i = sub nsw i32 %conv19.i.i, %conv21.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i.i12.i = shl i32 %sub.i10.i, 24
  %388 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i13.i = getelementptr i8, ptr %389, i32 65696
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13.i, i32 %and.i.i12.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %390 = shl i32 %sub.i10.i, 16
  %and.i.1.i14.i = and i32 %390, -16777216
  %391 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.1.i15.i = getelementptr i8, ptr %392, i32 65700
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i15.i, i32 %and.i.1.i14.i) #8, !srcloc !224
  %vtotal.i16.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 9
  %393 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %vtotal.i16.i, align 4
  %conv22.i.i = zext i16 %394 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i295.i.i = shl i32 %conv22.i.i, 24
  %395 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i296.i.i = getelementptr i8, ptr %396, i32 65728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i296.i.i, i32 %and.i295.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %397 = shl nuw i32 %conv22.i.i, 16
  %and.i295.1.i.i = and i32 %397, -16777216
  %398 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i296.1.i.i = getelementptr i8, ptr %399, i32 65732
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i296.1.i.i, i32 %and.i295.1.i.i) #8, !srcloc !224
  %400 = ptrtoint ptr %htotal.i9.i to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %htotal.i9.i, align 2
  %conv24.i.i = zext i16 %401 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i307.i.i = shl i32 %conv24.i.i, 24
  %402 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i308.i.i = getelementptr i8, ptr %403, i32 65736
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i308.i.i, i32 %and.i307.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %404 = shl nuw i32 %conv24.i.i, 16
  %and.i307.1.i.i = and i32 %404, -16777216
  %405 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i308.1.i.i = getelementptr i8, ptr %406, i32 65740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i308.1.i.i, i32 %and.i307.1.i.i) #8, !srcloc !224
  %flags.i17.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 11
  %407 = ptrtoint ptr %flags.i17.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %flags.i17.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %409 = shl i32 %408, 23
  %and.i319.i.i = and i32 %409, 16777216
  %410 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i320.i.i = getelementptr i8, ptr %411, i32 65760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i320.i.i, i32 %and.i319.i.i) #8, !srcloc !224
  %412 = ptrtoint ptr %flags.i17.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %flags.i17.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %414 = shl i32 %413, 21
  %and.i331.i.i = and i32 %414, 16777216
  %415 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i332.i.i = getelementptr i8, ptr %416, i32 65764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i332.i.i, i32 %and.i331.i.i) #8, !srcloc !224
  %417 = ptrtoint ptr %flags.i17.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %flags.i17.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %419 = shl i32 %418, 20
  %and.i343.i.i = and i32 %419, 16777216
  %420 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i344.i.i = getelementptr i8, ptr %421, i32 65768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i344.i.i, i32 %and.i343.i.i) #8, !srcloc !224
  %422 = ptrtoint ptr %flags.i17.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %flags.i17.i, align 4
  %and34.i.i = and i32 %423, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  %vsync_end114.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 8
  %424 = ptrtoint ptr %vsync_end114.i.i to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %vsync_end114.i.i, align 2
  %conv115.i18.i = zext i16 %425 to i32
  %426 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %426)
  %427 = load i16, ptr %vdisplay.i6.i, align 2
  %conv117.i.i = zext i16 %427 to i32
  %sub118.i.i = sub nsw i32 %conv115.i18.i, %conv117.i.i
  br i1 %tobool35.not.i.i, label %if.else.i33.i, label %if.then36.i.i

if.then36.i.i:                                    ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #10
  %div.i19.i = sdiv i32 %sub118.i.i, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i355.i.i = shl i32 %div.i19.i, 24
  %428 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i356.i.i = getelementptr i8, ptr %429, i32 65840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i356.i.i, i32 %and.i355.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %430 = shl nsw i32 %div.i19.i, 16
  %and.i355.1.i.i = and i32 %430, -16777216
  %431 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i356.1.i.i = getelementptr i8, ptr %432, i32 65844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i356.1.i.i, i32 %and.i355.1.i.i) #8, !srcloc !224
  %vsync_start.i20.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 7
  %433 = ptrtoint ptr %vsync_start.i20.i to i32
  call void @__asan_load2_noabort(i32 %433)
  %434 = load i16, ptr %vsync_start.i20.i, align 4
  %conv41.i21.i = zext i16 %434 to i32
  %435 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %vdisplay.i6.i, align 2
  %conv43.i.i = zext i16 %436 to i32
  %sub44.i.i = sub nsw i32 %conv41.i21.i, %conv43.i.i
  %div45.i.i = sdiv i32 %sub44.i.i, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i367.i.i = shl i32 %div45.i.i, 24
  %437 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i368.i.i = getelementptr i8, ptr %438, i32 65848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i368.i.i, i32 %and.i367.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %439 = shl nsw i32 %div45.i.i, 16
  %and.i367.1.i.i = and i32 %439, -16777216
  %440 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i368.1.i.i = getelementptr i8, ptr %441, i32 65852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i368.1.i.i, i32 %and.i367.1.i.i) #8, !srcloc !224
  %442 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %vtotal.i16.i, align 4
  %444 = lshr i16 %443, 1
  %div48.i22.i = zext i16 %444 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i379.i.i = shl i32 %div48.i22.i, 24
  %445 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i380.i.i = getelementptr i8, ptr %446, i32 65712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380.i.i, i32 %and.i379.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %447 = shl nuw nsw i32 %div48.i22.i, 16
  %and.i379.1.i.i = and i32 %447, 2130706432
  %448 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i380.1.i.i = getelementptr i8, ptr %449, i32 65716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i380.1.i.i, i32 %and.i379.1.i.i) #8, !srcloc !224
  %450 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %450)
  %451 = load i16, ptr %vtotal.i16.i, align 4
  %conv50.i.i = zext i16 %451 to i32
  %452 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %452)
  %453 = load i16, ptr %vdisplay.i6.i, align 2
  %conv52.i23.i = zext i16 %453 to i32
  %sub53.i.i = sub nsw i32 %conv50.i.i, %conv52.i23.i
  %div54.i.i = sdiv i32 %sub53.i.i, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i391.i.i = shl i32 %div54.i.i, 24
  %454 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i392.i.i = getelementptr i8, ptr %455, i32 65720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i392.i.i, i32 %and.i391.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %456 = shl nsw i32 %div54.i.i, 16
  %and.i391.1.i.i = and i32 %456, -16777216
  %457 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i392.1.i.i = getelementptr i8, ptr %458, i32 65724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i392.1.i.i, i32 %and.i391.1.i.i) #8, !srcloc !224
  %459 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %459)
  %460 = load i16, ptr %vtotal.i16.i, align 4
  %conv56.i24.i = zext i16 %460 to i32
  %461 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %vdisplay.i6.i, align 2
  %463 = lshr i16 %462, 1
  %div59.i25.i = zext i16 %463 to i32
  %sub60.i.i = sub nsw i32 %conv56.i24.i, %div59.i25.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i403.i.i = shl i32 %sub60.i.i, 24
  %464 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i404.i.i = getelementptr i8, ptr %465, i32 65808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i404.i.i, i32 %and.i403.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %466 = shl i32 %sub60.i.i, 16
  %and.i403.1.i.i = and i32 %466, -16777216
  %467 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i404.1.i.i = getelementptr i8, ptr %468, i32 65812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i404.1.i.i, i32 %and.i403.1.i.i) #8, !srcloc !224
  %469 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %469)
  %470 = load i16, ptr %vtotal.i16.i, align 4
  %conv62.i.i = zext i16 %470 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i415.i.i = shl i32 %conv62.i.i, 24
  %471 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i416.i.i = getelementptr i8, ptr %472, i32 65816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i416.i.i, i32 %and.i415.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %473 = shl nuw i32 %conv62.i.i, 16
  %and.i415.1.i.i = and i32 %473, -16777216
  %474 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i416.1.i.i = getelementptr i8, ptr %475, i32 65820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i416.1.i.i, i32 %and.i415.1.i.i) #8, !srcloc !224
  %476 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %476)
  %477 = load i16, ptr %vtotal.i16.i, align 4
  %478 = lshr i16 %477, 1
  %narrow.i.i = add nuw i16 %478, 7
  %add.i26.i = zext i16 %narrow.i.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i427.i.i = shl i32 %add.i26.i, 24
  %479 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i428.i.i = getelementptr i8, ptr %480, i32 65856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i428.i.i, i32 %and.i427.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %481 = shl nuw i32 %add.i26.i, 16
  %and.i427.1.i.i = and i32 %481, -16777216
  %482 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i428.1.i.i = getelementptr i8, ptr %483, i32 65860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i428.1.i.i, i32 %and.i427.1.i.i) #8, !srcloc !224
  %484 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %484)
  %485 = load i16, ptr %vtotal.i16.i, align 4
  %486 = lshr i16 %485, 1
  %narrow287.i.i = add nuw i16 %486, 2
  %add69.i.i = zext i16 %narrow287.i.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i439.i.i = shl i32 %add69.i.i, 24
  %487 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i440.i.i = getelementptr i8, ptr %488, i32 65864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i440.i.i, i32 %and.i439.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %489 = shl nuw i32 %add69.i.i, 16
  %and.i439.1.i.i = and i32 %489, -16777216
  %490 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i440.1.i.i = getelementptr i8, ptr %491, i32 65868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i440.1.i.i, i32 %and.i439.1.i.i) #8, !srcloc !224
  %492 = ptrtoint ptr %htotal.i9.i to i32
  call void @__asan_load2_noabort(i32 %492)
  %493 = load i16, ptr %htotal.i9.i, align 2
  %494 = lshr i16 %493, 1
  %div72.i.i = zext i16 %494 to i32
  %hsync_start.i27.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 2
  %495 = ptrtoint ptr %hsync_start.i27.i to i32
  call void @__asan_load2_noabort(i32 %495)
  %496 = load i16, ptr %hsync_start.i27.i, align 2
  %conv73.i.i = zext i16 %496 to i32
  %497 = ptrtoint ptr %hdisplay20.i.i to i32
  call void @__asan_load2_noabort(i32 %497)
  %498 = load i16, ptr %hdisplay20.i.i, align 4
  %conv75.i.i = zext i16 %498 to i32
  %sub76.i.i = add nuw nsw i32 %div72.i.i, %conv73.i.i
  %add77.i.i = sub nsw i32 %sub76.i.i, %conv75.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i451.i.i = shl i32 %add77.i.i, 24
  %499 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i452.i.i = getelementptr i8, ptr %500, i32 65872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i452.i.i, i32 %and.i451.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %501 = shl i32 %add77.i.i, 16
  %and.i451.1.i.i = and i32 %501, -16777216
  %502 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i452.1.i.i = getelementptr i8, ptr %503, i32 65876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i452.1.i.i, i32 %and.i451.1.i.i) #8, !srcloc !224
  %504 = ptrtoint ptr %htotal.i9.i to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %htotal.i9.i, align 2
  %506 = lshr i16 %505, 1
  %div80.i.i = zext i16 %506 to i32
  %507 = ptrtoint ptr %hsync_start.i27.i to i32
  call void @__asan_load2_noabort(i32 %507)
  %508 = load i16, ptr %hsync_start.i27.i, align 2
  %conv82.i.i = zext i16 %508 to i32
  %509 = ptrtoint ptr %hdisplay20.i.i to i32
  call void @__asan_load2_noabort(i32 %509)
  %510 = load i16, ptr %hdisplay20.i.i, align 4
  %conv84.i.i = zext i16 %510 to i32
  %sub85.i.i = add nuw nsw i32 %div80.i.i, %conv82.i.i
  %add86.i.i = sub nsw i32 %sub85.i.i, %conv84.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i463.i.i = shl i32 %add86.i.i, 24
  %511 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i464.i.i = getelementptr i8, ptr %512, i32 65880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i464.i.i, i32 %and.i463.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %513 = shl i32 %add86.i.i, 16
  %and.i463.1.i.i = and i32 %513, -16777216
  %514 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i464.1.i.i = getelementptr i8, ptr %515, i32 65884
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i464.1.i.i, i32 %and.i463.1.i.i) #8, !srcloc !224
  %516 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %516)
  %517 = load i16, ptr %vtotal.i16.i, align 4
  %conv88.i.i = zext i16 %517 to i32
  %518 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %518)
  %519 = load i16, ptr %vdisplay.i6.i, align 2
  %conv90.i.i = zext i16 %519 to i32
  %sub91.i.i = sub nsw i32 %conv88.i.i, %conv90.i.i
  %div92.i.i = sdiv i32 %sub91.i.i, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i475.i.i = shl i32 %div92.i.i, 24
  %520 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i476.i.i = getelementptr i8, ptr %521, i32 327752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i476.i.i, i32 %and.i475.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %522 = shl nsw i32 %div92.i.i, 16
  %and.i475.1.i.i = and i32 %522, -16777216
  %523 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i476.1.i.i = getelementptr i8, ptr %524, i32 327756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i476.1.i.i, i32 %and.i475.1.i.i) #8, !srcloc !224
  %525 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %525)
  %526 = load i16, ptr %vdisplay.i6.i, align 2
  %527 = lshr i16 %526, 1
  %div95.i.i = zext i16 %527 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i487.i.i = shl i32 %div95.i.i, 24
  %528 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i488.i.i = getelementptr i8, ptr %529, i32 327760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i488.i.i, i32 %and.i487.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %530 = shl nuw nsw i32 %div95.i.i, 16
  %and.i487.1.i.i = and i32 %530, 2130706432
  %531 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i488.1.i.i = getelementptr i8, ptr %532, i32 327764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i488.1.i.i, i32 %and.i487.1.i.i) #8, !srcloc !224
  %533 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %533)
  %534 = load i16, ptr %vtotal.i16.i, align 4
  %conv97.i28.i = zext i16 %534 to i32
  %535 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %535)
  %536 = load i16, ptr %vdisplay.i6.i, align 2
  %537 = lshr i16 %536, 1
  %div100.i.i = zext i16 %537 to i32
  %sub101.i.i = sub nsw i32 %conv97.i28.i, %div100.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i499.i.i = shl i32 %sub101.i.i, 24
  %538 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i500.i.i = getelementptr i8, ptr %539, i32 327776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i500.i.i, i32 %and.i499.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %540 = shl i32 %sub101.i.i, 16
  %and.i499.1.i.i = and i32 %540, -16777216
  %541 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i500.1.i.i = getelementptr i8, ptr %542, i32 327780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i500.1.i.i, i32 %and.i499.1.i.i) #8, !srcloc !224
  %543 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %543)
  %544 = load i16, ptr %vtotal.i16.i, align 4
  %545 = lshr i16 %544, 1
  %narrow288.i.i = add nuw i16 %545, 1
  %add105.i.i = zext i16 %narrow288.i.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i511.i.i = shl i32 %add105.i.i, 24
  %546 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i512.i.i = getelementptr i8, ptr %547, i32 327744
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i512.i.i, i32 %and.i511.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %548 = shl nuw i32 %add105.i.i, 16
  %and.i511.1.i.i = and i32 %548, -16777216
  %549 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i512.1.i.i = getelementptr i8, ptr %550, i32 327748
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i512.1.i.i, i32 %and.i511.1.i.i) #8, !srcloc !224
  %551 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %vtotal.i16.i, align 4
  %553 = lshr i16 %552, 1
  %narrow289.i.i = add nuw i16 %553, 1
  %add109.i.i = zext i16 %narrow289.i.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i523.i.i = shl i32 %add109.i.i, 24
  %554 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i524.i.i = getelementptr i8, ptr %555, i32 327808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i524.i.i, i32 %and.i523.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %556 = shl nuw i32 %add109.i.i, 16
  %and.i523.1.i.i = and i32 %556, -16777216
  %557 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i524.1.i.i = getelementptr i8, ptr %558, i32 327812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i524.1.i.i, i32 %and.i523.1.i.i) #8, !srcloc !224
  %559 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %559)
  %560 = load i16, ptr %vtotal.i16.i, align 4
  %561 = lshr i16 %560, 1
  %narrow290.i.i = add nuw i16 %561, 1
  %add113.i.i = zext i16 %narrow290.i.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i535.i.i = shl i32 %add113.i.i, 24
  %562 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i536.i.i = getelementptr i8, ptr %563, i32 327824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i536.i.i, i32 %and.i535.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %564 = shl nuw i32 %add113.i.i, 16
  %and.i535.1.i.i = and i32 %564, -16777216
  %565 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i536.1.i.i = getelementptr i8, ptr %566, i32 327828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i536.1.i.i, i32 %and.i535.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %567 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i548.i.i = getelementptr i8, ptr %568, i32 327784
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i548.i.i, i32 0) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %569 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i548.1.i.i = getelementptr i8, ptr %570, i32 327788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i548.1.i.i, i32 0) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %571 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i560.i.i = getelementptr i8, ptr %572, i32 327792
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i560.i.i, i32 0) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %573 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i560.1.i.i = getelementptr i8, ptr %574, i32 327796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i560.1.i.i, i32 0) #8, !srcloc !224
  br label %if.end138.i.i

if.else.i33.i:                                    ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i571.i.i = shl i32 %sub118.i.i, 24
  %575 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i572.i.i = getelementptr i8, ptr %576, i32 65840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i572.i.i, i32 %and.i571.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %577 = shl i32 %sub118.i.i, 16
  %and.i571.1.i.i = and i32 %577, -16777216
  %578 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i572.1.i.i = getelementptr i8, ptr %579, i32 65844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i572.1.i.i, i32 %and.i571.1.i.i) #8, !srcloc !224
  %vsync_start119.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 7
  %580 = ptrtoint ptr %vsync_start119.i.i to i32
  call void @__asan_load2_noabort(i32 %580)
  %581 = load i16, ptr %vsync_start119.i.i, align 4
  %conv120.i.i = zext i16 %581 to i32
  %582 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %582)
  %583 = load i16, ptr %vdisplay.i6.i, align 2
  %conv122.i.i = zext i16 %583 to i32
  %sub123.i.i = sub nsw i32 %conv120.i.i, %conv122.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i583.i.i = shl i32 %sub123.i.i, 24
  %584 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i584.i.i = getelementptr i8, ptr %585, i32 65848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i584.i.i, i32 %and.i583.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %586 = shl i32 %sub123.i.i, 16
  %and.i583.1.i.i = and i32 %586, -16777216
  %587 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i584.1.i.i = getelementptr i8, ptr %588, i32 65852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i584.1.i.i, i32 %and.i583.1.i.i) #8, !srcloc !224
  %589 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %589)
  %590 = load i16, ptr %vtotal.i16.i, align 4
  %conv125.i29.i = zext i16 %590 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i595.i.i = shl i32 %conv125.i29.i, 24
  %591 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i596.i.i = getelementptr i8, ptr %592, i32 65712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i596.i.i, i32 %and.i595.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %593 = shl nuw i32 %conv125.i29.i, 16
  %and.i595.1.i.i = and i32 %593, -16777216
  %594 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i596.1.i.i = getelementptr i8, ptr %595, i32 65716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i596.1.i.i, i32 %and.i595.1.i.i) #8, !srcloc !224
  %596 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %596)
  %597 = load i16, ptr %vtotal.i16.i, align 4
  %conv127.i30.i = zext i16 %597 to i32
  %598 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %598)
  %599 = load i16, ptr %vdisplay.i6.i, align 2
  %conv129.i.i = zext i16 %599 to i32
  %sub130.i.i = sub nsw i32 %conv127.i30.i, %conv129.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i607.i.i = shl i32 %sub130.i.i, 24
  %600 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i608.i.i = getelementptr i8, ptr %601, i32 65720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i608.i.i, i32 %and.i607.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %602 = shl i32 %sub130.i.i, 16
  %and.i607.1.i.i = and i32 %602, -16777216
  %603 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i608.1.i.i = getelementptr i8, ptr %604, i32 65724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i608.1.i.i, i32 %and.i607.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %605 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i620.i.i = getelementptr i8, ptr %606, i32 65808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i620.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %607 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i620.1.i.i = getelementptr i8, ptr %608, i32 65812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i620.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %609 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i632.i.i = getelementptr i8, ptr %610, i32 65816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i632.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %611 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i632.1.i.i = getelementptr i8, ptr %612, i32 65820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i632.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %613 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i644.i.i = getelementptr i8, ptr %614, i32 65856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i644.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %615 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i644.1.i.i = getelementptr i8, ptr %616, i32 65860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i644.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %617 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i656.i.i = getelementptr i8, ptr %618, i32 65864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i656.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %619 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i656.1.i.i = getelementptr i8, ptr %620, i32 65868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i656.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %621 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i668.i.i = getelementptr i8, ptr %622, i32 65872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i668.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %623 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i668.1.i.i = getelementptr i8, ptr %624, i32 65876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i668.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %625 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i680.i.i = getelementptr i8, ptr %626, i32 65880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i680.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %627 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i680.1.i.i = getelementptr i8, ptr %628, i32 65884
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i680.1.i.i, i32 -16777216) #8, !srcloc !224
  %629 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %629)
  %630 = load i16, ptr %vtotal.i16.i, align 4
  %conv132.i31.i = zext i16 %630 to i32
  %631 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %631)
  %632 = load i16, ptr %vdisplay.i6.i, align 2
  %conv134.i32.i = zext i16 %632 to i32
  %sub135.i.i = sub nsw i32 %conv132.i31.i, %conv134.i32.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i691.i.i = shl i32 %sub135.i.i, 24
  %633 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i692.i.i = getelementptr i8, ptr %634, i32 327752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i692.i.i, i32 %and.i691.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %635 = shl i32 %sub135.i.i, 16
  %and.i691.1.i.i = and i32 %635, -16777216
  %636 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i692.1.i.i = getelementptr i8, ptr %637, i32 327756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i692.1.i.i, i32 %and.i691.1.i.i) #8, !srcloc !224
  %638 = ptrtoint ptr %vdisplay.i6.i to i32
  call void @__asan_load2_noabort(i32 %638)
  %639 = load i16, ptr %vdisplay.i6.i, align 2
  %conv137.i.i = zext i16 %639 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i703.i.i = shl i32 %conv137.i.i, 24
  %640 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i704.i.i = getelementptr i8, ptr %641, i32 327760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i704.i.i, i32 %and.i703.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %642 = shl nuw i32 %conv137.i.i, 16
  %and.i703.1.i.i = and i32 %642, -16777216
  %643 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i704.1.i.i = getelementptr i8, ptr %644, i32 327764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i704.1.i.i, i32 %and.i703.1.i.i) #8, !srcloc !224
  br label %if.end138.i.i

if.end138.i.i:                                    ; preds = %if.else.i33.i, %if.then36.i.i
  %hsync_start139.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 2
  %645 = ptrtoint ptr %hsync_start139.i.i to i32
  call void @__asan_load2_noabort(i32 %645)
  %646 = load i16, ptr %hsync_start139.i.i, align 2
  %conv140.i.i = zext i16 %646 to i32
  %647 = ptrtoint ptr %hdisplay20.i.i to i32
  call void @__asan_load2_noabort(i32 %647)
  %648 = load i16, ptr %hdisplay20.i.i, align 4
  %conv142.i.i = zext i16 %648 to i32
  %sub143.i.i = add nsw i32 %conv140.i.i, -2
  %sub144.i.i = sub nsw i32 %sub143.i.i, %conv142.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i715.i.i = shl i32 %sub144.i.i, 24
  %649 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i716.i.i = getelementptr i8, ptr %650, i32 65824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i716.i.i, i32 %and.i715.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %651 = shl i32 %sub144.i.i, 16
  %and.i715.1.i.i = and i32 %651, -16777216
  %652 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i716.1.i.i = getelementptr i8, ptr %653, i32 65828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i716.1.i.i, i32 %and.i715.1.i.i) #8, !srcloc !224
  %hsync_end.i34.i = getelementptr inbounds %struct.drm_crtc_state, ptr %146, i32 0, i32 8, i32 3
  %654 = ptrtoint ptr %hsync_end.i34.i to i32
  call void @__asan_load2_noabort(i32 %654)
  %655 = load i16, ptr %hsync_end.i34.i, align 4
  %conv145.i.i = zext i16 %655 to i32
  %656 = ptrtoint ptr %hdisplay20.i.i to i32
  call void @__asan_load2_noabort(i32 %656)
  %657 = load i16, ptr %hdisplay20.i.i, align 4
  %conv147.i.i = zext i16 %657 to i32
  %sub148.i.i = add nsw i32 %conv145.i.i, -2
  %sub149.i.i = sub nsw i32 %sub148.i.i, %conv147.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i727.i.i = shl i32 %sub149.i.i, 24
  %658 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i728.i.i = getelementptr i8, ptr %659, i32 65832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i728.i.i, i32 %and.i727.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %660 = shl i32 %sub149.i.i, 16
  %and.i727.1.i.i = and i32 %660, -16777216
  %661 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i728.1.i.i = getelementptr i8, ptr %662, i32 65836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i728.1.i.i, i32 %and.i727.1.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %663 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i740.i.i = getelementptr i8, ptr %664, i32 65984
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i740.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %665 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i740.1.i.i = getelementptr i8, ptr %666, i32 65988
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i740.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %667 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i752.i.i = getelementptr i8, ptr %668, i32 65992
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i752.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %669 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i752.1.i.i = getelementptr i8, ptr %670, i32 65996
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i752.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %671 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i764.i.i = getelementptr i8, ptr %672, i32 66000
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i764.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %673 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i764.1.i.i = getelementptr i8, ptr %674, i32 66004
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i764.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %675 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i776.i.i = getelementptr i8, ptr %676, i32 66008
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i776.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %677 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i776.1.i.i = getelementptr i8, ptr %678, i32 66012
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i776.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %679 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i788.i.i = getelementptr i8, ptr %680, i32 66016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i788.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %681 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i788.1.i.i = getelementptr i8, ptr %682, i32 66020
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i788.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %683 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i800.i.i = getelementptr i8, ptr %684, i32 66024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i800.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %685 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i800.1.i.i = getelementptr i8, ptr %686, i32 66028
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i800.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %687 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i812.i.i = getelementptr i8, ptr %688, i32 65888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i812.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %689 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i812.1.i.i = getelementptr i8, ptr %690, i32 65892
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i812.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %691 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i824.i.i = getelementptr i8, ptr %692, i32 65896
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i824.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %693 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i824.1.i.i = getelementptr i8, ptr %694, i32 65900
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i824.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %695 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i836.i.i = getelementptr i8, ptr %696, i32 65904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i836.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %697 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i836.1.i.i = getelementptr i8, ptr %698, i32 65908
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i836.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %699 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i848.i.i = getelementptr i8, ptr %700, i32 65912
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i848.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %701 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i848.1.i.i = getelementptr i8, ptr %702, i32 65916
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i848.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %703 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i860.i.i = getelementptr i8, ptr %704, i32 65920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i860.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %705 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i860.1.i.i = getelementptr i8, ptr %706, i32 65924
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i860.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %707 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i872.i.i = getelementptr i8, ptr %708, i32 65928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i872.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %709 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i872.1.i.i = getelementptr i8, ptr %710, i32 65932
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i872.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %711 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i884.i.i = getelementptr i8, ptr %712, i32 65936
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i884.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %713 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i884.1.i.i = getelementptr i8, ptr %714, i32 65940
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i884.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %715 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i896.i.i = getelementptr i8, ptr %716, i32 65944
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i896.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %717 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i896.1.i.i = getelementptr i8, ptr %718, i32 65948
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i896.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %719 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i908.i.i = getelementptr i8, ptr %720, i32 65952
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i908.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %721 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i908.1.i.i = getelementptr i8, ptr %722, i32 65956
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i908.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %723 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i920.i.i = getelementptr i8, ptr %724, i32 65960
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i920.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %725 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i920.1.i.i = getelementptr i8, ptr %726, i32 65964
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i920.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %727 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i932.i.i = getelementptr i8, ptr %728, i32 65968
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i932.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %729 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i932.1.i.i = getelementptr i8, ptr %730, i32 65972
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i932.1.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %731 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i944.i.i = getelementptr i8, ptr %732, i32 65976
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i944.i.i, i32 -16777216) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %733 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i944.1.i.i = getelementptr i8, ptr %734, i32 65980
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i944.1.i.i, i32 -16777216) #8, !srcloc !224
  %735 = ptrtoint ptr %htotal.i9.i to i32
  call void @__asan_load2_noabort(i32 %735)
  %736 = load i16, ptr %htotal.i9.i, align 2
  %conv151.i.i = zext i16 %736 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i955.i.i = shl i32 %conv151.i.i, 24
  %737 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i956.i.i = getelementptr i8, ptr %738, i32 327704
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i956.i.i, i32 %and.i955.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %739 = shl nuw i32 %conv151.i.i, 16
  %and.i955.1.i.i = and i32 %739, -16777216
  %740 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i956.1.i.i = getelementptr i8, ptr %741, i32 327708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i956.1.i.i, i32 %and.i955.1.i.i) #8, !srcloc !224
  %742 = ptrtoint ptr %htotal.i9.i to i32
  call void @__asan_load2_noabort(i32 %742)
  %743 = load i16, ptr %htotal.i9.i, align 2
  %conv153.i.i = zext i16 %743 to i32
  %744 = ptrtoint ptr %hdisplay20.i.i to i32
  call void @__asan_load2_noabort(i32 %744)
  %745 = load i16, ptr %hdisplay20.i.i, align 4
  %conv155.i.i = zext i16 %745 to i32
  %746 = add nuw nsw i32 %hquirk.0.i.i, %conv155.i.i
  %sub157.i.i = sub nsw i32 %conv153.i.i, %746
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i967.i.i = shl i32 %sub157.i.i, 24
  %747 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i968.i.i = getelementptr i8, ptr %748, i32 327712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i968.i.i, i32 %and.i967.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %749 = shl i32 %sub157.i.i, 16
  %and.i967.1.i.i = and i32 %749, -16777216
  %750 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i968.1.i.i = getelementptr i8, ptr %751, i32 327716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i968.1.i.i, i32 %and.i967.1.i.i) #8, !srcloc !224
  %752 = ptrtoint ptr %hdisplay20.i.i to i32
  call void @__asan_load2_noabort(i32 %752)
  %753 = load i16, ptr %hdisplay20.i.i, align 4
  %conv159.i.i = zext i16 %753 to i32
  %add160.i.i = add nuw nsw i32 %hquirk.0.i.i, %conv159.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i979.i.i = shl i32 %add160.i.i, 24
  %754 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i980.i.i = getelementptr i8, ptr %755, i32 327720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i980.i.i, i32 %and.i979.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %756 = shl i32 %add160.i.i, 16
  %and.i979.1.i.i = and i32 %756, -16777216
  %757 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i980.1.i.i = getelementptr i8, ptr %758, i32 327724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i980.1.i.i, i32 %and.i979.1.i.i) #8, !srcloc !224
  %759 = ptrtoint ptr %vtotal.i16.i to i32
  call void @__asan_load2_noabort(i32 %759)
  %760 = load i16, ptr %vtotal.i16.i, align 4
  %conv162.i.i = zext i16 %760 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %and.i991.i.i = shl i32 %conv162.i.i, 24
  %761 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i992.i.i = getelementptr i8, ptr %762, i32 327728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i992.i.i, i32 %and.i991.i.i) #8, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  call void @arm_heavy_mb() #8
  %763 = shl nuw i32 %conv162.i.i, 16
  %and.i991.1.i.i = and i32 %763, -16777216
  %764 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i992.1.i.i = getelementptr i8, ptr %765, i32 327732
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i992.1.i.i, i32 %and.i991.1.i.i) #8, !srcloc !224
  %766 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %drv_data.i, align 4
  %cmp163.i.i = icmp eq ptr %767, @exynos5433_hdmi_driver_data
  br i1 %cmp163.i.i, label %if.then165.i.i, label %if.end138.i.i.hdmi_mode_apply.exit_crit_edge

if.end138.i.i.hdmi_mode_apply.exit_crit_edge:     ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_mode_apply.exit

if.then165.i.i:                                   ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  call void @arm_heavy_mb() #8
  %768 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i1000.i.i = getelementptr i8, ptr %769, i32 328160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1000.i.i, i32 16777216) #8, !srcloc !224
  br label %hdmi_mode_apply.exit

hdmi_mode_apply.exit:                             ; preds = %if.then165.i.i, %if.end138.i.i.hdmi_mode_apply.exit_crit_edge, %hdmi_v13_mode_apply.exit.i
  %770 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %crtc.i, align 4
  %state.i36.i = getelementptr inbounds %struct.drm_crtc, ptr %771, i32 0, i32 22
  %772 = ptrtoint ptr %state.i36.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %state.i36.i, align 4
  %flags.i37.i = getelementptr inbounds %struct.drm_crtc_state, ptr %773, i32 0, i32 8, i32 11
  %774 = ptrtoint ptr %flags.i37.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load i32, ptr %flags.i37.i, align 4
  %and.i.i = lshr i32 %775, 3
  %776 = and i32 %and.i.i, 2
  %777 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i39.i = getelementptr i8, ptr %778, i32 65536
  %779 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39.i) #8, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %780 = or i32 %779, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  call void @arm_heavy_mb() #8
  %781 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %782, i32 65536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %780) #8, !srcloc !224
  %783 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i7.i.i = getelementptr i8, ptr %784, i32 327680
  %785 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i.i) #8, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %786 = and i32 %785, -50331649
  %787 = call i32 @llvm.bswap.i32(i32 %786) #8
  %788 = or i32 %776, %787
  %or.i10.i.i = or i32 %788, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  call void @arm_heavy_mb() #8
  %789 = call i32 @llvm.bswap.i32(i32 %or.i10.i.i) #8
  %790 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i11.i.i = getelementptr i8, ptr %791, i32 327680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i11.i.i, i32 %789) #8, !srcloc !224
  %792 = ptrtoint ptr %dvi_mode.i to i32
  call void @__asan_load1_noabort(i32 %792)
  %793 = load i8, ptr %dvi_mode.i, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %793)
  %tobool1.not.i = icmp eq i8 %793, 0
  br i1 %tobool1.not.i, label %if.end.i24, label %hdmi_mode_apply.exit.hdmi_audio_control.exit_crit_edge

hdmi_mode_apply.exit.hdmi_audio_control.exit_crit_edge: ; preds = %hdmi_mode_apply.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_audio_control.exit

if.end.i24:                                       ; preds = %hdmi_mode_apply.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mute.i = getelementptr inbounds %struct.hdmi_context, ptr %hdata, i32 0, i32 23, i32 3
  %794 = ptrtoint ptr %mute.i to i32
  call void @__asan_load1_noabort(i32 %794)
  %795 = load i8, ptr %mute.i, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %795)
  %tobool.not.i20 = icmp eq i8 %795, 0
  %conv.i = select i1 %tobool.not.i20, i32 33554432, i32 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  call void @arm_heavy_mb() #8
  %796 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i22 = getelementptr i8, ptr %797, i32 67584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22, i32 %conv.i) #8, !srcloc !224
  %cond5.i = select i1 %tobool.not.i20, i32 4, i32 0
  %798 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %799, i32 65536
  %800 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %801 = and i32 %800, -67108865
  %802 = call i32 @llvm.bswap.i32(i32 %801) #8
  %or.i.i = or i32 %802, %cond5.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  call void @arm_heavy_mb() #8
  %803 = call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %804 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %regs.i.i, align 8
  %add.ptr5.i.i23 = getelementptr i8, ptr %805, i32 65536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i23, i32 %803) #8, !srcloc !224
  br label %hdmi_audio_control.exit

hdmi_audio_control.exit:                          ; preds = %if.end.i24, %hdmi_mode_apply.exit.hdmi_audio_control.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_vendor_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_fill_conn_info_from_drm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_conn_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpio = getelementptr i8, ptr %connector, i32 1168
  %0 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpio, align 8
  %call1 = tail call i32 @gpiod_get_value(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %notifier = getelementptr i8, ptr %connector, i32 1144
  %2 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notifier, align 8
  tail call void @cec_notifier_set_phys_addr(ptr noundef %3, i16 noundef zeroext -1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %notifier = getelementptr i8, ptr %connector, i32 1144
  %0 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notifier, align 8
  tail call void @cec_notifier_conn_unregister(ptr noundef %1) #8
  tail call void @drm_connector_unregister(ptr noundef %connector) #8
  tail call void @drm_connector_cleanup(ptr noundef %connector) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_conn_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc_adpt = getelementptr i8, ptr %connector, i32 1164
  %0 = ptrtoint ptr %ddc_adpt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc_adpt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef nonnull %1) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %call2) #8
  %lnot = xor i1 %call6, true
  %dvi_mode = getelementptr i8, ptr %connector, i32 1040
  %frombool = zext i1 %lnot to i8
  %2 = ptrtoint ptr %dvi_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %dvi_mode, align 8
  %dev = getelementptr i8, ptr %connector, i32 -8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %cond = select i1 %call6, ptr @.str.77, ptr @.str.76
  %width_cm = getelementptr inbounds %struct.edid, ptr %call2, i32 0, i32 9
  %5 = ptrtoint ptr %width_cm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %width_cm, align 1
  %conv = zext i8 %6 to i32
  %height_cm = getelementptr inbounds %struct.edid, ptr %call2, i32 0, i32 10
  %7 = ptrtoint ptr %height_cm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %height_cm, align 1
  %conv9 = zext i8 %8 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.75, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %conv9) #8
  %call10 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call2) #8
  %notifier = getelementptr i8, ptr %connector, i32 1144
  %9 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %notifier, align 8
  tail call void @cec_notifier_set_phys_addr_from_edid(ptr noundef %10, ptr noundef nonnull %call2) #8
  %call11 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call2) #8
  tail call void @kfree(ptr noundef nonnull %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end5 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_hdmi_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drv_data.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data.i, align 4
  %clk_gates.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk_gates.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_gates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not4.i = icmp eq i32 %5, 0
  br i1 %tobool.not4.i, label %entry.hdmi_clk_disable_gates.exit_crit_edge, label %while.body.lr.ph.i

entry.hdmi_clk_disable_gates.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_clk_disable_gates.exit

while.body.lr.ph.i:                               ; preds = %entry
  %clk_gates1.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 16
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.05.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %i.05.i, -1
  %6 = ptrtoint ptr %clk_gates1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_gates1.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %dec.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.hdmi_clk_disable_gates.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.hdmi_clk_disable_gates.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_clk_disable_gates.exit

hdmi_clk_disable_gates.exit:                      ; preds = %while.body.i.hdmi_clk_disable_gates.exit_crit_edge, %entry.hdmi_clk_disable_gates.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_hdmi_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drv_data.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data.i, align 4
  %clk_gates36.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk_gates36.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_gates36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp37.i = icmp sgt i32 %5, 0
  br i1 %cmp37.i, label %for.body.lr.ph.i, label %entry.hdmi_clk_enable_gates.exit.thread_crit_edge

entry.hdmi_clk_enable_gates.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_clk_enable_gates.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %clk_gates1.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %clk_gates1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_gates1.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %i.038.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.i:                                       ; preds = %for.body.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.inc.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %for.body.i.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %for.body.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %12 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv_data.i, align 4
  %data.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %13, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %15, i32 %i.038.i
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.82, ptr noundef %17, i32 noundef %retval.0.i.ph.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.038.i)
  %tobool5.not39.i = icmp eq i32 %i.038.i, 0
  br i1 %tobool5.not39.i, label %do.end.i.hdmi_clk_enable_gates.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.hdmi_clk_enable_gates.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_clk_enable_gates.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %i.140.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.038.i, %do.end.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.140.i, -1
  %18 = ptrtoint ptr %clk_gates1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_gates1.i, align 8
  %arrayidx7.i = getelementptr ptr, ptr %19, i32 %dec.i
  %20 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7.i, align 4
  tail call void @clk_disable(ptr noundef %21) #8
  tail call void @clk_unprepare(ptr noundef %21) #8
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %while.body.i.hdmi_clk_enable_gates.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.hdmi_clk_enable_gates.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_clk_enable_gates.exit

for.inc.i:                                        ; preds = %if.end.i.i
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %22 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv_data.i, align 4
  %clk_gates.i = getelementptr inbounds %struct.hdmi_driver_data, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %clk_gates.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clk_gates.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %25
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.hdmi_clk_enable_gates.exit.thread_crit_edge

for.inc.i.hdmi_clk_enable_gates.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_clk_enable_gates.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

hdmi_clk_enable_gates.exit:                       ; preds = %while.body.i.hdmi_clk_enable_gates.exit_crit_edge, %do.end.i.hdmi_clk_enable_gates.exit_crit_edge
  %26 = tail call i32 @llvm.smin.i32(i32 %retval.0.i.ph.i, i32 0)
  br label %hdmi_clk_enable_gates.exit.thread

hdmi_clk_enable_gates.exit.thread:                ; preds = %hdmi_clk_enable_gates.exit, %for.inc.i.hdmi_clk_enable_gates.exit.thread_crit_edge, %entry.hdmi_clk_enable_gates.exit.thread_crit_edge
  %27 = phi i32 [ 0, %entry.hdmi_clk_enable_gates.exit.thread_crit_edge ], [ %26, %hdmi_clk_enable_gates.exit ], [ 0, %for.inc.i.hdmi_clk_enable_gates.exit.thread_crit_edge ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !91, !93, !94, !95, !96, !98, !100, !102, !104, !105, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !160, !162, !164, !165, !166, !167, !169, !171, !173, !175, !177, !178, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !210, !211}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 2128, i32 11}
!2 = !{ptr @hdmi_driver, !3, !"hdmi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 2124, i32 24}
!4 = !{ptr @hdmi_probe.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1972, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1977, i32 4}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hdmi_probe.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1995, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hdmi_probe.__key.6, !11, !"__key", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 2000, i32 4}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 2002, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 2007, i32 4}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 2009, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 2016, i32 5}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 2018, i32 4}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 2027, i32 4}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1786, i32 2}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1788, i32 40}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1790, i32 3}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1796, i32 3}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1813, i32 34}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1815, i32 56}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1704, i32 4}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hdmi_clks_get._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @hdmi_clks_get._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 787, i32 3}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hdmi_clk_set_parents._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hdmi_clk_set_parents._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 75, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 76, i32 2}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 77, i32 2}
!59 = distinct !{null, !60, !"supply", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 74, i32 27}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1768, i32 3}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1888, i32 31}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1896, i32 46}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1899, i32 3}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1908, i32 3}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @hdmi_get_ddc_adapter._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @hdmi_get_ddc_adapter._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1919, i32 31}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1925, i32 46}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1927, i32 4}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1936, i32 4}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1944, i32 4}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @hdmi_get_phy_io._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @hdmi_get_phy_io._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1665, i32 15}
!89 = !{ptr @audio_codec_ops, !90, !"audio_codec_ops", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1648, i32 36}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1599, i32 3}
!93 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @hdmi_audio_hw_params._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @hdmi_audio_hw_params._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @hdmi_reg_map, !97, !"hdmi_reg_map", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 65, i32 18}
!98 = !{ptr @hdmi_component_ops, !99, !"hdmi_component_ops", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1881, i32 35}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1868, i32 3}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1490, i32 3}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @hdmiphy_enable._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @hdmiphy_enable._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1495, i32 3}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1440, i32 3}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1452, i32 3}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 920, i32 2}
!115 = !{ptr @exynos5433_hdmi_driver_data, !116, !"exynos5433_hdmi_driver_data", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 668, i32 38}
!117 = !{ptr @hdmiphy_5433_configs, !118, !"hdmiphy_5433_configs", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 536, i32 36}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 638, i32 2}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 638, i32 15}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 638, i32 30}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 638, i32 44}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 638, i32 59}
!129 = !{ptr @hdmi_clk_gates5433, !130, !"hdmi_clk_gates5433", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 637, i32 27}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 642, i32 2}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 642, i32 12}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 642, i32 25}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 643, i32 12}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 643, i32 26}
!141 = !{ptr @hdmi_clk_muxes5433, !142, !"hdmi_clk_muxes5433", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 641, i32 27}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1196, i32 4}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1204, i32 2}
!147 = !{ptr @exynos_hdmi_encoder_helper_funcs, !148, !"exynos_hdmi_encoder_helper_funcs", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1570, i32 46}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1024, i32 4}
!151 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @hdmi_mode_fixup._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @hdmi_mode_fixup._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1025, i32 4}
!156 = !{ptr @hdmi_mode_fixup._entry.66, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @hdmi_mode_fixup._entry_ptr.68, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1027, i32 4}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 931, i32 2}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 835, i32 3}
!164 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @hdmi_reg_infoframes._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @hdmi_reg_infoframes._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 965, i32 3}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 982, i32 3}
!171 = !{ptr @hdmi_connector_funcs, !172, !"hdmi_connector_funcs", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 874, i32 41}
!173 = !{ptr @hdmi_connector_helper_funcs, !174, !"hdmi_connector_helper_funcs", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 945, i32 48}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 897, i32 2}
!177 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @hdmi_match_types, !180, !"hdmi_match_types", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 1824, i32 34}
!181 = !{ptr @exynos4210_hdmi_driver_data, !182, !"exynos4210_hdmi_driver_data", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 646, i32 38}
!183 = !{ptr @hdmiphy_v13_configs, !184, !"hdmiphy_v13_configs", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 158, i32 36}
!185 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 630, i32 10}
!187 = !{ptr @hdmi_clk_gates4, !188, !"hdmi_clk_gates4", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 629, i32 27}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 634, i32 2}
!191 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 634, i32 16}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 634, i32 32}
!195 = !{ptr @hdmi_clk_muxes4, !196, !"hdmi_clk_muxes4", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 633, i32 27}
!197 = !{ptr @exynos4212_hdmi_driver_data, !198, !"exynos4212_hdmi_driver_data", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 653, i32 38}
!199 = !{ptr @hdmiphy_v14_configs, !200, !"hdmiphy_v14_configs", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 206, i32 36}
!201 = !{ptr @exynos5420_hdmi_driver_data, !202, !"exynos5420_hdmi_driver_data", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 660, i32 38}
!203 = !{ptr @hdmiphy_5420_configs, !204, !"hdmiphy_5420_configs", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 371, i32 36}
!205 = !{ptr @exynos_hdmi_pm_ops, !206, !"exynos_hdmi_pm_ops", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 2118, i32 32}
!207 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/exynos/exynos_hdmi.c", i32 756, i32 3}
!209 = !{ptr @.str.83, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @hdmi_clk_enable_gates._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @hdmi_clk_enable_gates._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{!"branch_weights", i32 1, i32 2000}
!222 = !{i8 0, i8 2}
!223 = !{i64 2157773409}
!224 = !{i64 7084975}
!225 = !{i64 2157774595}
!226 = !{i64 7085393}
!227 = !{i64 2157775449}
!228 = !{i64 2157775668}
!229 = !{i64 2157774007}
!230 = !{i64 2157773000}
!231 = !{i64 2148422699}
!232 = !{i64 907522, i64 907547, i64 907569, i64 907585, i64 907597, i64 907617, i64 907641, i64 907657, i64 907669}
!233 = !{i64 2148422887}
!234 = !{i64 2157797296}
!235 = !{i64 2157776102}
!236 = !{!"auto-init"}
