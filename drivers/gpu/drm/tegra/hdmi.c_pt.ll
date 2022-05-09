; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/hdmi.c"
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
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.98 = type { i32, i32 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.tegra_hdmi_config = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.tmds_config = type { i32, i32, i32, i32, i32, i32 }
%struct.tegra_core_opp_params = type { i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.tegra_hdmi = type { %struct.host1x_client, %struct.tegra_output, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.tegra_hda_format, i32, i8, i8, ptr, ptr, %struct.mutex }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.tegra_output = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_encoder, %struct.drm_connector }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.tegra_hda_format = type { i32, i32, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.hdmi_vendor_infoframe = type { i32, i8, i8, i32, i8, i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-hdmi\00", [21 x i8] zeroinitializer }, align 32
@tegra_hdmi_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_hdmi_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_hdmi_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_hdmi_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_hdmi_config }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tegra_hdmi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_hdmi_probe, ptr @tegra_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_hdmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&hdmi->audio_lock\00", [46 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1798, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_hdmi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpu/drm/tegra/hdmi.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry_ptr = internal global ptr @tegra_hdmi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1804, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get reset\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry_ptr.10 = internal global ptr @tegra_hdmi_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parent\00", [25 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1814, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to setup clocks: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry_ptr.14 = internal global ptr @tegra_hdmi_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 1825, ptr null, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get HDMI regulator: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry_ptr.18 = internal global ptr @tegra_hdmi_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 1836, ptr null, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get PLL regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry_ptr.22 = internal global ptr @tegra_hdmi_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 1847, ptr null, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get VDD regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry_ptr.26 = internal global ptr @tegra_hdmi_probe._entry.24, section ".printk_index", align 4
@tegra_hdmi_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1872, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request IRQ#%u: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry_ptr.29 = internal global ptr @tegra_hdmi_probe._entry.27, section ".printk_index", align 4
@hdmi_client_ops = internal constant { %struct.host1x_client_ops, [40 x i8] } { %struct.host1x_client_ops { ptr null, ptr @tegra_hdmi_init, ptr @tegra_hdmi_exit, ptr null, ptr @tegra_hdmi_runtime_suspend, ptr @tegra_hdmi_runtime_resume }, [40 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra_hdmi_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 1893, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register host1x client: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_hdmi_probe._entry_ptr.33 = internal global ptr @tegra_hdmi_probe._entry.31, section ".printk_index", align 4
@__tracepoint_hdmi_readl = external dso_local global %struct.tracepoint, align 4
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tegra/trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_hdmi_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_hdmi_writel = external dso_local global %struct.tracepoint, align 4
@trace_hdmi_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tegra_hdmi_setup_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 566, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cannot set audio to %u Hz at %u Hz pixel clock\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_hdmi_setup_audio\00", [41 x i8] zeroinitializer }, align 32
@tegra_hdmi_setup_audio._entry_ptr = internal global ptr @tegra_hdmi_setup_audio._entry, section ".printk_index", align 4
@tegra_hdmi_setup_audio.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.38, ptr @.str.5, ptr @.str.40, i8 0, i8 -114, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra_drm\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"audio: pixclk=%u, n=%u, cts=%u, aval=%u\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra_hdmi_write_aval.regs = internal constant { [7 x %struct.anon.98], [40 x i8] } { [7 x %struct.anon.98] [%struct.anon.98 { i32 32000, i32 191 }, %struct.anon.98 { i32 44100, i32 192 }, %struct.anon.98 { i32 48000, i32 195 }, %struct.anon.98 { i32 88200, i32 193 }, %struct.anon.98 { i32 96000, i32 196 }, %struct.anon.98 { i32 176400, i32 194 }, %struct.anon.98 { i32 192000, i32 197 }], [40 x i8] zeroinitializer }, align 32
@__const.tegra_hdmi_setup_audio_fs_tables.freqs = private unnamed_addr constant [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], align 4
@tegra_hdmi_setup_audio_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 753, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to setup audio infoframe: %zd\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra_hdmi_setup_audio_infoframe\00", [63 x i8] zeroinitializer }, align 32
@tegra_hdmi_setup_audio_infoframe._entry_ptr = internal global ptr @tegra_hdmi_setup_audio_infoframe._entry, section ".printk_index", align 4
@tegra_hdmi_setup_audio_infoframe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.5, i32 762, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to pack audio infoframe: %zd\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_hdmi_setup_audio_infoframe._entry_ptr.45 = internal global ptr @tegra_hdmi_setup_audio_infoframe._entry.43, section ".printk_index", align 4
@tegra_hdmi_write_infopack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 675, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported infoframe type: %02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_hdmi_write_infopack\00", [38 x i8] zeroinitializer }, align 32
@tegra_hdmi_write_infopack._entry_ptr = internal global ptr @tegra_hdmi_write_infopack._entry, section ".printk_index", align 4
@tegra_hdmi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @tegra_hdmi_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @tegra_hdmi_late_register, ptr @tegra_hdmi_early_unregister, ptr @tegra_output_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_hdmi_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @tegra_output_connector_get_modes, ptr null, ptr @tegra_hdmi_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tegra_hdmi_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_hdmi_encoder_disable, ptr @tegra_hdmi_encoder_enable, ptr @tegra_hdmi_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@tegra_hdmi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 1577, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize output: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_hdmi_init\00", [16 x i8] zeroinitializer }, align 32
@tegra_hdmi_init._entry_ptr = internal global ptr @tegra_hdmi_init._entry, section ".printk_index", align 4
@tegra_hdmi_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.5, i32 1586, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable HDMI regulator: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_hdmi_init._entry_ptr.52 = internal global ptr @tegra_hdmi_init._entry.50, section ".printk_index", align 4
@tegra_hdmi_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.5, i32 1592, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable PLL regulator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_hdmi_init._entry_ptr.55 = internal global ptr @tegra_hdmi_init._entry.53, section ".printk_index", align 4
@tegra_hdmi_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.5, i32 1598, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable VDD regulator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_hdmi_init._entry_ptr.58 = internal global ptr @tegra_hdmi_init._entry.56, section ".printk_index", align 4
@tegra_hdmi_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.49, ptr @.str.5, i32 1604, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register audio codec: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_hdmi_init._entry_ptr.61 = internal global ptr @tegra_hdmi_init._entry.59, section ".printk_index", align 4
@debugfs_files = internal global { [1 x %struct.drm_info_list], [16 x i8] } { [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.62, ptr @tegra_hdmi_show_regs, i32 0, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@tegra_hdmi_regs = internal constant { [164 x %struct.debugfs_reg32], [320 x i8] } { [164 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.64, i32 0 }, %struct.debugfs_reg32 { ptr @.str.65, i32 1 }, %struct.debugfs_reg32 { ptr @.str.66, i32 2 }, %struct.debugfs_reg32 { ptr @.str.67, i32 3 }, %struct.debugfs_reg32 { ptr @.str.68, i32 4 }, %struct.debugfs_reg32 { ptr @.str.69, i32 5 }, %struct.debugfs_reg32 { ptr @.str.70, i32 6 }, %struct.debugfs_reg32 { ptr @.str.71, i32 7 }, %struct.debugfs_reg32 { ptr @.str.72, i32 8 }, %struct.debugfs_reg32 { ptr @.str.73, i32 9 }, %struct.debugfs_reg32 { ptr @.str.74, i32 10 }, %struct.debugfs_reg32 { ptr @.str.75, i32 11 }, %struct.debugfs_reg32 { ptr @.str.76, i32 12 }, %struct.debugfs_reg32 { ptr @.str.77, i32 13 }, %struct.debugfs_reg32 { ptr @.str.78, i32 14 }, %struct.debugfs_reg32 { ptr @.str.79, i32 15 }, %struct.debugfs_reg32 { ptr @.str.80, i32 16 }, %struct.debugfs_reg32 { ptr @.str.81, i32 17 }, %struct.debugfs_reg32 { ptr @.str.82, i32 18 }, %struct.debugfs_reg32 { ptr @.str.83, i32 19 }, %struct.debugfs_reg32 { ptr @.str.84, i32 20 }, %struct.debugfs_reg32 { ptr @.str.85, i32 21 }, %struct.debugfs_reg32 { ptr @.str.86, i32 22 }, %struct.debugfs_reg32 { ptr @.str.87, i32 23 }, %struct.debugfs_reg32 { ptr @.str.88, i32 24 }, %struct.debugfs_reg32 { ptr @.str.89, i32 25 }, %struct.debugfs_reg32 { ptr @.str.90, i32 26 }, %struct.debugfs_reg32 { ptr @.str.91, i32 27 }, %struct.debugfs_reg32 { ptr @.str.92, i32 28 }, %struct.debugfs_reg32 { ptr @.str.93, i32 29 }, %struct.debugfs_reg32 { ptr @.str.94, i32 30 }, %struct.debugfs_reg32 { ptr @.str.95, i32 31 }, %struct.debugfs_reg32 { ptr @.str.96, i32 32 }, %struct.debugfs_reg32 { ptr @.str.97, i32 33 }, %struct.debugfs_reg32 { ptr @.str.98, i32 34 }, %struct.debugfs_reg32 { ptr @.str.99, i32 35 }, %struct.debugfs_reg32 { ptr @.str.100, i32 36 }, %struct.debugfs_reg32 { ptr @.str.101, i32 37 }, %struct.debugfs_reg32 { ptr @.str.102, i32 38 }, %struct.debugfs_reg32 { ptr @.str.103, i32 39 }, %struct.debugfs_reg32 { ptr @.str.104, i32 40 }, %struct.debugfs_reg32 { ptr @.str.105, i32 41 }, %struct.debugfs_reg32 { ptr @.str.106, i32 42 }, %struct.debugfs_reg32 { ptr @.str.107, i32 43 }, %struct.debugfs_reg32 { ptr @.str.108, i32 44 }, %struct.debugfs_reg32 { ptr @.str.109, i32 45 }, %struct.debugfs_reg32 { ptr @.str.110, i32 46 }, %struct.debugfs_reg32 { ptr @.str.111, i32 47 }, %struct.debugfs_reg32 { ptr @.str.112, i32 48 }, %struct.debugfs_reg32 { ptr @.str.113, i32 49 }, %struct.debugfs_reg32 { ptr @.str.114, i32 50 }, %struct.debugfs_reg32 { ptr @.str.115, i32 51 }, %struct.debugfs_reg32 { ptr @.str.116, i32 52 }, %struct.debugfs_reg32 { ptr @.str.117, i32 53 }, %struct.debugfs_reg32 { ptr @.str.118, i32 54 }, %struct.debugfs_reg32 { ptr @.str.119, i32 55 }, %struct.debugfs_reg32 { ptr @.str.120, i32 56 }, %struct.debugfs_reg32 { ptr @.str.121, i32 57 }, %struct.debugfs_reg32 { ptr @.str.122, i32 58 }, %struct.debugfs_reg32 { ptr @.str.123, i32 59 }, %struct.debugfs_reg32 { ptr @.str.124, i32 60 }, %struct.debugfs_reg32 { ptr @.str.125, i32 61 }, %struct.debugfs_reg32 { ptr @.str.126, i32 62 }, %struct.debugfs_reg32 { ptr @.str.127, i32 63 }, %struct.debugfs_reg32 { ptr @.str.128, i32 64 }, %struct.debugfs_reg32 { ptr @.str.129, i32 65 }, %struct.debugfs_reg32 { ptr @.str.130, i32 66 }, %struct.debugfs_reg32 { ptr @.str.131, i32 67 }, %struct.debugfs_reg32 { ptr @.str.132, i32 68 }, %struct.debugfs_reg32 { ptr @.str.133, i32 69 }, %struct.debugfs_reg32 { ptr @.str.134, i32 70 }, %struct.debugfs_reg32 { ptr @.str.135, i32 71 }, %struct.debugfs_reg32 { ptr @.str.136, i32 72 }, %struct.debugfs_reg32 { ptr @.str.137, i32 73 }, %struct.debugfs_reg32 { ptr @.str.138, i32 74 }, %struct.debugfs_reg32 { ptr @.str.139, i32 75 }, %struct.debugfs_reg32 { ptr @.str.140, i32 76 }, %struct.debugfs_reg32 { ptr @.str.141, i32 77 }, %struct.debugfs_reg32 { ptr @.str.142, i32 78 }, %struct.debugfs_reg32 { ptr @.str.143, i32 79 }, %struct.debugfs_reg32 { ptr @.str.144, i32 80 }, %struct.debugfs_reg32 { ptr @.str.145, i32 81 }, %struct.debugfs_reg32 { ptr @.str.146, i32 83 }, %struct.debugfs_reg32 { ptr @.str.147, i32 84 }, %struct.debugfs_reg32 { ptr @.str.148, i32 85 }, %struct.debugfs_reg32 { ptr @.str.149, i32 86 }, %struct.debugfs_reg32 { ptr @.str.150, i32 87 }, %struct.debugfs_reg32 { ptr @.str.151, i32 88 }, %struct.debugfs_reg32 { ptr @.str.152, i32 89 }, %struct.debugfs_reg32 { ptr @.str.153, i32 90 }, %struct.debugfs_reg32 { ptr @.str.154, i32 91 }, %struct.debugfs_reg32 { ptr @.str.155, i32 92 }, %struct.debugfs_reg32 { ptr @.str.156, i32 93 }, %struct.debugfs_reg32 { ptr @.str.157, i32 94 }, %struct.debugfs_reg32 { ptr @.str.158, i32 95 }, %struct.debugfs_reg32 { ptr @.str.159, i32 96 }, %struct.debugfs_reg32 { ptr @.str.160, i32 97 }, %struct.debugfs_reg32 { ptr @.str.161, i32 98 }, %struct.debugfs_reg32 { ptr @.str.162, i32 99 }, %struct.debugfs_reg32 { ptr @.str.163, i32 100 }, %struct.debugfs_reg32 { ptr @.str.164, i32 101 }, %struct.debugfs_reg32 { ptr @.str.165, i32 102 }, %struct.debugfs_reg32 { ptr @.str.166, i32 103 }, %struct.debugfs_reg32 { ptr @.str.167, i32 104 }, %struct.debugfs_reg32 { ptr @.str.168, i32 105 }, %struct.debugfs_reg32 { ptr @.str.169, i32 106 }, %struct.debugfs_reg32 { ptr @.str.170, i32 107 }, %struct.debugfs_reg32 { ptr @.str.171, i32 108 }, %struct.debugfs_reg32 { ptr @.str.172, i32 109 }, %struct.debugfs_reg32 { ptr @.str.173, i32 110 }, %struct.debugfs_reg32 { ptr @.str.174, i32 111 }, %struct.debugfs_reg32 { ptr @.str.175, i32 114 }, %struct.debugfs_reg32 { ptr @.str.176, i32 115 }, %struct.debugfs_reg32 { ptr @.str.177, i32 116 }, %struct.debugfs_reg32 { ptr @.str.178, i32 117 }, %struct.debugfs_reg32 { ptr @.str.179, i32 118 }, %struct.debugfs_reg32 { ptr @.str.180, i32 119 }, %struct.debugfs_reg32 { ptr @.str.181, i32 120 }, %struct.debugfs_reg32 { ptr @.str.182, i32 121 }, %struct.debugfs_reg32 { ptr @.str.183, i32 122 }, %struct.debugfs_reg32 { ptr @.str.184, i32 123 }, %struct.debugfs_reg32 { ptr @.str.185, i32 124 }, %struct.debugfs_reg32 { ptr @.str.186, i32 125 }, %struct.debugfs_reg32 { ptr @.str.187, i32 126 }, %struct.debugfs_reg32 { ptr @.str.188, i32 127 }, %struct.debugfs_reg32 { ptr @.str.189, i32 128 }, %struct.debugfs_reg32 { ptr @.str.190, i32 129 }, %struct.debugfs_reg32 { ptr @.str.191, i32 130 }, %struct.debugfs_reg32 { ptr @.str.192, i32 131 }, %struct.debugfs_reg32 { ptr @.str.193, i32 132 }, %struct.debugfs_reg32 { ptr @.str.194, i32 133 }, %struct.debugfs_reg32 { ptr @.str.195, i32 134 }, %struct.debugfs_reg32 { ptr @.str.196, i32 135 }, %struct.debugfs_reg32 { ptr @.str.197, i32 136 }, %struct.debugfs_reg32 { ptr @.str.198, i32 137 }, %struct.debugfs_reg32 { ptr @.str.199, i32 138 }, %struct.debugfs_reg32 { ptr @.str.200, i32 139 }, %struct.debugfs_reg32 { ptr @.str.201, i32 140 }, %struct.debugfs_reg32 { ptr @.str.202, i32 148 }, %struct.debugfs_reg32 { ptr @.str.203, i32 149 }, %struct.debugfs_reg32 { ptr @.str.204, i32 150 }, %struct.debugfs_reg32 { ptr @.str.205, i32 151 }, %struct.debugfs_reg32 { ptr @.str.206, i32 152 }, %struct.debugfs_reg32 { ptr @.str.207, i32 153 }, %struct.debugfs_reg32 { ptr @.str.208, i32 154 }, %struct.debugfs_reg32 { ptr @.str.209, i32 155 }, %struct.debugfs_reg32 { ptr @.str.210, i32 156 }, %struct.debugfs_reg32 { ptr @.str.211, i32 157 }, %struct.debugfs_reg32 { ptr @.str.212, i32 158 }, %struct.debugfs_reg32 { ptr @.str.213, i32 159 }, %struct.debugfs_reg32 { ptr @.str.214, i32 160 }, %struct.debugfs_reg32 { ptr @.str.215, i32 161 }, %struct.debugfs_reg32 { ptr @.str.216, i32 162 }, %struct.debugfs_reg32 { ptr @.str.217, i32 163 }, %struct.debugfs_reg32 { ptr @.str.218, i32 172 }, %struct.debugfs_reg32 { ptr @.str.219, i32 174 }, %struct.debugfs_reg32 { ptr @.str.220, i32 186 }, %struct.debugfs_reg32 { ptr @.str.221, i32 187 }, %struct.debugfs_reg32 { ptr @.str.222, i32 188 }, %struct.debugfs_reg32 { ptr @.str.223, i32 189 }, %struct.debugfs_reg32 { ptr @.str.224, i32 204 }, %struct.debugfs_reg32 { ptr @.str.225, i32 205 }, %struct.debugfs_reg32 { ptr @.str.226, i32 206 }, %struct.debugfs_reg32 { ptr @.str.227, i32 209 }], [320 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%-56s %#05x %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDMI_CTXSW\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_SOR_STATE0\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_SOR_STATE1\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_SOR_STATE2\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_AN_MSB\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_AN_LSB\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_CN_MSB\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_CN_LSB\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_AKSV_MSB\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_AKSV_LSB\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_BKSV_MSB\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_BKSV_LSB\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_CKSV_MSB\00", [33 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_CKSV_LSB\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_DKSV_MSB\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_DKSV_LSB\00", [33 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_NV_PDISP_RG_HDCP_CTRL\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_NV_PDISP_RG_HDCP_CMODE\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HDMI_NV_PDISP_RG_HDCP_MPRIME_MSB\00", [63 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HDMI_NV_PDISP_RG_HDCP_MPRIME_LSB\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HDMI_NV_PDISP_RG_HDCP_SPRIME_MSB\00", [63 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_NV_PDISP_RG_HDCP_SPRIME_LSB2\00", [62 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_NV_PDISP_RG_HDCP_SPRIME_LSB1\00", [62 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_RG_HDCP_RI\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_CS_MSB\00", [35 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_CS_LSB\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_EMU0\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_EMU_RDATA0\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_EMU1\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_EMU2\00", [34 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL\00", [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_STATUS\00", [54 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_HEADER\00", [54 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_LOW\00", [48 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_HIGH\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_CTRL\00", [58 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_STATUS\00", [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_HEADER\00", [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_LOW\00", [50 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_HIGH\00", [49 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_LOW\00", [50 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_HIGH\00", [49 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_CTRL\00", [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_STATUS\00", [62 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_HEADER\00", [62 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK0_LOW\00", [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK0_HIGH\00", [55 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK1_LOW\00", [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK1_HIGH\00", [55 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK2_LOW\00", [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK2_HIGH\00", [55 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK3_LOW\00", [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK3_HIGH\00", [55 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_NV_PDISP_HDMI_ACR_CTRL\00", [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0320_SUBPACK_LOW\00", [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0320_SUBPACK_HIGH\00", [55 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_LOW\00", [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_HIGH\00", [55 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0882_SUBPACK_LOW\00", [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0882_SUBPACK_HIGH\00", [55 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_1764_SUBPACK_LOW\00", [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_1764_SUBPACK_HIGH\00", [55 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0480_SUBPACK_LOW\00", [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0480_SUBPACK_HIGH\00", [55 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0960_SUBPACK_LOW\00", [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0960_SUBPACK_HIGH\00", [55 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_1920_SUBPACK_LOW\00", [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_1920_SUBPACK_HIGH\00", [55 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_NV_PDISP_HDMI_CTRL\00", [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HDMI_NV_PDISP_HDMI_VSYNC_KEEPOUT\00", [63 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HDMI_NV_PDISP_HDMI_VSYNC_WINDOW\00", [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_NV_PDISP_HDMI_GCP_CTRL\00", [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_HDMI_GCP_STATUS\00", [34 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_HDMI_GCP_SUBPACK\00", [33 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HDMI_NV_PDISP_HDMI_CHANNEL_STATUS1\00", [61 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HDMI_NV_PDISP_HDMI_CHANNEL_STATUS2\00", [61 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_NV_PDISP_HDMI_EMU0\00", [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_NV_PDISP_HDMI_EMU1\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_HDMI_EMU1_RDATA\00", [34 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_HDMI_SPARE\00", [39 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HDMI_NV_PDISP_HDMI_SPDIF_CHN_STATUS1\00", [59 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HDMI_NV_PDISP_HDMI_SPDIF_CHN_STATUS2\00", [59 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HDMI_NV_PDISP_HDMI_HDCPRIF_ROM_CTRL\00", [60 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_NV_PDISP_SOR_CAP\00", [42 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_NV_PDISP_SOR_PWR\00", [42 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_NV_PDISP_SOR_TEST\00", [41 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_NV_PDISP_SOR_PLL0\00", [41 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_NV_PDISP_SOR_PLL1\00", [41 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_NV_PDISP_SOR_PLL2\00", [41 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_NV_PDISP_SOR_CSTM\00", [41 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_NV_PDISP_SOR_LVDS\00", [41 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_NV_PDISP_SOR_CRCA\00", [41 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_NV_PDISP_SOR_CRCB\00", [41 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_NV_PDISP_SOR_BLANK\00", [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_SOR_SEQ_CTL\00", [38 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(0)\00", [34 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(1)\00", [34 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(2)\00", [34 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(3)\00", [34 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(4)\00", [34 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(5)\00", [34 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(6)\00", [34 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(7)\00", [34 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(8)\00", [34 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(9)\00", [34 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(10)\00", [33 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(11)\00", [33 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(12)\00", [33 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(13)\00", [33 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(14)\00", [33 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(15)\00", [33 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_SOR_VCRCA0\00", [39 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_SOR_VCRCA1\00", [39 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_SOR_CCRCA0\00", [39 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_SOR_CCRCA1\00", [39 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_SOR_EDATAA0\00", [38 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_SOR_EDATAA1\00", [38 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_SOR_COUNTA0\00", [38 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_SOR_COUNTA1\00", [38 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_SOR_DEBUGA0\00", [38 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_SOR_DEBUGA1\00", [38 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_NV_PDISP_SOR_TRIG\00", [41 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_SOR_MSCHECK\00", [38 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT\00", [59 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_NV_PDISP_AUDIO_DEBUG0\00", [37 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_NV_PDISP_AUDIO_DEBUG1\00", [37 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_NV_PDISP_AUDIO_DEBUG2\00", [37 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(0)\00", [38 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(1)\00", [38 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(2)\00", [38 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(3)\00", [38 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(4)\00", [38 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(5)\00", [38 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(6)\00", [38 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HDMI_NV_PDISP_AUDIO_PULSE_WIDTH\00", [32 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_NV_PDISP_AUDIO_THRESHOLD\00", [34 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_NV_PDISP_AUDIO_CNTRL0\00", [37 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_NV_PDISP_AUDIO_N\00", [42 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HDMI_NV_PDISP_HDCPRIF_ROM_TIMING\00", [63 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_SOR_REFCLK\00", [39 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_NV_PDISP_CRC_CONTROL\00", [38 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_NV_PDISP_INPUT_CONTROL\00", [36 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_NV_PDISP_SCRATCH\00", [42 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_PE_CURRENT\00", [39 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_NV_PDISP_KEY_CTRL\00", [41 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_KEY_DEBUG0\00", [39 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_KEY_DEBUG1\00", [39 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_KEY_DEBUG2\00", [39 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_NV_PDISP_KEY_HDCP_KEY_0\00", [35 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_NV_PDISP_KEY_HDCP_KEY_1\00", [35 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_NV_PDISP_KEY_HDCP_KEY_2\00", [35 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_NV_PDISP_KEY_HDCP_KEY_3\00", [35 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HDMI_NV_PDISP_KEY_HDCP_KEY_TRIG\00", [32 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_NV_PDISP_KEY_SKEY_INDEX\00", [35 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_CNTRL0\00", [33 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_SPARE0\00", [33 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0\00", [53 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH1\00", [53 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_HDA_ELD_BUFWR\00", [58 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE\00", [59 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_INT_STATUS\00", [39 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_NV_PDISP_INT_MASK\00", [41 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_NV_PDISP_INT_ENABLE\00", [39 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT\00", [62 x i8] zeroinitializer }, align 32
@tegra_hdmi_encoder_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.5, i32 1206, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to suspend: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_hdmi_encoder_disable\00", [37 x i8] zeroinitializer }, align 32
@tegra_hdmi_encoder_disable._entry_ptr = internal global ptr @tegra_hdmi_encoder_disable._entry, section ".printk_index", align 4
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@trace_dc_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@trace_dc_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tegra_hdmi_encoder_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.5, i32 1223, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to resume: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_hdmi_encoder_enable\00", [38 x i8] zeroinitializer }, align 32
@tegra_hdmi_encoder_enable._entry_ptr = internal global ptr @tegra_hdmi_encoder_enable._entry, section ".printk_index", align 4
@tegra_hdmi_encoder_enable._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.231, ptr @.str.5, i32 1245, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to set HDMI clock frequency: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_hdmi_encoder_enable._entry_ptr.234 = internal global ptr @tegra_hdmi_encoder_enable._entry.232, section ".printk_index", align 4
@.str.235 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI clock rate: %lu Hz\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_hdmi_setup_avi_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.237, ptr @.str.5, i32 713, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to setup AVI infoframe: %zd\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_hdmi_setup_avi_infoframe\00", [33 x i8] zeroinitializer }, align 32
@tegra_hdmi_setup_avi_infoframe._entry_ptr = internal global ptr @tegra_hdmi_setup_avi_infoframe._entry, section ".printk_index", align 4
@tegra_hdmi_setup_avi_infoframe._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.237, ptr @.str.5, i32 719, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to pack AVI infoframe: %zd\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_hdmi_setup_avi_infoframe._entry_ptr.240 = internal global ptr @tegra_hdmi_setup_avi_infoframe._entry.238, section ".printk_index", align 4
@tegra_hdmi_setup_stereo_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.5, i32 805, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to pack vendor infoframe: %zd\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tegra_hdmi_setup_stereo_infoframe\00", [62 x i8] zeroinitializer }, align 32
@tegra_hdmi_setup_stereo_infoframe._entry_ptr = internal global ptr @tegra_hdmi_setup_stereo_infoframe._entry, section ".printk_index", align 4
@tegra_hdmi_encoder_atomic_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str.5, i32 1452, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to setup CRTC state: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_hdmi_encoder_atomic_check\00", [32 x i8] zeroinitializer }, align 32
@tegra_hdmi_encoder_atomic_check._entry_ptr = internal global ptr @tegra_hdmi_encoder_atomic_check._entry, section ".printk_index", align 4
@tegra_hdmi_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr @tegra_hdmi_audio_startup, ptr @tegra_hdmi_hw_params, ptr null, ptr @tegra_hdmi_audio_shutdown, ptr null, ptr null, ptr null, ptr null, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@tegra_hdmi_audio_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.246, ptr @.str.5, i32 1492, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_hdmi_audio_startup\00", [39 x i8] zeroinitializer }, align 32
@tegra_hdmi_audio_startup._entry_ptr = internal global ptr @tegra_hdmi_audio_startup._entry, section ".printk_index", align 4
@tegra_hdmi_audio_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.247, ptr @.str.5, i32 1511, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_hdmi_audio_shutdown\00", [38 x i8] zeroinitializer }, align 32
@tegra_hdmi_audio_shutdown._entry_ptr = internal global ptr @tegra_hdmi_audio_shutdown._entry, section ".printk_index", align 4
@tegra_hdmi_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.249, ptr @.str.5, i32 1645, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to assert reset: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_hdmi_runtime_suspend\00", [37 x i8] zeroinitializer }, align 32
@tegra_hdmi_runtime_suspend._entry_ptr = internal global ptr @tegra_hdmi_runtime_suspend._entry, section ".printk_index", align 4
@tegra_hdmi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.5, i32 1665, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get runtime PM: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_hdmi_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@tegra_hdmi_runtime_resume._entry_ptr = internal global ptr @tegra_hdmi_runtime_resume._entry, section ".printk_index", align 4
@tegra_hdmi_runtime_resume._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.251, ptr @.str.5, i32 1671, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_hdmi_runtime_resume._entry_ptr.254 = internal global ptr @tegra_hdmi_runtime_resume._entry.252, section ".printk_index", align 4
@tegra_hdmi_runtime_resume._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.251, ptr @.str.5, i32 1679, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to deassert reset: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_hdmi_runtime_resume._entry_ptr.257 = internal global ptr @tegra_hdmi_runtime_resume._entry.255, section ".printk_index", align 4
@tegra_hdmi_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.259, ptr @.str.5, i32 1908, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to unregister host1x client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_hdmi_remove\00", [46 x i8] zeroinitializer }, align 32
@tegra_hdmi_remove._entry_ptr = internal global ptr @tegra_hdmi_remove._entry, section ".printk_index", align 4
@tegra124_hdmi_config = internal constant { %struct.tegra_hdmi_config, [44 x i8] } { %struct.tegra_hdmi_config { ptr @tegra124_tmds_config, i32 4, i32 210, i32 -2147483648, i8 1, i8 1, i8 1 }, [44 x i8] zeroinitializer }, align 32
@tegra114_hdmi_config = internal constant { %struct.tegra_hdmi_config, [44 x i8] } { %struct.tegra_hdmi_config { ptr @tegra114_tmds_config, i32 4, i32 210, i32 -2147483648, i8 1, i8 1, i8 1 }, [44 x i8] zeroinitializer }, align 32
@tegra30_hdmi_config = internal constant { %struct.tegra_hdmi_config, [44 x i8] } { %struct.tegra_hdmi_config { ptr @tegra30_tmds_config, i32 3, i32 126, i32 -2147483648, i8 0, i8 1, i8 0 }, [44 x i8] zeroinitializer }, align 32
@tegra20_hdmi_config = internal constant { %struct.tegra_hdmi_config, [44 x i8] } { %struct.tegra_hdmi_config { ptr @tegra20_tmds_config, i32 2, i32 126, i32 -2147483648, i8 0, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@tegra124_tmds_config = internal constant { [4 x %struct.tmds_config], [32 x i8] } { [4 x %struct.tmds_config] [%struct.tmds_config { i32 27000000, i32 16789520, i32 3145728, i32 0, i32 437918234, i32 0 }, %struct.tmds_config { i32 74250000, i32 16789776, i32 271581184, i32 252645135, i32 437918234, i32 0 }, %struct.tmds_config { i32 148500000, i32 16790288, i32 271581184, i32 168430090, i32 522133279, i32 0 }, %struct.tmds_config { i32 -1, i32 16793360, i32 3149568, i32 0, i32 809451327, i32 68095759 }], [32 x i8] zeroinitializer }, align 32
@tegra114_tmds_config = internal constant { [4 x %struct.tmds_config], [32 x i8] } { [4 x %struct.tmds_config] [%struct.tmds_config { i32 27000000, i32 16789520, i32 3145728, i32 0, i32 437918234, i32 0 }, %struct.tmds_config { i32 74250000, i32 16789776, i32 271581184, i32 252645135, i32 437918234, i32 0 }, %struct.tmds_config { i32 148500000, i32 16790288, i32 271581184, i32 168430090, i32 522133279, i32 0 }, %struct.tmds_config { i32 -1, i32 16793360, i32 3149568, i32 0, i32 809451327, i32 68095759 }], [32 x i8] zeroinitializer }, align 32
@tegra30_tmds_config = internal constant { [3 x %struct.tmds_config], [56 x i8] } { [3 x %struct.tmds_config] [%struct.tmds_config { i32 27000000, i32 16789520, i32 256, i32 0, i32 168430090, i32 0 }, %struct.tmds_config { i32 74250000, i32 16789776, i32 268435712, i32 168430090, i32 168430090, i32 0 }, %struct.tmds_config { i32 -1, i32 16790288, i32 268435712, i32 168430090, i32 168430090, i32 0 }], [56 x i8] zeroinitializer }, align 32
@tegra20_tmds_config = internal constant { [2 x %struct.tmds_config], [48 x i8] } { [2 x %struct.tmds_config] [%struct.tmds_config { i32 27000000, i32 822095888, i32 256, i32 0, i32 252645135, i32 0 }, %struct.tmds_config { i32 -1, i32 822096144, i32 268435712, i32 202116108, i32 252645135, i32 0 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.260 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.263 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.264 = internal global [5 x i64] [i64 3, i64 8, i64 129, i64 130, i64 132]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 16, i64 480, i64 576]
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1919, i32 11 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c"tegra_hdmi_of_match\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1739, i32 34 }
@___asan_gen_.272 = private unnamed_addr constant [18 x i8] c"tegra_hdmi_driver\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1917, i32 24 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1778, i32 22 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1794, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1798, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1802, i32 49 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1804, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1808, i32 46 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1814, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1822, i32 12 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1824, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1829, i32 45 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1835, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1840, i32 45 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1846, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1871, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [16 x i8] c"hdmi_client_ops\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1692, i32 39 }
@___asan_gen_.353 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1890, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1892, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [33 x i8] c"../drivers/gpu/drm/tegra/trace.h\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 37, i32 1 }
@___asan_gen_.369 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 108, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 564, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 570, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 463, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 752, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 761, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 674, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant [27 x i8] c"tegra_hdmi_connector_funcs\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1129, i32 41 }
@___asan_gen_.416 = private unnamed_addr constant [34 x i8] c"tegra_hdmi_connector_helper_funcs\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1161, i32 1 }
@___asan_gen_.419 = private unnamed_addr constant [32 x i8] c"tegra_hdmi_encoder_helper_funcs\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1459, i32 46 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1577, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1585, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1592, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1598, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1604, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant [14 x i8] c"debugfs_files\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1092, i32 29 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1093, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant [16 x i8] c"tegra_hdmi_regs\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 897, i32 35 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1083, i32 17 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 898, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 899, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 900, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 901, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 902, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 903, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 904, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 905, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 906, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 907, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 908, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 909, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 910, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 911, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 912, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 913, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 914, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 915, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 916, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 917, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 918, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 919, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 920, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 921, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 922, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 923, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 924, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 925, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 926, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 927, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 928, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 929, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 930, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 931, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 932, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 933, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 934, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 935, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 936, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 937, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 938, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 939, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 940, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 941, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 942, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 943, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 944, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 945, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 946, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 947, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 948, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 949, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 950, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 951, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 952, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 953, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 954, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 955, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 956, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 957, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 958, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 959, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 960, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 961, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 962, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 963, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 964, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 965, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 966, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 967, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 968, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 969, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 970, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 971, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 972, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 973, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 974, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 975, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 976, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 977, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 978, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 979, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 980, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 981, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 982, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 983, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 984, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 985, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 986, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 987, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 988, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 989, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 990, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 991, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 992, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 993, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 994, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 995, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 996, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 997, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 998, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 999, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1000, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1001, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1002, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1003, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1004, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1005, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1006, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1007, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1008, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1009, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1010, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1011, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1012, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1013, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1014, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1015, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1016, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1017, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1018, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1019, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1020, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1021, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1022, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1023, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1024, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1025, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1026, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1027, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1028, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1029, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1030, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1031, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1032, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1033, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1034, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1035, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1036, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1037, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1038, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1039, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1040, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1041, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1042, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1043, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1044, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1045, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1046, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1047, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1048, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1049, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1050, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1051, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1052, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1053, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1054, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1055, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1056, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1057, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1058, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1059, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1060, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1061, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1206, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1223, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1244, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1248, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 713, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 719, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 804, i32 3 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1452, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant [21 x i8] c"tegra_hdmi_codec_ops\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1514, i32 36 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1532, i32 9 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1492, i32 3 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1511, i32 3 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1645, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1665, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1671, i32 3 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1679, i32 3 }
@___asan_gen_.1067 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1907, i32 3 }
@___asan_gen_.1076 = private unnamed_addr constant [21 x i8] c"tegra124_hdmi_config\00", align 1
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1729, i32 39 }
@___asan_gen_.1079 = private unnamed_addr constant [21 x i8] c"tegra114_hdmi_config\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1719, i32 39 }
@___asan_gen_.1082 = private unnamed_addr constant [20 x i8] c"tegra30_hdmi_config\00", align 1
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1709, i32 39 }
@___asan_gen_.1085 = private unnamed_addr constant [20 x i8] c"tegra20_hdmi_config\00", align 1
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 1699, i32 39 }
@___asan_gen_.1088 = private unnamed_addr constant [21 x i8] c"tegra124_tmds_config\00", align 1
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 291, i32 33 }
@___asan_gen_.1091 = private unnamed_addr constant [21 x i8] c"tegra114_tmds_config\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 212, i32 33 }
@___asan_gen_.1094 = private unnamed_addr constant [20 x i8] c"tegra30_tmds_config\00", align 1
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 166, i32 33 }
@___asan_gen_.1097 = private unnamed_addr constant [20 x i8] c"tegra20_tmds_config\00", align 1
@___asan_gen_.1098 = private constant [32 x i8] c"../drivers/gpu/drm/tegra/hdmi.c\00", align 1
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1098, i32 133, i32 33 }
@llvm.compiler.used = appending global [309 x ptr] [ptr @tegra_hdmi_audio_shutdown._entry, ptr @tegra_hdmi_audio_shutdown._entry_ptr, ptr @tegra_hdmi_audio_startup._entry, ptr @tegra_hdmi_audio_startup._entry_ptr, ptr @tegra_hdmi_encoder_atomic_check._entry, ptr @tegra_hdmi_encoder_atomic_check._entry_ptr, ptr @tegra_hdmi_encoder_disable._entry, ptr @tegra_hdmi_encoder_disable._entry_ptr, ptr @tegra_hdmi_encoder_enable._entry, ptr @tegra_hdmi_encoder_enable._entry.232, ptr @tegra_hdmi_encoder_enable._entry_ptr, ptr @tegra_hdmi_encoder_enable._entry_ptr.234, ptr @tegra_hdmi_init._entry, ptr @tegra_hdmi_init._entry.50, ptr @tegra_hdmi_init._entry.53, ptr @tegra_hdmi_init._entry.56, ptr @tegra_hdmi_init._entry.59, ptr @tegra_hdmi_init._entry_ptr, ptr @tegra_hdmi_init._entry_ptr.52, ptr @tegra_hdmi_init._entry_ptr.55, ptr @tegra_hdmi_init._entry_ptr.58, ptr @tegra_hdmi_init._entry_ptr.61, ptr @tegra_hdmi_probe._entry, ptr @tegra_hdmi_probe._entry.12, ptr @tegra_hdmi_probe._entry.16, ptr @tegra_hdmi_probe._entry.20, ptr @tegra_hdmi_probe._entry.24, ptr @tegra_hdmi_probe._entry.27, ptr @tegra_hdmi_probe._entry.31, ptr @tegra_hdmi_probe._entry.8, ptr @tegra_hdmi_probe._entry_ptr, ptr @tegra_hdmi_probe._entry_ptr.10, ptr @tegra_hdmi_probe._entry_ptr.14, ptr @tegra_hdmi_probe._entry_ptr.18, ptr @tegra_hdmi_probe._entry_ptr.22, ptr @tegra_hdmi_probe._entry_ptr.26, ptr @tegra_hdmi_probe._entry_ptr.29, ptr @tegra_hdmi_probe._entry_ptr.33, ptr @tegra_hdmi_remove._entry, ptr @tegra_hdmi_remove._entry_ptr, ptr @tegra_hdmi_runtime_resume._entry, ptr @tegra_hdmi_runtime_resume._entry.252, ptr @tegra_hdmi_runtime_resume._entry.255, ptr @tegra_hdmi_runtime_resume._entry_ptr, ptr @tegra_hdmi_runtime_resume._entry_ptr.254, ptr @tegra_hdmi_runtime_resume._entry_ptr.257, ptr @tegra_hdmi_runtime_suspend._entry, ptr @tegra_hdmi_runtime_suspend._entry_ptr, ptr @tegra_hdmi_setup_audio._entry, ptr @tegra_hdmi_setup_audio._entry_ptr, ptr @tegra_hdmi_setup_audio_infoframe._entry, ptr @tegra_hdmi_setup_audio_infoframe._entry.43, ptr @tegra_hdmi_setup_audio_infoframe._entry_ptr, ptr @tegra_hdmi_setup_audio_infoframe._entry_ptr.45, ptr @tegra_hdmi_setup_avi_infoframe._entry, ptr @tegra_hdmi_setup_avi_infoframe._entry.238, ptr @tegra_hdmi_setup_avi_infoframe._entry_ptr, ptr @tegra_hdmi_setup_avi_infoframe._entry_ptr.240, ptr @tegra_hdmi_setup_stereo_infoframe._entry, ptr @tegra_hdmi_setup_stereo_infoframe._entry_ptr, ptr @tegra_hdmi_write_infopack._entry, ptr @tegra_hdmi_write_infopack._entry_ptr, ptr @.str, ptr @tegra_hdmi_of_match, ptr @tegra_hdmi_driver, ptr @.str.1, ptr @tegra_hdmi_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @hdmi_client_ops, ptr @tegra_hdmi_probe.__key.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @tegra_hdmi_write_aval.regs, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @tegra_hdmi_connector_funcs, ptr @tegra_hdmi_connector_helper_funcs, ptr @tegra_hdmi_encoder_helper_funcs, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @debugfs_files, ptr @.str.62, ptr @tegra_hdmi_regs, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.233, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.239, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @tegra_hdmi_codec_ops, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.253, ptr @.str.256, ptr @.str.258, ptr @.str.259, ptr @tegra124_hdmi_config, ptr @tegra114_hdmi_config, ptr @tegra30_hdmi_config, ptr @tegra20_hdmi_config, ptr @tegra124_tmds_config, ptr @tegra114_tmds_config, ptr @tegra30_tmds_config, ptr @tegra20_tmds_config], section "llvm.metadata"
@0 = internal global [278 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_client_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_setup_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_write_aval.regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_setup_audio_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_setup_audio_infoframe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_write_infopack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_files to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_regs to i32), i32 1312, i32 1632, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_encoder_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_encoder_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_encoder_enable._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_setup_avi_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_setup_avi_infoframe._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_setup_stereo_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_encoder_atomic_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_audio_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_audio_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_runtime_resume._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_runtime_resume._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hdmi_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_hdmi_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_hdmi_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_hdmi_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_hdmi_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_tmds_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_tmds_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_tmds_config to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_tmds_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %opp_params.i = alloca %struct.tegra_core_opp_params, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1560, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %config = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 11
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %config, align 4
  %dev4 = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev4, align 8
  %audio_source = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 12
  %2 = ptrtoint ptr %audio_source to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %audio_source, align 8
  %stereo = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 15
  %3 = ptrtoint ptr %stereo to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %stereo, align 8
  %dvi = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 16
  %4 = ptrtoint ptr %dvi to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %dvi, align 1
  %audio_lock = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %audio_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @tegra_hdmi_probe.__key) #8
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rst = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %rst, align 8
  %cmp.i251 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  %10 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %call30 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  %clk_parent = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %clk_parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call30, ptr %clk_parent, align 8
  %cmp.i252 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %call39 = tail call i32 @clk_set_parent(ptr noundef %16, ptr noundef %call30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call39) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  %call47 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  %hdmi48 = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %hdmi48 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call47, ptr %hdmi48, align 4
  %cmp.i.i = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  %18 = ptrtoint ptr %call47 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %18, i32 0
  %19 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %if.end45.do.end60_crit_edge [
    i32 0, label %if.end62
    i32 -517, label %if.then54
  ]

if.end45.do.end60_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

if.then54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

do.end60:                                         ; preds = %if.then54, %if.end45.do.end60_crit_edge
  %level.0 = phi ptr [ @.str.15, %if.then54 ], [ @.str.1, %if.end45.do.end60_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %level.0, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %spec.select.i) #11
  br label %cleanup

if.end62:                                         ; preds = %if.end45
  %call64 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  %pll = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call64, ptr %pll, align 8
  %cmp.i.i253 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %call64 to i32
  %spec.select.i254 = select i1 %cmp.i.i253, i32 %21, i32 0
  %22 = zext i32 %spec.select.i254 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %spec.select.i254, label %if.end62.do.end76_crit_edge [
    i32 0, label %if.end78
    i32 -517, label %if.then70
  ]

if.end62.do.end76_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76

if.then70:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76

do.end76:                                         ; preds = %if.then70, %if.end62.do.end76_crit_edge
  %level.1 = phi ptr [ @.str.15, %if.then70 ], [ @.str.1, %if.end62.do.end76_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %level.1, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %spec.select.i254) #11
  br label %cleanup

if.end78:                                         ; preds = %if.end62
  %call80 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  %vdd = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call80, ptr %vdd, align 4
  %cmp.i.i255 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  %24 = ptrtoint ptr %call80 to i32
  %spec.select.i256 = select i1 %cmp.i.i255, i32 %24, i32 0
  %25 = zext i32 %spec.select.i256 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %spec.select.i256, label %if.end78.do.end92_crit_edge [
    i32 0, label %if.end94
    i32 -517, label %if.then86
  ]

if.end78.do.end92_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92

if.then86:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92

do.end92:                                         ; preds = %if.then86, %if.end78.do.end92_crit_edge
  %level.2 = phi ptr [ @.str.15, %if.then86 ], [ @.str.1, %if.end78.do.end92_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %level.2, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %spec.select.i256) #11
  br label %cleanup

if.end94:                                         ; preds = %if.end78
  %output = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 1
  %dev96 = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %dev96 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %dev96, align 4
  %call98 = tail call i32 @tegra_output_probe(ptr noundef %output) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.end94.cleanup_crit_edge, label %if.end101

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end101:                                        ; preds = %if.end94
  %call102 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call104 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call102) #8
  %regs105 = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %regs105 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call104, ptr %regs105, align 8
  %cmp.i257 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.then108, label %if.end111

if.then108:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call104 to i32
  br label %cleanup

if.end111:                                        ; preds = %if.end101
  %call112 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.end111.cleanup_crit_edge, label %if.end115

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end115:                                        ; preds = %if.end111
  %irq = getelementptr inbounds %struct.tegra_hdmi, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call112, ptr %irq, align 4
  %30 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev4, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end115.dev_name.exit_crit_edge

if.end115.dev_name.exit_crit_edge:                ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end115.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %35, %if.end.i ], [ %33, %if.end115.dev_name.exit_crit_edge ]
  %call.i258 = tail call i32 @devm_request_threaded_irq(ptr noundef %31, i32 noundef %call112, ptr noundef nonnull @tegra_hdmi_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %cmp121 = icmp slt i32 %call.i258, 0
  br i1 %cmp121, label %do.end125, label %if.end128

do.end125:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %37, i32 noundef %call.i258) #11
  br label %cleanup

if.end128:                                        ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call130 = tail call i32 @devm_pm_runtime_enable(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end128.cleanup_crit_edge

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end133:                                        ; preds = %if.end128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params.i) #8
  %39 = ptrtoint ptr %opp_params.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %opp_params.i, align 1
  %call.i259 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev, ptr noundef nonnull %opp_params.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i259)
  %cmp.not.i = icmp eq i32 %call.i259, -19
  %.call.i = select i1 %cmp.not.i, i32 0, i32 %call.i259
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool136.not = icmp eq i32 %.call.i, 0
  br i1 %tobool136.not, label %if.end138, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end138:                                        ; preds = %if.end133
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %prev.i, align 4
  %ops = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @hdmi_client_ops, ptr %ops, align 4
  %dev142 = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 2
  %43 = ptrtoint ptr %dev142 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev, ptr %dev142, align 4
  call void @__host1x_client_init(ptr noundef nonnull %call.i, ptr noundef nonnull @tegra_hdmi_probe.__key.30) #8
  %call145 = call i32 @__host1x_client_register(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %do.end150, label %if.end138.cleanup_crit_edge

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end150:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call145) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end150, %if.end138.cleanup_crit_edge, %if.end133.cleanup_crit_edge, %if.end128.cleanup_crit_edge, %do.end125, %if.end111.cleanup_crit_edge, %if.then108, %if.end94.cleanup_crit_edge, %do.end92, %do.end76, %do.end60, %do.end43, %if.then33, %do.end24, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %do.end12 ], [ %12, %do.end24 ], [ %14, %if.then33 ], [ %call39, %do.end43 ], [ %spec.select.i, %do.end60 ], [ %spec.select.i254, %do.end76 ], [ %spec.select.i256, %do.end92 ], [ %28, %if.then108 ], [ %call.i258, %do.end125 ], [ %call145, %do.end150 ], [ -12, %entry.cleanup_crit_edge ], [ %call98, %if.end94.cleanup_crit_edge ], [ %call112, %if.end111.cleanup_crit_edge ], [ %call130, %if.end128.cleanup_crit_edge ], [ %.call.i, %if.end133.cleanup_crit_edge ], [ 0, %if.end138.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @host1x_client_unregister(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.258, i32 noundef %call1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %output = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 1
  tail call void @tegra_output_remove(ptr noundef %output) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 816
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !561
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %dev.i = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %5, i32 noundef 204, i32 noundef %3) #8
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %7, i32 noundef 204, i32 noundef %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i20 = getelementptr i8, ptr %9, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %2) #8, !srcloc !564
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %11, i32 744
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #8, !srcloc !561
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %15, i32 noundef 186, i32 noundef %13) #8
  %and3 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %and6 = and i32 %13, 65535
  %format7 = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 13
  tail call void @tegra_hda_parse_format(i32 noundef %and6, ptr noundef %format7) #8
  %call8 = tail call fastcc i32 @tegra_hdmi_reconfigure_audio(ptr noundef %data)
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 120
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !561
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %21, i32 noundef 30, i32 noundef %19) #8
  %and.i = and i32 %19, -2
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %23, i32 noundef 30, i32 noundef %and.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %26, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %24) #8, !srcloc !564
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i25 = getelementptr i8, ptr %28, i32 168
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25) #8, !srcloc !561
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %32, i32 noundef 42, i32 noundef %30) #8
  %and.i27 = and i32 %30, -65537
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %34, i32 noundef 42, i32 noundef %and.i27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %and.i27) #8
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i28 = getelementptr i8, ptr %37, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i28, i32 %35) #8, !srcloc !564
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5, %entry.if.end9_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_hda_parse_format(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_hdmi_reconfigure_audio(ptr noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tegra_hdmi_setup_audio(ptr noundef %hdmi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i.i = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 6
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 120
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !561
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %dev.i.i = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %5, i32 noundef 30, i32 noundef %3) #8
  %and.i = and i32 %3, -2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %7, i32 noundef 30, i32 noundef %and.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %10, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %8) #8, !srcloc !564
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i8 = getelementptr i8, ptr %12, i32 168
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #8, !srcloc !561
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %16, i32 noundef 42, i32 noundef %14) #8
  %and.i10 = and i32 %14, -65537
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %18, i32 noundef 42, i32 noundef %and.i10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i10) #8
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i11 = getelementptr i8, ptr %21, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i11, i32 %19) #8, !srcloc !564
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @tegra_hdmi_setup_audio_infoframe(ptr noundef %hdmi)
  %regs.i.i12 = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 6
  %22 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i12, align 8
  %add.ptr.i.i13 = getelementptr i8, ptr %23, i32 120
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #8, !srcloc !561
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %dev.i.i14 = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 2
  %26 = ptrtoint ptr %dev.i.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i14, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %27, i32 noundef 30, i32 noundef %25) #8
  %or.i = or i32 %25, 1
  %28 = ptrtoint ptr %dev.i.i14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i14, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %29, i32 noundef 30, i32 noundef %or.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %31 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i12, align 8
  %add.ptr.i5.i15 = getelementptr i8, ptr %32, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i15, i32 %30) #8, !srcloc !564
  %33 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i12, align 8
  %add.ptr.i.i17 = getelementptr i8, ptr %34, i32 168
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i17) #8, !srcloc !561
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %37 = ptrtoint ptr %dev.i.i14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i14, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %38, i32 noundef 42, i32 noundef %36) #8
  %or.i19 = or i32 %36, 65536
  %39 = ptrtoint ptr %dev.i.i14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i14, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %40, i32 noundef 42, i32 noundef %or.i19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i19) #8
  %42 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i12, align 8
  %add.ptr.i5.i20 = getelementptr i8, ptr %43, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i20, i32 %41) #8, !srcloc !564
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hdmi_readl(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), ptr blockaddress(@trace_hdmi_readl, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !565

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !566

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !567
  %call42 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !568
  %13 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !566

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !569
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_hdmi_readl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_hdmi_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 39, ptr noundef nonnull @.str.35) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !570
  %31 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hdmi_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_hdmi_writel(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), ptr blockaddress(@trace_hdmi_writel, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !565

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !566

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !571
  %call42 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !572
  %13 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !566

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !569
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_hdmi_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_hdmi_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 36, ptr noundef nonnull @.str.35) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !570
  %31 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hdmi_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_hdmi_setup_audio(ptr noundef readonly %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_source = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 12
  %0 = ptrtoint ptr %audio_source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio_source, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %config1 = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 11
  %3 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config1, align 4
  %has_hda = getelementptr inbounds %struct.tegra_hdmi_config, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %has_hda to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_hda, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %source.0 = phi i32 [ 2097152, %sw.bb.sw.epilog_crit_edge ], [ 1048576, %entry.sw.epilog_crit_edge ], [ 0, %sw.default ]
  %config15 = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 11
  %7 = ptrtoint ptr %config15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config15, align 4
  %has_hda16 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %has_hda16 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_hda16, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool17.not = icmp eq i8 %10, 0
  br i1 %tobool17.not, label %sw.epilog.if.end22_crit_edge, label %if.then18

sw.epilog.if.end22_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %channels = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  %. = select i1 %cmp, i32 536870912, i32 0
  %or = or i32 %., %source.0
  %dev.i = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %14, i32 noundef 172, i32 noundef %or) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %regs.i = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 6
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #8, !srcloc !564
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %sw.epilog.if.end22_crit_edge
  %18 = ptrtoint ptr %config15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config15, align 4
  %has_hda24 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %has_hda24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_hda24, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not = icmp eq i8 %21, 0
  %or27 = or i32 %source.0, -1073741818
  %spec.select = select i1 %tobool25.not, i32 %or27, i32 -1073741818
  %dev.i113 = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %23, i32 noundef 139, i32 noundef %spec.select) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #8
  %regs.i114 = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 6
  %25 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i114, align 8
  %add.ptr.i115 = getelementptr i8, ptr %26, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %24) #8, !srcloc !564
  %27 = ptrtoint ptr %config15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config15, align 4
  %has_hbr = getelementptr inbounds %struct.tegra_hdmi_config, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %has_hbr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_hbr, align 2, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool30.not = icmp eq i8 %30, 0
  br i1 %tobool30.not, label %if.end22.if.end33_crit_edge, label %if.then31

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i114, align 8
  %add.ptr.i117 = getelementptr i8, ptr %32, i32 696
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #8, !srcloc !561
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %35 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %36, i32 noundef 174, i32 noundef %34) #8
  %or32 = or i32 %34, 134217728
  %37 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %38, i32 noundef 174, i32 noundef %or32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %or32) #8
  %40 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i114, align 8
  %add.ptr.i121 = getelementptr i8, ptr %41, i32 696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %39) #8, !srcloc !564
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end22.if.end33_crit_edge
  %format34 = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 13
  %42 = ptrtoint ptr %format34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %format34, align 4
  %pixel_clock = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 14
  %44 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pixel_clock, align 4
  %mul.i = shl i32 %43, 7
  %div.i = udiv i32 %mul.i, 1500
  %div1.i = udiv i32 %mul.i, 300
  %div2.i = udiv i32 %mul.i, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %div1.i)
  %cmp.not729.i = icmp ugt i32 %div.i, %div1.i
  br i1 %cmp.not729.i, label %if.end33.do.end_crit_edge, label %for.body.lr.ph.i

if.end33.do.end_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %if.end33
  %conv193.i = zext i32 %45 to i64
  %shl194.i = shl nuw nsw i64 %conv193.i, 16
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %config.sroa.9.0.off0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %config.sroa.9.1.off0, %cleanup.i.for.body.i_crit_edge ]
  %config.sroa.9.0.off32 = phi i32 [ 0, %for.body.lr.ph.i ], [ %config.sroa.9.1.off32, %cleanup.i.for.body.i_crit_edge ]
  %config.sroa.0.0 = phi i32 [ -1, %for.body.lr.ph.i ], [ %config.sroa.0.1, %cleanup.i.for.body.i_crit_edge ]
  %min_err.0732.i = phi i64 [ 9223372036854775807, %for.body.lr.ph.i ], [ %min_err.2.i, %cleanup.i.for.body.i_crit_edge ]
  %min_delta.0731.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %min_delta.2.i, %cleanup.i.for.body.i_crit_edge ]
  %n.0730.i = phi i32 [ %div.i, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %conv.i = zext i32 %n.0730.i to i64
  %mul4.i = mul i64 %conv.i, 1572864000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul4.i)
  %cmp173.i = icmp ult i64 %mul4.i, 4294967296
  br i1 %cmp173.i, label %if.then177.i, label %if.else183.i, !prof !566

if.then177.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv178.i = trunc i64 %mul4.i to i32
  %div181.i = udiv i32 %conv178.i, %mul.i
  %conv182.i = zext i32 %div181.i to i64
  br label %if.end187.i

if.else183.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %mul4.i) #12, !srcloc !574
  %asmresult1.i.i = extractvalue { i64, i64 } %46, 1
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.else183.i, %if.then177.i
  %aval_f.0.i = phi i64 [ %conv182.i, %if.then177.i ], [ %asmresult1.i.i, %if.else183.i ]
  %and189.i = and i64 %aval_f.0.i, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and189.i)
  %tobool190.not.i = icmp eq i64 %and189.i, 0
  br i1 %tobool190.not.i, label %if.end192.i, label %if.end187.i.cleanup.i_crit_edge

if.end187.i.cleanup.i_crit_edge:                  ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end192.i:                                      ; preds = %if.end187.i
  %mul196.i = mul i64 %shl194.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul196.i)
  %cmp398.i = icmp ult i64 %mul196.i, 4294967296
  br i1 %cmp398.i, label %if.then406.i, label %if.else412.i, !prof !566

if.then406.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv407.i = trunc i64 %mul196.i to i32
  %div410.i = udiv i32 %conv407.i, %mul.i
  %conv411.i = zext i32 %div410.i to i64
  br label %if.end416.i

if.else412.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %mul196.i) #12, !srcloc !574
  %asmresult1.i679.i = extractvalue { i64, i64 } %47, 1
  br label %if.end416.i

if.end416.i:                                      ; preds = %if.else412.i, %if.then406.i
  %cts_f.0.i = phi i64 [ %conv411.i, %if.then406.i ], [ %asmresult1.i679.i, %if.else412.i ]
  %and418.i = and i64 %cts_f.0.i, -65536
  %and419.i = shl i64 %cts_f.0.i, 1
  %shl420.i = and i64 %and419.i, 65536
  %add421.i = add i64 %shl420.i, %and418.i
  %sub422.i = sub nsw i32 %n.0730.i, %div2.i
  %48 = tail call i32 @llvm.abs.i32(i32 %sub422.i, i1 false) #8
  %sub432.i = sub i64 %cts_f.0.i, %add421.i
  %49 = tail call i64 @llvm.abs.i64(i64 %sub432.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %min_err.0732.i)
  %cmp441.i = icmp slt i64 %49, %min_err.0732.i
  br i1 %cmp441.i, label %if.end416.i.if.then448.i_crit_edge, label %lor.lhs.false.i

if.end416.i.if.then448.i_crit_edge:               ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then448.i

lor.lhs.false.i:                                  ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %min_err.0732.i)
  %cmp443.i = icmp eq i64 %49, %min_err.0732.i
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %min_delta.0731.i)
  %cmp446.i = icmp ult i32 %48, %min_delta.0731.i
  %or.cond.i = select i1 %cmp443.i, i1 %cmp446.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then448.i_crit_edge, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false.i.if.then448.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then448.i

if.then448.i:                                     ; preds = %lor.lhs.false.i.if.then448.i_crit_edge, %if.end416.i.if.then448.i_crit_edge
  %50 = lshr exact i64 %add421.i, 16
  %conv451.i = trunc i64 %50 to i32
  %shr453.i = lshr i64 %aval_f.0.i, 16
  %conv454.i = trunc i64 %shr453.i to i32
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then448.i, %lor.lhs.false.i.cleanup.i_crit_edge, %if.end187.i.cleanup.i_crit_edge
  %config.sroa.9.1.off0 = phi i32 [ %conv454.i, %if.then448.i ], [ %config.sroa.9.0.off0, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %config.sroa.9.0.off0, %if.end187.i.cleanup.i_crit_edge ]
  %config.sroa.9.1.off32 = phi i32 [ %conv451.i, %if.then448.i ], [ %config.sroa.9.0.off32, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %config.sroa.9.0.off32, %if.end187.i.cleanup.i_crit_edge ]
  %config.sroa.0.1 = phi i32 [ %n.0730.i, %if.then448.i ], [ %config.sroa.0.0, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %config.sroa.0.0, %if.end187.i.cleanup.i_crit_edge ]
  %min_delta.2.i = phi i32 [ %48, %if.then448.i ], [ %min_delta.0731.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %min_delta.0731.i, %if.end187.i.cleanup.i_crit_edge ]
  %min_err.2.i = phi i64 [ %49, %if.then448.i ], [ %min_err.0732.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %min_err.0732.i, %if.end187.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %n.0730.i, 1
  %exitcond.i = icmp eq i32 %n.0730.i, %div1.i
  br i1 %exitcond.i, label %tegra_hdmi_get_audio_config.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

tegra_hdmi_get_audio_config.exit:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %config.sroa.0.1)
  %cmp461.not.i = icmp eq i32 %config.sroa.0.1, -1
  br i1 %cmp461.not.i, label %tegra_hdmi_get_audio_config.exit.do.end_crit_edge, label %do.body42

tegra_hdmi_get_audio_config.exit.do.end_crit_edge: ; preds = %tegra_hdmi_get_audio_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra_hdmi_get_audio_config.exit.do.end_crit_edge, %if.end33.do.end_crit_edge
  %51 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i113, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.37, i32 noundef %43, i32 noundef %45) #11
  br label %cleanup

do.body42:                                        ; preds = %tegra_hdmi_get_audio_config.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_hdmi_setup_audio.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_hdmi_setup_audio, %do.end53)) #8
          to label %if.then48 [label %do.end53], !srcloc !565

if.then48:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i113, align 8
  %55 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pixel_clock, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_hdmi_setup_audio.__UNIQUE_ID_ddebug347, ptr noundef %54, ptr noundef nonnull @.str.40, i32 noundef %56, i32 noundef %config.sroa.0.1, i32 noundef %config.sroa.9.1.off32, i32 noundef %config.sroa.9.1.off0) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body42
  %57 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %58, i32 noundef 53, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i114, align 8
  %add.ptr.i124 = getelementptr i8, ptr %60, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 0) #8, !srcloc !564
  %sub = add i32 %config.sroa.0.1, 1048575
  %and = and i32 %sub, 1048575
  %or55 = or i32 %and, 17825792
  %61 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %62, i32 noundef 140, i32 noundef %or55) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %or55) #8
  %64 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i114, align 8
  %add.ptr.i127 = getelementptr i8, ptr %65, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %63) #8, !srcloc !564
  %and57 = and i32 %config.sroa.0.1, 16777215
  %or59 = or i32 %and57, -2147483648
  %66 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %67, i32 noundef 57, i32 noundef %or59) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %68 = tail call i32 @llvm.bswap.i32(i32 %or59) #8
  %69 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i114, align 8
  %add.ptr.i130 = getelementptr i8, ptr %70, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %68) #8, !srcloc !564
  %shl62 = shl i32 %config.sroa.9.1.off32, 8
  %71 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %72, i32 noundef 56, i32 noundef %shl62) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %73 = tail call i32 @llvm.bswap.i32(i32 %shl62) #8
  %74 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i114, align 8
  %add.ptr.i133 = getelementptr i8, ptr %75, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %73) #8, !srcloc !564
  %76 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %77, i32 noundef 79, i32 noundef 65539) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i114, align 8
  %add.ptr.i136 = getelementptr i8, ptr %79, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 50331904) #8, !srcloc !564
  %80 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i114, align 8
  %add.ptr.i138 = getelementptr i8, ptr %81, i32 560
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #8, !srcloc !561
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %84 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %85, i32 noundef 140, i32 noundef %83) #8
  %and64 = and i32 %83, -1048577
  %86 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %87, i32 noundef 140, i32 noundef %and64) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %88 = tail call i32 @llvm.bswap.i32(i32 %and64) #8
  %89 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i114, align 8
  %add.ptr.i142 = getelementptr i8, ptr %90, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %88) #8, !srcloc !564
  %91 = ptrtoint ptr %config15 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %config15, align 4
  %has_hda66 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %has_hda66 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %has_hda66, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool67.not = icmp eq i8 %94, 0
  br i1 %tobool67.not, label %do.end53.for.body.i151.preheader_crit_edge, label %if.then68

do.end53.for.body.i151.preheader_crit_edge:       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i151.preheader

if.then68:                                        ; preds = %do.end53
  %95 = ptrtoint ptr %format34 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %format34, align 4
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %96, label %if.then68.for.body.i151.preheader_crit_edge [
    i32 32000, label %if.then68.if.then.i_crit_edge
    i32 44100, label %if.then.fold.split.i
    i32 48000, label %if.then.fold.split11.i
    i32 88200, label %if.then.fold.split12.i
    i32 96000, label %if.then.fold.split13.i
    i32 176400, label %if.then.fold.split14.i
    i32 192000, label %if.then.fold.split15.i
  ]

if.then68.if.then.i_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then68.for.body.i151.preheader_crit_edge:      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i151.preheader

if.then.fold.split.i:                             ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split.i, %if.then68.if.then.i_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %if.then68.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split11.i ], [ 3, %if.then.fold.split12.i ], [ 4, %if.then.fold.split13.i ], [ 5, %if.then.fold.split14.i ], [ 6, %if.then.fold.split15.i ]
  %offset.i = getelementptr [7 x %struct.anon.98], ptr @tegra_hdmi_write_aval.regs, i32 0, i32 %i.09.lcssa.i, i32 1
  %98 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %offset.i, align 4
  %100 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %101, i32 noundef %99, i32 noundef %config.sroa.9.1.off0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %102 = tail call i32 @llvm.bswap.i32(i32 %config.sroa.9.1.off0) #8
  %103 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i114, align 8
  %shl.i.i = shl i32 %99, 2
  %add.ptr.i.i = getelementptr i8, ptr %104, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %102) #8, !srcloc !564
  br label %for.body.i151.preheader

for.body.i151.preheader:                          ; preds = %if.then.i, %if.then68.for.body.i151.preheader_crit_edge, %do.end53.for.body.i151.preheader_crit_edge
  br label %for.body.i151

for.body.i151:                                    ; preds = %for.body.i151.for.body.i151_crit_edge, %for.body.i151.preheader
  %i.016.i = phi i32 [ %inc.i150, %for.body.i151.for.body.i151_crit_edge ], [ 0, %for.body.i151.preheader ]
  %arrayidx.i = getelementptr [7 x i32], ptr @__const.tegra_hdmi_setup_audio_fs_tables.freqs, i32 0, i32 %i.016.i
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i, align 4
  %107 = add nsw i32 %i.016.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %108 = icmp ult i32 %107, 2
  %109 = add nsw i32 %i.016.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %109)
  %cmp2.i = icmp ult i32 %109, 4
  %..i = select i1 %cmp2.i, i32 6, i32 9
  %delta.0.i = select i1 %108, i32 2, i32 %..i
  %mul.i145 = shl i32 %106, 7
  %div.i146 = udiv i32 1728000000, %mul.i145
  %sub.i = sub nsw i32 %div.i146, %delta.0.i
  %and.i = and i32 %sub.i, 4095
  %add.i147 = add nuw nsw i32 %delta.0.i, %div.i146
  %and6.i = shl i32 %add.i147, 16
  %shl7.i = and i32 %and6.i, 268369920
  %or.i = or i32 %shl7.i, %and.i
  %add8.i = add nuw nsw i32 %i.016.i, 130
  %110 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i113, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %111, i32 noundef %add8.i, i32 noundef %or.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %112 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %113 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i114, align 8
  %shl.i.i148 = shl nuw nsw i32 %add8.i, 2
  %add.ptr.i.i149 = getelementptr i8, ptr %114, i32 %shl.i.i148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i149, i32 %112) #8, !srcloc !564
  %inc.i150 = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i150, 7
  br i1 %exitcond.not.i, label %for.body.i151.cleanup_crit_edge, label %for.body.i151.for.body.i151_crit_edge

for.body.i151.for.body.i151_crit_edge:            ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i151

for.body.i151.cleanup_crit_edge:                  ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.i151.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ 0, %for.body.i151.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_hdmi_setup_audio_infoframe(ptr nocapture noundef readonly %hdmi) unnamed_addr #0 align 64 {
entry:
  %frame = alloca %struct.hdmi_audio_infoframe, align 4
  %buffer = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %frame) #8
  %0 = call ptr @memset(ptr %frame, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buffer) #8
  %1 = call ptr @memset(ptr %buffer, i32 255, i32 14)
  %call = call i32 @hdmi_audio_infoframe_init(ptr noundef nonnull %frame) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %channels = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels, align 4
  %conv = trunc i32 %5 to i8
  %channels1 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame, i32 0, i32 3
  %6 = ptrtoint ptr %channels1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %channels1, align 2
  %call2 = call i32 @hdmi_audio_infoframe_pack(ptr noundef nonnull %frame, ptr noundef nonnull %buffer, i32 noundef 14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 2
  %7 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev9, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.44, i32 noundef %call2) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call i32 @llvm.umin.i32(i32 %call2, i32 10)
  call fastcc void @tegra_hdmi_write_infopack(ptr noundef %hdmi, ptr noundef nonnull %buffer, i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buffer) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %frame) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_hdmi_write_infopack(ptr nocapture noundef readonly %hdmi, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.264)
  switch i8 %1, label %do.end [
    i8 -126, label %entry.sw.epilog_crit_edge
    i8 -124, label %sw.bb1
    i8 -127, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %1 to i32
  %dev = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.46, i32 noundef %conv) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %offset.0 = phi i32 [ 44, %sw.bb2 ], [ 32, %sw.bb1 ], [ 37, %entry.sw.epilog_crit_edge ]
  %conv6 = zext i8 %1 to i32
  %arrayidx7 = getelementptr i8, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %shl10 = shl nuw nsw i32 %conv8, 8
  %or = or i32 %shl10, %conv6
  %arrayidx11 = getelementptr i8, ptr %data, i32 2
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx11, align 1
  %9 = and i8 %8, 15
  %and13 = zext i8 %9 to i32
  %shl14 = shl nuw nsw i32 %and13, 16
  %or15 = or i32 %shl14, %or
  %dev.i = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %11, i32 noundef %offset.0, i32 noundef %or15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or15) #8
  %regs.i = getelementptr inbounds %struct.tegra_hdmi, ptr %hdmi, i32 0, i32 6
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %shl.i = shl nuw nsw i32 %offset.0, 2
  %add.ptr.i = getelementptr i8, ptr %14, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #8, !srcloc !564
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp86 = icmp ugt i32 %size, 3
  br i1 %cmp86, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

for.body:                                         ; preds = %tegra_hdmi_subpack.exit80.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %offset.1.in88 = phi i32 [ %inc20, %tegra_hdmi_subpack.exit80.for.body_crit_edge ], [ %offset.0, %sw.epilog.for.body_crit_edge ]
  %i.087 = phi i32 [ %add32, %tegra_hdmi_subpack.exit80.for.body_crit_edge ], [ 3, %sw.epilog.for.body_crit_edge ]
  %offset.189 = add i32 %offset.1.in88, 1
  %sub = sub i32 %size, %i.087
  %15 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4)
  %arrayidx19 = getelementptr i8, ptr %data, i32 %i.087
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not4.i = icmp eq i32 %15, 0
  br i1 %cmp.not4.i, label %for.body.tegra_hdmi_subpack.exit_crit_edge, label %for.body.i

for.body.tegra_hdmi_subpack.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_hdmi_subpack.exit

for.body.i:                                       ; preds = %for.body
  %sub.i = add nsw i32 %15, -1
  %arrayidx.i = getelementptr i8, ptr %arrayidx19, i32 %sub.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %for.body.i.tegra_hdmi_subpack.exit_crit_edge, label %for.body.i.1

for.body.i.tegra_hdmi_subpack.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_hdmi_subpack.exit

for.body.i.1:                                     ; preds = %for.body.i
  %shl.i64.1 = shl nuw nsw i32 %conv.i, 8
  %sub.i.1 = add nsw i32 %15, -2
  %arrayidx.i.1 = getelementptr i8, ptr %arrayidx19, i32 %sub.i.1
  %18 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %19 to i32
  %or.i.1 = or i32 %shl.i64.1, %conv.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.1)
  %cmp.not.i.1 = icmp eq i32 %sub.i.1, 0
  br i1 %cmp.not.i.1, label %for.body.i.1.tegra_hdmi_subpack.exit_crit_edge, label %for.body.i.2

for.body.i.1.tegra_hdmi_subpack.exit_crit_edge:   ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_hdmi_subpack.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %shl.i64.2 = shl nuw nsw i32 %or.i.1, 8
  %sub.i.2 = add nsw i32 %15, -3
  %arrayidx.i.2 = getelementptr i8, ptr %arrayidx19, i32 %sub.i.2
  %20 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %21 to i32
  %or.i.2 = or i32 %shl.i64.2, %conv.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.2)
  %cmp.not.i.2 = icmp eq i32 %sub.i.2, 0
  br i1 %cmp.not.i.2, label %for.body.i.2.tegra_hdmi_subpack.exit_crit_edge, label %for.body.i.3

for.body.i.2.tegra_hdmi_subpack.exit_crit_edge:   ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_hdmi_subpack.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i64.3 = shl nuw i32 %or.i.2, 8
  %sub.i.3 = add nsw i32 %15, -4
  %arrayidx.i.3 = getelementptr i8, ptr %arrayidx19, i32 %sub.i.3
  %22 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.3 = zext i8 %23 to i32
  %or.i.3 = or i32 %shl.i64.3, %conv.i.3
  br label %tegra_hdmi_subpack.exit

tegra_hdmi_subpack.exit:                          ; preds = %for.body.i.3, %for.body.i.2.tegra_hdmi_subpack.exit_crit_edge, %for.body.i.1.tegra_hdmi_subpack.exit_crit_edge, %for.body.i.tegra_hdmi_subpack.exit_crit_edge, %for.body.tegra_hdmi_subpack.exit_crit_edge
  %value.0.lcssa.i = phi i32 [ 0, %for.body.tegra_hdmi_subpack.exit_crit_edge ], [ %conv.i, %for.body.i.tegra_hdmi_subpack.exit_crit_edge ], [ %or.i.1, %for.body.i.1.tegra_hdmi_subpack.exit_crit_edge ], [ %or.i.2, %for.body.i.2.tegra_hdmi_subpack.exit_crit_edge ], [ %or.i.3, %for.body.i.3 ]
  %inc20 = add i32 %offset.1.in88, 2
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %25, i32 noundef %offset.189, i32 noundef %value.0.lcssa.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %value.0.lcssa.i) #8
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 8
  %shl.i67 = shl i32 %offset.189, 2
  %add.ptr.i68 = getelementptr i8, ptr %28, i32 %shl.i67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %26) #8, !srcloc !564
  %sub21 = sub i32 %sub, %15
  %29 = tail call i32 @llvm.umin.i32(i32 %sub21, i32 3)
  %add = add i32 %i.087, 4
  %arrayidx29 = getelementptr i8, ptr %data, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not4.i69 = icmp eq i32 %29, 0
  br i1 %cmp.not4.i69, label %tegra_hdmi_subpack.exit.tegra_hdmi_subpack.exit80_crit_edge, label %for.body.i78

tegra_hdmi_subpack.exit.tegra_hdmi_subpack.exit80_crit_edge: ; preds = %tegra_hdmi_subpack.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_hdmi_subpack.exit80

for.body.i78:                                     ; preds = %tegra_hdmi_subpack.exit
  %sub.i73 = add nsw i32 %29, -1
  %arrayidx.i74 = getelementptr i8, ptr %arrayidx29, i32 %sub.i73
  %30 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i74, align 1
  %conv.i75 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i73)
  %cmp.not.i77 = icmp eq i32 %sub.i73, 0
  br i1 %cmp.not.i77, label %for.body.i78.tegra_hdmi_subpack.exit80_crit_edge, label %for.body.i78.1

for.body.i78.tegra_hdmi_subpack.exit80_crit_edge: ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_hdmi_subpack.exit80

for.body.i78.1:                                   ; preds = %for.body.i78
  %shl.i72.1 = shl nuw nsw i32 %conv.i75, 8
  %sub.i73.1 = add nsw i32 %29, -2
  %arrayidx.i74.1 = getelementptr i8, ptr %arrayidx29, i32 %sub.i73.1
  %32 = ptrtoint ptr %arrayidx.i74.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i74.1, align 1
  %conv.i75.1 = zext i8 %33 to i32
  %or.i76.1 = or i32 %shl.i72.1, %conv.i75.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i73.1)
  %cmp.not.i77.1 = icmp eq i32 %sub.i73.1, 0
  br i1 %cmp.not.i77.1, label %for.body.i78.1.tegra_hdmi_subpack.exit80_crit_edge, label %for.body.i78.2

for.body.i78.1.tegra_hdmi_subpack.exit80_crit_edge: ; preds = %for.body.i78.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_hdmi_subpack.exit80

for.body.i78.2:                                   ; preds = %for.body.i78.1
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i72.2 = shl nuw nsw i32 %or.i76.1, 8
  %sub.i73.2 = add nsw i32 %29, -3
  %arrayidx.i74.2 = getelementptr i8, ptr %arrayidx29, i32 %sub.i73.2
  %34 = ptrtoint ptr %arrayidx.i74.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i74.2, align 1
  %conv.i75.2 = zext i8 %35 to i32
  %or.i76.2 = or i32 %shl.i72.2, %conv.i75.2
  br label %tegra_hdmi_subpack.exit80

tegra_hdmi_subpack.exit80:                        ; preds = %for.body.i78.2, %for.body.i78.1.tegra_hdmi_subpack.exit80_crit_edge, %for.body.i78.tegra_hdmi_subpack.exit80_crit_edge, %tegra_hdmi_subpack.exit.tegra_hdmi_subpack.exit80_crit_edge
  %value.0.lcssa.i79 = phi i32 [ 0, %tegra_hdmi_subpack.exit.tegra_hdmi_subpack.exit80_crit_edge ], [ %conv.i75, %for.body.i78.tegra_hdmi_subpack.exit80_crit_edge ], [ %or.i76.1, %for.body.i78.1.tegra_hdmi_subpack.exit80_crit_edge ], [ %or.i76.2, %for.body.i78.2 ]
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %37, i32 noundef %inc20, i32 noundef %value.0.lcssa.i79) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %value.0.lcssa.i79) #8
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 8
  %shl.i83 = shl i32 %inc20, 2
  %add.ptr.i84 = getelementptr i8, ptr %40, i32 %shl.i83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %38) #8, !srcloc !564
  %add32 = add i32 %i.087, 7
  %cmp = icmp ult i32 %add32, %size
  br i1 %cmp, label %tegra_hdmi_subpack.exit80.for.body_crit_edge, label %tegra_hdmi_subpack.exit80.cleanup_crit_edge

tegra_hdmi_subpack.exit80.cleanup_crit_edge:      ; preds = %tegra_hdmi_subpack.exit80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

tegra_hdmi_subpack.exit80.for.body_crit_edge:     ; preds = %tegra_hdmi_subpack.exit80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %tegra_hdmi_subpack.exit80.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_init(ptr noundef %client) #0 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  %codec_data.i = alloca %struct.hdmi_codec_pdata, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %output = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 1
  %dev2 = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dev2, align 4
  %connector = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 1, i32 10
  %ddc = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddc, align 8
  %call5 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %3, ptr noundef %connector, ptr noundef nonnull @tegra_hdmi_connector_funcs, i32 noundef 11, ptr noundef %8) #8
  %helper_private.i = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 1, i32 10, i32 35
  %9 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tegra_hdmi_connector_helper_funcs, ptr %helper_private.i, align 4
  %dpms = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 1, i32 10, i32 34
  %10 = ptrtoint ptr %dpms to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %dpms, align 8
  %encoder = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 1, i32 9
  %call11 = tail call i32 @drm_simple_encoder_init(ptr noundef %3, ptr noundef %encoder, i32 noundef 2) #8
  %helper_private.i108 = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 1, i32 9, i32 11
  %11 = ptrtoint ptr %helper_private.i108 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tegra_hdmi_encoder_helper_funcs, ptr %helper_private.i108, align 4
  %call18 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef %encoder) #8
  %call21 = tail call i32 @drm_connector_register(ptr noundef %connector) #8
  %call23 = tail call i32 @tegra_output_init(ptr noundef %3, ptr noundef %output) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.48, i32 noundef %call23) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %possible_crtcs = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 1, i32 9, i32 6
  %14 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %possible_crtcs, align 4
  %hdmi27 = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 3
  %15 = ptrtoint ptr %hdmi27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdmi27, align 4
  %call28 = tail call i32 @regulator_enable(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.51, i32 noundef %call28) #11
  br label %output_exit

if.end35:                                         ; preds = %if.end
  %pll = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 4
  %19 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pll, align 8
  %call36 = tail call i32 @regulator_enable(ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end43

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %dev42 = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 2
  %21 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev42, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.54, i32 noundef %call36) #11
  br label %disable_hdmi

if.end43:                                         ; preds = %if.end35
  %vdd = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 5
  %23 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vdd, align 4
  %call44 = tail call i32 @regulator_enable(ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 2
  %25 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev50, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.57, i32 noundef %call44) #11
  br label %disable_pll

if.end51:                                         ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %codec_data.i) #8
  %27 = getelementptr inbounds i8, ptr %codec_data.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 0, ptr %27, align 4
  %config.i = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 11
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i, align 4
  %has_hda.i = getelementptr inbounds %struct.tegra_hdmi_config, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %has_hda.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_hda.i, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end51.tegra_hdmi_codec_register.exit.thread_crit_edge

if.end51.tegra_hdmi_codec_register.exit.thread_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_hdmi_codec_register.exit.thread

if.end.i:                                         ; preds = %if.end51
  %33 = ptrtoint ptr %codec_data.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tegra_hdmi_codec_ops, ptr %codec_data.i, align 4
  %data.i = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data.i, i32 0, i32 3
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %client, ptr %data.i, align 4
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %27, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %27, align 4
  %dev.i = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 2
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #8
  %38 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %39 = call ptr @memset(ptr %38, i32 255, i32 48)
  %40 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %38, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.245, ptr %name2.i.i.i, align 4
  %id3.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -2, ptr %id3.i.i.i, align 8
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %res4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %res4.i.i.i, align 4
  %num_res.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 6
  %46 = ptrtoint ptr %num_res.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %num_res.i.i.i, align 8
  %data5.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 7
  %47 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %codec_data.i, ptr %data5.i.i.i, align 4
  %size_data.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %size_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16, ptr %size_data.i.i.i, align 8
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %49 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %50 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %properties.i.i.i, align 8
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #8
  %audio_pdev.i = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 18
  %51 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i.i, ptr %audio_pdev.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %tegra_hdmi_codec_register.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %channels.i = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 13, i32 1
  %52 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %channels.i, align 4
  br label %tegra_hdmi_codec_register.exit.thread

tegra_hdmi_codec_register.exit.thread:            ; preds = %if.end6.i, %if.end51.tegra_hdmi_codec_register.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data.i) #8
  br label %cleanup

tegra_hdmi_codec_register.exit:                   ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data.i) #8
  %cmp53 = icmp slt ptr %call.i.i.i, null
  br i1 %cmp53, label %do.end57, label %tegra_hdmi_codec_register.exit.cleanup_crit_edge

tegra_hdmi_codec_register.exit.cleanup_crit_edge: ; preds = %tegra_hdmi_codec_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end57:                                         ; preds = %tegra_hdmi_codec_register.exit
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %call.i.i.i to i32
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.60, i32 noundef %53) #11
  %56 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vdd, align 4
  %call61 = call i32 @regulator_disable(ptr noundef %57) #8
  br label %disable_pll

disable_pll:                                      ; preds = %do.end57, %do.end49
  %err.0 = phi i32 [ %call44, %do.end49 ], [ %53, %do.end57 ]
  %58 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pll, align 8
  %call63 = call i32 @regulator_disable(ptr noundef %59) #8
  br label %disable_hdmi

disable_hdmi:                                     ; preds = %disable_pll, %do.end41
  %err.1 = phi i32 [ %call36, %do.end41 ], [ %err.0, %disable_pll ]
  %60 = ptrtoint ptr %hdmi27 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hdmi27, align 4
  %call65 = call i32 @regulator_disable(ptr noundef %61) #8
  br label %output_exit

output_exit:                                      ; preds = %disable_hdmi, %do.end33
  %err.2 = phi i32 [ %call28, %do.end33 ], [ %err.1, %disable_hdmi ]
  call void @tegra_output_exit(ptr noundef %output) #8
  br label %cleanup

cleanup:                                          ; preds = %output_exit, %tegra_hdmi_codec_register.exit.cleanup_crit_edge, %tegra_hdmi_codec_register.exit.thread, %do.end
  %retval.0 = phi i32 [ %call23, %do.end ], [ %err.2, %output_exit ], [ 0, %tegra_hdmi_codec_register.exit.cleanup_crit_edge ], [ 0, %tegra_hdmi_codec_register.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_exit(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_pdev.i = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 18
  %0 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio_pdev.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tegra_hdmi_codec_unregister.exit_crit_edge, label %if.then.i

entry.tegra_hdmi_codec_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_hdmi_codec_unregister.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_device_unregister(ptr noundef nonnull %1) #8
  br label %tegra_hdmi_codec_unregister.exit

tegra_hdmi_codec_unregister.exit:                 ; preds = %if.then.i, %entry.tegra_hdmi_codec_unregister.exit_crit_edge
  %output = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 1
  tail call void @tegra_output_exit(ptr noundef %output) #8
  %vdd = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 5
  %2 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #8
  %pll = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 4
  %4 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll, align 8
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #8
  %hdmi3 = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %hdmi3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdmi3, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_runtime_suspend(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %rst = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 10
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 8
  %call2 = tail call i32 @reset_control_assert(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.248, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %clk = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_runtime_resume(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !575
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !576
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !577
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.250, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 9
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call.i35 = tail call i32 @clk_prepare(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9_crit_edge, label %if.then3.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %4) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i36 = phi i32 [ %call.i35, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i36)
  %cmp4 = icmp slt i32 %retval.0.i36, 0
  br i1 %cmp4, label %do.end8, label %clk_prepare_enable.exit.if.end9_crit_edge

clk_prepare_enable.exit.if.end9_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end8:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.253, i32 noundef %retval.0.i36) #11
  br label %put_rpm

if.end9:                                          ; preds = %clk_prepare_enable.exit.if.end9_crit_edge, %if.end.i.if.end9_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %rst = getelementptr inbounds %struct.tegra_hdmi, ptr %client, i32 0, i32 10
  %5 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rst, align 8
  %call10 = tail call i32 @reset_control_deassert(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.256, i32 noundef %call10) #11
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  br label %put_rpm

put_rpm:                                          ; preds = %do.end15, %do.end8
  %err.0 = phi i32 [ %retval.0.i36, %do.end8 ], [ %call10, %do.end15 ]
  %call.i37 = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %put_rpm, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %err.0, %put_rpm ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_connector_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @tegra_output_connector_detect(ptr noundef %connector, i1 noundef zeroext %force) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %connector, i32 1040
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %1, i32 noundef 189, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr i8, ptr %connector, i32 1056
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %3, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #8, !srcloc !564
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_late_register(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %debugfs_entry = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 51
  %4 = ptrtoint ptr %debugfs_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_entry, align 4
  %call2 = tail call ptr @kmemdup(ptr noundef nonnull @debugfs_files, i32 noundef 16, i32 noundef 3264) #8
  %debugfs_files = getelementptr i8, ptr %connector, i32 1108
  %6 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %debugfs_files, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i20 = getelementptr i8, ptr %connector, i32 -352
  %data = getelementptr inbounds %struct.drm_info_list, ptr %call2, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i20, ptr %data, align 4
  %8 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs_files, align 4
  tail call void @drm_debugfs_create_files(ptr noundef %9, i32 noundef 1, ptr noundef %5, ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_hdmi_early_unregister(ptr nocapture noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %debugfs_files = getelementptr i8, ptr %connector, i32 1108
  %4 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_files, align 4
  %call2 = tail call i32 @drm_debugfs_remove_files(ptr noundef %5, i32 noundef 1, ptr noundef %3) #8
  %6 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_files, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %debugfs_files, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_connector_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_detect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_show_regs(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %crtc2 = getelementptr inbounds %struct.tegra_hdmi, ptr %5, i32 0, i32 1, i32 9, i32 8
  %6 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc2, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.drm_minor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %11) #8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %lor.lhs.false

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 22
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %lor.lhs.false.unlock_crit_edge, label %for.cond.preheader

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

for.cond.preheader:                               ; preds = %lor.lhs.false
  %regs.i = getelementptr inbounds %struct.tegra_hdmi, ptr %5, i32 0, i32 6
  %dev.i = getelementptr inbounds %struct.tegra_hdmi, ptr %5, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.015 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [164 x %struct.debugfs_reg32], ptr @tegra_hdmi_regs, i32 0, i32 %i.015
  %offset4 = getelementptr [164 x %struct.debugfs_reg32], ptr @tegra_hdmi_regs, i32 0, i32 %i.015, i32 1
  %16 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset4, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 8
  %shl.i = shl i32 %17, 2
  %add.ptr.i = getelementptr i8, ptr %21, i32 %shl.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !561
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %25, i32 noundef %17, i32 noundef %23) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, ptr noundef %19, i32 noundef %17, i32 noundef %23) #8
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 164
  br i1 %exitcond.not, label %for.body.unlock_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

unlock:                                           ; preds = %for.body.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ -16, %lor.lhs.false.unlock_crit_edge ], [ -16, %entry.unlock_crit_edge ], [ 0, %for.body.unlock_crit_edge ]
  tail call void @drm_modeset_unlock_all(ptr noundef %11) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_debugfs_remove_files(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_get_modes(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %clk_parent = getelementptr i8, ptr %connector, i32 1064
  %2 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_parent, align 8
  %call2 = tail call ptr @clk_get_parent(ptr noundef %3) #8
  %mul3 = mul i32 %1, 4000
  %call4 = tail call i32 @clk_round_rate(ptr noundef %call2, i32 noundef %mul3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.inv = icmp sgt i32 %call4, 0
  %spec.select = select i1 %cmp.inv, i32 0, i32 14
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_hdmi_encoder_disable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i31 = getelementptr i8, ptr %1, i32 -248
  %add.ptr.i32 = getelementptr i8, ptr %encoder, i32 -276
  %audio_lock.i = getelementptr i8, ptr %encoder, i32 1192
  tail call void @mutex_lock_nested(ptr noundef %audio_lock.i, i32 noundef 0) #8
  %irq.i = getelementptr i8, ptr %encoder, i32 1136
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %tobool.not60 = icmp eq ptr %add.ptr.i31, null
  %tobool.not = or i1 %tobool.not.i, %tobool.not60
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i = getelementptr i8, ptr %1, i32 1008
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i33 = getelementptr i8, ptr %5, i32 4104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #8, !srcloc !561
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !578
  %dev.i = getelementptr i8, ptr %1, i32 -4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %9, i32 noundef %7) #8
  %and = and i32 %7, -1073741825
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %11, i32 noundef 1026, i32 noundef %and) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !579
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr.i36 = getelementptr i8, ptr %14, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %12) #8, !srcloc !564
  tail call void @tegra_dc_commit(ptr noundef nonnull %add.ptr.i31) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dvi = getelementptr i8, ptr %encoder, i32 1181
  %15 = ptrtoint ptr %dvi to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dvi, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not = icmp eq i8 %16, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then5:                                         ; preds = %if.end
  %stereo = getelementptr i8, ptr %encoder, i32 1180
  %17 = ptrtoint ptr %stereo to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stereo, align 8, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool6.not = icmp eq i8 %18, 0
  br i1 %tobool6.not, label %if.then5.if.end8_crit_edge, label %if.then7

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i.i = getelementptr i8, ptr %encoder, i32 1132
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 168
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !561
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %dev.i.i = getelementptr i8, ptr %encoder, i32 1116
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %24, i32 noundef 42, i32 noundef %22) #8
  %and.i = and i32 %22, -2
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %26, i32 noundef 42, i32 noundef %and.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %29, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %27) #8, !srcloc !564
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5.if.end8_crit_edge
  %regs.i.i37 = getelementptr i8, ptr %encoder, i32 1132
  %30 = ptrtoint ptr %regs.i.i37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i37, align 8
  %add.ptr.i.i38 = getelementptr i8, ptr %31, i32 120
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38) #8, !srcloc !561
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %dev.i.i39 = getelementptr i8, ptr %encoder, i32 1116
  %34 = ptrtoint ptr %dev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i39, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %35, i32 noundef 30, i32 noundef %33) #8
  %and.i40 = and i32 %33, -2
  %36 = ptrtoint ptr %dev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i39, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %37, i32 noundef 30, i32 noundef %and.i40) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %and.i40) #8
  %39 = ptrtoint ptr %regs.i.i37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i37, align 8
  %add.ptr.i5.i41 = getelementptr i8, ptr %40, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i41, i32 %38) #8, !srcloc !564
  %41 = ptrtoint ptr %regs.i.i37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i37, align 8
  %add.ptr.i.i43 = getelementptr i8, ptr %42, i32 140
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #8, !srcloc !561
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %45 = ptrtoint ptr %dev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i39, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %46, i32 noundef 35, i32 noundef %44) #8
  %and.i45 = and i32 %44, -2
  %47 = ptrtoint ptr %dev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i.i39, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %48, i32 noundef 35, i32 noundef %and.i45) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %49 = tail call i32 @llvm.bswap.i32(i32 %and.i45) #8
  %50 = ptrtoint ptr %regs.i.i37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i37, align 8
  %add.ptr.i5.i46 = getelementptr i8, ptr %51, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i46, i32 %49) #8, !srcloc !564
  %52 = ptrtoint ptr %regs.i.i37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i.i37, align 8
  %add.ptr.i.i48 = getelementptr i8, ptr %53, i32 168
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #8, !srcloc !561
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %56 = ptrtoint ptr %dev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i39, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %57, i32 noundef 42, i32 noundef %55) #8
  %and.i50 = and i32 %55, -65537
  %58 = ptrtoint ptr %dev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i39, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %59, i32 noundef 42, i32 noundef %and.i50) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %60 = tail call i32 @llvm.bswap.i32(i32 %and.i50) #8
  %61 = ptrtoint ptr %regs.i.i37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i37, align 8
  %add.ptr.i5.i51 = getelementptr i8, ptr %62, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i51, i32 %60) #8, !srcloc !564
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end.if.end9_crit_edge
  %dev.i52 = getelementptr i8, ptr %encoder, i32 1116
  %63 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i52, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %64, i32 noundef 206, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %regs.i53 = getelementptr i8, ptr %encoder, i32 1132
  %65 = ptrtoint ptr %regs.i53 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i53, align 8
  %add.ptr.i54 = getelementptr i8, ptr %66, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #8, !srcloc !564
  %67 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i52, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %68, i32 noundef 205, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %regs.i53 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i53, align 8
  %add.ptr.i57 = getelementptr i8, ptr %70, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 0) #8, !srcloc !564
  %pixel_clock = getelementptr i8, ptr %encoder, i32 1176
  %71 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %pixel_clock, align 4
  %72 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %73) #8
  tail call void @mutex_unlock(ptr noundef %audio_lock.i) #8
  %call10 = tail call i32 @host1x_client_suspend(ptr noundef %add.ptr.i32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i52, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.228, i32 noundef %call10) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end9.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_hdmi_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  %frame.i368 = alloca %struct.hdmi_vendor_infoframe, align 4
  %buffer.i369 = alloca [10 x i8], align 1
  %frame.i = alloca %struct.hdmi_avi_infoframe, align 4
  %buffer.i = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i316 = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i316
  %add.ptr.i317 = getelementptr i8, ptr %encoder, i32 -276
  %call4 = tail call i32 @host1x_client_resume(ptr noundef %add.ptr.i317) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %encoder, i32 1116
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.230, i32 noundef %call4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %audio_lock.i = getelementptr i8, ptr %encoder, i32 1192
  tail call void @mutex_lock_nested(ptr noundef %audio_lock.i, i32 noundef 0) #8
  %irq.i = getelementptr i8, ptr %encoder, i32 1136
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %7) #8
  %dev.i = getelementptr i8, ptr %encoder, i32 1116
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %9, i32 noundef 206, i32 noundef 1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr i8, ptr %encoder, i32 1132
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr.i318 = getelementptr i8, ptr %11, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i318, i32 16777216) #8, !srcloc !564
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %13, i32 noundef 205, i32 noundef 1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %add.ptr.i321 = getelementptr i8, ptr %15, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i321, i32 16777216) #8, !srcloc !564
  %16 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %17, 1000
  %pixel_clock = getelementptr i8, ptr %encoder, i32 1176
  %18 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %pixel_clock, align 4
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hsync_end, align 4
  %conv = zext i16 %20 to i32
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hsync_start, align 2
  %conv5 = zext i16 %22 to i32
  %sub = sub nsw i32 %conv, %conv5
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 4
  %23 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %htotal, align 2
  %conv6 = zext i16 %24 to i32
  %sub9 = sub nsw i32 %conv6, %conv
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hdisplay, align 4
  %conv12 = zext i16 %26 to i32
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  %call16 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %28, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end22, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.233, i32 noundef %call16) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %if.end.if.end24_crit_edge
  %clk = getelementptr i8, ptr %encoder, i32 1144
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  %call25 = tail call i32 @clk_get_rate(ptr noundef %32) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.235, i32 noundef %call25) #8
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 8
  %add.ptr.i323 = getelementptr i8, ptr %34, i32 348
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i323) #8, !srcloc !561
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %38, i32 noundef 87, i32 noundef %36) #8
  %and = and i32 %36, -3
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %40, i32 noundef 87, i32 noundef %and) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 8
  %add.ptr.i327 = getelementptr i8, ptr %43, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327, i32 %41) #8, !srcloc !564
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 8
  %add.ptr.i329 = getelementptr i8, ptr %45, i32 348
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i329) #8, !srcloc !561
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_readl(ptr noundef %49, i32 noundef 87, i32 noundef %47) #8
  %and28 = and i32 %47, -2
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %51, i32 noundef 87, i32 noundef %and28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %and28) #8
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 8
  %add.ptr.i333 = getelementptr i8, ptr %54, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i333, i32 %52) #8, !srcloc !564
  %dev.i334 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %55 = ptrtoint ptr %dev.i334 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i334, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %56, i32 noundef 1029, i32 noundef 1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !579
  tail call void @arm_heavy_mb() #8
  %regs.i335 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %57 = ptrtoint ptr %regs.i335 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i335, align 8
  %add.ptr.i336 = getelementptr i8, ptr %58, i32 4116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i336, i32 16777216) #8, !srcloc !564
  %59 = ptrtoint ptr %dev.i334 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i334, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %60, i32 noundef 1072, i32 noundef 8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !579
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %regs.i335 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i335, align 8
  %add.ptr.i339 = getelementptr i8, ptr %62, i32 4288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i339, i32 134217728) #8, !srcloc !564
  %add = add nsw i32 %sub9, %sub
  %sub30 = add nsw i32 %add, 4087
  %63 = ptrtoint ptr %dev.i334 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i334, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %64, i32 noundef 1024, i32 noundef 4096) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !579
  tail call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %regs.i335 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i335, align 8
  %add.ptr.i342 = getelementptr i8, ptr %66, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i342, i32 1048576) #8, !srcloc !564
  %67 = ptrtoint ptr %dev.i334 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i334, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %68, i32 noundef 1045, i32 noundef 384) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !579
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %regs.i335 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i335, align 8
  %add.ptr.i345 = getelementptr i8, ptr %70, i32 4180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i345, i32 -2147418112) #8, !srcloc !564
  %and31 = and i32 %sub30, 4095
  %add29 = shl i32 %add, 16
  %and33 = add i32 %add29, 268369920
  %shl34 = and i32 %and33, 268369920
  %or = or i32 %shl34, %and31
  %71 = ptrtoint ptr %dev.i334 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i334, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %72, i32 noundef 1046, i32 noundef %or) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !579
  tail call void @arm_heavy_mb() #8
  %73 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %74 = ptrtoint ptr %regs.i335 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i335, align 8
  %add.ptr.i348 = getelementptr i8, ptr %75, i32 4184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i348, i32 %73) #8, !srcloc !564
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %77, i32 noundef 70, i32 noundef -2113928688) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i, align 8
  %add.ptr.i351 = getelementptr i8, ptr %79, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i351, i32 268566658) #8, !srcloc !564
  %pipe = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 5
  %80 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not = icmp ne i32 %81, 0
  %. = zext i1 %tobool.not to i32
  %82 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %83)
  %cmp39 = icmp eq i16 %83, 720
  br i1 %cmp39, label %land.lhs.true, label %if.end24.if.else50_crit_edge

if.end24.if.else50_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else50

land.lhs.true:                                    ; preds = %if.end24
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 6
  %84 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %vdisplay, align 2
  %86 = zext i16 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.265)
  switch i16 %85, label %land.lhs.true.if.else50_crit_edge [
    i16 480, label %land.lhs.true.if.then48_crit_edge
    i16 576, label %land.lhs.true.if.then48_crit_edge464
  ]

land.lhs.true.if.then48_crit_edge464:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

land.lhs.true.if.then48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

land.lhs.true.if.else50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else50

if.then48:                                        ; preds = %land.lhs.true.if.then48_crit_edge, %land.lhs.true.if.then48_crit_edge464
  %87 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %88, i32 noundef 151, i32 noundef %.) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %89 = select i1 %tobool.not, i32 16777216, i32 0
  %90 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i, align 8
  %add.ptr.i354 = getelementptr i8, ptr %91, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i354, i32 %89) #8, !srcloc !564
  br label %if.end52

if.else50:                                        ; preds = %land.lhs.true.if.else50_crit_edge, %if.end24.if.else50_crit_edge
  %or51 = or i32 %., 2
  %92 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %93, i32 noundef 151, i32 noundef %or51) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %94 = shl nuw nsw i32 %or51, 24
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 8
  %add.ptr.i357 = getelementptr i8, ptr %96, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i357, i32 %94) #8, !srcloc !564
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then48
  %97 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %clk, align 4
  %call54 = tail call i32 @clk_get_rate(ptr noundef %98) #8
  %div = udiv i32 %call54, 1000000
  %and56 = shl nuw nsw i32 %div, 8
  %shl57 = and i32 %and56, 65280
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %100, i32 noundef 149, i32 noundef %shl57) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %101 = shl nuw nsw i32 %shl57, 8
  %102 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i, align 8
  %add.ptr.i360 = getelementptr i8, ptr %103, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i360, i32 %101) #8, !srcloc !564
  %edid_blob_ptr.i = getelementptr i8, ptr %encoder, i32 432
  %104 = ptrtoint ptr %edid_blob_ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %edid_blob_ptr.i, align 4
  %tobool.not.i361 = icmp eq ptr %105, null
  br i1 %tobool.not.i361, label %tegra_output_is_hdmi.exit.thread, label %tegra_output_is_hdmi.exit

tegra_output_is_hdmi.exit.thread:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %dvi453 = getelementptr i8, ptr %encoder, i32 1181
  br label %if.end75.sink.split

tegra_output_is_hdmi.exit:                        ; preds = %if.end52
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i, align 4
  %call.i = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %107) #8
  %lnot = xor i1 %call.i, true
  %dvi = getelementptr i8, ptr %encoder, i32 1181
  %frombool = zext i1 %lnot to i8
  %108 = ptrtoint ptr %dvi to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %frombool, ptr %dvi, align 1
  br i1 %call.i, label %if.then64, label %tegra_output_is_hdmi.exit.if.end75_crit_edge

tegra_output_is_hdmi.exit.if.end75_crit_edge:     ; preds = %tegra_output_is_hdmi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then64:                                        ; preds = %tegra_output_is_hdmi.exit
  %format = getelementptr i8, ptr %encoder, i32 1160
  %109 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp65.not = icmp eq i32 %110, 0
  br i1 %cmp65.not, label %if.then64.if.end75_crit_edge, label %if.then67

if.then64.if.end75_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then67:                                        ; preds = %if.then64
  %call68 = tail call fastcc i32 @tegra_hdmi_setup_audio(ptr noundef %add.ptr.i317)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then67.if.end75.sink.split_crit_edge, label %if.then67.if.end75_crit_edge

if.then67.if.end75_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then67.if.end75.sink.split_crit_edge:          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.sink.split

if.end75.sink.split:                              ; preds = %if.then67.if.end75.sink.split_crit_edge, %tegra_output_is_hdmi.exit.thread
  %dvi453.sink = phi ptr [ %dvi453, %tegra_output_is_hdmi.exit.thread ], [ %dvi, %if.then67.if.end75.sink.split_crit_edge ]
  %111 = ptrtoint ptr %dvi453.sink to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %dvi453.sink, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %if.then67.if.end75_crit_edge, %if.then64.if.end75_crit_edge, %tegra_output_is_hdmi.exit.if.end75_crit_edge
  %dvi455 = phi ptr [ %dvi, %if.then64.if.end75_crit_edge ], [ %dvi, %if.then67.if.end75_crit_edge ], [ %dvi, %tegra_output_is_hdmi.exit.if.end75_crit_edge ], [ %dvi453.sink, %if.end75.sink.split ]
  %config = getelementptr i8, ptr %encoder, i32 1152
  %112 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %config, align 4
  %has_hda = getelementptr inbounds %struct.tegra_hdmi_config, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %has_hda to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %has_hda, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool76.not = icmp eq i8 %115, 0
  br i1 %tobool76.not, label %if.end75.if.end78_crit_edge, label %if.then77

if.end75.if.end78_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then77:                                        ; preds = %if.end75
  %arrayidx.i.i = getelementptr i8, ptr %encoder, i32 902
  %116 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %117 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 4
  br label %for.body.i

for.cond4.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %117)
  %cmp531.i = icmp ult i8 %117, 23
  br i1 %cmp531.i, label %for.cond4.preheader.i.for.body7.i_crit_edge, label %for.cond4.preheader.i.tegra_hdmi_write_eld.exit_crit_edge

for.cond4.preheader.i.tegra_hdmi_write_eld.exit_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_hdmi_write_eld.exit

for.cond4.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body7.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then77
  %i.030.i = phi i32 [ 0, %if.then77 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %i.030.i, 8
  %arrayidx.i = getelementptr %struct.tegra_hdmi, ptr %add.ptr.i317, i32 0, i32 1, i32 10, i32 42, i32 %i.030.i
  %118 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %119 to i32
  %or.i = or i32 %shl.i, %conv.i
  %120 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %121, i32 noundef 188, i32 noundef %or.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %122 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %123 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %124, i32 752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %122) #8, !srcloc !564
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i.i
  br i1 %exitcond.not.i, label %for.cond4.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond4.preheader.i.for.body7.i_crit_edge
  %i.132.i = phi i32 [ %inc11.i, %for.body7.i.for.body7.i_crit_edge ], [ %add.i.i, %for.cond4.preheader.i.for.body7.i_crit_edge ]
  %shl8.i = shl nuw nsw i32 %i.132.i, 8
  %125 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %126, i32 noundef 188, i32 noundef %shl8.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %127 = tail call i32 @llvm.bswap.i32(i32 %shl8.i) #8
  %128 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %129, i32 752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %127) #8, !srcloc !564
  %inc11.i = add nuw nsw i32 %i.132.i, 1
  %cmp5.i = icmp ult i32 %i.132.i, 95
  br i1 %cmp5.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.tegra_hdmi_write_eld.exit_crit_edge

for.body7.i.tegra_hdmi_write_eld.exit_crit_edge:  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_hdmi_write_eld.exit

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.i

tegra_hdmi_write_eld.exit:                        ; preds = %for.body7.i.tegra_hdmi_write_eld.exit_crit_edge, %for.cond4.preheader.i.tegra_hdmi_write_eld.exit_crit_edge
  %130 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %131, i32 noundef 189, i32 noundef 3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %132 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %133, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 50331648) #8, !srcloc !564
  br label %if.end78

if.end78:                                         ; preds = %tegra_hdmi_write_eld.exit, %if.end75.if.end78_crit_edge
  %add82 = sub nsw i32 %conv6, %conv12
  %sub84 = shl nsw i32 %add82, 11
  %134 = add nsw i32 %sub84, 1945600
  %shl87 = and i32 %134, 2031616
  %135 = ptrtoint ptr %dvi455 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %dvi455, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool90.not = icmp eq i8 %136, 0
  %spec.select.v = select i1 %tobool90.not, i32 1073741880, i32 56
  %spec.select = or i32 %spec.select.v, %shl87
  %137 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_hdmi_writel(ptr noundef %138, i32 noundef 68, i32 noundef %spec.select) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  tail call void @arm_heavy_mb() #8
  %139 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #8
  %140 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i, align 8
  %add.ptr.i364 = getelementptr i8, ptr %141, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i364, i32 %139) #8, !srcloc !564
  %142 = ptrtoint ptr %dvi455 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %dvi455, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool95.not = icmp eq i8 %143, 0
  br i1 %tobool95.not, label %if.then96, label %if.end78.if.end100_crit_edge

if.end78.if.end100_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then96:                                        ; preds = %if.end78
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i) #8
  %144 = call ptr @memset(ptr %frame.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer.i) #8
  %connector.i = getelementptr i8, ptr %encoder, i32 76
  %145 = call ptr @memset(ptr %buffer.i, i32 255, i32 17)
  %call.i365 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame.i, ptr noundef %connector.i, ptr noundef %adjusted_mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i365)
  %cmp.i = icmp slt i32 %call.i365, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i367

do.end.i:                                         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.236, i32 noundef %call.i365) #11
  br label %tegra_hdmi_setup_avi_infoframe.exit

if.end.i367:                                      ; preds = %if.then96
  %call1.i = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %frame.i, ptr noundef nonnull %buffer.i, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end6.i, label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i367
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.239, i32 noundef %call1.i) #11
  br label %tegra_hdmi_setup_avi_infoframe.exit

if.end8.i:                                        ; preds = %if.end.i367
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @tegra_hdmi_write_infopack(ptr noundef %add.ptr.i317, ptr noundef nonnull %buffer.i, i32 noundef %call1.i) #8
  br label %tegra_hdmi_setup_avi_infoframe.exit

tegra_hdmi_setup_avi_infoframe.exit:              ; preds = %if.end8.i, %do.end6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i) #8
  call fastcc void @tegra_hdmi_setup_audio_infoframe(ptr noundef %add.ptr.i317)
  %stereo = getelementptr i8, ptr %encoder, i32 1180
  %150 = ptrtoint ptr %stereo to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %stereo, align 8, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool97.not = icmp eq i8 %151, 0
  br i1 %tobool97.not, label %tegra_hdmi_setup_avi_infoframe.exit.if.end100_crit_edge, label %if.then98

tegra_hdmi_setup_avi_infoframe.exit.if.end100_crit_edge: ; preds = %tegra_hdmi_setup_avi_infoframe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then98:                                        ; preds = %tegra_hdmi_setup_avi_infoframe.exit
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %frame.i368) #8
  %152 = call ptr @memset(ptr %frame.i368, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buffer.i369) #8
  %153 = call ptr @memset(ptr %buffer.i369, i32 255, i32 10)
  %call.i370 = call i32 @hdmi_vendor_infoframe_init(ptr noundef nonnull %frame.i368) #8
  %s3d_struct.i = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %frame.i368, i32 0, i32 5
  %154 = ptrtoint ptr %s3d_struct.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %s3d_struct.i, align 4
  %call1.i371 = call i32 @hdmi_vendor_infoframe_pack(ptr noundef nonnull %frame.i368, ptr noundef nonnull %buffer.i369, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i371)
  %cmp.i372 = icmp slt i32 %call1.i371, 0
  br i1 %cmp.i372, label %do.end.i374, label %if.end.i375

do.end.i374:                                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.241, i32 noundef %call1.i371) #11
  br label %tegra_hdmi_setup_stereo_infoframe.exit

if.end.i375:                                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @tegra_hdmi_write_infopack(ptr noundef %add.ptr.i317, ptr noundef nonnull %buffer.i369, i32 noundef %call1.i371) #8
  br label %tegra_hdmi_setup_stereo_infoframe.exit

tegra_hdmi_setup_stereo_infoframe.exit:           ; preds = %if.end.i375, %do.end.i374
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buffer.i369) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %frame.i368) #8
  br label %if.end100

if.end100:                                        ; preds = %tegra_hdmi_setup_stereo_infoframe.exit, %tegra_hdmi_setup_avi_infoframe.exit.if.end100_crit_edge, %if.end78.if.end100_crit_edge
  %157 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %config, align 4
  %num_tmds = getelementptr inbounds %struct.tegra_hdmi_config, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %num_tmds to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_tmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp102457.not = icmp eq i32 %160, 0
  br i1 %cmp102457.not, label %if.end100.for.end_crit_edge, label %for.body.lr.ph

if.end100.for.end_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end100
  %161 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pixel_clock, align 4
  %163 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %158, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0458 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tmds_config, ptr %164, i32 %i.0458
  %165 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %166)
  %cmp106.not = icmp ugt i32 %162, %166
  br i1 %cmp106.not, label %for.inc, label %if.then108

if.then108:                                       ; preds = %for.body
  %pll0.i = getelementptr %struct.tmds_config, ptr %164, i32 %i.0458, i32 1
  %167 = ptrtoint ptr %pll0.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %pll0.i, align 4
  %169 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %170, i32 noundef 87, i32 noundef %168) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %171 = call i32 @llvm.bswap.i32(i32 %168) #8
  %172 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i378 = getelementptr i8, ptr %173, i32 348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i378, i32 %171) #8, !srcloc !564
  %pll1.i = getelementptr %struct.tmds_config, ptr %164, i32 %i.0458, i32 2
  %174 = ptrtoint ptr %pll1.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pll1.i, align 4
  %176 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %177, i32 noundef 88, i32 noundef %175) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %178 = call i32 @llvm.bswap.i32(i32 %175) #8
  %179 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %180, i32 352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %178) #8, !srcloc !564
  %pe_current.i = getelementptr %struct.tmds_config, ptr %164, i32 %i.0458, i32 3
  %181 = ptrtoint ptr %pe_current.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %pe_current.i, align 4
  %183 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %184, i32 noundef 153, i32 noundef %182) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %185 = call i32 @llvm.bswap.i32(i32 %182) #8
  %186 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i, align 8
  %add.ptr.i25.i = getelementptr i8, ptr %187, i32 612
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %185) #8, !srcloc !564
  %drive_current.i = getelementptr %struct.tmds_config, ptr %164, i32 %i.0458, i32 4
  %188 = ptrtoint ptr %drive_current.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %drive_current.i, align 4
  %190 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %191, i32 noundef 126, i32 noundef %189) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %192 = call i32 @llvm.bswap.i32(i32 %189) #8
  %193 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regs.i, align 8
  %add.ptr.i28.i = getelementptr i8, ptr %194, i32 504
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %192) #8, !srcloc !564
  %195 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %config, align 4
  %fuse_override_offset.i = getelementptr inbounds %struct.tegra_hdmi_config, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %fuse_override_offset.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %fuse_override_offset.i, align 4
  %199 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs.i, align 8
  %shl.i.i = shl i32 %198, 2
  %add.ptr.i30.i = getelementptr i8, ptr %200, i32 %shl.i.i
  %201 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #8, !srcloc !561
  %202 = call i32 @llvm.bswap.i32(i32 %201) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %203 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_readl(ptr noundef %204, i32 noundef %198, i32 noundef %202) #8
  %205 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %config, align 4
  %fuse_override_value.i = getelementptr inbounds %struct.tegra_hdmi_config, ptr %206, i32 0, i32 3
  %207 = ptrtoint ptr %fuse_override_value.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %fuse_override_value.i, align 4
  %or.i379 = or i32 %208, %202
  %fuse_override_offset3.i = getelementptr inbounds %struct.tegra_hdmi_config, ptr %206, i32 0, i32 2
  %209 = ptrtoint ptr %fuse_override_offset3.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %fuse_override_offset3.i, align 4
  %211 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %212, i32 noundef %210, i32 noundef %or.i379) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %213 = call i32 @llvm.bswap.i32(i32 %or.i379) #8
  %214 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %regs.i, align 8
  %shl.i34.i = shl i32 %210, 2
  %add.ptr.i35.i = getelementptr i8, ptr %215, i32 %shl.i34.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %213) #8, !srcloc !564
  %216 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %config, align 4
  %has_sor_io_peak_current.i = getelementptr inbounds %struct.tegra_hdmi_config, ptr %217, i32 0, i32 4
  %218 = ptrtoint ptr %has_sor_io_peak_current.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %has_sor_io_peak_current.i, align 4, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool.not.i380 = icmp eq i8 %219, 0
  br i1 %tobool.not.i380, label %if.then108.for.end_crit_edge, label %if.then.i

if.then108.for.end_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.i:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  %peak_current.i = getelementptr %struct.tmds_config, ptr %164, i32 %i.0458, i32 5
  %220 = ptrtoint ptr %peak_current.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %peak_current.i, align 4
  %222 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %223, i32 noundef 209, i32 noundef %221) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %224 = call i32 @llvm.bswap.i32(i32 %221) #8
  %225 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs.i, align 8
  %add.ptr.i38.i = getelementptr i8, ptr %226, i32 836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 %224) #8, !srcloc !564
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0458, 1
  %exitcond.not = icmp eq i32 %inc, %160
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.i, %if.then108.for.end_crit_edge, %if.end100.for.end_crit_edge
  %227 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %228, i32 noundef 95, i32 noundef 34816) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %229 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regs.i, align 8
  %add.ptr.i384 = getelementptr i8, ptr %230, i32 380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i384, i32 8912896) #8, !srcloc !564
  %231 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %232, i32 noundef 96, i32 noundef 8429569) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %233 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regs.i, align 8
  %add.ptr.i387 = getelementptr i8, ptr %234, i32 384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i387, i32 27295744) #8, !srcloc !564
  %235 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %236, i32 noundef 104, i32 noundef 8429569) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %237 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regs.i, align 8
  %add.ptr.i390 = getelementptr i8, ptr %238, i32 416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i390, i32 27295744) #8, !srcloc !564
  %239 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %regs.i, align 8
  %add.ptr.i392 = getelementptr i8, ptr %240, i32 360
  %241 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i392) #8, !srcloc !561
  %242 = call i32 @llvm.bswap.i32(i32 %241) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %243 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_readl(ptr noundef %244, i32 noundef 90, i32 noundef %242) #8
  %and114 = and i32 %242, -253833217
  %or119 = or i32 %and114, 35655680
  %245 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %246, i32 noundef 90, i32 noundef %or119) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %247 = call i32 @llvm.bswap.i32(i32 %or119) #8
  %248 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs.i, align 8
  %add.ptr.i396 = getelementptr i8, ptr %249, i32 360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i396, i32 %247) #8, !srcloc !564
  %250 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %251, i32 noundef 85, i32 noundef -2147483647) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %252 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs.i, align 8
  %add.ptr.i399 = getelementptr i8, ptr %253, i32 340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i399, i32 16777344) #8, !srcloc !564
  %254 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %255, i32 noundef 85, i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %256 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs.i, align 8
  %add.ptr.i402 = getelementptr i8, ptr %257, i32 340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i402, i32 16777216) #8, !srcloc !564
  br label %do.body120

do.body120:                                       ; preds = %do.end136.do.body120_crit_edge, %for.end
  %retries.0 = phi i32 [ 1000, %for.end ], [ %dec, %do.end136.do.body120_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retries.0)
  %cmp122 = icmp slt i32 %retries.0, 1
  br i1 %cmp122, label %do.body128, label %do.end136, !prof !580

do.body128:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/tegra/hdmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #8, !srcloc !581
  unreachable

do.end136:                                        ; preds = %do.body120
  %dec = add nsw i32 %retries.0, -1
  %258 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %regs.i, align 8
  %add.ptr.i404 = getelementptr i8, ptr %259, i32 340
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i404) #8, !srcloc !561
  %261 = call i32 @llvm.bswap.i32(i32 %260) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %262 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_readl(ptr noundef %263, i32 noundef 85, i32 noundef %261) #8
  %tobool140.not = icmp sgt i32 %261, -1
  br i1 %tobool140.not, label %do.end141, label %do.end136.do.body120_crit_edge

do.end136.do.body120_crit_edge:                   ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

do.end141:                                        ; preds = %do.end136
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 11
  %264 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %flags, align 4
  %and148 = and i32 %265, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  %value.3 = select i1 %tobool149.not, i32 369, i32 4465
  %and160 = shl i32 %265, 10
  %266 = and i32 %and160, 8192
  %267 = or i32 %value.3, %266
  %268 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %269, i32 noundef 3, i32 noundef %267) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %270 = call i32 @llvm.bswap.i32(i32 %267) #8
  %271 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %regs.i, align 8
  %add.ptr.i408 = getelementptr i8, ptr %272, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i408, i32 %270) #8, !srcloc !564
  %273 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %274, i32 noundef 2, i32 noundef 6) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %275 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regs.i, align 8
  %add.ptr.i411 = getelementptr i8, ptr %276, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i411, i32 100663296) #8, !srcloc !564
  %277 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %278, i32 noundef 1, i32 noundef 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %279 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regs.i, align 8
  %add.ptr.i414 = getelementptr i8, ptr %280, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i414, i32 0) #8, !srcloc !564
  %281 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %282, i32 noundef 1, i32 noundef 1) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %283 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %regs.i, align 8
  %add.ptr.i417 = getelementptr i8, ptr %284, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i417, i32 16777216) #8, !srcloc !564
  %285 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %286, i32 noundef 2, i32 noundef 14) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %287 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %regs.i, align 8
  %add.ptr.i420 = getelementptr i8, ptr %288, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i420, i32 234881024) #8, !srcloc !564
  %289 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %290, i32 noundef 1, i32 noundef 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %291 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %regs.i, align 8
  %add.ptr.i423 = getelementptr i8, ptr %292, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i423, i32 0) #8, !srcloc !564
  %293 = ptrtoint ptr %regs.i335 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %regs.i335, align 8
  %add.ptr.i425 = getelementptr i8, ptr %294, i32 4104
  %295 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i425) #8, !srcloc !561
  %296 = call i32 @llvm.bswap.i32(i32 %295) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !578
  %297 = ptrtoint ptr %dev.i334 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev.i334, align 4
  call fastcc void @trace_dc_readl(ptr noundef %298, i32 noundef %296) #8
  %or167 = or i32 %296, 1073741824
  %299 = ptrtoint ptr %dev.i334 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %dev.i334, align 4
  call fastcc void @trace_dc_writel(ptr noundef %300, i32 noundef 1026, i32 noundef %or167) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !579
  call void @arm_heavy_mb() #8
  %301 = call i32 @llvm.bswap.i32(i32 %or167) #8
  %302 = ptrtoint ptr %regs.i335 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %regs.i335, align 8
  %add.ptr.i429 = getelementptr i8, ptr %303, i32 4104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i429, i32 %301) #8, !srcloc !564
  call void @tegra_dc_commit(ptr noundef %spec.select.i) #8
  %304 = ptrtoint ptr %dvi455 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %dvi455, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool169.not = icmp eq i8 %305, 0
  br i1 %tobool169.not, label %if.then170, label %do.end141.if.end175_crit_edge

do.end141.if.end175_crit_edge:                    ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.then170:                                       ; preds = %do.end141
  %306 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i431 = getelementptr i8, ptr %307, i32 140
  %308 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i431) #8, !srcloc !561
  %309 = call i32 @llvm.bswap.i32(i32 %308) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %310 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_readl(ptr noundef %311, i32 noundef 35, i32 noundef %309) #8
  %or.i433 = or i32 %309, 1
  %312 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %313, i32 noundef 35, i32 noundef %or.i433) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %314 = call i32 @llvm.bswap.i32(i32 %or.i433) #8
  %315 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %316, i32 140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %314) #8, !srcloc !564
  %317 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i435 = getelementptr i8, ptr %318, i32 120
  %319 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i435) #8, !srcloc !561
  %320 = call i32 @llvm.bswap.i32(i32 %319) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %321 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_readl(ptr noundef %322, i32 noundef 30, i32 noundef %320) #8
  %or.i437 = or i32 %320, 1
  %323 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %324, i32 noundef 30, i32 noundef %or.i437) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %325 = call i32 @llvm.bswap.i32(i32 %or.i437) #8
  %326 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i438 = getelementptr i8, ptr %327, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i438, i32 %325) #8, !srcloc !564
  %328 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i440 = getelementptr i8, ptr %329, i32 168
  %330 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i440) #8, !srcloc !561
  %331 = call i32 @llvm.bswap.i32(i32 %330) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %332 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_readl(ptr noundef %333, i32 noundef 42, i32 noundef %331) #8
  %or.i442 = or i32 %331, 65536
  %334 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %335, i32 noundef 42, i32 noundef %or.i442) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %336 = call i32 @llvm.bswap.i32(i32 %or.i442) #8
  %337 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i443 = getelementptr i8, ptr %338, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i443, i32 %336) #8, !srcloc !564
  %stereo171 = getelementptr i8, ptr %encoder, i32 1180
  %339 = ptrtoint ptr %stereo171 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %stereo171, align 8, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %340)
  %tobool172.not = icmp eq i8 %340, 0
  br i1 %tobool172.not, label %if.then170.if.end175_crit_edge, label %if.then173

if.then170.if.end175_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.then173:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %341 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i445 = getelementptr i8, ptr %342, i32 168
  %343 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i445) #8, !srcloc !561
  %344 = call i32 @llvm.bswap.i32(i32 %343) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %345 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_readl(ptr noundef %346, i32 noundef 42, i32 noundef %344) #8
  %or.i447 = or i32 %344, 1
  %347 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_hdmi_writel(ptr noundef %348, i32 noundef 42, i32 noundef %or.i447) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  call void @arm_heavy_mb() #8
  %349 = call i32 @llvm.bswap.i32(i32 %or.i447) #8
  %350 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i448 = getelementptr i8, ptr %351, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i448, i32 %349) #8, !srcloc !564
  br label %if.end175

if.end175:                                        ; preds = %if.then173, %if.then170.if.end175_crit_edge, %do.end141.if.end175_crit_edge
  %352 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %irq.i, align 4
  call void @enable_irq(i32 noundef %353) #8
  call void @mutex_unlock(ptr noundef %audio_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end175, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_encoder_atomic_check(ptr nocapture noundef readonly %encoder, ptr noundef %crtc_state, ptr nocapture noundef readonly %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %conn_state, i32 0, i32 1
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i13 = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i13
  %mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %mul = mul i32 %3, 1000
  %clk_parent = getelementptr i8, ptr %encoder, i32 1140
  %4 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_parent, align 8
  %call3 = tail call i32 @tegra_dc_state_setup_clock(ptr noundef %spec.select.i, ptr noundef %crtc_state, ptr noundef %5, i32 noundef %mul, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %encoder, i32 -32
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.243, i32 noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_dc_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_readl(ptr noundef %dev, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), ptr blockaddress(@trace_dc_readl, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !565

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !566

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !582
  %call42 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %dev, i32 noundef 1026, i32 noundef %value) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !583
  %13 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !566

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !569
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_dc_readl.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dc_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 32, ptr noundef nonnull @.str.35) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !570
  %31 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_writel(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), ptr blockaddress(@trace_dc_writel, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !565

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !566

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !584
  %call42 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !585
  %13 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !566

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !569
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dc_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dc_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 29, ptr noundef nonnull @.str.35) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !570
  %31 = tail call i32 @llvm.read_register.i32(metadata !551) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_vendor_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_vendor_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_state_setup_clock(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_audio_startup(ptr nocapture noundef readnone %dev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @host1x_client_resume(ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1 = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.230, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_hw_params(ptr nocapture noundef readnone %dev, ptr noundef %data, ptr nocapture noundef readnone %fmt, ptr nocapture noundef readonly %hparms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_lock.i = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %audio_lock.i, i32 noundef 0) #8
  %irq.i = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %1) #8
  %sample_rate = getelementptr inbounds %struct.hdmi_codec_params, ptr %hparms, i32 0, i32 2
  %2 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sample_rate, align 4
  %format = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 13
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %format, align 4
  %channels = getelementptr inbounds %struct.hdmi_codec_params, ptr %hparms, i32 0, i32 4
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channels, align 4
  %channels3 = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %channels3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %channels3, align 4
  %pixel_clock = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 14
  %8 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dvi = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 16
  %10 = ptrtoint ptr %dvi to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dvi, align 1, !range !573
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @tegra_hdmi_reconfigure_audio(ptr noundef %data)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true.if.end_crit_edge ], [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %13) #8
  tail call void @mutex_unlock(ptr noundef %audio_lock.i) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_hdmi_audio_shutdown(ptr nocapture noundef readnone %dev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_lock.i = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %audio_lock.i, i32 noundef 0) #8
  %irq.i = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %1) #8
  %format = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 13
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %format, align 4
  %channels = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %channels, align 4
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %5) #8
  tail call void @mutex_unlock(ptr noundef %audio_lock.i) #8
  %call = tail call i32 @host1x_client_suspend(ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2 = getelementptr inbounds %struct.tegra_hdmi, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.228, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 278)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 278)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !460, !461, !462, !464, !465, !467, !468, !470, !471, !472, !473, !475, !476, !477, !479, !481, !482, !483, !484, !486, !487, !488, !490, !491, !492, !493, !495, !496, !497, !498, !500, !502, !504, !505, !506, !508, !509, !510, !512, !513, !514, !515, !517, !518, !519, !520, !522, !523, !524, !526, !527, !528, !530, !531, !532, !533, !535, !537, !539, !541, !543, !545, !547, !549}
!llvm.named.register.sp = !{!551}
!llvm.module.flags = !{!552, !553, !554, !555, !556, !557, !558, !559}
!llvm.ident = !{!560}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1919, i32 11}
!2 = !{ptr @tegra_hdmi_driver, !3, !"tegra_hdmi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1917, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1778, i32 22}
!6 = !{ptr @tegra_hdmi_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1794, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1798, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tegra_hdmi_probe._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @tegra_hdmi_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1802, i32 49}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1804, i32 3}
!20 = !{ptr @tegra_hdmi_probe._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @tegra_hdmi_probe._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1808, i32 46}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1814, i32 3}
!26 = !{ptr @tegra_hdmi_probe._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_hdmi_probe._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1822, i32 12}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1824, i32 3}
!32 = !{ptr @tegra_hdmi_probe._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tegra_hdmi_probe._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1829, i32 45}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1835, i32 3}
!38 = !{ptr @tegra_hdmi_probe._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra_hdmi_probe._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1840, i32 45}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1846, i32 3}
!44 = !{ptr @tegra_hdmi_probe._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tegra_hdmi_probe._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1871, i32 3}
!48 = !{ptr @tegra_hdmi_probe._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @tegra_hdmi_probe._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @tegra_hdmi_probe.__key.30, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1890, i32 8}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1892, i32 3}
!54 = !{ptr @tegra_hdmi_probe._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tegra_hdmi_probe._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 37, i32 1}
!58 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!60 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!63 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 34, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 564, i32 3}
!69 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tegra_hdmi_setup_audio._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @tegra_hdmi_setup_audio._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 570, i32 2}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tegra_hdmi_setup_audio.__UNIQUE_ID_ddebug347, !73, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!76 = !{ptr @tegra_hdmi_write_aval.regs, !77, !"regs", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 463, i32 4}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 752, i32 3}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tegra_hdmi_setup_audio_infoframe._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @tegra_hdmi_setup_audio_infoframe._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 761, i32 3}
!85 = !{ptr @tegra_hdmi_setup_audio_infoframe._entry.43, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tegra_hdmi_setup_audio_infoframe._entry_ptr.45, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 674, i32 3}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tegra_hdmi_write_infopack._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @tegra_hdmi_write_infopack._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @hdmi_client_ops, !93, !"hdmi_client_ops", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1692, i32 39}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1577, i32 3}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @tegra_hdmi_init._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @tegra_hdmi_init._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1585, i32 3}
!101 = !{ptr @tegra_hdmi_init._entry.50, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @tegra_hdmi_init._entry_ptr.52, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1592, i32 3}
!105 = !{ptr @tegra_hdmi_init._entry.53, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @tegra_hdmi_init._entry_ptr.55, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1598, i32 3}
!109 = !{ptr @tegra_hdmi_init._entry.56, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @tegra_hdmi_init._entry_ptr.58, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1604, i32 3}
!113 = !{ptr @tegra_hdmi_init._entry.59, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @tegra_hdmi_init._entry_ptr.61, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @tegra_hdmi_connector_funcs, !116, !"tegra_hdmi_connector_funcs", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1129, i32 41}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1093, i32 4}
!119 = !{ptr @debugfs_files, !120, !"debugfs_files", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1092, i32 29}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1083, i32 17}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 898, i32 2}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 899, i32 2}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 900, i32 2}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 901, i32 2}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 902, i32 2}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 903, i32 2}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 904, i32 2}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 905, i32 2}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 906, i32 2}
!141 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 907, i32 2}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 908, i32 2}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 909, i32 2}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 910, i32 2}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 911, i32 2}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 912, i32 2}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 913, i32 2}
!155 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 914, i32 2}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 915, i32 2}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 916, i32 2}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 917, i32 2}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 918, i32 2}
!165 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 919, i32 2}
!167 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 920, i32 2}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 921, i32 2}
!171 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 922, i32 2}
!173 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 923, i32 2}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 924, i32 2}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 925, i32 2}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 926, i32 2}
!181 = !{ptr @.str.93, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 927, i32 2}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 928, i32 2}
!185 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 929, i32 2}
!187 = !{ptr @.str.96, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 930, i32 2}
!189 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 931, i32 2}
!191 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 932, i32 2}
!193 = !{ptr @.str.99, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 933, i32 2}
!195 = !{ptr @.str.100, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 934, i32 2}
!197 = !{ptr @.str.101, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 935, i32 2}
!199 = !{ptr @.str.102, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 936, i32 2}
!201 = !{ptr @.str.103, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 937, i32 2}
!203 = !{ptr @.str.104, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 938, i32 2}
!205 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 939, i32 2}
!207 = !{ptr @.str.106, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 940, i32 2}
!209 = !{ptr @.str.107, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 941, i32 2}
!211 = !{ptr @.str.108, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 942, i32 2}
!213 = !{ptr @.str.109, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 943, i32 2}
!215 = !{ptr @.str.110, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 944, i32 2}
!217 = !{ptr @.str.111, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 945, i32 2}
!219 = !{ptr @.str.112, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 946, i32 2}
!221 = !{ptr @.str.113, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 947, i32 2}
!223 = !{ptr @.str.114, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 948, i32 2}
!225 = !{ptr @.str.115, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 949, i32 2}
!227 = !{ptr @.str.116, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 950, i32 2}
!229 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 951, i32 2}
!231 = !{ptr @.str.118, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 952, i32 2}
!233 = !{ptr @.str.119, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 953, i32 2}
!235 = !{ptr @.str.120, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 954, i32 2}
!237 = !{ptr @.str.121, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 955, i32 2}
!239 = !{ptr @.str.122, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 956, i32 2}
!241 = !{ptr @.str.123, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 957, i32 2}
!243 = !{ptr @.str.124, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 958, i32 2}
!245 = !{ptr @.str.125, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 959, i32 2}
!247 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 960, i32 2}
!249 = !{ptr @.str.127, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 961, i32 2}
!251 = !{ptr @.str.128, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 962, i32 2}
!253 = !{ptr @.str.129, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 963, i32 2}
!255 = !{ptr @.str.130, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 964, i32 2}
!257 = !{ptr @.str.131, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 965, i32 2}
!259 = !{ptr @.str.132, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 966, i32 2}
!261 = !{ptr @.str.133, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 967, i32 2}
!263 = !{ptr @.str.134, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 968, i32 2}
!265 = !{ptr @.str.135, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 969, i32 2}
!267 = !{ptr @.str.136, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 970, i32 2}
!269 = !{ptr @.str.137, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 971, i32 2}
!271 = !{ptr @.str.138, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 972, i32 2}
!273 = !{ptr @.str.139, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 973, i32 2}
!275 = !{ptr @.str.140, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 974, i32 2}
!277 = !{ptr @.str.141, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 975, i32 2}
!279 = !{ptr @.str.142, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 976, i32 2}
!281 = !{ptr @.str.143, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 977, i32 2}
!283 = !{ptr @.str.144, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 978, i32 2}
!285 = !{ptr @.str.145, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 979, i32 2}
!287 = !{ptr @.str.146, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 980, i32 2}
!289 = !{ptr @.str.147, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 981, i32 2}
!291 = !{ptr @.str.148, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 982, i32 2}
!293 = !{ptr @.str.149, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 983, i32 2}
!295 = !{ptr @.str.150, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 984, i32 2}
!297 = !{ptr @.str.151, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 985, i32 2}
!299 = !{ptr @.str.152, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 986, i32 2}
!301 = !{ptr @.str.153, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 987, i32 2}
!303 = !{ptr @.str.154, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 988, i32 2}
!305 = !{ptr @.str.155, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 989, i32 2}
!307 = !{ptr @.str.156, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 990, i32 2}
!309 = !{ptr @.str.157, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 991, i32 2}
!311 = !{ptr @.str.158, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 992, i32 2}
!313 = !{ptr @.str.159, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 993, i32 2}
!315 = !{ptr @.str.160, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 994, i32 2}
!317 = !{ptr @.str.161, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 995, i32 2}
!319 = !{ptr @.str.162, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 996, i32 2}
!321 = !{ptr @.str.163, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 997, i32 2}
!323 = !{ptr @.str.164, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 998, i32 2}
!325 = !{ptr @.str.165, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 999, i32 2}
!327 = !{ptr @.str.166, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1000, i32 2}
!329 = !{ptr @.str.167, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1001, i32 2}
!331 = !{ptr @.str.168, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1002, i32 2}
!333 = !{ptr @.str.169, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1003, i32 2}
!335 = !{ptr @.str.170, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1004, i32 2}
!337 = !{ptr @.str.171, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1005, i32 2}
!339 = !{ptr @.str.172, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1006, i32 2}
!341 = !{ptr @.str.173, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1007, i32 2}
!343 = !{ptr @.str.174, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1008, i32 2}
!345 = !{ptr @.str.175, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1009, i32 2}
!347 = !{ptr @.str.176, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1010, i32 2}
!349 = !{ptr @.str.177, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1011, i32 2}
!351 = !{ptr @.str.178, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1012, i32 2}
!353 = !{ptr @.str.179, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1013, i32 2}
!355 = !{ptr @.str.180, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1014, i32 2}
!357 = !{ptr @.str.181, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1015, i32 2}
!359 = !{ptr @.str.182, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1016, i32 2}
!361 = !{ptr @.str.183, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1017, i32 2}
!363 = !{ptr @.str.184, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1018, i32 2}
!365 = !{ptr @.str.185, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1019, i32 2}
!367 = !{ptr @.str.186, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1020, i32 2}
!369 = !{ptr @.str.187, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1021, i32 2}
!371 = !{ptr @.str.188, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1022, i32 2}
!373 = !{ptr @.str.189, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1023, i32 2}
!375 = !{ptr @.str.190, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1024, i32 2}
!377 = !{ptr @.str.191, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1025, i32 2}
!379 = !{ptr @.str.192, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1026, i32 2}
!381 = !{ptr @.str.193, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1027, i32 2}
!383 = !{ptr @.str.194, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1028, i32 2}
!385 = !{ptr @.str.195, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1029, i32 2}
!387 = !{ptr @.str.196, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1030, i32 2}
!389 = !{ptr @.str.197, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1031, i32 2}
!391 = !{ptr @.str.198, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1032, i32 2}
!393 = !{ptr @.str.199, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1033, i32 2}
!395 = !{ptr @.str.200, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1034, i32 2}
!397 = !{ptr @.str.201, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1035, i32 2}
!399 = !{ptr @.str.202, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1036, i32 2}
!401 = !{ptr @.str.203, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1037, i32 2}
!403 = !{ptr @.str.204, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1038, i32 2}
!405 = !{ptr @.str.205, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1039, i32 2}
!407 = !{ptr @.str.206, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1040, i32 2}
!409 = !{ptr @.str.207, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1041, i32 2}
!411 = !{ptr @.str.208, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1042, i32 2}
!413 = !{ptr @.str.209, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1043, i32 2}
!415 = !{ptr @.str.210, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1044, i32 2}
!417 = !{ptr @.str.211, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1045, i32 2}
!419 = !{ptr @.str.212, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1046, i32 2}
!421 = !{ptr @.str.213, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1047, i32 2}
!423 = !{ptr @.str.214, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1048, i32 2}
!425 = !{ptr @.str.215, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1049, i32 2}
!427 = !{ptr @.str.216, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1050, i32 2}
!429 = !{ptr @.str.217, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1051, i32 2}
!431 = !{ptr @.str.218, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1052, i32 2}
!433 = !{ptr @.str.219, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1053, i32 2}
!435 = !{ptr @.str.220, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1054, i32 2}
!437 = !{ptr @.str.221, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1055, i32 2}
!439 = !{ptr @.str.222, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1056, i32 2}
!441 = !{ptr @.str.223, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1057, i32 2}
!443 = !{ptr @.str.224, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1058, i32 2}
!445 = !{ptr @.str.225, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1059, i32 2}
!447 = !{ptr @.str.226, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1060, i32 2}
!449 = !{ptr @.str.227, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1061, i32 2}
!451 = !{ptr @tegra_hdmi_regs, !452, !"tegra_hdmi_regs", i1 false, i1 false}
!452 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 897, i32 35}
!453 = !{ptr @tegra_hdmi_connector_helper_funcs, !454, !"tegra_hdmi_connector_helper_funcs", i1 false, i1 false}
!454 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1161, i32 1}
!455 = !{ptr @tegra_hdmi_encoder_helper_funcs, !456, !"tegra_hdmi_encoder_helper_funcs", i1 false, i1 false}
!456 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1459, i32 46}
!457 = !{ptr @.str.228, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1206, i32 3}
!459 = !{ptr @.str.229, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @tegra_hdmi_encoder_disable._entry, !458, !"_entry", i1 false, i1 false}
!461 = !{ptr @tegra_hdmi_encoder_disable._entry_ptr, !458, !"_entry_ptr", i1 false, i1 false}
!462 = distinct !{null, !463, !"__already_done", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 30, i32 1}
!464 = distinct !{null, !463, !"__warned", i1 false, i1 false}
!465 = distinct !{null, !466, !"__already_done", i1 false, i1 false}
!466 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 27, i32 1}
!467 = distinct !{null, !466, !"__warned", i1 false, i1 false}
!468 = !{ptr @.str.230, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1223, i32 3}
!470 = !{ptr @.str.231, !469, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @tegra_hdmi_encoder_enable._entry, !469, !"_entry", i1 false, i1 false}
!472 = !{ptr @tegra_hdmi_encoder_enable._entry_ptr, !469, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.233, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1244, i32 3}
!475 = !{ptr @tegra_hdmi_encoder_enable._entry.232, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @tegra_hdmi_encoder_enable._entry_ptr.234, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.235, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1248, i32 2}
!479 = !{ptr @.str.236, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 713, i32 3}
!481 = !{ptr @.str.237, !480, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @tegra_hdmi_setup_avi_infoframe._entry, !480, !"_entry", i1 false, i1 false}
!483 = !{ptr @tegra_hdmi_setup_avi_infoframe._entry_ptr, !480, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.239, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 719, i32 3}
!486 = !{ptr @tegra_hdmi_setup_avi_infoframe._entry.238, !485, !"_entry", i1 false, i1 false}
!487 = !{ptr @tegra_hdmi_setup_avi_infoframe._entry_ptr.240, !485, !"_entry_ptr", i1 false, i1 false}
!488 = !{ptr @.str.241, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 804, i32 3}
!490 = !{ptr @.str.242, !489, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @tegra_hdmi_setup_stereo_infoframe._entry, !489, !"_entry", i1 false, i1 false}
!492 = !{ptr @tegra_hdmi_setup_stereo_infoframe._entry_ptr, !489, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.243, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1452, i32 3}
!495 = !{ptr @.str.244, !494, !"<string literal>", i1 false, i1 false}
!496 = !{ptr @tegra_hdmi_encoder_atomic_check._entry, !494, !"_entry", i1 false, i1 false}
!497 = !{ptr @tegra_hdmi_encoder_atomic_check._entry_ptr, !494, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.245, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1532, i32 9}
!500 = !{ptr @tegra_hdmi_codec_ops, !501, !"tegra_hdmi_codec_ops", i1 false, i1 false}
!501 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1514, i32 36}
!502 = !{ptr @.str.246, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1492, i32 3}
!504 = !{ptr @tegra_hdmi_audio_startup._entry, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @tegra_hdmi_audio_startup._entry_ptr, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.247, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1511, i32 3}
!508 = !{ptr @tegra_hdmi_audio_shutdown._entry, !507, !"_entry", i1 false, i1 false}
!509 = !{ptr @tegra_hdmi_audio_shutdown._entry_ptr, !507, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.248, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1645, i32 3}
!512 = !{ptr @.str.249, !511, !"<string literal>", i1 false, i1 false}
!513 = !{ptr @tegra_hdmi_runtime_suspend._entry, !511, !"_entry", i1 false, i1 false}
!514 = !{ptr @tegra_hdmi_runtime_suspend._entry_ptr, !511, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @.str.250, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1665, i32 3}
!517 = !{ptr @.str.251, !516, !"<string literal>", i1 false, i1 false}
!518 = !{ptr @tegra_hdmi_runtime_resume._entry, !516, !"_entry", i1 false, i1 false}
!519 = !{ptr @tegra_hdmi_runtime_resume._entry_ptr, !516, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.253, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1671, i32 3}
!522 = !{ptr @tegra_hdmi_runtime_resume._entry.252, !521, !"_entry", i1 false, i1 false}
!523 = !{ptr @tegra_hdmi_runtime_resume._entry_ptr.254, !521, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.256, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1679, i32 3}
!526 = !{ptr @tegra_hdmi_runtime_resume._entry.255, !525, !"_entry", i1 false, i1 false}
!527 = !{ptr @tegra_hdmi_runtime_resume._entry_ptr.257, !525, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @.str.258, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1907, i32 3}
!530 = !{ptr @.str.259, !529, !"<string literal>", i1 false, i1 false}
!531 = !{ptr @tegra_hdmi_remove._entry, !529, !"_entry", i1 false, i1 false}
!532 = !{ptr @tegra_hdmi_remove._entry_ptr, !529, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @tegra_hdmi_of_match, !534, !"tegra_hdmi_of_match", i1 false, i1 false}
!534 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1739, i32 34}
!535 = !{ptr @tegra124_hdmi_config, !536, !"tegra124_hdmi_config", i1 false, i1 false}
!536 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1729, i32 39}
!537 = !{ptr @tegra124_tmds_config, !538, !"tegra124_tmds_config", i1 false, i1 false}
!538 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 291, i32 33}
!539 = !{ptr @tegra114_hdmi_config, !540, !"tegra114_hdmi_config", i1 false, i1 false}
!540 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1719, i32 39}
!541 = !{ptr @tegra114_tmds_config, !542, !"tegra114_tmds_config", i1 false, i1 false}
!542 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 212, i32 33}
!543 = !{ptr @tegra30_hdmi_config, !544, !"tegra30_hdmi_config", i1 false, i1 false}
!544 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1709, i32 39}
!545 = !{ptr @tegra30_tmds_config, !546, !"tegra30_tmds_config", i1 false, i1 false}
!546 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 166, i32 33}
!547 = !{ptr @tegra20_hdmi_config, !548, !"tegra20_hdmi_config", i1 false, i1 false}
!548 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 1699, i32 39}
!549 = !{ptr @tegra20_tmds_config, !550, !"tegra20_tmds_config", i1 false, i1 false}
!550 = !{!"../drivers/gpu/drm/tegra/hdmi.c", i32 133, i32 33}
!551 = !{!"sp"}
!552 = !{i32 1, !"wchar_size", i32 2}
!553 = !{i32 1, !"min_enum_size", i32 4}
!554 = !{i32 8, !"branch-target-enforcement", i32 0}
!555 = !{i32 8, !"sign-return-address", i32 0}
!556 = !{i32 8, !"sign-return-address-all", i32 0}
!557 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!558 = !{i32 7, !"uwtable", i32 1}
!559 = !{i32 7, !"frame-pointer", i32 2}
!560 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!561 = !{i64 6109713}
!562 = !{i64 2158013491}
!563 = !{i64 2158013885}
!564 = !{i64 6109295}
!565 = !{i64 2148777145, i64 2148777150, i64 2148777163, i64 2148777207, i64 2148777241, i64 2148777262}
!566 = !{!"branch_weights", i32 2000, i32 1}
!567 = !{i64 2157847275}
!568 = !{i64 2157847494}
!569 = !{i64 2149353231}
!570 = !{i64 2149354267}
!571 = !{i64 2157830943}
!572 = !{i64 2157831164}
!573 = !{i8 0, i8 2}
!574 = !{i64 2148685864, i64 2148686144, i64 2148686478, i64 2148686812}
!575 = !{i64 2148294749}
!576 = !{i64 779572, i64 779597, i64 779619, i64 779635, i64 779647, i64 779667, i64 779691, i64 779707, i64 779719}
!577 = !{i64 2148294937}
!578 = !{i64 2158003954}
!579 = !{i64 2158003083}
!580 = !{!"branch_weights", i32 1, i32 2000}
!581 = !{i64 2158091241, i64 2158091735, i64 2158091278, i64 2158091334, i64 2158091368, i64 2158091392, i64 2158091433, i64 2158091454, i64 2158091482, i64 2158091516}
!582 = !{i64 2157814735}
!583 = !{i64 2157814950}
!584 = !{i64 2157798587}
!585 = !{i64 2157798804}
