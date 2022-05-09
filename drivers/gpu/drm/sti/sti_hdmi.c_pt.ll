; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.hdmi_phy_ops = type { ptr, ptr }
%struct.sti_hdmi = type { %struct.device, ptr, %struct.drm_display_mode, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, %struct.wait_queue_head, i8, ptr, ptr, i32, i8, ptr, %struct.hdmi_audio_params, ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hdmi_audio_params = type { i8, i32, i32, %struct.hdmi_audio_infoframe }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.cec_connector_info = type { i32, %union.anon.89 }
%union.anon.89 = type { [16 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.sti_hdmi_connector = type { %struct.drm_connector, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hdmi_vendor_infoframe = type { i32, i8, i8, i32, i8, i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.90 }
%union.anon.90 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sti-hdmi\00", [23 x i8] zeroinitializer }, align 32
@hdmi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tx3g4c28phy_ops }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sti_hdmi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sti_hdmi_probe, ptr @sti_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hdmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author317 = internal constant [60 x i8] c"sti_drm.author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description318 = internal constant [54 x i8] c"sti_drm.description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [41 x i8] c"sti_drm.file=drivers/gpu/drm/sti/sti-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [20 x i8] c"sti_drm.license=GPL\00", section ".modinfo", align 1
@sti_hdmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016[drm] %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sti_hdmi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/sti/sti_hdmi.c\00", [33 x i8] zeroinitializer }, align 32
@sti_hdmi_probe._entry_ptr = internal global ptr @sti_hdmi_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddc\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi-reg\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid hdmi resource\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pix\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot get hdmi_pix clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tmds\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot get hdmi_tmds clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot get hdmi_phy clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot get hdmi_audio clock\0A\00", [35 x i8] zeroinitializer }, align 32
@sti_hdmi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&hdmi->wait_event\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot get HDMI irq\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register HDMI interrupt\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@sti_hdmi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sti_hdmi_bind, ptr @sti_hdmi_unbind }, [24 x i8] zeroinitializer }, align 32
@hdmi_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016[drm] Warning: audio FIFO underrun occurs!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdmi_irq_thread\00", [16 x i8] zeroinitializer }, align 32
@hdmi_irq_thread._entry_ptr = internal global ptr @hdmi_irq_thread._entry, section ".printk_index", align 4
@sti_hdmi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @sti_hdmi_disable, ptr @sti_hdmi_bridge_nope, ptr @sti_hdmi_set_mode, ptr @sti_hdmi_pre_enable, ptr @sti_hdmi_bridge_nope, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sti_hdmi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @sti_hdmi_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @sti_hdmi_late_register, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr @sti_hdmi_connector_set_property, ptr @sti_hdmi_connector_get_property, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sti_hdmi_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @sti_hdmi_connector_get_modes, ptr null, ptr @sti_hdmi_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to attach a connector to a encoder\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to attach an audio codec\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to init audio infoframe\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot set rate (%dHz) for hdmi_pix clk\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Cannot set rate (%dHz) for hdmi_rejection_pll clk\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to prepare/enable hdmi_pix clk\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to prepare/enable hdmi_tmds clk\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to prepare/enable hdmi_rejec_pll clk\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to start hdmi phy\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to configure AVI infoframe\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to configure audio\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to configure VS infoframe\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"H Sync Negative\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"V Sync Negative\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup AVI infoframe: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to pack AVI infoframe: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unsupported infoframe type: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Audio rate = %d Hz, TMDS clock = %d Hz, n = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ERROR: Unsupported number of channels (%d)!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enter %s, AIF %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.hdmi_audio_infoframe_config = private unnamed_addr constant [28 x i8] c"hdmi_audio_infoframe_config\00", align 1
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to pack audio infoframe: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to pack VS infoframe: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@hdmi_swreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016[drm] Failed to prepare/enable hdmi_audio clk\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdmi_swreset\00", [19 x i8] zeroinitializer }, align 32
@hdmi_swreset._entry_ptr = internal global ptr @hdmi_swreset._entry, section ".printk_index", align 4
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Warning: HDMI sw reset timeout occurs\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hdmi cable connected\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hdmi cable disconnected\0A\00", [39 x i8] zeroinitializer }, align 32
@hdmi_debugfs_files = internal global { [1 x %struct.drm_info_list], [16 x i8] } { [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.19, ptr @hdmi_dbg_show, i32 0, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI: (vaddr = 0x%p)\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s  %-25s 0x%08X\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HDMI_CFG\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_INT_EN\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HDMI_STA\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_ACTIVE_VID_XMIN\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%-24s %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Xmin:\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_ACTIVE_VID_XMAX\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Xmax:\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_ACTIVE_VID_YMIN\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Ymin:\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_ACTIVE_VID_YMAX\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Ymax:\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMI_SW_DI_CFG\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMI_AUDIO_CFG\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_SPDIF_FIFO_STATUS\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDMI_AUDN\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\0A AVI Infoframe (Data Island slot N=%d):\00", [55 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_HEAD_WORD(1)\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD0(1)\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD1(1)\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD2(1)\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD3(1)\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD4(1)\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD5(1)\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD6(1)\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\0A\0A AUDIO Infoframe (Data Island slot N=%d):\00", [52 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_HEAD_WORD(2)\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD0(2)\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD1(2)\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD2(2)\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD3(2)\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD4(2)\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD5(2)\00", [38 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD6(2)\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\0A\0A VENDOR SPECIFIC Infoframe (Data Island slot N=%d):\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_HEAD_WORD(3)\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD0(3)\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD1(3)\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD2(3)\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD3(3)\00", [38 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD4(3)\00", [38 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD5(3)\00", [38 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_SW_DI_N_PKT_WORD6(3)\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%-24s %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mode:\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DVI\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\09\09\09\09\09\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HDCP:\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDCP mode:\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ESS enable\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OESS enable\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Hsync polarity:\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inverted\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vsync polarity:\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"YUV422 format:\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll:\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"locked\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"not locked\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hdmi cable:\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connected\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"not connected\00", [18 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no transmission\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"single transmission\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"once every field\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"once every frame\00", [47 x i8] zeroinitializer }, align 32
@__const.hdmi_dbg_sw_di_cfg.en_di = private unnamed_addr constant [4 x ptr] [ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122], align 4
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Data island 1:\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Data island 2:\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Data island 3:\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Data island 4:\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Data island 5:\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Data island 6:\00", [17 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to set hdmi connector property\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get hdmi connector property\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s : %dx%d cm\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdmi monitor\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dvi monitor\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't read HDMI EDID\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"target rate = %d => available rate = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hdmi pixclk=%d not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"colorspace\00", [21 x i8] zeroinitializer }, align 32
@colorspace_mode_names = internal constant { [3 x %struct.drm_prop_enum_list], [40 x i8] } { [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.139 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.140 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.141 }], [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fails to create colorspace property\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rgb\00", [28 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"yuv422\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"yuv444\00", [25 x i8] zeroinitializer }, align 32
@audio_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr null, ptr @hdmi_audio_hw_params, ptr null, ptr @hdmi_audio_shutdown, ptr @hdmi_audio_mute, ptr @hdmi_audio_get_eld, ptr null, ptr null, i8 -128 }, [60 x i8] zeroinitializer }, align 32
@__const.sti_hdmi_register_audio_driver.codec_data = private unnamed_addr constant { ptr, i8, [3 x i8], i32, ptr } { ptr @audio_codec_ops, i8 -128, [3 x i8] zeroinitializer, i32 8, ptr null }, align 4
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@sti_hdmi_register_audio_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.3, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016[drm] %s Driver bound %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sti_hdmi_register_audio_driver\00", [33 x i8] zeroinitializer }, align 32
@sti_hdmi_register_audio_driver._entry_ptr = internal global ptr @sti_hdmi_register_audio_driver._entry, section ".printk_index", align 4
@hdmi_audio_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.3, i32 1183, ptr @.str.147, ptr @.str.148 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Bad flags %d %d %d %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdmi_audio_hw_params\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hdmi_audio_hw_params._entry_ptr = internal global ptr @hdmi_audio_hw_params._entry, section ".printk_index", align 4
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@tx3g4c28phy_ops = external dso_local global %struct.hdmi_phy_ops, align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.150 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.151 = internal global [5 x i64] [i64 3, i64 8, i64 129, i64 130, i64 132]
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1486, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant [14 x i8] c"hdmi_of_match\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1359, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"sti_hdmi_driver\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1484, i32 24 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1378, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1384, i32 44 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1395, i32 59 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1397, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1411, i32 36 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1413, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1418, i32 37 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1420, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1425, i32 36 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1427, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1432, i32 38 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1434, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1441, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1443, i32 44 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1445, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1453, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1457, i32 44 }
@___asan_gen_.224 = private unnamed_addr constant [13 x i8] c"sti_hdmi_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1354, i32 35 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 213, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [22 x i8] c"sti_hdmi_bridge_funcs\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 965, i32 38 }
@___asan_gen_.239 = private unnamed_addr constant [25 x i8] c"sti_hdmi_connector_funcs\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1127, i32 41 }
@___asan_gen_.242 = private unnamed_addr constant [32 x i8] c"sti_hdmi_connector_helper_funcs\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1032, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1311, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1317, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1324, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 757, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 948, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 954, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 891, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 893, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 895, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 901, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 916, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 920, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 927, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 282, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 288, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 449, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 460, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 391, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 848, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 870, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 486, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 493, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 543, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 568, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 588, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1048, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1052, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [19 x i8] c"hdmi_debugfs_files\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 732, i32 29 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 673, i32 16 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 674, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 676, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 677, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 679, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 681, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 682, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 684, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 685, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 687, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 688, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 690, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 691, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 694, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 695, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 696, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 698, i32 16 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 700, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 701, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 702, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 703, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 704, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 705, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 706, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 707, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 708, i32 16 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 710, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 711, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 712, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 713, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 714, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 715, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 716, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 717, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 718, i32 16 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 720, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 721, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 722, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 723, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 724, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 725, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 726, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 727, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 610, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 611, i32 14 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 613, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 616, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 619, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 622, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 625, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 634, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 637, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 643, i32 25 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 644, i32 11 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 645, i32 11 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 646, i32 11 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 650, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 653, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 656, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 659, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 662, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 665, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1093, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1112, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 988, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1000, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1020, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1024, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1067, i32 46 }
@___asan_gen_.596 = private unnamed_addr constant [22 x i8] c"colorspace_mode_names\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 170, i32 40 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1071, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 171, i32 25 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 172, i32 28 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 173, i32 28 }
@___asan_gen_.611 = private unnamed_addr constant [16 x i8] c"audio_codec_ops\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1226, i32 36 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1248, i32 8 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1254, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1180, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.642 = private constant [34 x i8] c"../drivers/gpu/drm/sti/sti_hdmi.c\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1205, i32 2 }
@llvm.compiler.used = appending global [173 x ptr] [ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description318, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @hdmi_audio_hw_params._entry, ptr @hdmi_audio_hw_params._entry_ptr, ptr @hdmi_irq_thread._entry, ptr @hdmi_irq_thread._entry_ptr, ptr @hdmi_swreset._entry, ptr @hdmi_swreset._entry_ptr, ptr @sti_hdmi_probe._entry, ptr @sti_hdmi_probe._entry_ptr, ptr @sti_hdmi_register_audio_driver._entry, ptr @sti_hdmi_register_audio_driver._entry_ptr, ptr @.str, ptr @hdmi_of_match, ptr @sti_hdmi_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sti_hdmi_probe.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @sti_hdmi_ops, ptr @.str.20, ptr @.str.21, ptr @sti_hdmi_bridge_funcs, ptr @sti_hdmi_connector_funcs, ptr @sti_hdmi_connector_helper_funcs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @hdmi_debugfs_files, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @colorspace_mode_names, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @audio_codec_ops, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], section "llvm.metadata"
@0 = internal global [164 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hdmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hdmi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hdmi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hdmi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hdmi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hdmi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_swreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_debugfs_files to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @colorspace_mode_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hdmi_register_audio_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_audio_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi_read(ptr nocapture noundef readonly %hdmi, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !320
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_write(ptr nocapture noundef readonly %hdmi, i32 noundef %val, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %regs = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 3
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !323
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hdmi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1208, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i140 = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool.not.i = icmp eq i32 %call.i140, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %if.end13

of_parse_phandle.exit:                            ; preds = %if.end
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %of_parse_phandle.exit.if.end13_crit_edge, label %if.then7

of_parse_phandle.exit.if.end13_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7:                                         ; preds = %of_parse_phandle.exit
  %call8 = call ptr @of_get_i2c_adapter_by_node(ptr noundef nonnull %6) #6
  %ddc_adapt = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 17
  %7 = ptrtoint ptr %ddc_adapt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %ddc_adapt, align 8
  call void @of_node_put(ptr noundef nonnull %6) #6
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then7.cleanup_crit_edge, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %of_parse_phandle.exit.if.end13_crit_edge, %of_parse_phandle.exit.thread
  %8 = call ptr @memcpy(ptr %call.i, ptr %dev1, i32 928)
  %call16 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.5) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #6
  br label %release_adapter

if.end19:                                         ; preds = %if.end13
  %9 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call16, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call16, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %call21 = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %10, i32 noundef %add.i) #6
  %regs = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %regs, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end19.release_adapter_crit_edge, label %if.end25

if.end19.release_adapter_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_adapter

if.end25:                                         ; preds = %if.end19
  %call26 = call ptr @of_match_node(ptr noundef nonnull @hdmi_of_match, ptr noundef %1) #6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call26, i32 0, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %phy_ops = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 11
  %16 = ptrtoint ptr %phy_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %phy_ops, align 4
  %call27 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %clk_pix = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %clk_pix to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call27, ptr %clk_pix, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #6
  %18 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_pix, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %release_adapter

if.end33:                                         ; preds = %if.end25
  %call34 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #6
  %clk_tmds = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %clk_tmds to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call34, ptr %clk_tmds, align 8
  %cmp.i141 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #6
  %22 = ptrtoint ptr %clk_tmds to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_tmds, align 8
  %24 = ptrtoint ptr %23 to i32
  br label %release_adapter

if.end40:                                         ; preds = %if.end33
  %call41 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #6
  %clk_phy = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %clk_phy to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call41, ptr %clk_phy, align 4
  %cmp.i142 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #6
  %26 = ptrtoint ptr %clk_phy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_phy, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %release_adapter

if.end47:                                         ; preds = %if.end40
  %call48 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #6
  %clk_audio = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %clk_audio to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call48, ptr %clk_audio, align 8
  %cmp.i143 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #6
  %30 = ptrtoint ptr %clk_audio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_audio, align 8
  %32 = ptrtoint ptr %31 to i32
  br label %release_adapter

if.end54:                                         ; preds = %if.end47
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 16
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !324
  %hpd = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 13
  %36 = lshr i32 %35, 28
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = ptrtoint ptr %hpd to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %hpd, align 1
  %wait_event = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 14
  call void @__init_waitqueue_head(ptr noundef %wait_event, ptr noundef nonnull @.str.15, ptr noundef nonnull @sti_hdmi_probe.__key) #6
  %call63 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.16) #6
  %irq = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 9
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call63, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp = icmp slt i32 %call63, 0
  br i1 %cmp, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  br label %release_adapter

if.end67:                                         ; preds = %if.end54
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i144 = icmp eq ptr %44, null
  br i1 %tobool.not.i144, label %if.end.i145, label %if.end67.dev_name.exit_crit_edge

if.end67.dev_name.exit_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i145:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i145, %if.end67.dev_name.exit_crit_edge
  %retval.0.i146 = phi ptr [ %46, %if.end.i145 ], [ %44, %if.end67.dev_name.exit_crit_edge ]
  %call70 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call63, ptr noundef nonnull @hdmi_irq, ptr noundef nonnull @hdmi_irq_thread, i32 noundef 8192, ptr noundef %retval.0.i146, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.then72

if.then72:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #6
  br label %release_adapter

if.end73:                                         ; preds = %dev_name.exit
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %reset = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 16
  %47 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i147 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.end73.if.end80_crit_edge, label %if.then77

if.end73.if.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %call79 = call i32 @reset_control_deassert(ptr noundef %call.i.i) #6
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end73.if.end80_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call82 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @sti_hdmi_ops) #6
  br label %cleanup

release_adapter:                                  ; preds = %if.then72, %if.then65, %if.then51, %if.then44, %if.then37, %if.then30, %if.end19.release_adapter_crit_edge, %if.then18
  %ret.0 = phi i32 [ %20, %if.then30 ], [ %24, %if.then37 ], [ %28, %if.then44 ], [ %32, %if.then51 ], [ %42, %if.then65 ], [ %call70, %if.then72 ], [ -12, %if.then18 ], [ -12, %if.end19.release_adapter_crit_edge ]
  %ddc_adapt83 = getelementptr inbounds %struct.sti_hdmi, ptr %call.i, i32 0, i32 17
  %49 = ptrtoint ptr %ddc_adapt83 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ddc_adapt83, align 8
  call void @i2c_put_adapter(ptr noundef %50) #6
  br label %cleanup

cleanup:                                          ; preds = %release_adapter, %if.end80, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %release_adapter ], [ %call82, %if.end80 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hdmi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ddc_adapt = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ddc_adapt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc_adapt, align 8
  tail call void @i2c_put_adapter(ptr noundef %3) #6
  %audio_pdev = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %audio_pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %audio_pdev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_device_unregister(ptr noundef nonnull %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sti_hdmi_ops) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_irq(i32 noundef %irq, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.sti_hdmi, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !320
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %irq_status = getelementptr inbounds %struct.sti_hdmi, ptr %arg, i32 0, i32 10
  %4 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irq_status, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %2) #6, !srcloc !323
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #6, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_irq_thread(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_status = getelementptr inbounds %struct.sti_hdmi, ptr %arg, i32 0, i32 10
  %0 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_status, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %regs = getelementptr inbounds %struct.sti_hdmi, ptr %arg, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !325
  %hpd = getelementptr inbounds %struct.sti_hdmi, ptr %arg, i32 0, i32 13
  %5 = lshr i32 %4, 28
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  %8 = ptrtoint ptr %hpd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %hpd, align 1
  %drm_dev = getelementptr inbounds %struct.sti_hdmi, ptr %arg, i32 0, i32 1
  %9 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm_dev, align 8
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.then.if.end8_crit_edge, label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %10) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %11 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_status, align 8
  %and10 = and i32 %12, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end13_crit_edge, label %if.then12

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %event_received = getelementptr inbounds %struct.sti_hdmi, ptr %arg, i32 0, i32 15
  %13 = ptrtoint ptr %event_received to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %event_received, align 8
  %wait_event = getelementptr inbounds %struct.sti_hdmi, ptr %arg, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wait_event, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge
  %14 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_status, align 8
  %and15 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end20_crit_edge, label %do.end

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end13.if.end20_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hdmi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  %codec_data.i = alloca %struct.hdmi_codec_pdata, align 4
  %conn_info = alloca %struct.cec_connector_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %conn_info) #6
  %2 = call ptr @memset(ptr %conn_info, i32 255, i32 68)
  %drm_dev1 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %drm_dev1, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %encoder_type.i = getelementptr i8, ptr %.pn.i, i32 32
  %5 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %encoder_type.i, align 4
  %cmp3.i = icmp eq i32 %6, 2
  br i1 %cmp3.i, label %sti_hdmi_find_encoder.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

sti_hdmi_find_encoder.exit:                       ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %sti_hdmi_find_encoder.exit.cleanup_crit_edge, label %if.end

sti_hdmi_find_encoder.exit.cleanup_crit_edge:     ; preds = %sti_hdmi_find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sti_hdmi_find_encoder.exit
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1056, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %hdmi7 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %hdmi7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %hdmi7, align 4
  %call.i78 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 280, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i78, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %call.i78, i32 0, i32 8
  %8 = ptrtoint ptr %driver_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %driver_private, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i78, i32 0, i32 7
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sti_hdmi_bridge_funcs, ptr %funcs, align 4
  %call12 = tail call i32 @drm_bridge_attach(ptr noundef nonnull %encoder.0.le.i, ptr noundef nonnull %call.i78, ptr noundef null, i32 noundef 0) #6
  %encoder13 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %encoder13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %encoder.0.le.i, ptr %encoder13, align 8
  %polled = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 33
  %11 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %polled, align 4
  %ddc_adapt = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %ddc_adapt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddc_adapt, align 8
  %call14 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %data, ptr noundef nonnull %call.i, ptr noundef nonnull @sti_hdmi_connector_funcs, i32 noundef 11, ptr noundef %13) #6
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 35
  %14 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @sti_hdmi_connector_helper_funcs, ptr %helper_private.i, align 4
  %15 = ptrtoint ptr %hdmi7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdmi7, align 4
  %colorspace.i = getelementptr inbounds %struct.sti_hdmi, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %colorspace.i, align 4
  %call.i79 = tail call ptr @drm_property_create_enum(ptr noundef %data, i32 noundef 0, ptr noundef nonnull @.str.137, ptr noundef nonnull @colorspace_mode_names, i32 noundef 3) #6
  %tobool.not.i = icmp eq ptr %call.i79, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.138) #6
  br label %sti_hdmi_connector_init_property.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %colorspace_property.i = getelementptr inbounds %struct.sti_hdmi_connector, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %colorspace_property.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i79, ptr %colorspace_property.i, align 8
  %base.i = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %colorspace.i, align 4
  %conv.i = zext i32 %20 to i64
  tail call void @drm_object_attach_property(ptr noundef %base.i, ptr noundef nonnull %call.i79, i64 noundef %conv.i) #6
  br label %sti_hdmi_connector_init_property.exit

sti_hdmi_connector_init_property.exit:            ; preds = %if.end.i, %if.then.i
  %drm_connector15 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 22
  %21 = ptrtoint ptr %drm_connector15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %drm_connector15, align 8
  %call16 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call.i, ptr noundef nonnull %encoder.0.le.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %sti_hdmi_connector_init_property.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #6
  br label %err_sysfs

if.end19:                                         ; preds = %sti_hdmi_connector_init_property.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %codec_data.i) #6
  %22 = call ptr @memcpy(ptr %codec_data.i, ptr @__const.sti_hdmi_register_audio_driver.codec_data, i32 16)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %audio.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 21
  %23 = ptrtoint ptr %audio.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %audio.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #6
  %24 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %25 = call ptr @memset(ptr %24, i32 255, i32 48)
  %26 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %24, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.142, ptr %name2.i.i.i, align 4
  %id3.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -2, ptr %id3.i.i.i, align 8
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %res4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %res4.i.i.i, align 4
  %num_res.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %num_res.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %num_res.i.i.i, align 8
  %data5.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %codec_data.i, ptr %data5.i.i.i, align 4
  %size_data.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %size_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %size_data.i.i.i, align 8
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %properties.i.i.i, align 8
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #6
  %audio_pdev.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 20
  %37 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i.i, ptr %audio_pdev.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sti_hdmi_register_audio_driver.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end19
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %38 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.sti_hdmi_register_audio_driver.exit.thread_crit_edge

do.end.i.sti_hdmi_register_audio_driver.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_hdmi_register_audio_driver.exit.thread

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  br label %sti_hdmi_register_audio_driver.exit.thread

sti_hdmi_register_audio_driver.exit.thread:       ; preds = %if.end.i.i, %do.end.i.sti_hdmi_register_audio_driver.exit.thread_crit_edge
  %retval.0.i.i = phi ptr [ %41, %if.end.i.i ], [ %39, %do.end.i.sti_hdmi_register_audio_driver.exit.thread_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.142, ptr noundef %retval.0.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data.i) #6
  %cea = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 21, i32 3
  %call24 = call i32 @hdmi_audio_infoframe_init(ptr noundef %cea) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

sti_hdmi_register_audio_driver.exit:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #6
  br label %err_sysfs

if.then26:                                        ; preds = %sti_hdmi_register_audio_driver.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24) #6
  br label %err_sysfs

if.end27:                                         ; preds = %sti_hdmi_register_audio_driver.exit.thread
  call void @cec_fill_conn_info_from_drm(ptr noundef nonnull %conn_info, ptr noundef nonnull %call.i) #6
  %call29 = call ptr @cec_notifier_conn_register(ptr noundef %1, ptr noundef null, ptr noundef nonnull %conn_info) #6
  %notifier = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 23
  %42 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call29, ptr %notifier, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %drm_connector15 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %drm_connector15, align 8
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 822607872) #6, !srcloc !323
  br label %cleanup

err_sysfs:                                        ; preds = %if.then26, %sti_hdmi_register_audio_driver.exit, %if.then18
  %46 = ptrtoint ptr %drm_connector15 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %drm_connector15, align 8
  br label %cleanup

cleanup:                                          ; preds = %err_sysfs, %if.end34, %if.then32, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sti_hdmi_find_encoder.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %err_sysfs ], [ 0, %if.end34 ], [ -12, %if.then32 ], [ -22, %sti_hdmi_find_encoder.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %conn_info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_hdmi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %notifier = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notifier, align 4
  tail call void @cec_notifier_conn_unregister(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_fill_conn_info_from_drm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_conn_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_hdmi_disable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  %regs.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %enabled = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 8, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %7 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !323
  %phy_ops = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_ops, align 4
  %stop = getelementptr inbounds %struct.hdmi_phy_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop, align 4
  tail call void %15(ptr noundef %1) #6
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 560
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %19 = and i32 %18, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %21, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %19) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %23, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 0) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %25, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 0) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20.1.i = getelementptr i8, ptr %27, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.1.i, i32 0) #6, !srcloc !323
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %29, i32 560
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #6, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %31 = and i32 %30, -805306369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16.i25 = getelementptr i8, ptr %33, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i25, i32 %31) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18.i26 = getelementptr i8, ptr %35, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i26, i32 0) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20.i27 = getelementptr i8, ptr %37, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i27, i32 0) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20.1.i28 = getelementptr i8, ptr %39, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.1.i28, i32 0) #6, !srcloc !323
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %41, i32 560
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #6, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %43 = and i32 %42, -196609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16.i32 = getelementptr i8, ptr %45, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i32, i32 %43) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18.i33 = getelementptr i8, ptr %47, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i33, i32 0) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20.i34 = getelementptr i8, ptr %49, i32 1572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i34, i32 0) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20.1.i35 = getelementptr i8, ptr %51, i32 1576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.1.i35, i32 0) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %53, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 0) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %55, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 0) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %57, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 1610612736) #6, !srcloc !323
  %clk_phy = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 7
  %58 = ptrtoint ptr %clk_phy to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk_phy, align 4
  tail call void @clk_disable(ptr noundef %59) #6
  tail call void @clk_unprepare(ptr noundef %59) #6
  %clk_tmds = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 6
  %60 = ptrtoint ptr %clk_tmds to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk_tmds, align 8
  tail call void @clk_disable(ptr noundef %61) #6
  tail call void @clk_unprepare(ptr noundef %61) #6
  %clk_pix = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk_pix, align 4
  tail call void @clk_disable(ptr noundef %63) #6
  tail call void @clk_unprepare(ptr noundef %63) #6
  %64 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %enabled, align 8
  %notifier = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 23
  %65 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %notifier, align 4
  tail call void @cec_notifier_set_phys_addr(ptr noundef %66, i16 noundef zeroext -1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sti_hdmi_bridge_nope(ptr nocapture noundef %bridge) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_hdmi_set_mode(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %mode1 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %mode1, ptr %mode, i32 112)
  %clk_pix = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_pix, align 4
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %mul = mul i32 %6, 1000
  %call = tail call i32 @clk_set_rate(ptr noundef %4, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %clk_phy = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %clk_phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_phy, align 4
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %mul5 = mul i32 %10, 1000
  %call6 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef %mul5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.28.sink = phi ptr [ @.str.27, %entry.cleanup.sink.split_crit_edge ], [ @.str.28, %if.end.cleanup.sink.split_crit_edge ]
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  %mul10 = mul i32 %12, 1000
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.28.sink, i32 noundef %mul10) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_hdmi_pre_enable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %infoframe.i73 = alloca %struct.hdmi_vendor_infoframe, align 4
  %buffer.i74 = alloca [10 x i8], align 1
  %infoframe.i = alloca %struct.hdmi_avi_infoframe, align 4
  %buffer.i = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %enabled = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 8, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_pix = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_pix, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end3_crit_edge, label %if.then3.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %if.then2

if.then2:                                         ; preds = %if.then3.i, %if.end.if.then2_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.i.if.end3_crit_edge
  %clk_tmds = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %clk_tmds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_tmds, align 8
  %call.i48 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %if.end.i52, label %if.end3.if.then6_crit_edge

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end.i52:                                       ; preds = %if.end3
  %call1.i50 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool2.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool2.not.i51, label %if.end.i52.if.end7_crit_edge, label %if.then3.i53

if.end.i52.if.end7_crit_edge:                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then3.i53:                                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %if.then6

if.then6:                                         ; preds = %if.then3.i53, %if.end3.if.then6_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.i52.if.end7_crit_edge
  %clk_phy = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %clk_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_phy, align 4
  %call.i56 = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %if.end.i60, label %if.end7.if.then10_crit_edge

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.end.i60:                                       ; preds = %if.end7
  %call1.i58 = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool2.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool2.not.i59, label %if.end.i60.if.end11_crit_edge, label %if.then3.i61

if.end.i60.if.end11_crit_edge:                    ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then3.i61:                                     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %if.then10

if.then10:                                        ; preds = %if.then3.i61, %if.end7.if.then10_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.i60.if.end11_crit_edge
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %enabled, align 8
  %phy_ops = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_ops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call13 = tail call zeroext i1 %14(ptr noundef %1) #6
  br i1 %call13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %mode.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 112)
  %call.i64 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode.i, i32 noundef 1) #6
  %hdisplay.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hdisplay.i, align 4
  %conv.i = zext i16 %17 to i32
  %call3.i = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode.i, i32 noundef %conv.i) #6
  %call5.i = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode.i, i32 noundef 0) #6
  %vdisplay.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vdisplay.i, align 2
  %conv8.i = zext i16 %19 to i32
  %sub.i = add nsw i32 %conv8.i, -1
  %call9.i = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode.i, i32 noundef %sub.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %call.i64) #6
  %regs.i.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %call3.i) #6
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %25, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %23) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %call5.i) #6
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %28, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %26) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %call9.i) #6
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %31, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %29) #6, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -83296256) #6, !srcloc !323
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %hdmi_monitor.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 19
  %34 = ptrtoint ptr %hdmi_monitor.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hdmi_monitor.i, align 8, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i65 = icmp eq i8 %35, 0
  %spec.select.i = select i1 %tobool.not.i65, i32 12296, i32 12298
  %flags.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 2, i32 11
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i66 = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i66, label %if.end15.if.end5.i_crit_edge, label %if.then3.i67

if.end15.if.end5.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then3.i67:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36) #6
  %or4.i = or i32 %spec.select.i, 16
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i67, %if.end15.if.end5.i_crit_edge
  %conf.1.i = phi i32 [ %or4.i, %if.then3.i67 ], [ %spec.select.i, %if.end15.if.end5.i_crit_edge ]
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and8.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end5.i.hdmi_config.exit_crit_edge, label %if.then10.i

if.end5.i.hdmi_config.exit_crit_edge:             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdmi_config.exit

if.then10.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.37) #6
  %or11.i = or i32 %conf.1.i, 64
  br label %hdmi_config.exit

hdmi_config.exit:                                 ; preds = %if.then10.i, %if.end5.i.hdmi_config.exit_crit_edge
  %conf.2.i = phi i32 [ %or11.i, %if.then10.i ], [ %conf.1.i, %if.end5.i.hdmi_config.exit_crit_edge ]
  %or13.i = or i32 %conf.2.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #6
  %41 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #6, !srcloc !323
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %infoframe.i) #6
  %43 = call ptr @memset(ptr %infoframe.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer.i) #6
  %44 = call ptr @memset(ptr %buffer.i, i32 255, i32 17)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %drm_connector.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 22
  %45 = ptrtoint ptr %drm_connector.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %drm_connector.i, align 8
  %call.i69 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %infoframe.i, ptr noundef %46, ptr noundef %mode.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i = icmp slt i32 %call.i69, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i71

if.then.i:                                        ; preds = %hdmi_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %call.i69) #6
  br label %if.then18

if.end.i71:                                       ; preds = %hdmi_config.exit
  %colorspace.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 18
  %47 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %colorspace.i, align 4
  %colorspace2.i = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %infoframe.i, i32 0, i32 3
  %49 = ptrtoint ptr %colorspace2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %colorspace2.i, align 4
  %quantization_range.i = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %infoframe.i, i32 0, i32 10
  %50 = ptrtoint ptr %quantization_range.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %quantization_range.i, align 4
  %colorimetry.i = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %infoframe.i, i32 0, i32 5
  %51 = ptrtoint ptr %colorimetry.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %colorimetry.i, align 4
  %call3.i70 = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %infoframe.i, ptr noundef nonnull %buffer.i, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i70)
  %cmp4.i = icmp slt i32 %call3.i70, 0
  br i1 %cmp4.i, label %if.then5.i, label %hdmi_avi_infoframe_config.exit

if.then5.i:                                       ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %call3.i70) #6
  br label %if.then18

hdmi_avi_infoframe_config.exit:                   ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @hdmi_infoframe_write_infopack(ptr noundef %1, ptr noundef nonnull %buffer.i, i32 noundef %call3.i70) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %infoframe.i) #6
  br label %if.end19

if.then18:                                        ; preds = %if.then5.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %infoframe.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %hdmi_avi_infoframe_config.exit
  %audio = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 21
  %52 = ptrtoint ptr %audio to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %audio, align 8, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool21.not = icmp eq i8 %53, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  %call23 = call fastcc i32 @hdmi_audio_configure(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end28_crit_edge, label %if.then25

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #6
  br label %if.end28

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = call fastcc i32 @hdmi_audio_infoframe_config(ptr noundef %1)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then25, %if.then22.if.end28_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %infoframe.i73) #6
  %54 = call ptr @memset(ptr %infoframe.i73, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buffer.i74) #6
  %55 = call ptr @memset(ptr %buffer.i74, i32 255, i32 10)
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %56 = ptrtoint ptr %drm_connector.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %drm_connector.i, align 8
  %call.i77 = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef nonnull %infoframe.i73, ptr noundef %57, ptr noundef %mode.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp.i78 = icmp slt i32 %call.i77, 0
  br i1 %cmp.i78, label %if.end28.hdmi_vendor_infoframe_config.exit.thread_crit_edge, label %if.end.i79

if.end28.hdmi_vendor_infoframe_config.exit.thread_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdmi_vendor_infoframe_config.exit.thread

if.end.i79:                                       ; preds = %if.end28
  %call2.i = call i32 @hdmi_vendor_infoframe_pack(ptr noundef nonnull %infoframe.i73, ptr noundef nonnull %buffer.i74, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then31, label %if.end5.i80

if.end5.i80:                                      ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @hdmi_infoframe_write_infopack(ptr noundef %1, ptr noundef nonnull %buffer.i74, i32 noundef %call2.i) #6
  br label %hdmi_vendor_infoframe_config.exit.thread

hdmi_vendor_infoframe_config.exit.thread:         ; preds = %if.end5.i80, %if.end28.hdmi_vendor_infoframe_config.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buffer.i74) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %infoframe.i73) #6
  br label %if.end32

if.then31:                                        ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.47, i32 noundef %call2.i) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buffer.i74) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %infoframe.i73) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %hdmi_vendor_infoframe_config.exit.thread
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %clk_audio.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 8
  %58 = ptrtoint ptr %clk_audio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk_audio.i, align 8
  %call.i.i = call i32 @clk_prepare(ptr noundef %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end32.do.end.i_crit_edge

if.end32.do.end.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end32
  %call1.i.i = call i32 @clk_enable(ptr noundef %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i84_crit_edge, label %if.then3.i.i

if.end.i.i.if.end.i84_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i84

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %59) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end32.do.end.i_crit_edge
  %call1.i82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #9
  br label %if.end.i84

if.end.i84:                                       ; preds = %do.end.i, %if.end.i.i.if.end.i84_crit_edge
  %event_received.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 15
  %60 = ptrtoint ptr %event_received.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %event_received.i, align 8
  %61 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i, align 4
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #6, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %64 = or i32 %63, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #6, !srcloc !323
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 581) #6
  %67 = ptrtoint ptr %event_received.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %event_received.i, align 8, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool11.not.i = icmp eq i8 %68, 0
  br i1 %tobool11.not.i, label %if.then20.i, label %if.end.i84.if.end49.i_crit_edge

if.end.i84.if.end49.i_crit_edge:                  ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then20.i:                                      ; preds = %if.end.i84
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %69 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #6
  %wait_event.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 14
  %call2392.i = call i32 @prepare_to_wait_event(ptr noundef %wait_event.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %70 = ptrtoint ptr %event_received.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %event_received.i, align 8, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool26.not93.not.i = icmp eq i8 %71, 0
  br i1 %tobool26.not93.not.i, label %if.then20.i.if.end42.i_crit_edge, label %if.then20.i.for.end.i_crit_edge

if.then20.i.for.end.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then20.i.if.end42.i_crit_edge:                 ; preds = %if.then20.i
  br label %if.end42.i

if.end42.i:                                       ; preds = %cleanup.i.if.end42.i_crit_edge, %if.then20.i.if.end42.i_crit_edge
  %__ret21.196.i = phi i32 [ %__ret21.1.i, %cleanup.i.if.end42.i_crit_edge ], [ 10, %if.then20.i.if.end42.i_crit_edge ]
  %call2395.i = phi i32 [ %call23.i, %cleanup.i.if.end42.i_crit_edge ], [ %call2392.i, %if.then20.i.if.end42.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2395.i)
  %tobool43.not.i = icmp eq i32 %call2395.i, 0
  br i1 %tobool43.not.i, label %cleanup.i, label %if.end42.i.__out.i_crit_edge

if.end42.i.__out.i_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out.i

cleanup.i:                                        ; preds = %if.end42.i
  %call46.i = call i32 @schedule_timeout(i32 noundef %__ret21.196.i) #6
  %call23.i = call i32 @prepare_to_wait_event(ptr noundef %wait_event.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %72 = ptrtoint ptr %event_received.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %event_received.i, align 8, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool26.not.i = icmp eq i8 %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool30.not.i = icmp eq i32 %call46.i, 0
  %spec.store.select57.i = select i1 %tobool30.not.i, i32 1, i32 %call46.i
  %__ret21.1.i = select i1 %tobool26.not.i, i32 %call46.i, i32 %spec.store.select57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.1.i)
  %tobool36.not.i = icmp eq i32 %__ret21.1.i, 0
  %not.tobool26.not.i = xor i1 %tobool26.not.i, true
  %74 = select i1 %not.tobool26.not.i, i1 true, i1 %tobool36.not.i
  br i1 %74, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end42.i_crit_edge

cleanup.i.if.end42.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then20.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %wait_event.i, ptr noundef nonnull %__wq_entry.i) #6
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end42.i.__out.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br label %if.end49.i

if.end49.i:                                       ; preds = %__out.i, %if.end.i84.if.end49.i_crit_edge
  %75 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %76, i32 16
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85) #6, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %78 = and i32 %77, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i86 = icmp eq i32 %78, 0
  br i1 %cmp.i86, label %if.then52.i, label %if.end49.i.hdmi_swreset.exit_crit_edge

if.end49.i.hdmi_swreset.exit_crit_edge:           ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdmi_swreset.exit

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50) #6
  br label %hdmi_swreset.exit

hdmi_swreset.exit:                                ; preds = %if.then52.i, %if.end49.i.hdmi_swreset.exit_crit_edge
  %79 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i.i, align 4
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #6, !srcloc !320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %82 = and i32 %81, -129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #6, !srcloc !323
  %85 = ptrtoint ptr %clk_audio.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clk_audio.i, align 8
  call void @clk_disable(ptr noundef %86) #6
  call void @clk_unprepare(ptr noundef %86) #6
  br label %cleanup

cleanup:                                          ; preds = %hdmi_swreset.exit, %if.then14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_audio_configure(ptr noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %enabled = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 12
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sample_rate = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sample_rate, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default.i [
    i32 32000, label %if.end.sti_hdmi_audio_get_non_coherent_n.exit_crit_edge
    i32 44100, label %sw.bb1.i
    i32 48000, label %sw.bb2.i
    i32 88200, label %sw.bb3.i
    i32 96000, label %sw.bb4.i
    i32 176400, label %sw.bb5.i
    i32 192000, label %sw.bb6.i
  ]

if.end.sti_hdmi_audio_get_non_coherent_n.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_hdmi_audio_get_non_coherent_n.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_hdmi_audio_get_non_coherent_n.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_hdmi_audio_get_non_coherent_n.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_hdmi_audio_get_non_coherent_n.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_hdmi_audio_get_non_coherent_n.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_hdmi_audio_get_non_coherent_n.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_hdmi_audio_get_non_coherent_n.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %3, 7
  %div.i = udiv i32 %mul.i, 1000
  br label %sti_hdmi_audio_get_non_coherent_n.exit

sti_hdmi_audio_get_non_coherent_n.exit:           ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.sti_hdmi_audio_get_non_coherent_n.exit_crit_edge
  %n.0.i = phi i32 [ %div.i, %sw.default.i ], [ 24576, %sw.bb6.i ], [ 25088, %sw.bb5.i ], [ 12288, %sw.bb4.i ], [ 12544, %sw.bb3.i ], [ 6144, %sw.bb2.i ], [ 6272, %sw.bb1.i ], [ 4096, %if.end.sti_hdmi_audio_get_non_coherent_n.exit_crit_edge ]
  %mode = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 2
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %mul = mul i32 %6, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef %3, i32 noundef %mul, i32 noundef %n.0.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %n.0.i) #6
  %regs.i = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 3
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !323
  %channels = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 21, i32 3, i32 3
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channels, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %11, label %sw.default [
    i8 8, label %sw.bb
    i8 6, label %sti_hdmi_audio_get_non_coherent_n.exit.sw.bb2_crit_edge
    i8 4, label %sti_hdmi_audio_get_non_coherent_n.exit.sw.bb4_crit_edge
    i8 2, label %sti_hdmi_audio_get_non_coherent_n.exit.sw.bb6_crit_edge
  ]

sti_hdmi_audio_get_non_coherent_n.exit.sw.bb6_crit_edge: ; preds = %sti_hdmi_audio_get_non_coherent_n.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sti_hdmi_audio_get_non_coherent_n.exit.sw.bb4_crit_edge: ; preds = %sti_hdmi_audio_get_non_coherent_n.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

sti_hdmi_audio_get_non_coherent_n.exit.sw.bb2_crit_edge: ; preds = %sti_hdmi_audio_get_non_coherent_n.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb:                                            ; preds = %sti_hdmi_audio_get_non_coherent_n.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %sti_hdmi_audio_get_non_coherent_n.exit.sw.bb2_crit_edge
  %audio_cfg.0 = phi i32 [ 1883045891, %sti_hdmi_audio_get_non_coherent_n.exit.sw.bb2_crit_edge ], [ -264437757, %sw.bb ]
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb2, %sti_hdmi_audio_get_non_coherent_n.exit.sw.bb4_crit_edge
  %audio_cfg.1 = phi i32 [ 809304067, %sti_hdmi_audio_get_non_coherent_n.exit.sw.bb4_crit_edge ], [ %audio_cfg.0, %sw.bb2 ]
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb4, %sti_hdmi_audio_get_non_coherent_n.exit.sw.bb6_crit_edge
  %audio_cfg.2 = phi i32 [ 272433154, %sti_hdmi_audio_get_non_coherent_n.exit.sw.bb6_crit_edge ], [ %audio_cfg.1, %sw.bb4 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %audio_cfg.2) #6
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %15, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %13) #6, !srcloc !323
  %call10 = tail call fastcc i32 @hdmi_audio_infoframe_config(ptr noundef %hdmi)
  br label %cleanup

sw.default:                                       ; preds = %sti_hdmi_audio_get_non_coherent_n.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %11 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call10, %sw.bb6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_audio_infoframe_config(ptr noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %audio1 = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buffer) #6
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 14)
  %1 = ptrtoint ptr %audio1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %audio1, align 4, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %cond = select i1 %tobool.not, ptr @.str.45, ptr @.str.44
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.hdmi_audio_infoframe_config, ptr noundef nonnull %cond) #6
  %3 = ptrtoint ptr %audio1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %audio1, align 4, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cea = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 21, i32 3
  %call = call i32 @hdmi_audio_infoframe_pack(ptr noundef %cea, ptr noundef nonnull %buffer, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @hdmi_infoframe_write_infopack(ptr noundef %hdmi, ptr noundef nonnull %buffer, i32 noundef %call)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 3
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 560
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %8 = and i32 %7, -805306369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %10, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %8) #6, !srcloc !323
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %if.then4
  %retval.0 = phi i32 [ %call, %if.then4 ], [ 0, %if.else ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_infoframe_write_infopack(ptr nocapture noundef readonly %hdmi, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %1, label %sw.default [
    i8 -126, label %entry.sw.epilog_crit_edge
    i8 -124, label %sw.bb1
    i8 -127, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %1 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40, i32 noundef %conv) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %slot.0 = phi i32 [ 8, %sw.bb2 ], [ 4, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %mode.0 = phi i32 [ 3, %sw.bb2 ], [ 3, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ]
  %head_offset.0 = phi i32 [ 1568, %sw.bb2 ], [ 1536, %sw.bb1 ], [ 528, %entry.sw.epilog_crit_edge ]
  %pack_offset.0 = phi i32 [ 1572, %sw.bb2 ], [ 1540, %sw.bb1 ], [ 532, %entry.sw.epilog_crit_edge ]
  %regs.i = getelementptr inbounds %struct.sti_hdmi, ptr %hdmi, i32 0, i32 3
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 560
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !320
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %shl = shl nuw nsw i32 3, %slot.0
  %neg = xor i32 %shl, -1
  %and = and i32 %6, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %9, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %7) #6, !srcloc !323
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %conv4 = zext i8 %11 to i32
  %incdec.ptr7 = getelementptr i8, ptr %data, i32 2
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr, align 1
  %conv8 = zext i8 %13 to i32
  %shl10 = shl nuw nsw i32 %conv8, 8
  %or = or i32 %shl10, %conv4
  %14 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr7, align 1
  %16 = and i8 %15, 15
  %and13 = zext i8 %16 to i32
  %shl14 = shl nuw nsw i32 %and13, 16
  %or15 = or i32 %shl14, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !327
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %head_offset.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #6, !srcloc !323
  %add = add i32 %size, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp73.not = icmp eq i32 %add, 0
  br i1 %cmp73.not, label %sw.epilog.for.end_crit_edge, label %for.body.preheader

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %sw.epilog
  %incdec.ptr11 = getelementptr i8, ptr %data, i32 3
  br label %for.body

for.body:                                         ; preds = %hdmi_infoframe_subpack.exit.for.body_crit_edge, %for.body.preheader
  %i.076 = phi i32 [ %add29, %hdmi_infoframe_subpack.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ptr.074 = phi ptr [ %add.ptr22, %hdmi_infoframe_subpack.exit.for.body_crit_edge ], [ %incdec.ptr11, %for.body.preheader ]
  %sub18 = sub i32 %add, %i.076
  %20 = tail call i32 @llvm.umin.i32(i32 %sub18, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not4.i = icmp eq i32 %20, 0
  br i1 %cmp.not4.i, label %for.body.hdmi_infoframe_subpack.exit_crit_edge, label %for.body.i

for.body.hdmi_infoframe_subpack.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdmi_infoframe_subpack.exit

for.body.i:                                       ; preds = %for.body
  %sub.i = add nsw i32 %20, -1
  %arrayidx.i = getelementptr i8, ptr %ptr.074, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %for.body.i.hdmi_infoframe_subpack.exit_crit_edge, label %for.body.i.1

for.body.i.hdmi_infoframe_subpack.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdmi_infoframe_subpack.exit

for.body.i.1:                                     ; preds = %for.body.i
  %shl.i.1 = shl nuw nsw i32 %conv.i, 8
  %sub.i.1 = add nsw i32 %20, -2
  %arrayidx.i.1 = getelementptr i8, ptr %ptr.074, i32 %sub.i.1
  %23 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %24 to i32
  %or.i.1 = or i32 %shl.i.1, %conv.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.1)
  %cmp.not.i.1 = icmp eq i32 %sub.i.1, 0
  br i1 %cmp.not.i.1, label %for.body.i.1.hdmi_infoframe_subpack.exit_crit_edge, label %for.body.i.2

for.body.i.1.hdmi_infoframe_subpack.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdmi_infoframe_subpack.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %shl.i.2 = shl nuw nsw i32 %or.i.1, 8
  %sub.i.2 = add nsw i32 %20, -3
  %arrayidx.i.2 = getelementptr i8, ptr %ptr.074, i32 %sub.i.2
  %25 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %26 to i32
  %or.i.2 = or i32 %shl.i.2, %conv.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.2)
  %cmp.not.i.2 = icmp eq i32 %sub.i.2, 0
  br i1 %cmp.not.i.2, label %for.body.i.2.hdmi_infoframe_subpack.exit_crit_edge, label %for.body.i.3

for.body.i.2.hdmi_infoframe_subpack.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdmi_infoframe_subpack.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i.3 = shl nuw i32 %or.i.2, 8
  %sub.i.3 = add nsw i32 %20, -4
  %arrayidx.i.3 = getelementptr i8, ptr %ptr.074, i32 %sub.i.3
  %27 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.3 = zext i8 %28 to i32
  %or.i.3 = or i32 %shl.i.3, %conv.i.3
  br label %hdmi_infoframe_subpack.exit

hdmi_infoframe_subpack.exit:                      ; preds = %for.body.i.3, %for.body.i.2.hdmi_infoframe_subpack.exit_crit_edge, %for.body.i.1.hdmi_infoframe_subpack.exit_crit_edge, %for.body.i.hdmi_infoframe_subpack.exit_crit_edge, %for.body.hdmi_infoframe_subpack.exit_crit_edge
  %value.0.lcssa.i = phi i32 [ 0, %for.body.hdmi_infoframe_subpack.exit_crit_edge ], [ %conv.i, %for.body.i.hdmi_infoframe_subpack.exit_crit_edge ], [ %or.i.1, %for.body.i.1.hdmi_infoframe_subpack.exit_crit_edge ], [ %or.i.2, %for.body.i.2.hdmi_infoframe_subpack.exit_crit_edge ], [ %or.i.3, %for.body.i.3 ]
  %add.ptr22 = getelementptr i8, ptr %ptr.074, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !328
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %value.0.lcssa.i)
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr27 = getelementptr i8, ptr %31, i32 %pack_offset.0
  %add.ptr28 = getelementptr i8, ptr %add.ptr27, i32 %i.076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %29) #6, !srcloc !323
  %add29 = add i32 %i.076, 4
  %cmp = icmp ugt i32 %add, %add29
  br i1 %cmp, label %hdmi_infoframe_subpack.exit.for.body_crit_edge, label %hdmi_infoframe_subpack.exit.for.end_crit_edge

hdmi_infoframe_subpack.exit.for.end_crit_edge:    ; preds = %hdmi_infoframe_subpack.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

hdmi_infoframe_subpack.exit.for.body_crit_edge:   ; preds = %hdmi_infoframe_subpack.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %hdmi_infoframe_subpack.exit.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %33, i32 560
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #6, !srcloc !320
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %shl33 = shl i32 %mode.0, %slot.0
  %or34 = or i32 %35, %shl33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %or34) #6
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %38, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %36) #6, !srcloc !323
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.default
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_vendor_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hdmi_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %hpd = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hpd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hpd, align 1, !range !326
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.52) #6
  %notifier = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notifier, align 4
  tail call void @cec_notifier_set_phys_addr(ptr noundef %5, i16 noundef zeroext -1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hdmi_late_register(ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  %drm_dev = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm_dev, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary, align 4
  store ptr %1, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @hdmi_debugfs_files, i32 0, i32 0, i32 3), align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_root.i, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @hdmi_debugfs_files, i32 noundef 1, ptr noundef %7, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hdmi_connector_set_property(ptr nocapture noundef readonly %connector, ptr nocapture noundef readnone %state, ptr noundef readnone %property, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %colorspace_property = getelementptr inbounds %struct.sti_hdmi_connector, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %colorspace_property to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %colorspace_property, align 8
  %cmp = icmp eq ptr %1, %property
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hdmi1 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %connector, i32 0, i32 2
  %2 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi1, align 4
  %conv = trunc i64 %val to i32
  %colorspace = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %colorspace, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.129) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hdmi_connector_get_property(ptr nocapture noundef readonly %connector, ptr nocapture noundef readnone %state, ptr noundef readnone %property, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %colorspace_property = getelementptr inbounds %struct.sti_hdmi_connector, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %colorspace_property to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %colorspace_property, align 8
  %cmp = icmp eq ptr %1, %property
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hdmi1 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %connector, i32 0, i32 2
  %2 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi1, align 4
  %colorspace = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %colorspace, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.130) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_dbg_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data1 = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %regs = getelementptr inbounds %struct.sti_hdmi, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, ptr noundef %7) #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !320
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.55, i32 noundef %11) #6
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !320
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 9) #6
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.102, ptr @.str.101
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, ptr noundef nonnull %cond.i) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #6
  %and1.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %cond3.i = select i1 %tobool2.not.i, ptr @.str.45, ptr @.str.44
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.104, ptr noundef nonnull %cond3.i) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #6
  %and4.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %cond6.i = select i1 %tobool5.not.i, ptr @.str.107, ptr @.str.106
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.105, ptr noundef nonnull %cond6.i) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #6
  %and7.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond9.i = select i1 %tobool8.not.i, ptr @.str.110, ptr @.str.109
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.108, ptr noundef nonnull %cond9.i) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #6
  %and10.i = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %cond12.i = select i1 %tobool11.not.i, ptr @.str.110, ptr @.str.109
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.111, ptr noundef nonnull %cond12.i) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #6
  %and13.i = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cond15.i = select i1 %tobool14.not.i, ptr @.str.45, ptr @.str.44
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.112, ptr noundef nonnull %cond15.i) #6
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !320
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %19) #6
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr.i139 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #6, !srcloc !320
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.58, i32 noundef %23) #6
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr.i141 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #6, !srcloc !320
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 9) #6
  %and.i142 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.not.i143 = icmp eq i32 %and.i142, 0
  %cond.i144 = select i1 %tobool.not.i143, ptr @.str.115, ptr @.str.114
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.113, ptr noundef nonnull %cond.i144) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #6
  %and1.i145 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i145)
  %tobool2.not.i146 = icmp eq i32 %and1.i145, 0
  %cond3.i147 = select i1 %tobool2.not.i146, ptr @.str.118, ptr @.str.117
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.116, ptr noundef nonnull %cond3.i147) #6
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr.i149 = getelementptr i8, ptr %29, i32 256
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #6, !srcloc !320
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.59, i32 noundef %31) #6
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 9) #6
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr.i151 = getelementptr i8, ptr %33, i32 256
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #6, !srcloc !320
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %35) #6
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr.i153 = getelementptr i8, ptr %37, i32 260
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #6, !srcloc !320
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.62, i32 noundef %39) #6
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 9) #6
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr.i155 = getelementptr i8, ptr %41, i32 260
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #6, !srcloc !320
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.63, i32 noundef %43) #6
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr.i157 = getelementptr i8, ptr %45, i32 264
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157) #6, !srcloc !320
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.64, i32 noundef %47) #6
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 9) #6
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %add.ptr.i159 = getelementptr i8, ptr %49, i32 264
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #6, !srcloc !320
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.65, i32 noundef %51) #6
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr.i161 = getelementptr i8, ptr %53, i32 268
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #6, !srcloc !320
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.66, i32 noundef %55) #6
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 9) #6
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr.i163 = getelementptr i8, ptr %57, i32 268
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163) #6, !srcloc !320
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.67, i32 noundef %59) #6
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr.i165 = getelementptr i8, ptr %61, i32 560
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #6, !srcloc !320
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.68, i32 noundef %63) #6
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %add.ptr.i167 = getelementptr i8, ptr %65, i32 560
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #6, !srcloc !320
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 9) #6
  %and.i168 = and i32 %67, 3
  %arrayidx.i = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %and.i168
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.123, ptr noundef %69) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #6
  %and1.i169 = lshr i32 %67, 4
  %70 = and i32 %and1.i169, 3
  %arrayidx2.i = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx2.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.124, ptr noundef %72) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #6
  %and3.i = lshr i32 %67, 8
  %73 = and i32 %and3.i, 3
  %arrayidx5.i = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx5.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.125, ptr noundef %75) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #6
  %and6.i = lshr i32 %67, 12
  %76 = and i32 %and6.i, 3
  %arrayidx8.i = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx8.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.126, ptr noundef %78) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #6
  %and9.i = lshr i32 %67, 16
  %79 = and i32 %and9.i, 3
  %arrayidx11.i = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx11.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.127, ptr noundef %81) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.103) #6
  %and12.i = lshr i32 %67, 20
  %82 = and i32 %and12.i, 3
  %arrayidx14.i = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx14.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.128, ptr noundef %84) #6
  %85 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs, align 4
  %add.ptr.i171 = getelementptr i8, ptr %86, i32 512
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #6, !srcloc !320
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.69, i32 noundef %88) #6
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  %add.ptr.i173 = getelementptr i8, ptr %90, i32 516
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173) #6, !srcloc !320
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.70, i32 noundef %92) #6
  %93 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs, align 4
  %add.ptr.i175 = getelementptr i8, ptr %94, i32 1024
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #6, !srcloc !320
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.71, i32 noundef %96) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, i32 noundef 1) #6
  %97 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs, align 4
  %add.ptr.i177 = getelementptr i8, ptr %98, i32 528
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #6, !srcloc !320
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.73, i32 noundef %100) #6
  %101 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs, align 4
  %add.ptr.i179 = getelementptr i8, ptr %102, i32 532
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #6, !srcloc !320
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.74, i32 noundef %104) #6
  %105 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs, align 4
  %add.ptr.i181 = getelementptr i8, ptr %106, i32 536
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #6, !srcloc !320
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.75, i32 noundef %108) #6
  %109 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs, align 4
  %add.ptr.i183 = getelementptr i8, ptr %110, i32 540
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #6, !srcloc !320
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.76, i32 noundef %112) #6
  %113 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs, align 4
  %add.ptr.i185 = getelementptr i8, ptr %114, i32 544
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #6, !srcloc !320
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.77, i32 noundef %116) #6
  %117 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs, align 4
  %add.ptr.i187 = getelementptr i8, ptr %118, i32 548
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #6, !srcloc !320
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.78, i32 noundef %120) #6
  %121 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs, align 4
  %add.ptr.i189 = getelementptr i8, ptr %122, i32 552
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #6, !srcloc !320
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.79, i32 noundef %124) #6
  %125 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs, align 4
  %add.ptr.i191 = getelementptr i8, ptr %126, i32 556
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i191) #6, !srcloc !320
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.80, i32 noundef %128) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.81, i32 noundef 2) #6
  %129 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs, align 4
  %add.ptr.i193 = getelementptr i8, ptr %130, i32 1536
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #6, !srcloc !320
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.82, i32 noundef %132) #6
  %133 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs, align 4
  %add.ptr.i195 = getelementptr i8, ptr %134, i32 1540
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #6, !srcloc !320
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.83, i32 noundef %136) #6
  %137 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs, align 4
  %add.ptr.i197 = getelementptr i8, ptr %138, i32 1544
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #6, !srcloc !320
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.84, i32 noundef %140) #6
  %141 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs, align 4
  %add.ptr.i199 = getelementptr i8, ptr %142, i32 1548
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #6, !srcloc !320
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.85, i32 noundef %144) #6
  %145 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs, align 4
  %add.ptr.i201 = getelementptr i8, ptr %146, i32 1552
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201) #6, !srcloc !320
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.86, i32 noundef %148) #6
  %149 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs, align 4
  %add.ptr.i203 = getelementptr i8, ptr %150, i32 1556
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203) #6, !srcloc !320
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.87, i32 noundef %152) #6
  %153 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs, align 4
  %add.ptr.i205 = getelementptr i8, ptr %154, i32 1560
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #6, !srcloc !320
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.88, i32 noundef %156) #6
  %157 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs, align 4
  %add.ptr.i207 = getelementptr i8, ptr %158, i32 1564
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #6, !srcloc !320
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.89, i32 noundef %160) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.90, i32 noundef 3) #6
  %161 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs, align 4
  %add.ptr.i209 = getelementptr i8, ptr %162, i32 1568
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #6, !srcloc !320
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.91, i32 noundef %164) #6
  %165 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs, align 4
  %add.ptr.i211 = getelementptr i8, ptr %166, i32 1572
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i211) #6, !srcloc !320
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.92, i32 noundef %168) #6
  %169 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs, align 4
  %add.ptr.i213 = getelementptr i8, ptr %170, i32 1576
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #6, !srcloc !320
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.93, i32 noundef %172) #6
  %173 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs, align 4
  %add.ptr.i215 = getelementptr i8, ptr %174, i32 1580
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #6, !srcloc !320
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.94, i32 noundef %176) #6
  %177 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs, align 4
  %add.ptr.i217 = getelementptr i8, ptr %178, i32 1584
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #6, !srcloc !320
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.95, i32 noundef %180) #6
  %181 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs, align 4
  %add.ptr.i219 = getelementptr i8, ptr %182, i32 1588
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i219) #6, !srcloc !320
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.96, i32 noundef %184) #6
  %185 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs, align 4
  %add.ptr.i221 = getelementptr i8, ptr %186, i32 1592
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i221) #6, !srcloc !320
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.97, i32 noundef %188) #6
  %189 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regs, align 4
  %add.ptr.i223 = getelementptr i8, ptr %190, i32 1596
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #6, !srcloc !320
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.98, i32 noundef %192) #6
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hdmi_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %ddc_adapt = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ddc_adapt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc_adapt, align 8
  %call = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %fail, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %call) #6
  %hdmi_monitor = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 19
  %frombool = zext i1 %call2 to i8
  %4 = ptrtoint ptr %hdmi_monitor to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %hdmi_monitor, align 8
  %cond = select i1 %call2, ptr @.str.132, ptr @.str.133
  %width_cm = getelementptr inbounds %struct.edid, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %width_cm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %width_cm, align 1
  %conv = zext i8 %6 to i32
  %height_cm = getelementptr inbounds %struct.edid, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %height_cm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %height_cm, align 1
  %conv5 = zext i8 %8 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.131, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %conv5) #6
  %notifier = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %notifier, align 4
  tail call void @cec_notifier_set_phys_addr_from_edid(ptr noundef %10, ptr noundef nonnull %call) #6
  %call6 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call) #6
  %call7 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call) #6
  tail call void @kfree(ptr noundef nonnull %call) #6
  br label %cleanup

fail:                                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.134) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end
  %retval.0 = phi i32 [ %call6, %if.end ], [ 0, %fail ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hdmi_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  %sub = add i32 %mul, -50
  %hdmi1 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %connector, i32 0, i32 2
  %2 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi1, align 4
  %clk_pix = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_pix, align 4
  %call = tail call i32 @clk_round_rate(ptr noundef %5, i32 noundef %mul) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.135, i32 noundef %mul, i32 noundef %call) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub)
  %cmp = icmp slt i32 %call, %sub
  %add = add i32 %mul, 50
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %add)
  %cmp2 = icmp sgt i32 %call, %add
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.136, i32 noundef %mul) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_audio_hw_params(ptr noundef %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %daifmt, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %2 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %daifmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146, i32 noundef %bf.cast21, i32 noundef %bf.cast26, i32 noundef %bf.cast31, i32 noundef %bf.cast36) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %sample_width = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 3
  %7 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sample_width, align 4
  %audio = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 21
  %sample_width37 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %sample_width37 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sample_width37, align 4
  %sample_rate = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sample_rate, align 4
  %sample_rate39 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %sample_rate39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sample_rate39, align 8
  %cea = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 21, i32 3
  %13 = call ptr @memcpy(ptr %cea, ptr %params, i32 28)
  %14 = ptrtoint ptr %audio to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %audio, align 8
  %call43 = tail call fastcc i32 @hdmi_audio_configure(ptr noundef %1)
  %15 = tail call i32 @llvm.smin.i32(i32 %call43, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %15, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_audio_shutdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33570048) #6, !srcloc !323
  %audio = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %audio to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %audio, align 8
  %call1 = tail call fastcc i32 @hdmi_audio_infoframe_config(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_audio_mute(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, i1 noundef zeroext %enable, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cond = select i1 %enable, ptr @.str.44, ptr @.str.45
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.149, ptr noundef nonnull %cond) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 580
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #6, !srcloc !323
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !323
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_audio_get_eld(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_connector = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %drm_connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm_connector, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #6
  %4 = tail call i32 @llvm.umin.i32(i32 %len, i32 128)
  %eld = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 42
  %5 = call ptr @memcpy(ptr %buf, ptr %eld, i32 %4)
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_conn_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !110, !112, !113, !114, !115, !117, !119, !121, !123, !125, !127, !129, !130, !132, !133, !135, !137, !139, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !217, !218, !219, !221, !223, !225, !226, !227, !229, !230, !231, !233, !235, !237, !238, !239, !241, !242, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !272, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !296, !297, !298, !300, !302, !303, !304, !305, !306, !307, !309}
!llvm.module.flags = !{!311, !312, !313, !314, !315, !316, !317, !318}
!llvm.ident = !{!319}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1486, i32 11}
!2 = !{ptr @sti_hdmi_driver, !3, !"sti_hdmi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1484, i32 24}
!4 = !{ptr @__UNIQUE_ID_author317, !5, !"__UNIQUE_ID_author317", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1494, i32 1}
!6 = !{ptr @__UNIQUE_ID_description318, !7, !"__UNIQUE_ID_description318", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1495, i32 1}
!8 = !{ptr @__UNIQUE_ID_file319, !9, !"__UNIQUE_ID_file319", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1496, i32 1}
!10 = !{ptr @__UNIQUE_ID_license320, !9, !"__UNIQUE_ID_license320", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1378, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sti_hdmi_probe._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @sti_hdmi_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1384, i32 44}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1395, i32 59}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1397, i32 3}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1411, i32 36}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1413, i32 3}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1418, i32 37}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1420, i32 3}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1425, i32 36}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1427, i32 3}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1432, i32 38}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1434, i32 3}
!39 = !{ptr @sti_hdmi_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1441, i32 2}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1443, i32 44}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1445, i32 3}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1453, i32 3}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1457, i32 44}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 213, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hdmi_irq_thread._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @hdmi_irq_thread._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sti_hdmi_ops, !56, !"sti_hdmi_ops", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1354, i32 35}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1311, i32 3}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1317, i32 3}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1324, i32 3}
!63 = !{ptr @sti_hdmi_bridge_funcs, !64, !"sti_hdmi_bridge_funcs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 965, i32 38}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 757, i32 2}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 324, i32 3}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 948, i32 3}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 954, i32 3}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 891, i32 3}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 893, i32 3}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 895, i32 3}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 901, i32 3}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 916, i32 3}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 920, i32 4}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 927, i32 3}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 282, i32 3}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 288, i32 3}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 449, i32 3}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 460, i32 3}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 391, i32 3}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 848, i32 2}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 870, i32 3}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 486, i32 2}
!103 = !{ptr @__func__.hdmi_audio_infoframe_config, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 493, i32 4}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 543, i32 3}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 568, i32 3}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @hdmi_swreset._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @hdmi_swreset._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 588, i32 3}
!117 = !{ptr @sti_hdmi_connector_funcs, !118, !"sti_hdmi_connector_funcs", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1127, i32 41}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1048, i32 3}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1052, i32 2}
!123 = !{ptr @hdmi_debugfs_files, !124, !"hdmi_debugfs_files", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 732, i32 29}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 673, i32 16}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 674, i32 2}
!129 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 676, i32 2}
!132 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 677, i32 2}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 679, i32 2}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 681, i32 2}
!139 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 682, i32 2}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 684, i32 2}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 685, i32 2}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 687, i32 2}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 688, i32 2}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 690, i32 2}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 691, i32 2}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 694, i32 2}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 695, i32 2}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 696, i32 2}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 698, i32 16}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 700, i32 2}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 701, i32 2}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 702, i32 2}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 703, i32 2}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 704, i32 2}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 705, i32 2}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 706, i32 2}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 707, i32 2}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 708, i32 16}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 710, i32 2}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 711, i32 2}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 712, i32 2}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 713, i32 2}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 714, i32 2}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 715, i32 2}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 716, i32 2}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 717, i32 2}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 718, i32 16}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 720, i32 2}
!200 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 721, i32 2}
!202 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 722, i32 2}
!204 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 723, i32 2}
!206 = !{ptr @.str.95, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 724, i32 2}
!208 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 725, i32 2}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 726, i32 2}
!212 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 727, i32 2}
!214 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 610, i32 2}
!216 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 611, i32 14}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 613, i32 2}
!223 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 616, i32 2}
!225 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.107, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 619, i32 2}
!229 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 622, i32 2}
!233 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 625, i32 2}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 634, i32 2}
!237 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.116, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 637, i32 2}
!241 = !{ptr @.str.117, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.119, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 643, i32 25}
!245 = !{ptr @.str.120, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 644, i32 11}
!247 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 645, i32 11}
!249 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 646, i32 11}
!251 = !{ptr @.str.123, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 650, i32 2}
!253 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 653, i32 2}
!255 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 656, i32 2}
!257 = !{ptr @.str.126, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 659, i32 2}
!259 = !{ptr @.str.127, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 662, i32 2}
!261 = !{ptr @.str.128, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 665, i32 2}
!263 = !{ptr @.str.129, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1093, i32 2}
!265 = !{ptr @.str.130, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1112, i32 2}
!267 = !{ptr @sti_hdmi_connector_helper_funcs, !268, !"sti_hdmi_connector_helper_funcs", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1032, i32 35}
!269 = !{ptr @.str.131, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 988, i32 2}
!271 = !{ptr @.str.132, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1000, i32 2}
!275 = !{ptr @.str.135, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1020, i32 2}
!277 = !{ptr @.str.136, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1024, i32 3}
!279 = !{ptr @.str.137, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1067, i32 46}
!281 = !{ptr @.str.138, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1071, i32 3}
!283 = !{ptr @.str.139, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 171, i32 25}
!285 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 172, i32 28}
!287 = !{ptr @.str.141, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 173, i32 28}
!289 = !{ptr @colorspace_mode_names, !290, !"colorspace_mode_names", i1 false, i1 false}
!290 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 170, i32 40}
!291 = !{ptr @.str.142, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1248, i32 8}
!293 = !{ptr @.str.143, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1254, i32 2}
!295 = !{ptr @.str.144, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @sti_hdmi_register_audio_driver._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @sti_hdmi_register_audio_driver._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @audio_codec_ops, !299, !"audio_codec_ops", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1226, i32 36}
!300 = !{ptr @.str.145, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1180, i32 3}
!302 = !{ptr @.str.146, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.147, !301, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.148, !301, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @hdmi_audio_hw_params._entry, !301, !"_entry", i1 false, i1 false}
!306 = !{ptr @hdmi_audio_hw_params._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.149, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1205, i32 2}
!309 = !{ptr @hdmi_of_match, !310, !"hdmi_of_match", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/sti/sti_hdmi.c", i32 1359, i32 34}
!311 = !{i32 1, !"wchar_size", i32 2}
!312 = !{i32 1, !"min_enum_size", i32 4}
!313 = !{i32 8, !"branch-target-enforcement", i32 0}
!314 = !{i32 8, !"sign-return-address", i32 0}
!315 = !{i32 8, !"sign-return-address-all", i32 0}
!316 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!317 = !{i32 7, !"uwtable", i32 1}
!318 = !{i32 7, !"frame-pointer", i32 2}
!319 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!320 = !{i64 5629125}
!321 = !{i64 2157672446}
!322 = !{i64 2157672662}
!323 = !{i64 5628707}
!324 = !{i64 2157729487}
!325 = !{i64 2157673422}
!326 = !{i8 0, i8 2}
!327 = !{i64 2157678555}
!328 = !{i64 2157680753}
