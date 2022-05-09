; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/hdmi5.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/hdmi5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.omap_hdmi_audio_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.omap_hdmi = type { %struct.mutex, ptr, ptr, ptr, %struct.hdmi_wp_data, %struct.hdmi_pll_data, %struct.hdmi_phy_data, %struct.hdmi_core_data, %struct.hdmi_config, ptr, i8, %struct.omap_dss_device, %struct.drm_bridge, ptr, ptr, i32, i8, %struct.omap_dss_audio, %struct.spinlock, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hdmi_wp_data = type { ptr, i32, i32 }
%struct.hdmi_pll_data = type { %struct.dss_pll, ptr, ptr, ptr }
%struct.dss_pll = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dss_pll_clock_info }
%struct.dss_pll_clock_info = type { i32, i32, [4 x i32], i16, i16, i32, [4 x i16], i16 }
%struct.hdmi_phy_data = type { ptr, ptr, [4 x i8], [4 x i8] }
%struct.hdmi_core_data = type { ptr, i8, i8, ptr, i32, ptr }
%struct.hdmi_config = type { %struct.videomode, %struct.hdmi_avi_infoframe, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.omap_dss_device = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.omap_dss_audio = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dss_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, %struct.dispc_clock_info, [2 x i32], i32, [3 x i32], i8, [128 x i32], ptr, %struct.anon.84, [4 x ptr], ptr, ptr, ptr, ptr }
%struct.dispc_clock_info = type { i32, i32, i16, i16 }
%struct.anon.84 = type { ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.91 }
%union.anon.91 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.omap_hdmi_audio_pdata = type { ptr, i32, i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omapdss_hdmi5\00", [18 x i8] zeroinitializer }, align 32
@hdmi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@omapdss_hdmi5hw_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hdmi5_probe, ptr @hdmi5_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @hdmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@hdmi5_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&hdmi->lock\00", [20 x i8] zeroinitializer }, align 32
@hdmi5_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&hdmi->audio_playing_lock\00", [38 x i8] zeroinitializer }, align 32
@hdmi5_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013HDMI: omapdss HDMI error: platform_get_irq failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hdmi5_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/omapdrm/dss/hdmi5.c\00", [60 x i8] zeroinitializer }, align 32
@hdmi5_probe._entry_ptr = internal global ptr @hdmi5_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OMAP HDMI\00", [22 x i8] zeroinitializer }, align 32
@hdmi5_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013HDMI: omapdss HDMI error: HDMI IRQ request failed\0A\00", [43 x i8] zeroinitializer }, align 32
@hdmi5_probe._entry_ptr.10 = internal global ptr @hdmi5_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@hdmi5_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013HDMI: omapdss HDMI error: can't get VDDA regulator\0A\00", [42 x i8] zeroinitializer }, align 32
@hdmi5_probe._entry_ptr.14 = internal global ptr @hdmi5_probe._entry.12, section ".printk_index", align 4
@hdmi5_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @hdmi5_bind, ptr @hdmi5_unbind }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hdmi.0\00", [25 x i8] zeroinitializer }, align 32
@hdmi5_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @hdmi5_bridge_attach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdmi5_bridge_mode_set, ptr null, ptr null, ptr null, ptr @hdmi5_bridge_enable, ptr @hdmi5_bridge_disable, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr @hdmi5_bridge_get_edid, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@hdmi5_bridge_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013HDMI: omapdss HDMI error: failed to power on device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdmi5_bridge_enable\00", [44 x i8] zeroinitializer }, align 32
@hdmi5_bridge_enable._entry_ptr = internal global ptr @hdmi5_bridge_enable._entry, section ".printk_index", align 4
@hdmi5_bridge_enable._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.6, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013HDMI: omapdss HDMI error: Error restoring audio configuration: %d\00", [60 x i8] zeroinitializer }, align 32
@hdmi5_bridge_enable._entry_ptr.20 = internal global ptr @hdmi5_bridge_enable._entry.18, section ".printk_index", align 4
@hdmi_power_on_full.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 0, i8 39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdmi_power_on_full\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hdmi_power_on hactive= %d vactive = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"HDMI: hdmi_power_on hactive= %d vactive = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@hdmi_power_on_full._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.6, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013HDMI: omapdss HDMI error: Failed to enable PLL\0A\00", [46 x i8] zeroinitializer }, align 32
@hdmi_power_on_full._entry_ptr = internal global ptr @hdmi_power_on_full._entry, section ".printk_index", align 4
@hdmi_power_on_full._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.6, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013HDMI: omapdss HDMI error: Failed to configure PLL\0A\00", [43 x i8] zeroinitializer }, align 32
@hdmi_power_on_full._entry_ptr.28 = internal global ptr @hdmi_power_on_full._entry.26, section ".printk_index", align 4
@hdmi_power_on_full.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.6, ptr @.str.29, i8 0, i8 47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to start PHY\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI: Failed to start PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@hdmi_runtime_get.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.31, ptr @.str.6, ptr @.str.32, i8 0, i8 11, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi_runtime_get\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdmi_runtime_get\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI: hdmi_runtime_get\0A\00", [40 x i8] zeroinitializer }, align 32
@hdmi_runtime_put.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.34, ptr @.str.6, ptr @.str.35, i8 0, i8 14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi_runtime_put\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdmi_runtime_put\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI: hdmi_runtime_put\0A\00", [40 x i8] zeroinitializer }, align 32
@hdmi_core_enable.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.37, ptr @.str.6, ptr @.str.38, i8 0, i8 70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi_core_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ENTER omapdss_hdmi_core_enable\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HDMI: ENTER omapdss_hdmi_core_enable\0A\00", [58 x i8] zeroinitializer }, align 32
@hdmi_core_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.37, ptr @.str.6, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hdmi_core_enable._entry_ptr = internal global ptr @hdmi_core_enable._entry, section ".printk_index", align 4
@hdmi_core_disable.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.40, ptr @.str.6, ptr @.str.41, i8 0, i8 75, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdmi_core_disable\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enter omapdss_hdmi_core_disable\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"HDMI: Enter omapdss_hdmi_core_disable\0A\00", [57 x i8] zeroinitializer }, align 32
@hdmi5_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.6, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013HDMI: omapdss HDMI error: Registering HDMI audio failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdmi5_bind\00", [21 x i8] zeroinitializer }, align 32
@hdmi5_bind._entry_ptr = internal global ptr @hdmi5_bind._entry, section ".printk_index", align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@hdmi_audio_ops = internal constant { %struct.omap_hdmi_audio_ops, [44 x i8] } { %struct.omap_hdmi_audio_ops { ptr @hdmi_audio_startup, ptr @hdmi_audio_shutdown, ptr @hdmi_audio_start, ptr @hdmi_audio_stop, ptr @hdmi_audio_config }, [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap-hdmi-audio\00", [16 x i8] zeroinitializer }, align 32
@hdmi_audio_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013HDMI: omapdss HDMI error: %s: Video mode does not support audio\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi_audio_start\00", [47 x i8] zeroinitializer }, align 32
@hdmi_audio_start._entry_ptr = internal global ptr @hdmi_audio_start._entry, section ".printk_index", align 4
@hdmi_audio_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.49, ptr @.str.6, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdmi_audio_stop\00", [16 x i8] zeroinitializer }, align 32
@hdmi_audio_stop._entry_ptr = internal global ptr @hdmi_audio_stop._entry, section ".printk_index", align 4
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 824, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"hdmi_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 814, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"omapdss_hdmi5hw_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 820, i32 24 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 737, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 738, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 758, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 765, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 767, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 771, i32 50 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 775, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"hdmi5_component_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 663, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 682, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"hdmi5_bridge_funcs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 469, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 384, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 393, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 157, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 177, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 183, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 190, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 44, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 58, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 280, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 286, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 300, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 637, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 641, i32 47 }
@___asan_gen_.206 = private unnamed_addr constant [15 x i8] c"hdmi_audio_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 587, i32 41 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 605, i32 21 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 537, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [39 x i8] c"../drivers/gpu/drm/omapdrm/dss/hdmi5.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 553, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @hdmi5_bind._entry, ptr @hdmi5_bind._entry_ptr, ptr @hdmi5_bridge_enable._entry, ptr @hdmi5_bridge_enable._entry.18, ptr @hdmi5_bridge_enable._entry_ptr, ptr @hdmi5_bridge_enable._entry_ptr.20, ptr @hdmi5_probe._entry, ptr @hdmi5_probe._entry.12, ptr @hdmi5_probe._entry.8, ptr @hdmi5_probe._entry_ptr, ptr @hdmi5_probe._entry_ptr.10, ptr @hdmi5_probe._entry_ptr.14, ptr @hdmi_audio_start._entry, ptr @hdmi_audio_start._entry_ptr, ptr @hdmi_audio_stop._entry, ptr @hdmi_audio_stop._entry_ptr, ptr @hdmi_core_enable._entry, ptr @hdmi_core_enable._entry_ptr, ptr @hdmi_power_on_full._entry, ptr @hdmi_power_on_full._entry.26, ptr @hdmi_power_on_full._entry_ptr, ptr @hdmi_power_on_full._entry_ptr.28, ptr @.str, ptr @hdmi_of_match, ptr @omapdss_hdmi5hw_driver, ptr @hdmi5_probe.__key, ptr @.str.1, ptr @hdmi5_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @hdmi5_component_ops, ptr @.str.15, ptr @hdmi5_bridge_funcs, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @hdmi_audio_ops, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapdss_hdmi5hw_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_bridge_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_bridge_enable._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_power_on_full._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_power_on_full._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_core_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_audio_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_audio_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_audio_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi5_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 768) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.omap_hdmi, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @hdmi5_probe.__key) #7
  %audio_playing_lock = getelementptr inbounds %struct.omap_hdmi, ptr %call7.i.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %audio_playing_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @hdmi5_probe.__key.2, i16 noundef signext 3) #7
  %3 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev1, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %6, i32 noundef 0, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %hdmi5_probe_of.exit

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

hdmi5_probe_of.exit:                              ; preds = %if.end
  %phy.i = getelementptr inbounds %struct.omap_hdmi, ptr %call7.i.i, i32 0, i32 6
  %call2.i = tail call i32 @hdmi_parse_lanes_of(ptr noundef %4, ptr noundef nonnull %call.i, ptr noundef %phy.i) #7
  tail call void @of_node_put(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool7.not = icmp eq i32 %call2.i, 0
  br i1 %tobool7.not, label %hdmi5_probe_of.exit.if.end9_crit_edge, label %hdmi5_probe_of.exit.err_free_crit_edge

hdmi5_probe_of.exit.err_free_crit_edge:           ; preds = %hdmi5_probe_of.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

hdmi5_probe_of.exit.if.end9_crit_edge:            ; preds = %hdmi5_probe_of.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %hdmi5_probe_of.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %wp = getelementptr inbounds %struct.omap_hdmi, ptr %call7.i.i, i32 0, i32 4
  %call10 = tail call i32 @hdmi_wp_init(ptr noundef %pdev, ptr noundef %wp, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.err_free_crit_edge

if.end9.err_free_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end13:                                         ; preds = %if.end9
  %phy = getelementptr inbounds %struct.omap_hdmi, ptr %call7.i.i, i32 0, i32 6
  %call14 = tail call i32 @hdmi_phy_init(ptr noundef %pdev, ptr noundef %phy, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err_free_crit_edge

if.end13.err_free_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end17:                                         ; preds = %if.end13
  %core = getelementptr inbounds %struct.omap_hdmi, ptr %call7.i.i, i32 0, i32 7
  %call18 = tail call i32 @hdmi5_core_init(ptr noundef %pdev, ptr noundef %core) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_free_crit_edge

if.end17.err_free_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %err_free

if.end28:                                         ; preds = %if.end21
  %call30 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call22, ptr noundef null, ptr noundef nonnull @hdmi_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.7, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end38, label %do.end35

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %err_free

if.end38:                                         ; preds = %if.end28
  %call40 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  %vdda_reg = getelementptr inbounds %struct.omap_hdmi, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %vdda_reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call40, ptr %vdda_reg, align 8
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %if.end54

if.then43:                                        ; preds = %if.end38
  %cmp46.not = icmp eq ptr %call40, inttoptr (i32 -517 to ptr)
  br i1 %cmp46.not, label %if.then43.err_free_crit_edge, label %do.end50

if.then43.err_free_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

do.end50:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call40 to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %err_free

if.end54:                                         ; preds = %if.end38
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %call56 = tail call fastcc i32 @hdmi5_init_output(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.err_pm_disable_crit_edge

if.end54.err_pm_disable_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_disable

if.end59:                                         ; preds = %if.end54
  %call61 = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @hdmi5_component_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end59.cleanup_crit_edge, label %err_uninit_output

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_uninit_output:                                ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @hdmi5_uninit_output(ptr noundef nonnull %call7.i.i)
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %err_uninit_output, %if.end54.err_pm_disable_crit_edge
  %r.0 = phi i32 [ %call56, %if.end54.err_pm_disable_crit_edge ], [ %call61, %err_uninit_output ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %err_free

err_free:                                         ; preds = %err_pm_disable, %do.end50, %if.then43.err_free_crit_edge, %do.end35, %do.end26, %if.end17.err_free_crit_edge, %if.end13.err_free_crit_edge, %if.end9.err_free_crit_edge, %hdmi5_probe_of.exit.err_free_crit_edge
  %r.1 = phi i32 [ %call2.i, %hdmi5_probe_of.exit.err_free_crit_edge ], [ %call10, %if.end9.err_free_crit_edge ], [ %call14, %if.end13.err_free_crit_edge ], [ %call18, %if.end17.err_free_crit_edge ], [ -19, %do.end26 ], [ %call30, %do.end35 ], [ %8, %do.end50 ], [ -517, %if.then43.err_free_crit_edge ], [ %r.0, %err_pm_disable ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end59.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi5_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @hdmi5_component_ops) #7
  %output.i = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 11
  tail call void @omapdss_device_unregister(ptr noundef %output.i) #7
  tail call void @omapdss_device_cleanup_output(ptr noundef %output.i) #7
  %bridge.i.i = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 12
  tail call void @drm_bridge_remove(ptr noundef %bridge.i.i) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_wp_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_phy_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi5_core_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wp1 = getelementptr inbounds %struct.omap_hdmi, ptr %data, i32 0, i32 4
  %call = tail call i32 @hdmi_wp_get_irqstatus(ptr noundef %wp1) #7
  tail call void @hdmi_wp_set_irqstatus(ptr noundef %wp1, i32 noundef %call) #7
  %and2 = and i32 %call, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %0 = and i32 %call, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %0)
  %.not = icmp eq i32 %0, 100663296
  br i1 %.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @hdmi_wp_set_phy_pwr(ptr noundef %wp1, i32 noundef 0) #7
  %phy = getelementptr inbounds %struct.omap_hdmi, ptr %data, i32 0, i32 6
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !115
  %or = and i32 %3, -65409
  %and7 = or i32 %or, 32768
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %add.ptr.i46 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %and7) #7, !srcloc !116
  tail call void @hdmi_wp_set_irqstatus(ptr noundef %wp1, i32 noundef 100663296) #7
  %call11 = tail call i32 @hdmi_wp_set_phy_pwr(ptr noundef %wp1, i32 noundef 1) #7
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %add.ptr.i47 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #7, !srcloc !115
  %and17 = and i32 %8, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %and17) #7, !srcloc !116
  br label %if.end29

if.else:                                          ; preds = %entry
  %and = and i32 %call, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else23, label %if.then21

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 @hdmi_wp_set_phy_pwr(ptr noundef %wp1, i32 noundef 2) #7
  br label %if.end29

if.else23:                                        ; preds = %if.else
  br i1 %tobool3.not, label %if.else23.if.end29_crit_edge, label %if.then26

if.else23.if.end29_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 @hdmi_wp_set_phy_pwr(ptr noundef %wp1, i32 noundef 1) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.else23.if.end29_crit_edge, %if.then21, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdmi5_init_output(ptr noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 11
  %bridge.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 12
  %funcs.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 12, i32 7
  %0 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @hdmi5_bridge_funcs, ptr %funcs.i, align 4
  %pdev.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 1
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %of_node2.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 12, i32 4
  %5 = ptrtoint ptr %of_node2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %of_node2.i, align 4
  %ops.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 12, i32 9
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %ops.i, align 4
  %type.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 12, i32 10
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 11, ptr %type.i, align 4
  tail call void @drm_bridge_add(ptr noundef %bridge.i) #7
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %output, align 4
  %id = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 11, i32 11
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 64, ptr %id, align 4
  %type = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 11, i32 6
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %type, align 4
  %name = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 11, i32 7
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.15, ptr %name, align 4
  %dispc_channel = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 11, i32 10
  %14 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dispc_channel, align 4
  %of_port = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 11, i32 12
  %15 = ptrtoint ptr %of_port to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %of_port, align 4
  %call = tail call i32 @omapdss_device_init_output(ptr noundef %output, ptr noundef %bridge.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_bridge_remove(ptr noundef %bridge.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @omapdss_device_register(ptr noundef %output) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi5_uninit_output(ptr noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 11
  tail call void @omapdss_device_unregister(ptr noundef %output) #7
  tail call void @omapdss_device_cleanup_output(ptr noundef %output) #7
  %bridge.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 12
  tail call void @drm_bridge_remove(ptr noundef %bridge.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_parse_lanes_of(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_wp_get_irqstatus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_set_irqstatus(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_wp_set_phy_pwr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omapdss_device_init_output(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi5_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 -44
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi5_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -416
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #7
  %cfg = getelementptr i8, ptr %bridge, i32 -176
  tail call void @drm_display_mode_to_videomode(ptr noundef %adjusted_mode, ptr noundef %cfg) #7
  %dss = getelementptr i8, ptr %bridge, i32 -320
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %dispc = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispc, align 4
  %4 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %5, 1000
  tail call void @dispc_set_tv_pclk(ptr noundef %3, i32 noundef %mul) #7
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi5_bridge_enable(ptr noundef %bridge, ptr nocapture noundef readonly %bridge_state) #0 align 64 {
entry:
  %avi = alloca %struct.hdmi_avi_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -416
  %0 = ptrtoint ptr %bridge_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_state, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %call = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %1, ptr noundef %3) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !117

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 357, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end25:                                         ; preds = %entry
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp slt i32 %5, %7
  br i1 %cmp.not.i, label %drm_atomic_get_new_connector_state.exit, label %if.end25.do.end46_crit_edge

if.end25.do.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end25
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %9, i32 %5, i32 3
  %10 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_state.i, align 4
  %tobool28.not = icmp eq ptr %11, null
  br i1 %tobool28.not, label %drm_atomic_get_new_connector_state.exit.do.end46_crit_edge, label %if.end62, !prof !117

drm_atomic_get_new_connector_state.exit.do.end46_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

do.end46:                                         ; preds = %drm_atomic_get_new_connector_state.exit.do.end46_crit_edge, %if.end25.do.end46_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 360, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end62:                                         ; preds = %drm_atomic_get_new_connector_state.exit
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtcs.i, align 4
  %index.i.i191 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %index.i.i191 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i191, align 4
  %new_state.i192 = getelementptr %struct.__drm_crtcs_state, ptr %15, i32 %17, i32 3
  %18 = ptrtoint ptr %new_state.i192 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %new_state.i192, align 4
  %tobool65.not = icmp eq ptr %19, null
  br i1 %tobool65.not, label %do.end83, label %if.end99, !prof !117

do.end83:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 363, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end99:                                         ; preds = %if.end62
  %is_hdmi = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 20, i32 11
  %20 = ptrtoint ptr %is_hdmi to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_hdmi, align 1, !range !118
  %22 = zext i8 %21 to i32
  %cfg = getelementptr i8, ptr %bridge, i32 -176
  %hdmi_dvi_mode = getelementptr i8, ptr %bridge, i32 -68
  %23 = ptrtoint ptr %hdmi_dvi_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %hdmi_dvi_mode, align 4
  %24 = load i8, ptr %is_hdmi, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool103.not = icmp eq i8 %24, 0
  br i1 %tobool103.not, label %if.end99.if.end109_crit_edge, label %if.then104

if.end99.if.end109_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then104:                                       ; preds = %if.end99
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %avi) #7
  %25 = call ptr @memset(ptr %avi, i32 255, i32 68)
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 7
  %call105 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %avi, ptr noundef nonnull %call, ptr noundef %adjusted_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp = icmp eq i32 %call105, 0
  br i1 %cmp, label %if.then106, label %if.then104.if.end108_crit_edge

if.then104.if.end108_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then106:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  %infoframe = getelementptr i8, ptr %bridge, i32 -136
  %26 = call ptr @memcpy(ptr %infoframe, ptr %avi, i32 68)
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.then104.if.end108_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %avi) #7
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end99.if.end109_crit_edge
  call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #7
  %call110 = call fastcc i32 @hdmi_power_on_full(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end118, label %do.end115

do.end115:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %done

if.end118:                                        ; preds = %if.end109
  %audio_configured = getelementptr i8, ptr %bridge, i32 292
  %27 = ptrtoint ptr %audio_configured to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %audio_configured, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool119.not = icmp eq i8 %28, 0
  br i1 %tobool119.not, label %if.end118.do.body134_crit_edge, label %if.then120

if.end118.do.body134_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body134

if.then120:                                       ; preds = %if.end118
  %core = getelementptr i8, ptr %bridge, i32 -196
  %wp = getelementptr i8, ptr %bridge, i32 -312
  %audio_config = getelementptr i8, ptr %bridge, i32 296
  %29 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cfg, align 4
  %call122 = call i32 @hdmi5_audio_config(ptr noundef %core, ptr noundef %wp, ptr noundef %audio_config, i32 noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then120.do.body134_crit_edge, label %do.end127

if.then120.do.body134_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body134

do.end127:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call122) #11
  %audio_abort_cb = getelementptr i8, ptr %bridge, i32 284
  %31 = ptrtoint ptr %audio_abort_cb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %audio_abort_cb, align 4
  %pdev = getelementptr i8, ptr %bridge, i32 -324
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  call void %32(ptr noundef %dev) #7
  %35 = ptrtoint ptr %audio_configured to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %audio_configured, align 4
  br label %do.body134

do.body134:                                       ; preds = %do.end127, %if.then120.do.body134_crit_edge, %if.end118.do.body134_crit_edge
  %audio_playing_lock = getelementptr i8, ptr %bridge, i32 304
  %call138 = call i32 @_raw_spin_lock_irqsave(ptr noundef %audio_playing_lock) #7
  %36 = ptrtoint ptr %audio_configured to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %audio_configured, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool144.not = icmp eq i8 %37, 0
  br i1 %tobool144.not, label %do.body134.if.end149_crit_edge, label %land.lhs.true

do.body134.if.end149_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

land.lhs.true:                                    ; preds = %do.body134
  %audio_playing = getelementptr i8, ptr %bridge, i32 348
  %38 = ptrtoint ptr %audio_playing to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %audio_playing, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool146.not = icmp eq i8 %39, 0
  br i1 %tobool146.not, label %land.lhs.true.if.end149_crit_edge, label %if.then148

land.lhs.true.if.end149_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.then148:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %wp.i = getelementptr i8, ptr %bridge, i32 -312
  %40 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wp.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 16
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !115
  %and.i = and i32 %42, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #7, !srcloc !116
  %call4.i = call i32 @hdmi_wp_audio_enable(ptr noundef %wp.i, i1 noundef zeroext true) #7
  %call6.i = call i32 @hdmi_wp_audio_core_req_enable(ptr noundef %wp.i, i1 noundef zeroext true) #7
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %land.lhs.true.if.end149_crit_edge, %do.body134.if.end149_crit_edge
  %display_enabled = getelementptr i8, ptr %bridge, i32 349
  %43 = ptrtoint ptr %display_enabled to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %display_enabled, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %audio_playing_lock, i32 noundef %call138) #7
  br label %done

done:                                             ; preds = %if.end149, %do.end115
  call void @mutex_unlock(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end83, %do.end46, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi5_bridge_disable(ptr noundef %bridge, ptr nocapture noundef readnone %bridge_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -416
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #7
  %audio_playing_lock = getelementptr i8, ptr %bridge, i32 304
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %audio_playing_lock) #7
  %wp.i = getelementptr i8, ptr %bridge, i32 -312
  %call.i = tail call i32 @hdmi_wp_audio_core_req_enable(ptr noundef %wp.i, i1 noundef zeroext false) #7
  %call2.i = tail call i32 @hdmi_wp_audio_enable(ptr noundef %wp.i, i1 noundef zeroext false) #7
  %0 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !115
  %and.i = and i32 %2, -13
  %wp_idlemode.i = getelementptr i8, ptr %bridge, i32 288
  %3 = ptrtoint ptr %wp_idlemode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wp_idlemode.i, align 4
  %shl.i = shl i32 %4, 2
  %and7.i = and i32 %shl.i, 12
  %or.i = or i32 %and7.i, %and.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #7, !srcloc !116
  %display_enabled = getelementptr i8, ptr %bridge, i32 349
  %5 = ptrtoint ptr %display_enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %display_enabled, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %audio_playing_lock, i32 noundef %call3) #7
  tail call fastcc void @hdmi_power_off_full(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hdmi5_bridge_get_edid(ptr noundef %bridge, ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -416
  %core_enabled = getelementptr i8, ptr %bridge, i32 -60
  %0 = ptrtoint ptr %core_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %core_enabled, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_core_enable.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi5_bridge_get_edid, %do.end.i)) #7
          to label %if.then.i [label %do.end.i], !srcloc !119

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_core_enable.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.39) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #7
  %call4.i = tail call fastcc i32 @hdmi_power_on_core(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %hdmi_core_enable.exit.thread, label %hdmi_core_enable.exit

hdmi_core_enable.exit.thread:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  br label %if.end5

hdmi_core_enable.exit:                            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  br label %cleanup

if.end5:                                          ; preds = %hdmi_core_enable.exit.thread, %entry.if.end5_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_runtime_get.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi5_bridge_get_edid, %do.end.i61)) #7
          to label %if.then.i60 [label %do.end.i61], !srcloc !119

if.then.i60:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_runtime_get.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.33) #7
  br label %do.end.i61

do.end.i61:                                       ; preds = %if.then.i60, %if.end5
  %pdev.i = getelementptr i8, ptr %bridge, i32 -324
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body11, label %do.end17, !prof !117

do.body11:                                        ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %dev37.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev37.i) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/dss/hdmi5.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 446, 0\0A.popsection", ""() #7, !srcloc !120
  unreachable

do.end17:                                         ; preds = %do.end.i61
  %wp = getelementptr i8, ptr %bridge, i32 -312
  %6 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !115
  %shr = and i32 %8, 12
  %9 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wp, align 4
  %add.ptr.i62 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #7, !srcloc !115
  %and24 = and i32 %11, -13
  %or = or i32 %and24, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %or) #7, !srcloc !116
  %core = getelementptr i8, ptr %bridge, i32 -196
  tail call void @hdmi5_core_ddc_init(ptr noundef %core) #7
  %call26 = tail call ptr @drm_do_get_edid(ptr noundef %connector, ptr noundef nonnull @hdmi5_core_ddc_read, ptr noundef %core) #7
  tail call void @hdmi5_core_ddc_uninit(ptr noundef %core) #7
  %12 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wp, align 4
  %add.ptr.i64 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #7, !srcloc !115
  %and33 = and i32 %14, -13
  %or35 = or i32 %and33, %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %or35) #7, !srcloc !116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_runtime_put.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi5_bridge_get_edid, %do.end.i71)) #7
          to label %if.then.i66 [label %do.end.i71], !srcloc !119

if.then.i66:                                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_runtime_put.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.36) #7
  br label %do.end.i71

do.end.i71:                                       ; preds = %if.then.i66, %do.end17
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  %dev.i68 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %call.i.i69 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i68, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69)
  %cmp.i70 = icmp slt i32 %call.i.i69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i69)
  %cmp5.i = icmp ne i32 %call.i.i69, -38
  %spec.select.i = and i1 %cmp.i70, %cmp5.i
  br i1 %spec.select.i, label %do.end21.i, label %do.end.i71.hdmi_runtime_put.exit_crit_edge, !prof !117

do.end.i71.hdmi_runtime_put.exit_crit_edge:       ; preds = %do.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %hdmi_runtime_put.exit

do.end21.i:                                       ; preds = %do.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 61, i32 noundef 9, ptr noundef null) #7
  br label %hdmi_runtime_put.exit

hdmi_runtime_put.exit:                            ; preds = %do.end21.i, %do.end.i71.hdmi_runtime_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  br i1 %cmp, label %if.then38, label %hdmi_runtime_put.exit.cleanup_crit_edge

hdmi_runtime_put.exit.cleanup_crit_edge:          ; preds = %hdmi_runtime_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %hdmi_runtime_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @hdmi_core_disable(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %hdmi_runtime_put.exit.cleanup_crit_edge, %hdmi_core_enable.exit
  %retval.0 = phi ptr [ null, %hdmi_core_enable.exit ], [ %call26, %if.then38 ], [ %call26, %hdmi_runtime_put.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_set_tv_pclk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_power_on_full(ptr noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  %hdmi_cinfo = alloca %struct.dss_pll_clock_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %hdmi_cinfo) #7
  %0 = call ptr @memset(ptr %hdmi_cinfo, i32 0, i32 44)
  %call = tail call fastcc i32 @hdmi_power_on_core(ptr noundef %hdmi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_power_on_full.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_power_on_full, %do.end)) #7
          to label %if.then7 [label %do.end], !srcloc !119

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hactive = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 8, i32 0, i32 1
  %1 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hactive, align 4
  %vactive = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 8, i32 0, i32 5
  %3 = ptrtoint ptr %vactive to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vactive, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_power_on_full.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.24, i32 noundef %2, i32 noundef %4) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cfg, align 4
  %flags = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 8, i32 0, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = lshr i32 %8, 10
  %and.lobit = and i32 %and, 1
  %spec.select = shl i32 %6, %and.lobit
  %mul12 = mul i32 %spec.select, 10
  %pll = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 5
  %clkin = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 5, i32 0, i32 3
  %9 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clkin, align 4
  %call16 = tail call i32 @clk_get_rate(ptr noundef %10) #7
  %call17 = call zeroext i1 @dss_pll_calc_b(ptr noundef %pll, i32 noundef %call16, i32 noundef %mul12, ptr noundef nonnull %hdmi_cinfo) #7
  %wp = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 4
  call void @hdmi_wp_clear_irqenable(ptr noundef %wp, i32 noundef -1) #7
  %call20 = call i32 @hdmi_wp_get_irqstatus(ptr noundef %wp) #7
  call void @hdmi_wp_set_irqstatus(ptr noundef %wp, i32 noundef %call20) #7
  %call23 = call i32 @dss_pll_enable(ptr noundef %pll) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  br label %err_pll_enable

if.end31:                                         ; preds = %do.end
  %call34 = call i32 @dss_pll_set_config(ptr noundef %pll, ptr noundef nonnull %hdmi_cinfo) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #11
  br label %err_pll_cfg

if.end42:                                         ; preds = %if.end31
  %phy = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 6
  %clkdco = getelementptr inbounds %struct.dss_pll_clock_info, ptr %hdmi_cinfo, i32 0, i32 1
  %11 = ptrtoint ptr %clkdco to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clkdco, align 4
  %clkout = getelementptr inbounds %struct.dss_pll_clock_info, ptr %hdmi_cinfo, i32 0, i32 2
  %13 = ptrtoint ptr %clkout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clkout, align 4
  %call43 = call i32 @hdmi_phy_configure(ptr noundef %phy, i32 noundef %12, i32 noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end64, label %do.body46

do.body46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_power_on_full.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_power_on_full, %err_pll_cfg)) #7
          to label %if.then60 [label %err_pll_cfg], !srcloc !119

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_power_on_full.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.30) #7
  br label %err_pll_cfg

if.end64:                                         ; preds = %if.end42
  %call66 = call i32 @hdmi_wp_set_phy_pwr(ptr noundef %wp, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end64.err_pll_cfg_crit_edge

if.end64.err_pll_cfg_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pll_cfg

if.end69:                                         ; preds = %if.end64
  %core = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 7
  call void @hdmi5_configure(ptr noundef %core, ptr noundef %wp, ptr noundef %cfg) #7
  %output = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 11
  %call72 = call i32 @dss_mgr_enable(ptr noundef %output) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end69.err_mgr_enable_crit_edge

if.end69.err_mgr_enable_crit_edge:                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mgr_enable

if.end75:                                         ; preds = %if.end69
  %call77 = call i32 @hdmi_wp_video_start(ptr noundef %wp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %err_vid_enable

if.end80:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  call void @hdmi_wp_set_irqenable(ptr noundef %wp, i32 noundef 100663296) #7
  br label %cleanup

err_vid_enable:                                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  call void @dss_mgr_disable(ptr noundef %output) #7
  br label %err_mgr_enable

err_mgr_enable:                                   ; preds = %err_vid_enable, %if.end69.err_mgr_enable_crit_edge
  %call84 = call i32 @hdmi_wp_set_phy_pwr(ptr noundef %wp, i32 noundef 0) #7
  br label %err_pll_cfg

err_pll_cfg:                                      ; preds = %err_mgr_enable, %if.end64.err_pll_cfg_crit_edge, %if.then60, %do.body46, %do.end39
  call void @dss_pll_disable(ptr noundef %pll) #7
  br label %err_pll_enable

err_pll_enable:                                   ; preds = %err_pll_cfg, %do.end28
  %core_enabled.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 10
  %15 = ptrtoint ptr %core_enabled.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %core_enabled.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_runtime_put.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_power_on_full, %do.end.i.i)) #7
          to label %if.then.i.i [label %do.end.i.i], !srcloc !119

if.then.i.i:                                      ; preds = %err_pll_enable
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_runtime_put.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.36) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %err_pll_enable
  %pdev.i.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 1
  %16 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %call.i.i.i = call i32 @__pm_runtime_idle(ptr noundef %dev.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i.i)
  %cmp5.i.i = icmp ne i32 %call.i.i.i, -38
  %spec.select.i.i = and i1 %cmp.i.i, %cmp5.i.i
  br i1 %spec.select.i.i, label %do.end21.i.i, label %do.end.i.i.hdmi_power_off_core.exit_crit_edge, !prof !117

do.end.i.i.hdmi_power_off_core.exit_crit_edge:    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hdmi_power_off_core.exit

do.end21.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 61, i32 noundef 9, ptr noundef null) #7
  br label %hdmi_power_off_core.exit

hdmi_power_off_core.exit:                         ; preds = %do.end21.i.i, %do.end.i.i.hdmi_power_off_core.exit_crit_edge
  %vdda_reg.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 9
  %18 = ptrtoint ptr %vdda_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdda_reg.i, align 4
  %call.i = call i32 @regulator_disable(ptr noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %hdmi_power_off_core.exit, %if.end80, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %hdmi_power_off_core.exit ], [ 0, %if.end80 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %hdmi_cinfo) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi5_audio_config(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_power_on_core(ptr nocapture noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdda_reg = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 9
  %0 = ptrtoint ptr %vdda_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdda_reg, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_runtime_get.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_power_on_core, %do.end.i)) #7
          to label %if.then.i [label %do.end.i], !srcloc !119

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_runtime_get.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.33) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %pdev.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %err_runtime_get, label %if.end4, !prof !117

if.end4:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dss = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 2
  %4 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dss, align 4
  tail call void @dss_select_hdmi_venc_clk_source(ptr noundef %5, i32 noundef 1) #7
  %core_enabled = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 10
  %6 = ptrtoint ptr %core_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %core_enabled, align 4
  br label %cleanup

err_runtime_get:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  %dev37.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev37.i) #7
  %9 = ptrtoint ptr %vdda_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdda_reg, align 4
  %call6 = tail call i32 @regulator_disable(ptr noundef %10) #7
  br label %cleanup

cleanup:                                          ; preds = %err_runtime_get, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %err_runtime_get ], [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dss_pll_calc_b(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_clear_irqenable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_pll_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_pll_set_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_phy_configure(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi5_configure(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_mgr_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_wp_video_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_set_irqenable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_mgr_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_pll_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_select_hdmi_venc_clk_source(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #7, !srcloc !122
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_wp_audio_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_wp_audio_core_req_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_power_off_full(ptr noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wp = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 4
  tail call void @hdmi_wp_clear_irqenable(ptr noundef %wp, i32 noundef -1) #7
  tail call void @hdmi_wp_video_stop(ptr noundef %wp) #7
  %output = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 11
  tail call void @dss_mgr_disable(ptr noundef %output) #7
  %call = tail call i32 @hdmi_wp_set_phy_pwr(ptr noundef %wp, i32 noundef 0) #7
  %pll = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 5
  tail call void @dss_pll_disable(ptr noundef %pll) #7
  %core_enabled.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 10
  %0 = ptrtoint ptr %core_enabled.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %core_enabled.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_runtime_put.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_power_off_full, %do.end.i.i)) #7
          to label %if.then.i.i [label %do.end.i.i], !srcloc !119

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_runtime_put.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.36) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %entry
  %pdev.i.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 1
  %1 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call.i.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i.i)
  %cmp5.i.i = icmp ne i32 %call.i.i.i, -38
  %spec.select.i.i = and i1 %cmp.i.i, %cmp5.i.i
  br i1 %spec.select.i.i, label %do.end21.i.i, label %do.end.i.i.hdmi_power_off_core.exit_crit_edge, !prof !117

do.end.i.i.hdmi_power_off_core.exit_crit_edge:    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hdmi_power_off_core.exit

do.end21.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 61, i32 noundef 9, ptr noundef null) #7
  br label %hdmi_power_off_core.exit

hdmi_power_off_core.exit:                         ; preds = %do.end21.i.i, %do.end.i.i.hdmi_power_off_core.exit_crit_edge
  %vdda_reg.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 9
  %3 = ptrtoint ptr %vdda_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdda_reg.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_video_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi5_core_ddc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi5_core_ddc_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi5_core_ddc_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_core_disable(ptr noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_core_disable.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_core_disable, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_core_disable.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.42) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef %hdmi, i32 noundef 0) #7
  %core_enabled.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 10
  %0 = ptrtoint ptr %core_enabled.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %core_enabled.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_runtime_put.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_core_disable, %do.end.i.i)) #7
          to label %if.then.i.i [label %do.end.i.i], !srcloc !119

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_runtime_put.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.36) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %do.end
  %pdev.i.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 1
  %1 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call.i.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i.i)
  %cmp5.i.i = icmp ne i32 %call.i.i.i, -38
  %spec.select.i.i = and i1 %cmp.i.i, %cmp5.i.i
  br i1 %spec.select.i.i, label %do.end21.i.i, label %do.end.i.i.hdmi_power_off_core.exit_crit_edge, !prof !117

do.end.i.i.hdmi_power_off_core.exit_crit_edge:    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hdmi_power_off_core.exit

do.end21.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 61, i32 noundef 9, ptr noundef null) #7
  br label %hdmi_power_off_core.exit

hdmi_power_off_core.exit:                         ; preds = %do.end21.i.i, %do.end.i.i.hdmi_power_off_core.exit_crit_edge
  %vdda_reg.i = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 9
  %3 = ptrtoint ptr %vdda_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdda_reg.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %4) #7
  tail call void @mutex_unlock(ptr noundef %hdmi) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi5_bind(ptr nocapture noundef readonly %dev, ptr noundef %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dss_get_device(ptr noundef %master) #7
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dss2 = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dss2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dss2, align 4
  %pdev = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %pll = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 5
  %wp = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @hdmi_pll_init(ptr noundef %call, ptr noundef %4, ptr noundef %pll, ptr noundef %wp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @hdmi_audio_register(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call4) #11
  tail call void @hdmi_pll_uninit(ptr noundef %pll) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call ptr @dss_debugfs_create_file(ptr noundef %call, ptr noundef nonnull @.str.45, ptr noundef nonnull @hdmi_dump_regs, ptr noundef %1) #7
  %debugfs = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %debugfs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %if.end8 ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi5_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %debugfs = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 4
  tail call void @dss_debugfs_remove_file(ptr noundef %3) #7
  %audio_pdev = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %audio_pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %audio_pdev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_device_unregister(ptr noundef nonnull %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pll = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 5
  tail call void @hdmi_pll_uninit(ptr noundef %pll) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dss_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_pll_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_audio_register(ptr noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %pdata = alloca %struct.omap_hdmi_audio_pdata, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pdata) #7
  %0 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, ptr %pdata, i32 0, i32 1
  %1 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, ptr %pdata, i32 0, i32 2
  %2 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, ptr %pdata, i32 0, i32 3
  %pdev = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %pdata, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %0, align 4
  %wp = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 4
  %call = tail call i32 @hdmi_wp_get_audio_dma_addr(ptr noundef %wp) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hdmi_audio_ops, ptr %2, align 4
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %11 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 255, i32 48)
  %13 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev3, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %fwnode.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %11, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.46, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pdata, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %audio_pdev = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 13
  %24 = ptrtoint ptr %audio_pdev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i, ptr %audio_pdev, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_runtime_get.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_audio_register, %do.end.i)) #7
          to label %if.then.i [label %do.end.i], !srcloc !119

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_runtime_get.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.33) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %call.i.i21 = call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %cmp.i22 = icmp slt i32 %call.i.i21, 0
  br i1 %cmp.i22, label %do.end20.i, label %do.end.i.hdmi_runtime_get.exit_crit_edge, !prof !117

do.end.i.hdmi_runtime_get.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hdmi_runtime_get.exit

do.end20.i:                                       ; preds = %do.end.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end20.i.hdmi_runtime_get.exit_crit_edge, label %do.end11.i.i.i.i

do.end20.i.hdmi_runtime_get.exit_crit_edge:       ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hdmi_runtime_get.exit

do.end11.i.i.i.i:                                 ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  br label %hdmi_runtime_get.exit

hdmi_runtime_get.exit:                            ; preds = %do.end11.i.i.i.i, %do.end20.i.hdmi_runtime_get.exit_crit_edge, %do.end.i.hdmi_runtime_get.exit_crit_edge
  %31 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 16
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !115
  %and = lshr i32 %33, 2
  %shr = and i32 %and, 3
  %wp_idlemode = getelementptr inbounds %struct.omap_hdmi, ptr %hdmi, i32 0, i32 15
  %34 = ptrtoint ptr %wp_idlemode to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr, ptr %wp_idlemode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_runtime_put.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_audio_register, %do.end.i28)) #7
          to label %if.then.i23 [label %do.end.i28], !srcloc !119

if.then.i23:                                      ; preds = %hdmi_runtime_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_runtime_put.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.36) #7
  br label %do.end.i28

do.end.i28:                                       ; preds = %if.then.i23, %hdmi_runtime_get.exit
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 4
  %dev.i25 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %call.i.i26 = call i32 @__pm_runtime_idle(ptr noundef %dev.i25, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %cmp.i27 = icmp slt i32 %call.i.i26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i26)
  %cmp5.i = icmp ne i32 %call.i.i26, -38
  %spec.select.i = and i1 %cmp.i27, %cmp5.i
  br i1 %spec.select.i, label %do.end21.i, label %do.end.i28.cleanup_crit_edge, !prof !117

do.end.i28.cleanup_crit_edge:                     ; preds = %do.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end21.i:                                       ; preds = %do.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 61, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end21.i, %do.end.i28.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %25, %if.then ], [ 0, %do.end.i28.cleanup_crit_edge ], [ 0, %do.end21.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pdata) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dss_debugfs_create_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_dump_regs(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_runtime_get.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_dump_regs, %do.end.i)) #7
          to label %if.then.i [label %do.end.i], !srcloc !119

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_runtime_get.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.33) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %pdev.i = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end20.i, label %if.end, !prof !117

do.end20.i:                                       ; preds = %do.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end20.i.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end20.i.cleanup_crit_edge:                     ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %wp = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 4
  tail call void @hdmi_wp_dump(ptr noundef %wp, ptr noundef %s) #7
  %pll = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 5
  tail call void @hdmi_pll_dump(ptr noundef %pll, ptr noundef %s) #7
  %phy = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 6
  tail call void @hdmi_phy_dump(ptr noundef %phy, ptr noundef %s) #7
  %core = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 7
  tail call void @hdmi5_core_dump(ptr noundef %core, ptr noundef %s) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_runtime_put.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_dump_regs, %do.end.i20)) #7
          to label %if.then.i15 [label %do.end.i20], !srcloc !119

if.then.i15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_runtime_put.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.36) #7
  br label %do.end.i20

do.end.i20:                                       ; preds = %if.then.i15, %if.end
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  %dev.i17 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %call.i.i18 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i17, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp.i19 = icmp slt i32 %call.i.i18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i18)
  %cmp5.i = icmp ne i32 %call.i.i18, -38
  %spec.select.i = and i1 %cmp.i19, %cmp5.i
  br i1 %spec.select.i, label %do.end21.i, label %do.end.i20.cleanup_crit_edge, !prof !117

do.end.i20.cleanup_crit_edge:                     ; preds = %do.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end21.i:                                       ; preds = %do.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 61, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end21.i, %do.end.i20.cleanup_crit_edge, %do.end11.i.i.i.i, %do.end20.i.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_pll_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_wp_get_audio_dma_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_audio_startup(ptr nocapture noundef readonly %dev, ptr noundef %abort_cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %audio_abort_cb = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %audio_abort_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %audio_abort_cb, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !124

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 506, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %audio_abort_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %abort_cb, ptr %audio_abort_cb, align 4
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_audio_shutdown(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %audio_abort_cb = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %audio_abort_cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %audio_abort_cb, align 4
  %audio_configured = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %audio_configured to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %audio_configured, align 4
  %audio_playing = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %audio_playing to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %audio_playing, align 4
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_audio_start(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %audio_playing_lock = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 18
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %audio_playing_lock) #7
  %display_enabled = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %display_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %display_enabled, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %entry
  %hdmi_dvi_mode.i = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %hdmi_dvi_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdmi_dvi_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %do.end10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #11
  br label %if.end

if.end:                                           ; preds = %do.end10, %if.then.if.end_crit_edge
  %wp.i = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wp.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !115
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #7, !srcloc !116
  %call4.i = tail call i32 @hdmi_wp_audio_enable(ptr noundef %wp.i, i1 noundef zeroext true) #7
  %call6.i = tail call i32 @hdmi_wp_audio_core_req_enable(ptr noundef %wp.i, i1 noundef zeroext true) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %audio_playing = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %audio_playing to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %audio_playing, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %audio_playing_lock, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_audio_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hdmi_dvi_mode.i = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %hdmi_dvi_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hdmi_dvi_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %entry.do.body4_crit_edge, label %do.end

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.49) #11
  br label %do.body4

do.body4:                                         ; preds = %do.end, %entry.do.body4_crit_edge
  %audio_playing_lock = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 18
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %audio_playing_lock) #7
  %display_enabled = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %display_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %display_enabled, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body4.if.end13_crit_edge, label %if.then12

do.body4.if.end13_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %wp.i = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @hdmi_wp_audio_core_req_enable(ptr noundef %wp.i, i1 noundef zeroext false) #7
  %call2.i = tail call i32 @hdmi_wp_audio_enable(ptr noundef %wp.i, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %wp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wp.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !115
  %and.i = and i32 %8, -13
  %wp_idlemode.i = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %wp_idlemode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wp_idlemode.i, align 4
  %shl.i = shl i32 %10, 2
  %and7.i = and i32 %shl.i, 12
  %or.i = or i32 %and7.i, %and.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #7, !srcloc !116
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.body4.if.end13_crit_edge
  %audio_playing = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %audio_playing to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %audio_playing, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %audio_playing_lock, i32 noundef %call7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_audio_config(ptr nocapture noundef readonly %dev, ptr noundef %dss_audio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %display_enabled = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %display_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %display_enabled, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %core = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 7
  %wp = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 4
  %cfg = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg, align 4
  %call1 = tail call i32 @hdmi5_audio_config(ptr noundef %core, ptr noundef %wp, ptr noundef %dss_audio, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %audio_configured = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %audio_configured to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %audio_configured, align 4
  %audio_config = getelementptr inbounds %struct.omap_hdmi, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %dss_audio to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %dss_audio, align 4
  %9 = ptrtoint ptr %audio_config to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %audio_config, align 4
  br label %out

out:                                              ; preds = %if.end4, %if.then.out_crit_edge
  %ret.1 = phi i32 [ %call1, %if.then.out_crit_edge ], [ 0, %if.end4 ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_pll_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_phy_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi5_core_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_debugfs_remove_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_cleanup_output(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 824, i32 13}
!2 = !{ptr @omapdss_hdmi5hw_driver, !3, !"omapdss_hdmi5hw_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 820, i32 24}
!4 = !{ptr @hdmi5_probe.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 737, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @hdmi5_probe.__key.2, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 738, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 758, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hdmi5_probe._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @hdmi5_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 765, i32 18}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 767, i32 3}
!20 = !{ptr @hdmi5_probe._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @hdmi5_probe._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 771, i32 50}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 775, i32 4}
!26 = !{ptr @hdmi5_probe._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hdmi5_probe._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 682, i32 14}
!30 = !{ptr @hdmi5_bridge_funcs, !31, !"hdmi5_bridge_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 469, i32 38}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 384, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hdmi5_bridge_enable._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hdmi5_bridge_enable._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 393, i32 4}
!39 = !{ptr @hdmi5_bridge_enable._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hdmi5_bridge_enable._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 157, i32 2}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @hdmi_power_on_full.__UNIQUE_ID_ddebug310, !42, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!46 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 177, i32 3}
!49 = !{ptr @hdmi_power_on_full._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @hdmi_power_on_full._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 183, i32 3}
!53 = !{ptr @hdmi_power_on_full._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @hdmi_power_on_full._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 190, i32 3}
!57 = !{ptr @hdmi_power_on_full.__UNIQUE_ID_ddebug311, !56, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!58 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 44, i32 2}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @hdmi_runtime_get.__UNIQUE_ID_ddebug308, !60, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!63 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 58, i32 2}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @hdmi_runtime_put.__UNIQUE_ID_ddebug309, !65, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!68 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 280, i32 2}
!71 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @hdmi_core_enable.__UNIQUE_ID_ddebug312, !70, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!73 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @hdmi_core_enable._entry, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 286, i32 3}
!76 = !{ptr @hdmi_core_enable._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 300, i32 2}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @hdmi_core_disable.__UNIQUE_ID_ddebug313, !78, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!81 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @hdmi5_component_ops, !83, !"hdmi5_component_ops", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 663, i32 35}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 637, i32 3}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @hdmi5_bind._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @hdmi5_bind._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 641, i32 47}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 605, i32 21}
!93 = !{ptr @hdmi_audio_ops, !94, !"hdmi_audio_ops", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 587, i32 41}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 537, i32 4}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @hdmi_audio_start._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @hdmi_audio_start._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 553, i32 3}
!102 = !{ptr @hdmi_audio_stop._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @hdmi_audio_stop._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @hdmi_of_match, !105, !"hdmi_of_match", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5.c", i32 814, i32 34}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 4052626}
!116 = !{i64 4052208}
!117 = !{!"branch_weights", i32 1, i32 2000}
!118 = !{i8 0, i8 2}
!119 = !{i64 2148708103, i64 2148708108, i64 2148708121, i64 2148708165, i64 2148708199, i64 2148708220}
!120 = !{i64 2157007136, i64 2157007636, i64 2157007173, i64 2157007229, i64 2157007263, i64 2157007287, i64 2157007328, i64 2157007349, i64 2157007377, i64 2157007411}
!121 = !{i64 2148225707}
!122 = !{i64 710530, i64 710555, i64 710577, i64 710593, i64 710605, i64 710625, i64 710649, i64 710665, i64 710677}
!123 = !{i64 2148225895}
!124 = !{!"branch_weights", i32 2000, i32 1}
