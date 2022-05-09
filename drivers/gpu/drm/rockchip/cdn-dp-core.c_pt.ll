; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/cdn-dp-core.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/cdn-dp-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cdn_dp_data = type { i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
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
%struct.cdn_dp_device = type { ptr, ptr, %struct.drm_connector, %struct.drm_encoder, %struct.drm_display_mode, ptr, %struct.work_struct, ptr, %struct.mutex, i8, i8, i8, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.audio_info, %struct.video_info, [2 x ptr], i8, i8, i32, i8, i32, [15 x i8], i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.audio_info = type { i32, i32, i32, i32 }
%struct.video_info = type { i8, i8, i8, i32, i32 }
%struct.cdn_dp_port = type { ptr, %struct.notifier_block, ptr, ptr, i8, i8, i8 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%union.extcon_property_value = type { i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.cdn_firmware_header = type { i32, i32, i32, i32 }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.92 }
%union.anon.92 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_firmware324 = internal constant [39 x i8] c"rockchipdrm.firmware=rockchip/dptx.bin\00", section ".modinfo", align 1
@rk3399_cdn_dp = dso_local global { %struct.cdn_dp_data, [31 x i8] } { %struct.cdn_dp_data { i8 2 }, [31 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cdn-dp\00", [25 x i8] zeroinitializer }, align 32
@cdn_dp_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-cdn-dp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_cdn_dp }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cdn_dp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cdn_dp_suspend, ptr @cdn_dp_resume, ptr @cdn_dp_suspend, ptr @cdn_dp_resume, ptr @cdn_dp_suspend, ptr @cdn_dp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cdn_dp_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdn_dp_probe, ptr @cdn_dp_remove, ptr @cdn_dp_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdn_dp_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdn_dp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* missing extcon or phy\0A\00", [33 x i8] zeroinitializer }, align 32
@cdn_dp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&dp->lock\00", [22 x i8] zeroinitializer }, align 32
@cdn_dp_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @cdn_dp_bind, ptr @cdn_dp_unbind }, [24 x i8] zeroinitializer }, align 32
@audio_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr null, ptr @cdn_dp_audio_hw_params, ptr null, ptr @cdn_dp_audio_shutdown, ptr @cdn_dp_audio_mute_stream, ptr @cdn_dp_audio_get_eld, ptr null, ptr null, i8 -128 }, [60 x i8] zeroinitializer }, align 32
@__const.cdn_dp_audio_codec_init.codec_data = private unnamed_addr constant { ptr, i8, [3 x i8], i32, ptr } { ptr @audio_codec_ops, i8 -64, [3 x i8] zeroinitializer, i32 8, ptr null }, align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"*ERROR* Invalid format %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cdn_dp_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&dp->event_work)\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"possible_crtcs = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to initialize encoder with drm\0A\00", [57 x i8] zeroinitializer }, align 32
@cdn_dp_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdn_dp_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @cdn_dp_encoder_disable, ptr @cdn_dp_encoder_enable, ptr @cdn_dp_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@cdn_dp_atomic_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @cdn_dp_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @cdn_dp_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to initialize connector with drm\0A\00", [55 x i8] zeroinitializer }, align 32
@cdn_dp_connector_helper_funcs = internal global { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @cdn_dp_connector_get_modes, ptr null, ptr @cdn_dp_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to attach connector and encoder\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* register EXTCON_DISP_DP notifier err\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* cdn-dp needs rockchip,grf property\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"*ERROR* ioremap reg failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core-clk\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* cannot get core_clk_dp\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"*ERROR* cannot get pclk\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"*ERROR* cannot get spdif_clk\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"grf\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"*ERROR* cannot get grf clk\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* no spdif reset control found\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dptx\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* no uphy reset control found\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* no core reset control found\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* no apb reset control found\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Not connected. Disabling cdn\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Connected, not enabled. Enabling cdn\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* Enable dp failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Connected without sink. Assert hpd\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Connected with sink. Re-train link\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"*ERROR* Train link failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* Failed to config video %d\0A\00", [61 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/rockchip/cdn-dp-core.c\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip/dptx.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to request firmware: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* Timed out trying to load firmware\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Can't enable without connection\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* firmware init failed: %d\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* cannot enable dp pclk %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* cannot enable core_clk %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* cannot get pm runtime %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* get clk rate failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* firmware is invalid\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* active ucpu failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* phy power on failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Failed to write HPD_SEL %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"*ERROR* hpd does not exist\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* get property failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* set host capabilities failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* phy power off failed: %d\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* Failed to prepare_enable grf clock\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Could not write to GRF: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* Failed to get caps %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* active_port is wrong!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Get sink capability timed out\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get link status\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to disable encoder %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Failed to clear hpd sel %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* Could not get vop id, %d\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vop %s output to cdn-dp\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LIT\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BIG\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* Failed to enable encoder %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"*ERROR* Failed link train %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* Failed to idle video %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* Failed to valid video %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"got edid: width[%d] x height[%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"requested=%d, actual=%d, clock=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"rk3399_cdn_dp\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 51, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1219, i32 14 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"cdn_dp_dt_ids\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 55, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"cdn_dp_pm_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1209, i32 32 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"cdn_dp_driver\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1214, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1179, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1183, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"cdn_dp_component_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1105, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"audio_codec_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 849, i32 36 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 868, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 790, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1023, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1029, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1034, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [28 x i8] c"cdn_dp_encoder_helper_funcs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 688, i32 46 }
@___asan_gen_.129 = private unnamed_addr constant [30 x i8] c"cdn_dp_atomic_connector_funcs\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 248, i32 41 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1048, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [30 x i8] c"cdn_dp_connector_helper_funcs\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 329, i32 42 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1056, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1068, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 701, i32 48 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 703, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 709, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 713, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 715, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 719, i32 31 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 721, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 725, i32 36 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 727, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 731, i32 34 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 733, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 739, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 743, i32 45 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 745, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 749, i32 45 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 751, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 755, i32 44 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 757, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 934, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 939, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 942, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 948, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 957, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 961, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 971, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 880, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 889, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 895, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 905, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 500, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 514, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 93, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 99, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 105, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 118, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 343, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 357, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 392, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 402, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 409, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 416, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 423, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 433, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 70, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 76, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 374, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 202, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 224, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 581, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 657, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 475, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 596, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 600, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 615, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 622, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 629, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 641, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 266, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private constant [42 x i8] c"../drivers/gpu/drm/rockchip/cdn-dp-core.c\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 320, i32 3 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_firmware324, ptr @rk3399_cdn_dp, ptr @.str, ptr @cdn_dp_dt_ids, ptr @cdn_dp_pm_ops, ptr @cdn_dp_driver, ptr @.str.1, ptr @.str.2, ptr @cdn_dp_probe.__key, ptr @.str.3, ptr @cdn_dp_component_ops, ptr @audio_codec_ops, ptr @.str.4, ptr @.str.5, ptr @cdn_dp_bind.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cdn_dp_encoder_helper_funcs, ptr @cdn_dp_atomic_connector_funcs, ptr @.str.9, ptr @cdn_dp_connector_helper_funcs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_cdn_dp to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdn_dp_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdn_dp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdn_dp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdn_dp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdn_dp_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdn_dp_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdn_dp_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdn_dp_atomic_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdn_dp_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdn_dp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  %codec_data.i = alloca %struct.hdmi_codec_pdata, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1504, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @of_match_node(ptr noundef nonnull @cdn_dp_dt_ids, ptr noundef %2) #7
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp82.not = icmp eq i8 %6, 0
  br i1 %cmp82.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ports = getelementptr inbounds %struct.cdn_dp_device, ptr %call.i, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %for.inc.for.body_crit_edge ]
  %call6 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %dev1, i32 noundef %i.083) #7
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %dev1, ptr noundef %8, i32 noundef %i.083) #7
  %cmp10 = icmp eq ptr %call6, inttoptr (i32 -517 to ptr)
  %cmp13 = icmp eq ptr %call8, inttoptr (i32 -517 to ptr)
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp13
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %if.end16

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %cmp.i78 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  %or.cond80 = select i1 %cmp.i, i1 true, i1 %cmp.i78
  br i1 %or.cond80, label %if.end16.for.inc_crit_edge, label %if.end23

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end23:                                         ; preds = %if.end16
  %call.i79 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #7
  %tobool25.not = icmp eq ptr %call.i79, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %extcon28 = getelementptr inbounds %struct.cdn_dp_port, ptr %call.i79, i32 0, i32 2
  %9 = ptrtoint ptr %extcon28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %extcon28, align 4
  %phy29 = getelementptr inbounds %struct.cdn_dp_port, ptr %call.i79, i32 0, i32 3
  %10 = ptrtoint ptr %phy29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %phy29, align 4
  %11 = ptrtoint ptr %call.i79 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %call.i79, align 4
  %conv31 = trunc i32 %i.083 to i8
  %id = getelementptr inbounds %struct.cdn_dp_port, ptr %call.i79, i32 0, i32 6
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv31, ptr %id, align 2
  %13 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ports, align 4
  %inc = add i8 %14, 1
  store i8 %inc, ptr %ports, align 4
  %idxprom = zext i8 %14 to i32
  %arrayidx = getelementptr %struct.cdn_dp_device, ptr %call.i, i32 0, i32 27, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i79, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %if.end16.for.inc_crit_edge
  %inc33 = add nuw nsw i32 %i.083, 1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  %conv = zext i8 %17 to i32
  %cmp = icmp ult i32 %inc33, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %ports34 = getelementptr inbounds %struct.cdn_dp_device, ptr %call.i, i32 0, i32 28
  %18 = ptrtoint ptr %ports34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ports34, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool35.not = icmp eq i8 %19, 0
  br i1 %tobool35.not, label %if.then36, label %do.body

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  br label %cleanup

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.cdn_dp_device, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @cdn_dp_probe.__key) #7
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %codec_data.i) #7
  %21 = call ptr @memcpy(ptr %codec_data.i, ptr @__const.cdn_dp_audio_codec_init.codec_data, i32 16)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #7
  %22 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %23 = call ptr @memset(ptr %22, i32 255, i32 48)
  %24 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev1, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %22, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.4, ptr %name2.i.i.i, align 4
  %id3.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2, ptr %id3.i.i.i, align 8
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %res4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %res4.i.i.i, align 4
  %num_res.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %num_res.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %num_res.i.i.i, align 8
  %data5.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %codec_data.i, ptr %data5.i.i.i, align 4
  %size_data.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %size_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %size_data.i.i.i, align 8
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %properties.i.i.i, align 8
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #7
  %audio_pdev.i = getelementptr inbounds %struct.cdn_dp_device, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i.i, ptr %audio_pdev.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data.i) #7
  %call39 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @cdn_dp_component_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then36, %if.end23.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %do.body ], [ -22, %if.then36 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ], [ -517, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdn_dp_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %audio_pdev = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %audio_pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %audio_pdev, align 8
  tail call void @platform_device_unregister(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %driver_data.i.i5 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i5, align 4
  %lock.i = getelementptr inbounds %struct.cdn_dp_device, ptr %7, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %active.i = getelementptr inbounds %struct.cdn_dp_device, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active.i, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.cdn_dp_suspend.exit_crit_edge, label %if.then.i

entry.cdn_dp_suspend.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_suspend.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call fastcc i32 @cdn_dp_disable(ptr noundef %7) #7
  br label %cdn_dp_suspend.exit

cdn_dp_suspend.exit:                              ; preds = %if.then.i, %entry.cdn_dp_suspend.exit_crit_edge
  %suspended.i = getelementptr inbounds %struct.cdn_dp_device, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %suspended.i, align 2
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev2, ptr noundef nonnull @cdn_dp_component_ops) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdn_dp_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i.i2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i2, align 4
  %lock.i = getelementptr inbounds %struct.cdn_dp_device, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %active.i = getelementptr inbounds %struct.cdn_dp_device, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active.i, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.cdn_dp_suspend.exit_crit_edge, label %if.then.i

entry.cdn_dp_suspend.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_suspend.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call fastcc i32 @cdn_dp_disable(ptr noundef %5) #7
  br label %cdn_dp_suspend.exit

cdn_dp_suspend.exit:                              ; preds = %if.then.i, %entry.cdn_dp_suspend.exit_crit_edge
  %suspended.i = getelementptr inbounds %struct.cdn_dp_device, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %suspended.i, align 2
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdn_dp_audio_hw_params(ptr noundef %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %daifmt, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %audio = alloca %struct.audio_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %audio) #7
  %2 = getelementptr inbounds %struct.audio_info, ptr %audio, i32 0, i32 1
  %3 = getelementptr inbounds %struct.audio_info, ptr %audio, i32 0, i32 2
  %4 = getelementptr inbounds %struct.audio_info, ptr %audio, i32 0, i32 3
  %5 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %audio, align 4
  %sample_rate1 = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %sample_rate1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sample_rate1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %2, align 4
  %channels2 = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 4
  %9 = ptrtoint ptr %channels2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %3, align 4
  %sample_width3 = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 3
  %12 = ptrtoint ptr %sample_width3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sample_width3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %4, align 4
  %lock = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %active = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %daifmt, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %sw.default [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 6, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %18) #7
  br label %out

sw.epilog:                                        ; preds = %sw.bb5, %if.end.sw.epilog_crit_edge
  %storemerge = phi i32 [ 1, %sw.bb5 ], [ %18, %if.end.sw.epilog_crit_edge ]
  %20 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %audio, align 4
  %call8 = call i32 @cdn_dp_audio_config(ptr noundef %1, ptr noundef nonnull %audio) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then10:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %audio_info = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 25
  %21 = call ptr @memcpy(ptr %audio_info, ptr %audio, i32 16)
  br label %out

out:                                              ; preds = %if.then10, %sw.epilog.out_crit_edge, %sw.default, %entry.out_crit_edge
  %ret.0 = phi i32 [ -22, %sw.default ], [ %call8, %sw.epilog.out_crit_edge ], [ 0, %if.then10 ], [ -19, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %audio) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdn_dp_audio_shutdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %active = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %audio_info = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 25
  %call1 = tail call i32 @cdn_dp_audio_stop(ptr noundef %1, ptr noundef %audio_info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %audio_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %audio_info, align 8
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdn_dp_audio_mute_stream(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, i1 noundef zeroext %enable, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %active = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @cdn_dp_audio_mute(ptr noundef %1, i1 noundef zeroext %enable) #7
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdn_dp_audio_get_eld(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %len, i32 128)
  %eld = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 2, i32 42
  %3 = call ptr @memcpy(ptr %buf, ptr %eld, i32 %2)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_audio_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_audio_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_audio_mute(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdn_dp_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.12) #7
  %grf.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %grf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %grf.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.cdn_dp_parse_dt.exit_crit_edge, label %if.end.i

entry.cdn_dp_parse_dt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_parse_dt.exit

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -16
  %call6.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr.i, i32 noundef 0) #7
  %regs.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6.i, ptr %regs.i, align 8
  %cmp.i120.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120.i, label %if.end.i.cdn_dp_parse_dt.exit_crit_edge, label %if.end12.i

if.end.i.cdn_dp_parse_dt.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_parse_dt.exit

if.end12.i:                                       ; preds = %if.end.i
  %call13.i = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.15) #7
  %core_clk.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13.i, ptr %core_clk.i, align 8
  %cmp.i121.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121.i, label %if.end12.i.cdn_dp_parse_dt.exit_crit_edge, label %if.end19.i

if.end12.i.cdn_dp_parse_dt.exit_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_parse_dt.exit

if.end19.i:                                       ; preds = %if.end12.i
  %call20.i = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.17) #7
  %pclk.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %pclk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call20.i, ptr %pclk.i, align 4
  %cmp.i122.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122.i, label %if.end19.i.cdn_dp_parse_dt.exit_crit_edge, label %if.end26.i

if.end19.i.cdn_dp_parse_dt.exit_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_parse_dt.exit

if.end26.i:                                       ; preds = %if.end19.i
  %call27.i = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.19) #7
  %spdif_clk.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %spdif_clk.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call27.i, ptr %spdif_clk.i, align 8
  %cmp.i123.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123.i, label %if.end26.i.cdn_dp_parse_dt.exit_crit_edge, label %if.end33.i

if.end26.i.cdn_dp_parse_dt.exit_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_parse_dt.exit

if.end33.i:                                       ; preds = %if.end26.i
  %call34.i = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.21) #7
  %grf_clk.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %grf_clk.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call34.i, ptr %grf_clk.i, align 4
  %cmp.i124.i = icmp ugt ptr %call34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124.i, label %if.end33.i.cdn_dp_parse_dt.exit_crit_edge, label %if.end40.i

if.end33.i.cdn_dp_parse_dt.exit_crit_edge:        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_parse_dt.exit

if.end40.i:                                       ; preds = %if.end33.i
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %spdif_rst.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %spdif_rst.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i.i, ptr %spdif_rst.i, align 8
  %cmp.i125.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125.i, label %if.end40.i.cdn_dp_parse_dt.exit_crit_edge, label %if.end47.i

if.end40.i.cdn_dp_parse_dt.exit_crit_edge:        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_parse_dt.exit

if.end47.i:                                       ; preds = %if.end40.i
  %call.i.i126.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %dptx_rst.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %dptx_rst.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i126.i, ptr %dptx_rst.i, align 4
  %cmp.i127.i = icmp ugt ptr %call.i.i126.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127.i, label %if.end47.i.cdn_dp_parse_dt.exit_crit_edge, label %if.end54.i

if.end47.i.cdn_dp_parse_dt.exit_crit_edge:        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_parse_dt.exit

if.end54.i:                                       ; preds = %if.end47.i
  %call.i.i128.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %core_rst.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i128.i, ptr %core_rst.i, align 4
  %cmp.i129.i = icmp ugt ptr %call.i.i128.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129.i, label %if.end54.i.cdn_dp_parse_dt.exit_crit_edge, label %if.end61.i

if.end54.i.cdn_dp_parse_dt.exit_crit_edge:        ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_parse_dt.exit

if.end61.i:                                       ; preds = %if.end54.i
  %call.i.i130.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.28, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %apb_rst.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %apb_rst.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i130.i, ptr %apb_rst.i, align 8
  %cmp.i131.i = icmp ugt ptr %call.i.i130.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131.i, label %if.end61.i.cdn_dp_parse_dt.exit_crit_edge, label %if.end61.i.if.end_crit_edge

if.end61.i.if.end_crit_edge:                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end61.i.cdn_dp_parse_dt.exit_crit_edge:        ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_parse_dt.exit

cdn_dp_parse_dt.exit:                             ; preds = %if.end61.i.cdn_dp_parse_dt.exit_crit_edge, %if.end54.i.cdn_dp_parse_dt.exit_crit_edge, %if.end47.i.cdn_dp_parse_dt.exit_crit_edge, %if.end40.i.cdn_dp_parse_dt.exit_crit_edge, %if.end33.i.cdn_dp_parse_dt.exit_crit_edge, %if.end26.i.cdn_dp_parse_dt.exit_crit_edge, %if.end19.i.cdn_dp_parse_dt.exit_crit_edge, %if.end12.i.cdn_dp_parse_dt.exit_crit_edge, %if.end.i.cdn_dp_parse_dt.exit_crit_edge, %entry.cdn_dp_parse_dt.exit_crit_edge
  %.str.13.sink = phi ptr [ @.str.13, %entry.cdn_dp_parse_dt.exit_crit_edge ], [ @.str.14, %if.end.i.cdn_dp_parse_dt.exit_crit_edge ], [ @.str.16, %if.end12.i.cdn_dp_parse_dt.exit_crit_edge ], [ @.str.18, %if.end19.i.cdn_dp_parse_dt.exit_crit_edge ], [ @.str.20, %if.end26.i.cdn_dp_parse_dt.exit_crit_edge ], [ @.str.22, %if.end33.i.cdn_dp_parse_dt.exit_crit_edge ], [ @.str.23, %if.end40.i.cdn_dp_parse_dt.exit_crit_edge ], [ @.str.25, %if.end47.i.cdn_dp_parse_dt.exit_crit_edge ], [ @.str.27, %if.end54.i.cdn_dp_parse_dt.exit_crit_edge ], [ @.str.29, %if.end61.i.cdn_dp_parse_dt.exit_crit_edge ]
  %retval.0.i.in.in = phi ptr [ %grf.i, %entry.cdn_dp_parse_dt.exit_crit_edge ], [ %regs.i, %if.end.i.cdn_dp_parse_dt.exit_crit_edge ], [ %core_clk.i, %if.end12.i.cdn_dp_parse_dt.exit_crit_edge ], [ %pclk.i, %if.end19.i.cdn_dp_parse_dt.exit_crit_edge ], [ %spdif_clk.i, %if.end26.i.cdn_dp_parse_dt.exit_crit_edge ], [ %grf_clk.i, %if.end33.i.cdn_dp_parse_dt.exit_crit_edge ], [ %spdif_rst.i, %if.end40.i.cdn_dp_parse_dt.exit_crit_edge ], [ %dptx_rst.i, %if.end47.i.cdn_dp_parse_dt.exit_crit_edge ], [ %core_rst.i, %if.end54.i.cdn_dp_parse_dt.exit_crit_edge ], [ %apb_rst.i, %if.end61.i.cdn_dp_parse_dt.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.13.sink) #7
  %16 = ptrtoint ptr %retval.0.i.in.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.in = load ptr, ptr %retval.0.i.in.in, align 4
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %cmp = icmp slt ptr %retval.0.i.in, null
  br i1 %cmp, label %cdn_dp_parse_dt.exit.cleanup_crit_edge, label %cdn_dp_parse_dt.exit.if.end_crit_edge

cdn_dp_parse_dt.exit.if.end_crit_edge:            ; preds = %cdn_dp_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cdn_dp_parse_dt.exit.cleanup_crit_edge:           ; preds = %cdn_dp_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cdn_dp_parse_dt.exit.if.end_crit_edge, %if.end61.i.if.end_crit_edge
  %drm_dev2 = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %drm_dev2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data, ptr %drm_dev2, align 4
  %connected = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %connected, align 8
  %active = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %active, align 1
  %active_port = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 32
  %20 = ptrtoint ptr %active_port to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %active_port, align 8
  %fw_loaded = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %fw_loaded to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %fw_loaded, align 4
  %event_work = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 6
  tail call void @__init_work(ptr noundef %event_work, i32 noundef 0) #7
  %22 = ptrtoint ptr %event_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %event_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @cdn_dp_bind.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry7 = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 6, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @cdn_dp_pd_event_work, ptr %func, align 4
  %encoder9 = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call10 = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %data, ptr noundef %27) #7
  %possible_crtcs = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 3, i32 6
  %28 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call10, ptr %possible_crtcs, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %call10) #7
  %call12 = tail call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %encoder9, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %helper_private.i = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 3, i32 11
  %29 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @cdn_dp_encoder_helper_funcs, ptr %helper_private.i, align 4
  %connector15 = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 2
  %polled = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 2, i32 33
  %30 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %polled, align 4
  %dpms = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 2, i32 34
  %31 = ptrtoint ptr %dpms to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %dpms, align 8
  %call16 = tail call i32 @drm_connector_init(ptr noundef %data, ptr noundef %connector15, ptr noundef nonnull @cdn_dp_atomic_connector_funcs, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %err_free_encoder

if.end19:                                         ; preds = %if.end14
  %helper_private.i84 = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 2, i32 35
  %32 = ptrtoint ptr %helper_private.i84 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @cdn_dp_connector_helper_funcs, ptr %helper_private.i84, align 4
  %call20 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector15, ptr noundef %encoder9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.cond.preheader, label %if.then22

for.cond.preheader:                               ; preds = %if.end19
  %ports = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 28
  %33 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp2488.not = icmp eq i8 %34, 0
  br i1 %cmp2488.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %err_free_connector

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.089, 1
  %35 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ports, align 4
  %conv = zext i8 %36 to i32
  %cmp24 = icmp ult i32 %inc, %conv
  br i1 %cmp24, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.089 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cdn_dp_device, ptr %1, i32 0, i32 27, i32 %i.089
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %event_nb = getelementptr inbounds %struct.cdn_dp_port, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %event_nb to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @cdn_dp_pd_event, ptr %event_nb, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %extcon = getelementptr inbounds %struct.cdn_dp_port, ptr %38, i32 0, i32 2
  %42 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %extcon, align 4
  %call29 = tail call i32 @devm_extcon_register_notifier(ptr noundef %41, ptr noundef %43, i32 noundef 44, ptr noundef %event_nb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.cond, label %if.then31

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #7
  br label %err_free_connector

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %event_work) #7
  br label %cleanup

err_free_connector:                               ; preds = %if.then31, %if.then22
  %ret.0 = phi i32 [ %call20, %if.then22 ], [ %call29, %if.then31 ]
  tail call void @drm_connector_cleanup(ptr noundef %connector15) #7
  br label %err_free_encoder

err_free_encoder:                                 ; preds = %err_free_connector, %if.then18
  %ret.1 = phi i32 [ %call16, %if.then18 ], [ %ret.0, %err_free_connector ]
  tail call void @drm_encoder_cleanup(ptr noundef %encoder9) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_encoder, %for.end, %if.then13, %cdn_dp_parse_dt.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then13 ], [ %ret.1, %err_free_encoder ], [ 0, %for.end ], [ %retval.0.i, %cdn_dp_parse_dt.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdn_dp_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %encoder1 = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 3
  %connector2 = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 2
  %event_work = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 6
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %event_work) #7
  tail call void @cdn_dp_encoder_disable(ptr noundef %encoder1)
  %funcs = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 3, i32 10
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %destroy = getelementptr inbounds %struct.drm_encoder_funcs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destroy, align 4
  tail call void %5(ptr noundef %encoder1) #7
  %funcs4 = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 2, i32 21
  %6 = ptrtoint ptr %funcs4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs4, align 8
  %destroy5 = getelementptr inbounds %struct.drm_connector_funcs, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %destroy5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %destroy5, align 4
  tail call void %9(ptr noundef %connector2) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %fw_loaded = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %fw_loaded to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_loaded, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fw = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %13) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %edid = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edid, align 8
  tail call void @kfree(ptr noundef %15) #7
  %16 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %edid, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdn_dp_pd_event_work(ptr noundef %work) #0 align 64 {
entry:
  %property.i.i = alloca %union.extcon_property_value, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1236
  %connector1 = getelementptr i8, ptr %work, i32 -1228
  %lock = getelementptr i8, ptr %work, i32 48
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %suspended = getelementptr i8, ptr %work, i32 142
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 2, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call1.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #7
  br i1 %call1.i, label %if.end.if.end.i_crit_edge, label %do.end.i, !prof !176

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 880, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %fw_loaded.i = getelementptr i8, ptr %work, i32 152
  %3 = ptrtoint ptr %fw_loaded.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fw_loaded.i, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool21.not.i = icmp eq i8 %4, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end23.i:                                       ; preds = %if.end.i
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %add.neg.i = sub i32 -6400, %2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub52.i = add i32 %5, %add.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub52.i)
  %cmp53.i = icmp slt i32 %sub52.i, 0
  br i1 %cmp53.i, label %while.body.lr.ph.i, label %if.end23.i.while.end.i_crit_edge

if.end23.i.while.end.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end23.i
  %fw.i = getelementptr i8, ptr %work, i32 144
  br label %while.body.i

while.body.i:                                     ; preds = %if.then27.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sleep.054.i = phi i32 [ 1000, %while.body.lr.ph.i ], [ %mul.i, %if.then27.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %call25.i = tail call i32 @request_firmware(ptr noundef %fw.i, ptr noundef nonnull @.str.39, ptr noundef %7) #7
  %8 = zext i32 %call25.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call25.i, label %if.then29.i [
    i32 -2, label %if.then27.i
    i32 0, label %cdn_dp_request_firmware.exit
  ]

if.then27.i:                                      ; preds = %while.body.i
  tail call void @msleep(i32 noundef %sleep.054.i) #7
  %mul.i = shl i32 %sleep.054.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %9, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then27.i.while.body.i_crit_edge, label %if.then27.i.while.end.i_crit_edge

if.then27.i.while.end.i_crit_edge:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.then27.i.while.body.i_crit_edge:               ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.then29.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef %call25.i) #7
  br label %cdn_dp_request_firmware.exit.thread107

while.end.i:                                      ; preds = %if.then27.i.while.end.i_crit_edge, %if.end23.i.while.end.i_crit_edge
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.41) #7
  br label %cdn_dp_request_firmware.exit.thread107

cdn_dp_request_firmware.exit.thread107:           ; preds = %while.end.i, %if.then29.i
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  br label %out

cdn_dp_request_firmware.exit:                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %fw_loaded.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %fw_loaded.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  br label %if.end4

if.end4:                                          ; preds = %cdn_dp_request_firmware.exit, %if.end.i.if.end4_crit_edge
  %connected = getelementptr i8, ptr %work, i32 140
  %15 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %connected, align 8
  %ports.i = getelementptr i8, ptr %work, i32 232
  %16 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp13.not.i = icmp eq i8 %17, 0
  br i1 %cmp13.not.i, label %if.end4.if.then7_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

for.body.i:                                       ; preds = %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge ], [ 0, %if.end4.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cdn_dp_device, ptr %add.ptr, i32 0, i32 27, i32 %i.014.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %extcon.i.i = getelementptr inbounds %struct.cdn_dp_port, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %extcon.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extcon.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i.i) #7
  %22 = ptrtoint ptr %property.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %property.i.i, align 4, !annotation !177
  %call.i.i = tail call i32 @extcon_get_state(ptr noundef %21, i32 noundef 44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %cdn_dp_connected_port.exit, label %cdn_dp_get_port_lanes.exit.thread.i

cdn_dp_get_port_lanes.exit.thread.i:              ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i.i) #7
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %23 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ports.i, align 4
  %conv.i = zext i8 %24 to i32
  %cmp.i103 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i103, label %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge, label %cdn_dp_get_port_lanes.exit.thread.i.if.then7_crit_edge

cdn_dp_get_port_lanes.exit.thread.i.if.then7_crit_edge: ; preds = %cdn_dp_get_port_lanes.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge: ; preds = %cdn_dp_get_port_lanes.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cdn_dp_connected_port.exit:                       ; preds = %for.body.i
  %call1.i.i = call i32 @extcon_get_property(ptr noundef %21, i32 noundef 44, i32 noundef 2, ptr noundef nonnull %property.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i.i) #7
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %cdn_dp_connected_port.exit.if.then7_crit_edge, label %if.else

cdn_dp_connected_port.exit.if.then7_crit_edge:    ; preds = %cdn_dp_connected_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %cdn_dp_connected_port.exit.if.then7_crit_edge, %cdn_dp_get_port_lanes.exit.thread.i.if.then7_crit_edge, %if.end4.if.then7_crit_edge
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %26, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #7
  %27 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %connected, align 8
  br label %out

if.else:                                          ; preds = %cdn_dp_connected_port.exit
  %active = getelementptr i8, ptr %work, i32 141
  %28 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %active, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool9.not = icmp eq i8 %29, 0
  br i1 %tobool9.not, label %if.then10, label %if.else18

if.then10:                                        ; preds = %if.else
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.32) #7
  %call12 = call fastcc i32 @cdn_dp_enable(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then10.out_crit_edge, label %if.then14

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %33, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33, i32 noundef %call12) #7
  %34 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %connected, align 8
  br label %out

if.else18:                                        ; preds = %if.else
  %call19 = call fastcc zeroext i1 @cdn_dp_check_sink_connection(ptr noundef %add.ptr)
  br i1 %call19, label %if.else23, label %if.then20

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %36, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.34) #7
  %37 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %connected, align 8
  br label %out

if.else23:                                        ; preds = %if.else18
  %call24 = call fastcc zeroext i1 @cdn_dp_check_link_status(ptr noundef %add.ptr)
  br i1 %call24, label %if.else23.out_crit_edge, label %if.then25

if.else23.out_crit_edge:                          ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then25:                                        ; preds = %if.else23
  %max_rate = getelementptr i8, ptr %work, i32 236
  %38 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_rate, align 8
  %max_lanes = getelementptr i8, ptr %work, i32 233
  %40 = ptrtoint ptr %max_lanes to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %max_lanes, align 1
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %43, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.35) #7
  %call28 = call i32 @cdn_dp_train_link(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %connected, align 8
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %46, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36, i32 noundef %call28) #7
  br label %out

if.end33:                                         ; preds = %if.then25
  %mode26 = getelementptr i8, ptr %work, i32 -116
  %47 = ptrtoint ptr %mode26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool34.not = icmp eq i32 %48, 0
  br i1 %tobool34.not, label %if.end33.out_crit_edge, label %land.lhs.true

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true:                                    ; preds = %if.end33
  %49 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_rate, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %50)
  %cmp.not = icmp eq i32 %39, %50
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.if.then41_crit_edge

land.lhs.true.if.then41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

lor.lhs.false:                                    ; preds = %land.lhs.true
  %51 = ptrtoint ptr %max_lanes to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %max_lanes, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %52)
  %cmp39.not = icmp eq i8 %41, %52
  br i1 %cmp39.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.then41_crit_edge

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then41:                                        ; preds = %lor.lhs.false.if.then41_crit_edge, %land.lhs.true.if.then41_crit_edge
  %call42 = call i32 @cdn_dp_config_video(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then41.out_crit_edge, label %if.then44

if.then41.out_crit_edge:                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %connected, align 8
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %55, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.37, i32 noundef %call42) #7
  br label %out

out:                                              ; preds = %if.then44, %if.then41.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end33.out_crit_edge, %if.then30, %if.else23.out_crit_edge, %if.then20, %if.then14, %if.then10.out_crit_edge, %if.then7, %cdn_dp_request_firmware.exit.thread107, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  %status = getelementptr i8, ptr %work, i32 -1052
  %56 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %status, align 8
  %funcs = getelementptr i8, ptr %work, i32 -876
  %58 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs, align 8
  %detect = getelementptr inbounds %struct.drm_connector_funcs, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %detect, align 4
  %call56 = call i32 %61(ptr noundef %connector1, i1 noundef zeroext false) #7
  %62 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call56, ptr %status, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %call56)
  %cmp59.not = icmp eq i32 %57, %call56
  br i1 %cmp59.not, label %out.if.end62_crit_edge, label %if.then61

out.if.end62_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then61:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %drm_dev = getelementptr i8, ptr %work, i32 -1232
  %63 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %drm_dev, align 4
  call void @drm_kms_helper_hotplug_event(ptr noundef %64) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %out.if.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdn_dp_pd_event(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %event_work = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %event_work) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdn_dp_enable(ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  %property.i.i73 = alloca %union.extcon_property_value, align 4
  %property.i74 = alloca %union.extcon_property_value, align 4
  %property.i = alloca %union.extcon_property_value, align 4
  %property.i.i = alloca %union.extcon_property_value, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 28
  %0 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp13.not.i = icmp eq i8 %1, 0
  br i1 %cmp13.not.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body.i:                                       ; preds = %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cdn_dp_device, ptr %dp, i32 0, i32 27, i32 %i.014.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %extcon.i.i = getelementptr inbounds %struct.cdn_dp_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %extcon.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extcon.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i.i) #7
  %6 = ptrtoint ptr %property.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %property.i.i, align 4, !annotation !177
  %call.i.i = tail call i32 @extcon_get_state(ptr noundef %5, i32 noundef 44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %cdn_dp_connected_port.exit, label %cdn_dp_get_port_lanes.exit.thread.i

cdn_dp_get_port_lanes.exit.thread.i:              ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i.i) #7
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %7 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ports.i, align 4
  %conv.i = zext i8 %8 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge, label %cdn_dp_get_port_lanes.exit.thread.i.if.then_crit_edge

cdn_dp_get_port_lanes.exit.thread.i.if.then_crit_edge: ; preds = %cdn_dp_get_port_lanes.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge: ; preds = %cdn_dp_get_port_lanes.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cdn_dp_connected_port.exit:                       ; preds = %for.body.i
  %call1.i.i = call i32 @extcon_get_property(ptr noundef %5, i32 noundef 44, i32 noundef 2, ptr noundef nonnull %property.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i.i) #7
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %cdn_dp_connected_port.exit.if.then_crit_edge, label %if.end

cdn_dp_connected_port.exit.if.then_crit_edge:     ; preds = %cdn_dp_connected_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %cdn_dp_connected_port.exit.if.then_crit_edge, %cdn_dp_get_port_lanes.exit.thread.i.if.then_crit_edge, %entry.if.then_crit_edge
  %9 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.42) #7
  br label %cleanup

if.end:                                           ; preds = %cdn_dp_connected_port.exit
  %active = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 10
  %11 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %active, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not = icmp eq i8 %12, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pclk.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 18
  %13 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pclk.i, align 4
  %call.i.i61 = call i32 @clk_prepare(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %tobool.not.i.i = icmp eq i32 %call.i.i61, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end3.clk_prepare_enable.exit.i_crit_edge

if.end3.clk_prepare_enable.exit.i_crit_edge:      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end3
  %call1.i.i62 = call i32 @clk_enable(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i62)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i62, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %14) #7
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end3.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i61, %if.end3.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i62, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i63 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i63, label %if.then.i, label %clk_prepare_enable.exit.i.if.end.i_crit_edge

clk_prepare_enable.exit.i.if.end.i_crit_edge:     ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.44, i32 noundef %retval.0.i.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %clk_prepare_enable.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %core_clk.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 17
  %17 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core_clk.i, align 8
  %call.i56.i = call i32 @clk_prepare(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %tobool.not.i57.i = icmp eq i32 %call.i56.i, 0
  br i1 %tobool.not.i57.i, label %if.end.i60.i, label %if.end.i.clk_prepare_enable.exit63.i_crit_edge

if.end.i.clk_prepare_enable.exit63.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit63.i

if.end.i60.i:                                     ; preds = %if.end.i
  %call1.i58.i = call i32 @clk_enable(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58.i)
  %tobool2.not.i59.i = icmp eq i32 %call1.i58.i, 0
  br i1 %tobool2.not.i59.i, label %if.end.i60.i.if.end5.i_crit_edge, label %if.then3.i61.i

if.end.i60.i.if.end5.i_crit_edge:                 ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then3.i61.i:                                   ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %18) #7
  br label %clk_prepare_enable.exit63.i

clk_prepare_enable.exit63.i:                      ; preds = %if.then3.i61.i, %if.end.i.clk_prepare_enable.exit63.i_crit_edge
  %retval.0.i62.i = phi i32 [ %call.i56.i, %if.end.i.clk_prepare_enable.exit63.i_crit_edge ], [ %call1.i58.i, %if.then3.i61.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i62.i)
  %cmp2.i = icmp slt i32 %retval.0.i62.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %clk_prepare_enable.exit63.i.if.end5.i_crit_edge

clk_prepare_enable.exit63.i.if.end5.i_crit_edge:  ; preds = %clk_prepare_enable.exit63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then3.i:                                       ; preds = %clk_prepare_enable.exit63.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.45, i32 noundef %retval.0.i62.i) #7
  br label %err_core_clk.i

if.end5.i:                                        ; preds = %clk_prepare_enable.exit63.i.if.end5.i_crit_edge, %if.end.i60.i.if.end5.i_crit_edge
  %21 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dp, align 8
  %call.i64.i = call i32 @__pm_runtime_resume(ptr noundef %22, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %cmp8.i = icmp slt i32 %call.i64.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46, i32 noundef %call.i64.i) #7
  br label %err_pm_runtime_get.i

if.end11.i:                                       ; preds = %if.end5.i
  %core_rst.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 24
  %25 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core_rst.i, align 4
  %call12.i = call i32 @reset_control_assert(ptr noundef %26) #7
  %dptx_rst.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 22
  %27 = ptrtoint ptr %dptx_rst.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dptx_rst.i, align 4
  %call13.i = call i32 @reset_control_assert(ptr noundef %28) #7
  %apb_rst.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 23
  %29 = ptrtoint ptr %apb_rst.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %apb_rst.i, align 8
  %call14.i = call i32 @reset_control_assert(ptr noundef %30) #7
  %31 = ptrtoint ptr %core_rst.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %core_rst.i, align 4
  %call16.i = call i32 @reset_control_deassert(ptr noundef %32) #7
  %33 = ptrtoint ptr %dptx_rst.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dptx_rst.i, align 4
  %call18.i = call i32 @reset_control_deassert(ptr noundef %34) #7
  %35 = ptrtoint ptr %apb_rst.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %apb_rst.i, align 8
  %call20.i = call i32 @reset_control_deassert(ptr noundef %36) #7
  %37 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %core_clk.i, align 8
  %call22.i = call i32 @clk_get_rate(ptr noundef %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool.not.i, label %if.then23.i, label %if.end7

if.then23.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %40, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.47) #7
  %41 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dp, align 8
  %call.i65.i = call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 5) #7
  br label %err_pm_runtime_get.i

err_pm_runtime_get.i:                             ; preds = %if.then23.i, %if.then9.i
  %ret.0.i = phi i32 [ %call.i64.i, %if.then9.i ], [ -22, %if.then23.i ]
  %43 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %core_clk.i, align 8
  call void @clk_disable(ptr noundef %44) #7
  call void @clk_unprepare(ptr noundef %44) #7
  br label %err_core_clk.i

err_core_clk.i:                                   ; preds = %err_pm_runtime_get.i, %if.then3.i
  %ret.1.i = phi i32 [ %retval.0.i62.i, %if.then3.i ], [ %ret.0.i, %err_pm_runtime_get.i ]
  %45 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pclk.i, align 4
  call void @clk_disable(ptr noundef %46) #7
  call void @clk_unprepare(ptr noundef %46) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end11.i
  call void @cdn_dp_set_fw_clk(ptr noundef %dp, i32 noundef %call22.i) #7
  call void @cdn_dp_clock_reset(ptr noundef %dp) #7
  %fw1.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 12
  %47 = ptrtoint ptr %fw1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw1.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %48, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %55)
  %cmp.not.i = icmp eq i32 %52, %55
  br i1 %cmp.not.i, label %if.end.i67, label %if.then.i65

if.then.i65:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %57, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.48) #7
  br label %if.then10

if.end.i67:                                       ; preds = %if.end7
  %header_size.i = getelementptr inbounds %struct.cdn_firmware_header, ptr %50, i32 0, i32 1
  %58 = ptrtoint ptr %header_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %header_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 %59
  %iram_size.i = getelementptr inbounds %struct.cdn_firmware_header, ptr %50, i32 0, i32 2
  %60 = ptrtoint ptr %iram_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iram_size.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 %61
  %dram_size.i = getelementptr inbounds %struct.cdn_firmware_header, ptr %50, i32 0, i32 3
  %62 = ptrtoint ptr %dram_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dram_size.i, align 4
  %call.i = call i32 @cdn_dp_load_firmware(ptr noundef %dp, ptr noundef %add.ptr.i, i32 noundef %61, ptr noundef %add.ptr6.i, i32 noundef %63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i66 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i66, label %if.end9.i, label %if.end.i67.if.then10_crit_edge

if.end.i67.if.then10_crit_edge:                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end9.i:                                        ; preds = %if.end.i67
  %call10.i = call i32 @cdn_dp_set_firmware_active(ptr noundef %dp, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %cdn_dp_firmware_init.exit, label %if.then12.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %65, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.49, i32 noundef %call10.i) #7
  br label %if.then10

cdn_dp_firmware_init.exit:                        ; preds = %if.end9.i
  %call15.i = call i32 @cdn_dp_event_config(ptr noundef %dp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool9.not = icmp eq i32 %call15.i, 0
  br i1 %tobool9.not, label %if.end12, label %cdn_dp_firmware_init.exit.if.then10_crit_edge

cdn_dp_firmware_init.exit.if.then10_crit_edge:    ; preds = %cdn_dp_firmware_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %cdn_dp_firmware_init.exit.if.then10_crit_edge, %if.then12.i, %if.end.i67.if.then10_crit_edge, %if.then.i65
  %retval.0.i68116 = phi i32 [ %call15.i, %cdn_dp_firmware_init.exit.if.then10_crit_edge ], [ %call.i, %if.end.i67.if.then10_crit_edge ], [ %call10.i, %if.then12.i ], [ -22, %if.then.i65 ]
  %66 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %67, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i68116) #7
  br label %err_clk_disable

if.end12:                                         ; preds = %cdn_dp_firmware_init.exit
  %id = getelementptr inbounds %struct.cdn_dp_port, ptr %3, i32 0, i32 6
  %68 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %id, align 2
  %70 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ports.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %71)
  %cmp134 = icmp ult i8 %69, %71
  br i1 %cmp134, label %for.body.lr.ph, label %if.end12.err_clk_disable_crit_edge

if.end12.err_clk_disable_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_disable

for.body.lr.ph:                                   ; preds = %if.end12
  %conv = zext i8 %69 to i32
  %active_port.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 32
  %dpcd.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cdn_dp_device, ptr %dp, i32 0, i32 27, i32 %i.0136
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx, align 4
  %extcon.i = getelementptr inbounds %struct.cdn_dp_port, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %extcon.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %extcon.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i) #7
  %76 = ptrtoint ptr %property.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %property.i, align 4, !annotation !177
  %call.i69 = call i32 @extcon_get_state(ptr noundef %75, i32 noundef 44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp sgt i32 %call.i69, 0
  br i1 %cmp.i70, label %cdn_dp_get_port_lanes.exit, label %cdn_dp_get_port_lanes.exit.thread

cdn_dp_get_port_lanes.exit.thread:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i) #7
  br label %for.inc

cdn_dp_get_port_lanes.exit:                       ; preds = %for.body
  %call1.i = call i32 @extcon_get_property(ptr noundef %75, i32 noundef 44, i32 noundef 2, ptr noundef nonnull %property.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i74) #7
  %77 = ptrtoint ptr %property.i74 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %property.i74, align 4, !annotation !177
  %phy_enabled.i = getelementptr inbounds %struct.cdn_dp_port, ptr %73, i32 0, i32 5
  %78 = ptrtoint ptr %phy_enabled.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %phy_enabled.i, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i75 = icmp eq i8 %79, 0
  br i1 %tobool.not.i75, label %if.then.i77, label %cdn_dp_get_port_lanes.exit.if.end4.i_crit_edge

cdn_dp_get_port_lanes.exit.if.end4.i_crit_edge:   ; preds = %cdn_dp_get_port_lanes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i77:                                      ; preds = %cdn_dp_get_port_lanes.exit
  %phy.i = getelementptr inbounds %struct.cdn_dp_port, ptr %73, i32 0, i32 3
  %80 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phy.i, align 4
  %call.i76 = call i32 @phy_power_on(ptr noundef %81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool1.not.i = icmp eq i32 %call.i76, 0
  br i1 %tobool1.not.i, label %if.end.i78, label %cdn_dp_enable_phy.exit.thread121

cdn_dp_enable_phy.exit.thread121:                 ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %83, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.50, i32 noundef %call.i76) #7
  %call38.i123 = call fastcc i32 @cdn_dp_grf_write(ptr noundef %dp, i32 noundef 25192, i32 noundef 805314560) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i74) #7
  br label %for.inc

if.end.i78:                                       ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %phy_enabled.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %phy_enabled.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i78, %cdn_dp_get_port_lanes.exit.if.end4.i_crit_edge
  %call5.i = call fastcc i32 @cdn_dp_grf_write(ptr noundef %dp, i32 noundef 25192, i32 noundef 805318656) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end9.i81, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %86, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.51, i32 noundef %call5.i) #7
  br label %err_power_on.i

if.end9.i81:                                      ; preds = %if.end4.i
  %call10.i79 = call i32 @cdn_dp_get_hpd_status(ptr noundef %dp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i79)
  %cmp.i80 = icmp slt i32 %call10.i79, 1
  br i1 %cmp.i80, label %if.then11.i, label %if.end16.i

if.then11.i:                                      ; preds = %if.end9.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i79)
  %tobool12.not.i = icmp eq i32 %call10.i79, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.then11.i.err_power_on.i_crit_edge

if.then11.i.err_power_on.i_crit_edge:             ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_power_on.i

if.then13.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %88, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.52) #7
  br label %err_power_on.i

if.end16.i:                                       ; preds = %if.end9.i81
  %89 = ptrtoint ptr %extcon.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %extcon.i, align 4
  %call17.i = call i32 @extcon_get_property(ptr noundef %90, i32 noundef 44, i32 noundef 1, ptr noundef nonnull %property.i74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %92, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.53) #7
  br label %err_power_on.i

if.end21.i:                                       ; preds = %if.end16.i
  %93 = ptrtoint ptr %extcon.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %extcon.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i.i73) #7
  %95 = ptrtoint ptr %property.i.i73 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %property.i.i73, align 4, !annotation !177
  %call.i.i83 = call i32 @extcon_get_state(ptr noundef %94, i32 noundef 44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83)
  %cmp.i.i84 = icmp sgt i32 %call.i.i83, 0
  br i1 %cmp.i.i84, label %if.then.i.i, label %if.end21.i.cdn_dp_get_port_lanes.exit.i87_crit_edge

if.end21.i.cdn_dp_get_port_lanes.exit.i87_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdn_dp_get_port_lanes.exit.i87

if.then.i.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i85 = call i32 @extcon_get_property(ptr noundef %94, i32 noundef 44, i32 noundef 2, ptr noundef nonnull %property.i.i73) #7
  %96 = ptrtoint ptr %property.i.i73 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %property.i.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i.i86 = icmp eq i32 %97, 0
  %phi.cast.i = select i1 %tobool.not.i.i86, i8 4, i8 2
  br label %cdn_dp_get_port_lanes.exit.i87

cdn_dp_get_port_lanes.exit.i87:                   ; preds = %if.then.i.i, %if.end21.i.cdn_dp_get_port_lanes.exit.i87_crit_edge
  %lanes.0.i.i = phi i8 [ %phi.cast.i, %if.then.i.i ], [ 0, %if.end21.i.cdn_dp_get_port_lanes.exit.i87_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i.i73) #7
  %lanes.i = getelementptr inbounds %struct.cdn_dp_port, ptr %73, i32 0, i32 4
  %98 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %lanes.0.i.i, ptr %lanes.i, align 4
  %99 = ptrtoint ptr %property.i74 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %property.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool24.i = icmp ne i32 %100, 0
  %call25.i = call i32 @cdn_dp_set_host_cap(ptr noundef %dp, i8 noundef zeroext %lanes.0.i.i, i1 noundef zeroext %tobool24.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %cdn_dp_enable_phy.exit.thread, label %if.then27.i

if.then27.i:                                      ; preds = %cdn_dp_get_port_lanes.exit.i87
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %102, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.54, i32 noundef %call25.i) #7
  br label %err_power_on.i

cdn_dp_enable_phy.exit.thread:                    ; preds = %cdn_dp_get_port_lanes.exit.i87
  call void @__sanitizer_cov_trace_pc() #9
  %id.i = getelementptr inbounds %struct.cdn_dp_port, ptr %73, i32 0, i32 6
  %103 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %id.i, align 2
  %conv30.i = zext i8 %104 to i32
  %105 = ptrtoint ptr %active_port.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv30.i, ptr %active_port.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i74) #7
  br label %if.end22

err_power_on.i:                                   ; preds = %if.then27.i, %if.then19.i, %if.then13.i, %if.then11.i.err_power_on.i_crit_edge, %if.then7.i
  %ret.0.i88 = phi i32 [ %call5.i, %if.then7.i ], [ %call10.i79, %if.then11.i.err_power_on.i_crit_edge ], [ 0, %if.then13.i ], [ %call17.i, %if.then19.i ], [ %call25.i, %if.then27.i ]
  %phy31.i = getelementptr inbounds %struct.cdn_dp_port, ptr %73, i32 0, i32 3
  %106 = ptrtoint ptr %phy31.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %phy31.i, align 4
  %call32.i = call i32 @phy_power_off(ptr noundef %107) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.else.i, label %if.then34.i

if.then34.i:                                      ; preds = %err_power_on.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %109, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.55, i32 noundef %ret.0.i88) #7
  br label %cdn_dp_enable_phy.exit

if.else.i:                                        ; preds = %err_power_on.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %phy_enabled.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %phy_enabled.i, align 1
  br label %cdn_dp_enable_phy.exit

cdn_dp_enable_phy.exit:                           ; preds = %if.else.i, %if.then34.i
  %call38.i = call fastcc i32 @cdn_dp_grf_write(ptr noundef %dp, i32 noundef 25192, i32 noundef 805314560) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i88)
  %tobool20.not = icmp eq i32 %ret.0.i88, 0
  br i1 %tobool20.not, label %cdn_dp_enable_phy.exit.if.end22_crit_edge, label %cdn_dp_enable_phy.exit.for.inc_crit_edge

cdn_dp_enable_phy.exit.for.inc_crit_edge:         ; preds = %cdn_dp_enable_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cdn_dp_enable_phy.exit.if.end22_crit_edge:        ; preds = %cdn_dp_enable_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %cdn_dp_enable_phy.exit.if.end22_crit_edge, %cdn_dp_enable_phy.exit.thread
  %call.i91 = call fastcc zeroext i1 @cdn_dp_check_sink_connection(ptr noundef %dp) #7
  br i1 %call.i91, label %if.end.i94, label %if.end22.if.then25_crit_edge

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.end.i94:                                       ; preds = %if.end22
  %call1.i92 = call i32 @cdn_dp_dpcd_read(ptr noundef %dp, i32 noundef 0, ptr noundef %dpcd.i, i16 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool.not.i93, label %if.else, label %if.then2.i95

if.then2.i95:                                     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %112, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58, i32 noundef %call1.i92) #7
  br label %if.then25

if.then25:                                        ; preds = %if.then2.i95, %if.end22.if.then25_crit_edge
  %retval.0.i96.ph = phi i32 [ -19, %if.end22.if.then25_crit_edge ], [ %call1.i92, %if.then2.i95 ]
  %113 = ptrtoint ptr %phy_enabled.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %phy_enabled.i, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i98 = icmp eq i8 %114, 0
  br i1 %tobool.not.i98, label %if.then25.if.end3.i106_crit_edge, label %if.then.i102

if.then25.if.end3.i106_crit_edge:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i106

if.then.i102:                                     ; preds = %if.then25
  %phy.i99 = getelementptr inbounds %struct.cdn_dp_port, ptr %73, i32 0, i32 3
  %115 = ptrtoint ptr %phy.i99 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %phy.i99, align 4
  %call.i100 = call i32 @phy_power_off(ptr noundef %116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool1.not.i101 = icmp eq i32 %call.i100, 0
  br i1 %tobool1.not.i101, label %if.then.i102.if.end3.i106_crit_edge, label %if.then2.i103

if.then.i102.if.end3.i106_crit_edge:              ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i106

if.then2.i103:                                    ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %118, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.55, i32 noundef %call.i100) #7
  br label %for.inc

if.end3.i106:                                     ; preds = %if.then.i102.if.end3.i106_crit_edge, %if.then25.if.end3.i106_crit_edge
  %119 = ptrtoint ptr %phy_enabled.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %phy_enabled.i, align 1
  %lanes.i104 = getelementptr inbounds %struct.cdn_dp_port, ptr %73, i32 0, i32 4
  %120 = ptrtoint ptr %lanes.i104 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %lanes.i104, align 4
  %121 = ptrtoint ptr %active_port.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %active_port.i, align 8
  br label %for.inc

if.else:                                          ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #9
  %edid.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 7
  %122 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %edid.i, align 8
  call void @kfree(ptr noundef %123) #7
  %connector.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 2
  %call4.i = call ptr @drm_do_get_edid(ptr noundef %connector.i, ptr noundef nonnull @cdn_dp_get_edid_block, ptr noundef %dp) #7
  %124 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call4.i, ptr %edid.i, align 8
  %125 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %active, align 1
  %lanes28 = getelementptr inbounds %struct.cdn_dp_port, ptr %73, i32 0, i32 4
  %126 = ptrtoint ptr %lanes28 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %lanes28, align 4
  %lanes29 = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 31
  %128 = ptrtoint ptr %lanes29 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %lanes29, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end3.i106, %if.then2.i103, %cdn_dp_enable_phy.exit.for.inc_crit_edge, %cdn_dp_enable_phy.exit.thread121, %cdn_dp_get_port_lanes.exit.thread
  %ret.1 = phi i32 [ %ret.0.i88, %cdn_dp_enable_phy.exit.for.inc_crit_edge ], [ %ret.0135, %cdn_dp_get_port_lanes.exit.thread ], [ %call.i76, %cdn_dp_enable_phy.exit.thread121 ], [ %retval.0.i96.ph, %if.then2.i103 ], [ %retval.0.i96.ph, %if.end3.i106 ]
  %inc = add nuw nsw i32 %i.0136, 1
  %129 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %ports.i, align 4
  %conv13 = zext i8 %130 to i32
  %cmp = icmp ult i32 %inc, %conv13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.err_clk_disable_crit_edge

for.inc.err_clk_disable_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_disable

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

err_clk_disable:                                  ; preds = %for.inc.err_clk_disable_crit_edge, %if.end12.err_clk_disable_crit_edge, %if.then10
  %ret.2 = phi i32 [ %retval.0.i68116, %if.then10 ], [ 0, %if.end12.err_clk_disable_crit_edge ], [ %ret.1, %for.inc.err_clk_disable_crit_edge ]
  %131 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dp, align 8
  %call.i.i107 = call i32 @__pm_runtime_idle(ptr noundef %132, i32 noundef 4) #7
  %133 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pclk.i, align 4
  call void @clk_disable(ptr noundef %134) #7
  call void @clk_unprepare(ptr noundef %134) #7
  %135 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %core_clk.i, align 8
  call void @clk_disable(ptr noundef %136) #7
  call void @clk_unprepare(ptr noundef %136) #7
  br label %cleanup

cleanup:                                          ; preds = %err_clk_disable, %if.else, %err_core_clk.i, %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %ret.2, %err_clk_disable ], [ 0, %if.else ], [ -19, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %ret.1.i, %err_core_clk.i ], [ %retval.0.i.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cdn_dp_check_sink_connection(ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %active_port = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 32
  %1 = ptrtoint ptr %active_port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %active_port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ports = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 28
  %3 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ports, align 4
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp2.not = icmp ult i32 %2, %conv
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %5 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.59) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.cdn_dp_device, ptr %dp, i32 0, i32 27, i32 %2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %add.neg = sub i32 -500, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub30 = add i32 %add.neg, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30)
  %cmp631 = icmp slt i32 %sub30, 0
  br i1 %cmp631, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %extcon = getelementptr inbounds %struct.cdn_dp_port, ptr %8, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %10 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extcon, align 4
  %call8 = call i32 @extcon_get_state(ptr noundef %11, i32 noundef 44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %if.end10

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #7
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %value.i, align 1, !annotation !177
  %call.i = call i32 @cdn_dp_dpcd_read(ptr noundef %dp, i32 noundef 512, ptr noundef nonnull %value.i, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value.i, align 1
  %and.i = lshr i8 %14, 1
  %15 = and i8 %and.i, 64
  %and2.i = and i8 %14, 63
  %or.i = or i8 %15, %and2.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or.i)
  %tobool15 = icmp ne i8 %or.i, 0
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %16
  %cmp6 = icmp slt i32 %sub, 0
  br i1 %cmp6, label %if.end17.while.body_crit_edge, label %if.end17.while.end_crit_edge

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %if.end.while.end_crit_edge
  %17 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dp, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then13, %while.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ %tobool15, %if.then13 ], [ false, %while.end ], [ false, %while.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cdn_dp_check_link_status(ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  %property.i.i = alloca %union.extcon_property_value, align 4
  %link_status = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %link_status) #7
  %ports.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 28
  %0 = call ptr @memset(ptr %link_status, i32 255, i32 6)
  %1 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp13.not.i = icmp eq i8 %2, 0
  br i1 %cmp13.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cdn_dp_device, ptr %dp, i32 0, i32 27, i32 %i.014.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %extcon.i.i = getelementptr inbounds %struct.cdn_dp_port, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %extcon.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extcon.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i.i) #7
  %7 = ptrtoint ptr %property.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %property.i.i, align 4, !annotation !177
  %call.i.i = tail call i32 @extcon_get_state(ptr noundef %6, i32 noundef 44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %cdn_dp_connected_port.exit, label %cdn_dp_get_port_lanes.exit.thread.i

cdn_dp_get_port_lanes.exit.thread.i:              ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i.i) #7
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %8 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ports.i, align 4
  %conv.i = zext i8 %9 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge, label %cdn_dp_get_port_lanes.exit.thread.i.cleanup_crit_edge

cdn_dp_get_port_lanes.exit.thread.i.cleanup_crit_edge: ; preds = %cdn_dp_get_port_lanes.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge: ; preds = %cdn_dp_get_port_lanes.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cdn_dp_connected_port.exit:                       ; preds = %for.body.i
  %call1.i.i = call i32 @extcon_get_property(ptr noundef %6, i32 noundef 44, i32 noundef 2, ptr noundef nonnull %property.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i.i) #7
  %arrayidx.i25 = getelementptr %struct.cdn_dp_device, ptr %dp, i32 0, i32 33, i32 2
  %10 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i25, align 1
  %12 = and i8 %11, 31
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %cdn_dp_connected_port.exit.cleanup_crit_edge, label %lor.lhs.false

cdn_dp_connected_port.exit.cleanup_crit_edge:     ; preds = %cdn_dp_connected_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %cdn_dp_connected_port.exit
  %max_rate = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 30
  %13 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not = icmp eq i32 %14, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %max_lanes = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 29
  %15 = ptrtoint ptr %max_lanes to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_lanes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not = icmp eq i8 %16, 0
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = call i32 @cdn_dp_dpcd_read(ptr noundef %dp, i32 noundef 514, ptr noundef nonnull %link_status, i16 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.61) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lanes = getelementptr inbounds %struct.cdn_dp_port, ptr %4, i32 0, i32 4
  %17 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lanes, align 4
  %19 = call i8 @llvm.umin.i8(i8 %18, i8 %12)
  %cond = zext i8 %19 to i32
  %call15 = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %link_status, i32 noundef %cond) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cdn_dp_connected_port.exit.cleanup_crit_edge, %cdn_dp_get_port_lanes.exit.thread.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then8 ], [ %call15, %if.end9 ], [ false, %lor.lhs.false3.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %cdn_dp_connected_port.exit.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %cdn_dp_get_port_lanes.exit.thread.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status) #7
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_train_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_config_video(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_property(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdn_dp_set_fw_clk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdn_dp_clock_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_load_firmware(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_set_firmware_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_event_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdn_dp_grf_write(ptr nocapture noundef readonly %dp, i32 noundef %reg, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %grf_clk = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 20
  %0 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %1) #7
  br label %if.then

if.then:                                          ; preds = %if.then3.i, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.if.then_crit_edge ]
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %grf = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 16
  %4 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %reg, i32 noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57, i32 noundef %call1) #7
  %8 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %grf_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %grf_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %grf_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3, %if.then
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ %call1, %if.then3 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_get_hpd_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_set_host_cap(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_get_edid_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cdn_dp_encoder_mode_set(ptr nocapture noundef %encoder, ptr nocapture noundef readonly %mode, ptr nocapture noundef readonly %adjusted) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bpc = getelementptr i8, ptr %encoder, i32 -840
  %0 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bpc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %switch.selectcmp = icmp eq i32 %1, 6
  %switch.select = select i1 %switch.selectcmp, i32 6, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %switch.selectcmp21 = icmp eq i32 %1, 10
  %switch.select22 = select i1 %switch.selectcmp21, i32 10, i32 %switch.select
  %color_depth4 = getelementptr i8, ptr %encoder, i32 404
  %2 = ptrtoint ptr %color_depth4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %switch.select22, ptr %color_depth4, align 4
  %video_info = getelementptr i8, ptr %encoder, i32 400
  %color_fmt = getelementptr i8, ptr %encoder, i32 408
  %3 = ptrtoint ptr %color_fmt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %color_fmt, align 4
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %v_sync_polarity = getelementptr i8, ptr %encoder, i32 401
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 3
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %v_sync_polarity to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %v_sync_polarity, align 1
  %10 = load i32, ptr %flags, align 4
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 1
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %video_info to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %video_info, align 4
  %mode12 = getelementptr i8, ptr %encoder, i32 72
  %15 = call ptr @memcpy(ptr %mode12, ptr %adjusted, i32 112)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdn_dp_encoder_disable(ptr noundef %encoder) #0 align 64 {
entry:
  %property.i.i = alloca %union.extcon_property_value, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %encoder, i32 -1048
  %lock = getelementptr i8, ptr %encoder, i32 236
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %active = getelementptr i8, ptr %encoder, i32 329
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @cdn_dp_disable(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.62, i32 noundef %call) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %connected = getelementptr i8, ptr %encoder, i32 328
  %4 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %connected, align 8, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end3
  %ports.i = getelementptr i8, ptr %encoder, i32 420
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp13.not.i = icmp eq i8 %7, 0
  br i1 %cmp13.not.i, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.for.body.i_crit_edge

land.lhs.true.for.body.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.body.i

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

for.body.i:                                       ; preds = %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge, %land.lhs.true.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge ], [ 0, %land.lhs.true.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cdn_dp_device, ptr %add.ptr, i32 0, i32 27, i32 %i.014.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %extcon.i.i = getelementptr inbounds %struct.cdn_dp_port, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %extcon.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extcon.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i.i) #7
  %12 = ptrtoint ptr %property.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %property.i.i, align 4, !annotation !177
  %call.i.i = tail call i32 @extcon_get_state(ptr noundef %11, i32 noundef 44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %cdn_dp_connected_port.exit, label %cdn_dp_get_port_lanes.exit.thread.i

cdn_dp_get_port_lanes.exit.thread.i:              ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i.i) #7
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %13 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ports.i, align 4
  %conv.i = zext i8 %14 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge, label %cdn_dp_get_port_lanes.exit.thread.i.if.end10_crit_edge

cdn_dp_get_port_lanes.exit.thread.i.if.end10_crit_edge: ; preds = %cdn_dp_get_port_lanes.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

cdn_dp_get_port_lanes.exit.thread.i.for.body.i_crit_edge: ; preds = %cdn_dp_get_port_lanes.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cdn_dp_connected_port.exit:                       ; preds = %for.body.i
  %call1.i.i = call i32 @extcon_get_property(ptr noundef %11, i32 noundef 44, i32 noundef 2, ptr noundef nonnull %property.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i.i) #7
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %cdn_dp_connected_port.exit.if.end10_crit_edge, label %if.then8

cdn_dp_connected_port.exit.if.end10_crit_edge:    ; preds = %cdn_dp_connected_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %cdn_dp_connected_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  %event_work = getelementptr i8, ptr %encoder, i32 188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i19 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %event_work) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %cdn_dp_connected_port.exit.if.end10_crit_edge, %cdn_dp_get_port_lanes.exit.thread.i.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdn_dp_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  %endpoint.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %encoder, i32 -1048
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i) #7
  %4 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %endpoint.i, align 4, !annotation !177
  %5 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !177
  %7 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !177
  %call.i = call i32 @drm_of_encoder_active_endpoint(ptr noundef %3, ptr noundef %encoder, ptr noundef nonnull %endpoint.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.drm_of_encoder_active_endpoint_id.exit_crit_edge

entry.drm_of_encoder_active_endpoint_id.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_of_encoder_active_endpoint_id.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 4
  br label %drm_of_encoder_active_endpoint_id.exit

drm_of_encoder_active_endpoint_id.exit:           ; preds = %cond.false.i, %entry.drm_of_encoder_active_endpoint_id.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.false.i ], [ %call.i, %entry.drm_of_encoder_active_endpoint_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp = icmp slt i32 %cond.i, 0
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.64, i32 noundef %cond.i) #7
  br label %cleanup

if.end:                                           ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not = icmp eq i32 %cond.i, 0
  %cond = select i1 %tobool.not, ptr @.str.67, ptr @.str.66
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef nonnull %cond) #7
  %. = select i1 %tobool.not, i32 268435456, i32 268439552
  %call6 = call fastcc i32 @cdn_dp_grf_write(ptr noundef %add.ptr, i32 noundef 25124, i32 noundef %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %lock = getelementptr i8, ptr %encoder, i32 236
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call10 = call fastcc i32 @cdn_dp_enable(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, i32 noundef %call10) #7
  br label %out

if.end14:                                         ; preds = %if.end9
  %call15 = call fastcc zeroext i1 @cdn_dp_check_link_status(ptr noundef %add.ptr)
  br i1 %call15, label %if.end14.if.end22_crit_edge, label %if.then16

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then16:                                        ; preds = %if.end14
  %call17 = call i32 @cdn_dp_train_link(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end22_crit_edge, label %if.then19

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.69, i32 noundef %call17) #7
  br label %out

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %call23 = call i32 @cdn_dp_set_video_status(ptr noundef %add.ptr, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.70, i32 noundef %call23) #7
  br label %out

if.end27:                                         ; preds = %if.end22
  %call28 = call i32 @cdn_dp_config_video(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.37, i32 noundef %call28) #7
  br label %out

if.end32:                                         ; preds = %if.end27
  %call33 = call i32 @cdn_dp_set_video_status(ptr noundef %add.ptr, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.out_crit_edge, label %if.then35

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.71, i32 noundef %call33) #7
  br label %out

out:                                              ; preds = %if.then35, %if.end32.out_crit_edge, %if.then30, %if.then25, %if.then19, %if.then12
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cdn_dp_encoder_atomic_check(ptr nocapture noundef readnone %encoder, ptr nocapture noundef writeonly %crtc_state, ptr nocapture noundef readnone %conn_state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %output_mode = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 2
  %0 = ptrtoint ptr %output_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 15, ptr %output_mode, align 4
  %output_type = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 1
  %1 = ptrtoint ptr %output_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %output_type, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdn_dp_disable(ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 10
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %ports = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 28
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp31.not = icmp eq i8 %3, 0
  br i1 %cmp31.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %active_port.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %cdn_dp_disable_phy.exit.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cdn_dp_disable_phy.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cdn_dp_device, ptr %dp, i32 0, i32 27, i32 %i.032
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %phy_enabled.i = getelementptr inbounds %struct.cdn_dp_port, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %phy_enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phy_enabled.i, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.body.if.end3.i_crit_edge, label %if.then.i

for.body.if.end3.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i:                                        ; preds = %for.body
  %phy.i = getelementptr inbounds %struct.cdn_dp_port, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then2.i

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.55, i32 noundef %call.i) #7
  br label %cdn_dp_disable_phy.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %for.body.if.end3.i_crit_edge
  %12 = ptrtoint ptr %phy_enabled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %phy_enabled.i, align 1
  %lanes.i = getelementptr inbounds %struct.cdn_dp_port, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %lanes.i, align 4
  %14 = ptrtoint ptr %active_port.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %active_port.i, align 8
  br label %cdn_dp_disable_phy.exit

cdn_dp_disable_phy.exit:                          ; preds = %if.end3.i, %if.then2.i
  %inc = add nuw nsw i32 %i.032, 1
  %15 = ptrtoint ptr %ports to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ports, align 4
  %conv = zext i8 %16 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cdn_dp_disable_phy.exit.for.body_crit_edge, label %cdn_dp_disable_phy.exit.for.end_crit_edge

cdn_dp_disable_phy.exit.for.end_crit_edge:        ; preds = %cdn_dp_disable_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cdn_dp_disable_phy.exit.for.body_crit_edge:       ; preds = %cdn_dp_disable_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cdn_dp_disable_phy.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call2 = tail call fastcc i32 @cdn_dp_grf_write(ptr noundef %dp, i32 noundef 25192, i32 noundef 805314560)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.63, i32 noundef %call2) #7
  br label %cleanup

if.end5:                                          ; preds = %for.end
  %call6 = tail call i32 @cdn_dp_set_firmware_active(ptr noundef %dp, i1 noundef zeroext false) #7
  %19 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dp, align 8
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 4) #7
  %pclk.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 18
  %21 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %22) #7
  tail call void @clk_unprepare(ptr noundef %22) #7
  %core_clk.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 17
  %23 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core_clk.i, align 8
  tail call void @clk_disable(ptr noundef %24) #7
  tail call void @clk_unprepare(ptr noundef %24) #7
  %25 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %active, align 1
  %max_lanes = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 29
  %26 = ptrtoint ptr %max_lanes to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %max_lanes, align 1
  %max_rate = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 30
  %27 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %max_rate, align 8
  %connected = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 9
  %28 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %connected, align 8, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool8.not = icmp eq i8 %29, 0
  br i1 %tobool8.not, label %if.then9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %edid = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 7
  %30 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %edid, align 8
  tail call void @kfree(ptr noundef %31) #7
  %32 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %edid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end5.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdn_dp_set_video_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdn_dp_connector_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %connector, i32 1276
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %connected = getelementptr i8, ptr %connector, i32 1368
  %0 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %connected, align 8, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 1
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdn_dp_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_unregister(ptr noundef %connector) #7
  tail call void @drm_connector_cleanup(ptr noundef %connector) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdn_dp_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %connector, i32 1276
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %edid1 = getelementptr i8, ptr %connector, i32 1272
  %0 = ptrtoint ptr %edid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %connector, i32 -8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %width_cm = getelementptr inbounds %struct.edid, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %width_cm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %width_cm, align 1
  %conv = zext i8 %5 to i32
  %height_cm = getelementptr inbounds %struct.edid, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %height_cm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %height_cm, align 1
  %conv2 = zext i8 %7 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.72, i32 noundef %conv, i32 noundef %conv2) #7
  %call = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef nonnull %1) #7
  %sink_has_audio = getelementptr i8, ptr %connector, i32 1491
  %frombool = zext i1 %call to i8
  %8 = ptrtoint ptr %sink_has_audio to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %sink_has_audio, align 1
  %call3 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end7_crit_edge, label %if.then5

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %1) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then5 ], [ 0, %if.then.if.end7_crit_edge ], [ 0, %entry.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdn_dp_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %connector, i32 -8
  %connected = getelementptr i8, ptr %connector, i32 1368
  %0 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %connected, align 8, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bpc3 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %bpc3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpc3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 6
  %switch.select = select i1 %switch.selectcmp, i32 6, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %switch.selectcmp56 = icmp eq i32 %3, 10
  %switch.select57 = select i1 %switch.selectcmp56, i32 10, i32 %switch.select
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %mul = mul i32 %5, 3
  %mul5 = mul i32 %mul, %switch.select57
  %div = sdiv i32 %mul5, 1000
  %lanes6 = getelementptr i8, ptr %connector, i32 1468
  %6 = ptrtoint ptr %lanes6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lanes6, align 4
  %arrayidx.i = getelementptr i8, ptr %connector, i32 1478
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = and i8 %9, 31
  %11 = tail call i8 @llvm.umin.i8(i8 %7, i8 %10)
  %call12 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext 20) #7
  %arrayidx.i58 = getelementptr i8, ptr %connector, i32 1477
  %12 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i58, align 1
  %call.i = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %13) #7
  %14 = tail call i32 @llvm.umin.i32(i32 %call12, i32 %call.i)
  %conv23 = zext i8 %11 to i32
  %mul24 = mul i32 %14, %conv23
  %div25 = udiv i32 %mul24, 100
  %mul26 = shl nuw nsw i32 %div25, 3
  %div27 = udiv i32 %mul26, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div27)
  %cmp28 = icmp ugt i32 %div, %div27
  br i1 %cmp28, label %if.then30, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %16, i32 noundef 4, ptr noundef nonnull @.str.73, i32 noundef %div, i32 noundef %div27, i32 noundef %18) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 15, %if.then30 ], [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdn_dp_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %active = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @cdn_dp_disable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %suspended = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %suspended, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdn_dp_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %suspended = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %suspended, align 2
  %fw_loaded = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %fw_loaded to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fw_loaded, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %event_work = getelementptr inbounds %struct.cdn_dp_device, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %event_work) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__UNIQUE_ID_firmware324, !1, !"__UNIQUE_ID_firmware324", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 45, i32 1}
!2 = !{ptr @rk3399_cdn_dp, !3, !"rk3399_cdn_dp", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 51, i32 20}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1219, i32 14}
!6 = !{ptr @cdn_dp_driver, !7, !"cdn_dp_driver", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1214, i32 24}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1179, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cdn_dp_probe.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1183, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 868, i32 10}
!16 = !{ptr @audio_codec_ops, !17, !"audio_codec_ops", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 849, i32 36}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 790, i32 3}
!20 = !{ptr @cdn_dp_component_ops, !21, !"cdn_dp_component_ops", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1105, i32 35}
!22 = !{ptr @cdn_dp_bind.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1023, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1029, i32 2}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1034, i32 3}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1048, i32 3}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1056, i32 3}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1068, i32 4}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 701, i32 48}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 703, i32 3}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 709, i32 3}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 713, i32 35}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 715, i32 3}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 719, i32 31}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 721, i32 3}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 725, i32 36}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 727, i32 3}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 731, i32 34}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 733, i32 3}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 739, i32 3}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 743, i32 45}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 745, i32 3}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 749, i32 45}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 751, i32 3}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 755, i32 44}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 757, i32 3}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 934, i32 3}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 939, i32 3}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 942, i32 4}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 948, i32 3}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 957, i32 3}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 961, i32 4}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 971, i32 5}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 880, i32 2}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 889, i32 35}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 895, i32 4}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 905, i32 2}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 500, i32 3}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 514, i32 3}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 93, i32 3}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 99, i32 3}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 105, i32 3}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 118, i32 3}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 343, i32 3}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 357, i32 3}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 392, i32 4}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 402, i32 3}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 409, i32 4}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 416, i32 3}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 423, i32 3}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 433, i32 3}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 70, i32 3}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 76, i32 3}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 374, i32 3}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 202, i32 3}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 224, i32 2}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 581, i32 3}
!134 = !{ptr @cdn_dp_encoder_helper_funcs, !135, !"cdn_dp_encoder_helper_funcs", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 688, i32 46}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 657, i32 4}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 475, i32 3}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 596, i32 3}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 600, i32 2}
!144 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 615, i32 3}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 622, i32 4}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 629, i32 3}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 641, i32 3}
!154 = !{ptr @cdn_dp_atomic_connector_funcs, !155, !"cdn_dp_atomic_connector_funcs", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 248, i32 41}
!156 = !{ptr @cdn_dp_connector_helper_funcs, !157, !"cdn_dp_connector_helper_funcs", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 329, i32 42}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 266, i32 3}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 320, i32 3}
!162 = !{ptr @cdn_dp_dt_ids, !163, !"cdn_dp_dt_ids", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 55, i32 34}
!164 = !{ptr @cdn_dp_pm_ops, !165, !"cdn_dp_pm_ops", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-core.c", i32 1209, i32 32}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{i8 0, i8 2}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{!"auto-init"}
