; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mediatek/mtk_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/mediatek/mtk_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.atomic_t = type { i32 }
%struct.hdmi_acr_n = type { i32, [3 x i32] }
%struct.mtk_hdmi_conf = type { i8, i8, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.mtk_hdmi = type { %struct.drm_bridge, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], %struct.drm_display_mode, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, %struct.hdmi_audio_param, i8, i8, i8, ptr, ptr, %struct.mutex }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.hdmi_audio_param = type { i32, i32, i32, i32, i32, i32, %struct.hdmi_codec_params }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
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
%struct.hdmi_vendor_infoframe = type { i32, i8, i8, i32, i8, i32, i32 }
%struct.hdmi_spd_infoframe = type { i32, i8, i8, [8 x i8], [16 x i8], i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }

@mtk_hdmi_drivers = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @mtk_hdmi_ddc_driver, ptr @mtk_cec_driver, ptr @mtk_hdmi_driver], [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_mediatek_drm_hdmi__327_1835_mtk_hdmitx_init6 = internal global ptr @mtk_hdmitx_init, section ".initcall6.init", align 4
@__exitcall_mtk_hdmitx_exit = internal global ptr @mtk_hdmitx_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author328 = internal constant [56 x i8] c"mediatek_drm_hdmi.author=Jie Qiu <jie.qiu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description329 = internal constant [51 x i8] c"mediatek_drm_hdmi.description=MediaTek HDMI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file330 = internal constant [66 x i8] c"mediatek_drm_hdmi.file=drivers/gpu/drm/mediatek/mediatek-drm-hdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license331 = internal constant [33 x i8] c"mediatek_drm_hdmi.license=GPL v2\00", section ".modinfo", align 1
@mtk_hdmi_ddc_driver = external dso_local global %struct.platform_driver, align 4
@mtk_cec_driver = external dso_local global %struct.platform_driver, align 4
@mtk_hdmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_drm_hdmi_probe, ptr @mtk_drm_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_drm_hdmi_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_hdmi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek-drm-hdmi\00", [46 x i8] zeroinitializer }, align 32
@mtk_drm_hdmi_of_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_hdmi_conf_mt2701 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_hdmi_conf_mt8167 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mtk_hdmi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_hdmi_suspend, ptr @mtk_hdmi_resume, ptr @mtk_hdmi_suspend, ptr @mtk_hdmi_resume, ptr @mtk_hdmi_suspend, ptr @mtk_hdmi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@mtk_drm_hdmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1710, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get HDMI PHY: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_drm_hdmi_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/mediatek/mtk_hdmi.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_drm_hdmi_probe._entry_ptr = internal global ptr @mtk_drm_hdmi_probe._entry, section ".printk_index", align 4
@mtk_drm_hdmi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&hdmi->update_plugged_status_lock\00", [62 x i8] zeroinitializer }, align 32
@mtk_drm_hdmi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1719, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to initialize hdmi output\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_drm_hdmi_probe._entry_ptr.10 = internal global ptr @mtk_drm_hdmi_probe._entry.8, section ".printk_index", align 4
@mtk_drm_hdmi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1725, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register audio driver: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_drm_hdmi_probe._entry_ptr.13 = internal global ptr @mtk_drm_hdmi_probe._entry.11, section ".printk_index", align 4
@mtk_hdmi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @mtk_hdmi_bridge_attach, ptr null, ptr @mtk_hdmi_bridge_mode_valid, ptr @mtk_hdmi_bridge_mode_fixup, ptr null, ptr null, ptr @mtk_hdmi_bridge_mode_set, ptr null, ptr null, ptr @mtk_hdmi_bridge_atomic_pre_enable, ptr @mtk_hdmi_bridge_atomic_enable, ptr @mtk_hdmi_bridge_atomic_disable, ptr @mtk_hdmi_bridge_atomic_post_disable, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_reset, ptr @mtk_hdmi_bridge_detect, ptr null, ptr @mtk_hdmi_bridge_get_edid, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mtk_drm_hdmi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1738, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable audio clocks: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_drm_hdmi_probe._entry_ptr.16 = internal global ptr @mtk_drm_hdmi_probe._entry.14, section ".printk_index", align 4
@mtk_hdmi_dt_parse_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 1437, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get clocks: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_hdmi_dt_parse_pdata\00", [40 x i8] zeroinitializer }, align 32
@mtk_hdmi_dt_parse_pdata._entry_ptr = internal global ptr @mtk_hdmi_dt_parse_pdata._entry, section ".printk_index", align 4
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,mt8173-cec\00", [44 x i8] zeroinitializer }, align 32
@mtk_hdmi_dt_parse_pdata._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.4, i32 1445, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to find CEC node\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_hdmi_dt_parse_pdata._entry_ptr.22 = internal global ptr @mtk_hdmi_dt_parse_pdata._entry.20, section ".printk_index", align 4
@mtk_hdmi_dt_parse_pdata._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.4, i32 1452, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Waiting for CEC device %pOF\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_hdmi_dt_parse_pdata._entry_ptr.25 = internal global ptr @mtk_hdmi_dt_parse_pdata._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,syscon-hdmi\00", [43 x i8] zeroinitializer }, align 32
@mtk_hdmi_dt_parse_pdata._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.18, ptr @.str.4, i32 1472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to get system configuration registers: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mtk_hdmi_dt_parse_pdata._entry_ptr.29 = internal global ptr @mtk_hdmi_dt_parse_pdata._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmi-connector\00", [17 x i8] zeroinitializer }, align 32
@mtk_hdmi_dt_parse_pdata._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.4, i32 1493, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Waiting for external bridge\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_hdmi_dt_parse_pdata._entry_ptr.33 = internal global ptr @mtk_hdmi_dt_parse_pdata._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddc-i2c-bus\00", [20 x i8] zeroinitializer }, align 32
@mtk_hdmi_dt_parse_pdata._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.18, ptr @.str.4, i32 1503, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to find ddc-i2c-bus node in %pOF\0A\00", [55 x i8] zeroinitializer }, align 32
@mtk_hdmi_dt_parse_pdata._entry_ptr.37 = internal global ptr @mtk_hdmi_dt_parse_pdata._entry.35, section ".printk_index", align 4
@mtk_hdmi_dt_parse_pdata._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.18, ptr @.str.4, i32 1513, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get ddc i2c adapter by node\0A\00", [57 x i8] zeroinitializer }, align 32
@mtk_hdmi_dt_parse_pdata._entry_ptr.40 = internal global ptr @mtk_hdmi_dt_parse_pdata._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pixel\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bclk\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@mtk_hdmi_audio_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr @mtk_hdmi_audio_startup, ptr @mtk_hdmi_audio_hw_params, ptr null, ptr @mtk_hdmi_audio_shutdown, ptr @mtk_hdmi_audio_mute, ptr @mtk_hdmi_audio_get_eld, ptr null, ptr @mtk_hdmi_audio_hook_plugged_cb, i8 -128 }, [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@mtk_hdmi_register_audio_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 1686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016[drm] %s driver bound to HDMI\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mtk_hdmi_register_audio_driver\00", [33 x i8] zeroinitializer }, align 32
@mtk_hdmi_register_audio_driver._entry_ptr = internal global ptr @mtk_hdmi_register_audio_driver._entry, section ".printk_index", align 4
@mtk_hdmi_audio_hw_params.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 1, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek_drm_hdmi\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_hdmi_audio_hw_params\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: %u Hz, %d bit, %d channels\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_hdmi_audio_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 1556, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"channel[%d] not supported!\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_hdmi_audio_hw_params._entry_ptr = internal global ptr @mtk_hdmi_audio_hw_params._entry, section ".printk_index", align 4
@mtk_hdmi_audio_hw_params._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.49, ptr @.str.4, i32 1571, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rate[%d] not supported!\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_hdmi_audio_hw_params._entry_ptr.54 = internal global ptr @mtk_hdmi_audio_hw_params._entry.52, section ".printk_index", align 4
@mtk_hdmi_audio_hw_params._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.49, ptr @.str.4, i32 1590, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Invalid DAI format %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_hdmi_audio_hw_params._entry_ptr.57 = internal global ptr @mtk_hdmi_audio_hw_params._entry.55, section ".printk_index", align 4
@mtk_hdmi_audio_set_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 1103, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hdmi audio is in disable state!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_hdmi_audio_set_param\00", [39 x i8] zeroinitializer }, align 32
@mtk_hdmi_audio_set_param._entry_ptr = internal global ptr @mtk_hdmi_audio_set_param._entry, section ".printk_index", align 4
@mtk_hdmi_audio_set_param.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"codec:%d, input:%d, channel:%d, fs:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mtk_hdmi_hw_aud_set_ncts.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.61, ptr @.str.4, ptr @.str.62, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_hdmi_hw_aud_set_ncts\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: sample_rate=%u, clock=%d, cts=%u, n=%u\0A\00", [52 x i8] zeroinitializer }, align 32
@hdmi_rec_n_table = internal constant { [6 x %struct.hdmi_acr_n], [32 x i8] } { [6 x %struct.hdmi_acr_n] [%struct.hdmi_acr_n { i32 25175, [3 x i32] [i32 4576, i32 7007, i32 6864] }, %struct.hdmi_acr_n { i32 74176, [3 x i32] [i32 11648, i32 17836, i32 11648] }, %struct.hdmi_acr_n { i32 148352, [3 x i32] [i32 11648, i32 8918, i32 5824] }, %struct.hdmi_acr_n { i32 296703, [3 x i32] [i32 5824, i32 4459, i32 5824] }, %struct.hdmi_acr_n { i32 297000, [3 x i32] [i32 3072, i32 4704, i32 5120] }, %struct.hdmi_acr_n { i32 0, [3 x i32] [i32 4096, i32 6272, i32 6144] }], [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: The flag DRM_BRIDGE_ATTACH_NO_CONNECTOR must be supplied\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.mtk_hdmi_bridge_attach = private unnamed_addr constant [23 x i8] c"mtk_hdmi_bridge_attach\00", align 1
@mtk_hdmi_hpd_event.status = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtk_hdmi_bridge_mode_valid.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.64, ptr @.str.4, ptr @.str.65, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtk_hdmi_bridge_mode_valid\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"xres=%d, yres=%d, refresh=%d, intl=%d clock=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.66, ptr @.str.4, ptr @.str.67, i8 1, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_hdmi_bridge_mode_set\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cur info: name:%s, hdisplay:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.66, ptr @.str.4, ptr @.str.68, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"hsync_start:%d,hsync_end:%d, htotal:%d\00", [57 x i8] zeroinitializer }, align 32
@mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.66, ptr @.str.4, ptr @.str.69, i8 1, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hskew:%d, vdisplay:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.66, ptr @.str.4, ptr @.str.70, i8 1, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vsync_start:%d, vsync_end:%d, vtotal:%d\00", [56 x i8] zeroinitializer }, align 32
@mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.66, ptr @.str.4, ptr @.str.71, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vscan:%d, flag:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@mtk_hdmi_output_set_display_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 1126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set vpll: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mtk_hdmi_output_set_display_mode\00", [63 x i8] zeroinitializer }, align 32
@mtk_hdmi_output_set_display_mode._entry_ptr = internal global ptr @mtk_hdmi_output_set_display_mode._entry, section ".printk_index", align 4
@mtk_hdmi_video_change_vpll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 846, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set PLL to %u Hz: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtk_hdmi_video_change_vpll\00", [37 x i8] zeroinitializer }, align 32
@mtk_hdmi_video_change_vpll._entry_ptr = internal global ptr @mtk_hdmi_video_change_vpll._entry, section ".printk_index", align 4
@mtk_hdmi_video_change_vpll._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.4, i32 854, ptr @.str.78, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Want PLL %u Hz, got %lu Hz\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_hdmi_video_change_vpll._entry_ptr.79 = internal global ptr @mtk_hdmi_video_change_vpll._entry.76, section ".printk_index", align 4
@mtk_hdmi_video_change_vpll.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.75, ptr @.str.4, ptr @.str.77, i8 0, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mediatek\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"On-chip HDMI\00", [19 x i8] zeroinitializer }, align 32
@mtk_hdmi_setup_audio_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 1025, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to setup audio infoframe: %zd\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mtk_hdmi_setup_audio_infoframe\00", [33 x i8] zeroinitializer }, align 32
@mtk_hdmi_setup_audio_infoframe._entry_ptr = internal global ptr @mtk_hdmi_setup_audio_infoframe._entry, section ".printk_index", align 4
@mtk_hdmi_setup_audio_infoframe._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.4, i32 1038, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to pack audio infoframe: %zd\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_hdmi_setup_audio_infoframe._entry_ptr.86 = internal global ptr @mtk_hdmi_setup_audio_infoframe._entry.84, section ".printk_index", align 4
@mtk_hdmi_hw_send_info_frame.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.87, ptr @.str.4, ptr @.str.88, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_hdmi_hw_send_info_frame\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"frame_type:0x%x,frame_ver:0x%x,frame_len:0x%x,checksum:0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_hdmi_hw_send_info_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.4, i32 344, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown infoframe type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_hdmi_hw_send_info_frame._entry_ptr = internal global ptr @mtk_hdmi_hw_send_info_frame._entry, section ".printk_index", align 4
@mtk_hdmi_setup_avi_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.4, i32 977, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to get AVI infoframe from mode: %zd\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mtk_hdmi_setup_avi_infoframe\00", [35 x i8] zeroinitializer }, align 32
@mtk_hdmi_setup_avi_infoframe._entry_ptr = internal global ptr @mtk_hdmi_setup_avi_infoframe._entry, section ".printk_index", align 4
@mtk_hdmi_setup_avi_infoframe._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.4, i32 983, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to pack AVI infoframe: %zd\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_hdmi_setup_avi_infoframe._entry_ptr.94 = internal global ptr @mtk_hdmi_setup_avi_infoframe._entry.92, section ".printk_index", align 4
@mtk_hdmi_setup_spd_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.4, i32 1002, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialize SPD infoframe: %zd\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mtk_hdmi_setup_spd_infoframe\00", [35 x i8] zeroinitializer }, align 32
@mtk_hdmi_setup_spd_infoframe._entry_ptr = internal global ptr @mtk_hdmi_setup_spd_infoframe._entry, section ".printk_index", align 4
@mtk_hdmi_setup_spd_infoframe._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.4, i32 1008, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to pack SDP infoframe: %zd\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_hdmi_setup_spd_infoframe._entry_ptr.99 = internal global ptr @mtk_hdmi_setup_spd_infoframe._entry.97, section ".printk_index", align 4
@mtk_hdmi_setup_vendor_specific_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.4, i32 1057, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to get vendor infoframe from mode: %zd\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mtk_hdmi_setup_vendor_specific_infoframe\00", [55 x i8] zeroinitializer }, align 32
@mtk_hdmi_setup_vendor_specific_infoframe._entry_ptr = internal global ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry, section ".printk_index", align 4
@mtk_hdmi_setup_vendor_specific_infoframe._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.4, i32 1064, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to pack vendor infoframe: %zd\0A\00", [58 x i8] zeroinitializer }, align 32
@mtk_hdmi_setup_vendor_specific_infoframe._entry_ptr.104 = internal global ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry.102, section ".printk_index", align 4
@mtk_hdmi_conf_mt2701 = internal constant { %struct.mtk_hdmi_conf, [24 x i8] } { %struct.mtk_hdmi_conf { i8 1, i8 0, i32 0 }, [24 x i8] zeroinitializer }, align 32
@mtk_hdmi_conf_mt8167 = internal constant { %struct.mtk_hdmi_conf, [24 x i8] } { %struct.mtk_hdmi_conf { i8 0, i8 1, i32 148500 }, [24 x i8] zeroinitializer }, align 32
@mtk_hdmi_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 1775, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdmi resume failed!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_hdmi_resume\00", [16 x i8] zeroinitializer }, align 32
@mtk_hdmi_resume._entry_ptr = internal global ptr @mtk_hdmi_resume._entry, section ".printk_index", align 4
@switch.table.mtk_hdmi_audio_hw_params = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 2, i32 6, i32 2, i32 9, i32 2, i32 13], [36 x i8] zeroinitializer }, align 32
@switch.table.mtk_hdmi_aud_output_config = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 268435456, i32 536870912, i32 536870912, i32 805306368, i32 1073741824, i32 1610612736], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_hdmi_aud_get_chnl_count = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\03\03\04\04\05\05\06\06\07\07\08\04\05\05\06\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_hdmi_hw_send_info_frame = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 64, i32 8, i32 32], [16 x i8] zeroinitializer }, align 32
@switch.table.mtk_hdmi_hw_send_info_frame.107 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 344, i32 28, i32 28, i32 28], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.108 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.110 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.111 = internal global [8 x i64] [i64 6, i64 4, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.112 = internal global [7 x i64] [i64 5, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.114 = internal global [7 x i64] [i64 5, i64 32, i64 25175, i64 74176, i64 148352, i64 296703, i64 297000]
@__sancov_gen_cov_switch_values.115 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.116 = internal global [6 x i64] [i64 4, i64 32, i64 25175, i64 74176, i64 148352, i64 296703]
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"mtk_hdmi_drivers\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1817, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"mtk_hdmi_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1807, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1811, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"mtk_drm_hdmi_of_ids\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1794, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"mtk_hdmi_pm_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1782, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1707, i32 32 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1710, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1714, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1719, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1725, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [22 x i8] c"mtk_hdmi_bridge_funcs\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1407, i32 38 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1738, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1437, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1443, i32 47 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1445, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1451, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1464, i32 47 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1470, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1490, i32 39 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1493, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1500, i32 36 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1502, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1513, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1142, i32 30 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1143, i32 28 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1144, i32 28 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1145, i32 29 }
@___asan_gen_.249 = private unnamed_addr constant [25 x i8] c"mtk_hdmi_audio_codec_ops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1659, i32 36 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1680, i32 44 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1686, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1536, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1556, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1570, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1589, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1103, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1106, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 759, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"hdmi_rec_n_table\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 657, i32 32 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1290, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1249, i32 36 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1213, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1351, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1353, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1356, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1358, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1361, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1126, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 845, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 853, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1383, i32 37 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1383, i32 49 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1024, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1037, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 322, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 344, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 976, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 983, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1001, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1008, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1056, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1063, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant [21 x i8] c"mtk_hdmi_conf_mt2701\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1785, i32 35 }
@___asan_gen_.450 = private unnamed_addr constant [21 x i8] c"mtk_hdmi_conf_mt8167\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1789, i32 35 }
@___asan_gen_.453 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.460 = private constant [39 x i8] c"../drivers/gpu/drm/mediatek/mtk_hdmi.c\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1775, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_hdmi_audio_hw_params\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [40 x i8] c"switch.table.mtk_hdmi_aud_output_config\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [41 x i8] c"switch.table.mtk_hdmi_aud_get_chnl_count\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [41 x i8] c"switch.table.mtk_hdmi_hw_send_info_frame\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [45 x i8] c"switch.table.mtk_hdmi_hw_send_info_frame.107\00", align 1
@llvm.compiler.used = appending global [156 x ptr] [ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_description329, ptr @__UNIQUE_ID_file330, ptr @__UNIQUE_ID_license331, ptr @__exitcall_mtk_hdmitx_exit, ptr @__initcall__kmod_mediatek_drm_hdmi__327_1835_mtk_hdmitx_init6, ptr @mtk_drm_hdmi_probe._entry, ptr @mtk_drm_hdmi_probe._entry.11, ptr @mtk_drm_hdmi_probe._entry.14, ptr @mtk_drm_hdmi_probe._entry.8, ptr @mtk_drm_hdmi_probe._entry_ptr, ptr @mtk_drm_hdmi_probe._entry_ptr.10, ptr @mtk_drm_hdmi_probe._entry_ptr.13, ptr @mtk_drm_hdmi_probe._entry_ptr.16, ptr @mtk_hdmi_audio_hw_params._entry, ptr @mtk_hdmi_audio_hw_params._entry.52, ptr @mtk_hdmi_audio_hw_params._entry.55, ptr @mtk_hdmi_audio_hw_params._entry_ptr, ptr @mtk_hdmi_audio_hw_params._entry_ptr.54, ptr @mtk_hdmi_audio_hw_params._entry_ptr.57, ptr @mtk_hdmi_audio_set_param._entry, ptr @mtk_hdmi_audio_set_param._entry_ptr, ptr @mtk_hdmi_dt_parse_pdata._entry, ptr @mtk_hdmi_dt_parse_pdata._entry.20, ptr @mtk_hdmi_dt_parse_pdata._entry.23, ptr @mtk_hdmi_dt_parse_pdata._entry.27, ptr @mtk_hdmi_dt_parse_pdata._entry.31, ptr @mtk_hdmi_dt_parse_pdata._entry.35, ptr @mtk_hdmi_dt_parse_pdata._entry.38, ptr @mtk_hdmi_dt_parse_pdata._entry_ptr, ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.22, ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.25, ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.29, ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.33, ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.37, ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.40, ptr @mtk_hdmi_hw_send_info_frame._entry, ptr @mtk_hdmi_hw_send_info_frame._entry_ptr, ptr @mtk_hdmi_output_set_display_mode._entry, ptr @mtk_hdmi_output_set_display_mode._entry_ptr, ptr @mtk_hdmi_register_audio_driver._entry, ptr @mtk_hdmi_register_audio_driver._entry_ptr, ptr @mtk_hdmi_resume._entry, ptr @mtk_hdmi_resume._entry_ptr, ptr @mtk_hdmi_setup_audio_infoframe._entry, ptr @mtk_hdmi_setup_audio_infoframe._entry.84, ptr @mtk_hdmi_setup_audio_infoframe._entry_ptr, ptr @mtk_hdmi_setup_audio_infoframe._entry_ptr.86, ptr @mtk_hdmi_setup_avi_infoframe._entry, ptr @mtk_hdmi_setup_avi_infoframe._entry.92, ptr @mtk_hdmi_setup_avi_infoframe._entry_ptr, ptr @mtk_hdmi_setup_avi_infoframe._entry_ptr.94, ptr @mtk_hdmi_setup_spd_infoframe._entry, ptr @mtk_hdmi_setup_spd_infoframe._entry.97, ptr @mtk_hdmi_setup_spd_infoframe._entry_ptr, ptr @mtk_hdmi_setup_spd_infoframe._entry_ptr.99, ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry, ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry.102, ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry_ptr, ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry_ptr.104, ptr @mtk_hdmi_video_change_vpll._entry, ptr @mtk_hdmi_video_change_vpll._entry.76, ptr @mtk_hdmi_video_change_vpll._entry_ptr, ptr @mtk_hdmi_video_change_vpll._entry_ptr.79, ptr @mtk_hdmitx_exit, ptr @mtk_hdmi_drivers, ptr @mtk_hdmi_driver, ptr @.str, ptr @mtk_drm_hdmi_of_ids, ptr @mtk_hdmi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mtk_drm_hdmi_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @mtk_hdmi_bridge_funcs, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @mtk_hdmi_audio_codec_ops, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @hdmi_rec_n_table, ptr @.str.63, ptr @mtk_hdmi_hpd_event.status, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @mtk_hdmi_conf_mt2701, ptr @mtk_hdmi_conf_mt8167, ptr @.str.105, ptr @.str.106, ptr @switch.table.mtk_hdmi_audio_hw_params, ptr @switch.table.mtk_hdmi_aud_output_config, ptr @switch.table.mtk_hdmi_aud_get_chnl_count, ptr @switch.table.mtk_hdmi_hw_send_info_frame, ptr @switch.table.mtk_hdmi_hw_send_info_frame.107], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_drivers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_hdmi_of_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_hdmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_hdmi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_hdmi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_hdmi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_hdmi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_dt_parse_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_dt_parse_pdata._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_dt_parse_pdata._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_dt_parse_pdata._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_dt_parse_pdata._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_dt_parse_pdata._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_dt_parse_pdata._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_audio_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_register_audio_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_audio_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_audio_hw_params._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_audio_hw_params._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_audio_set_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_rec_n_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_hpd_event.status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_output_set_display_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_video_change_vpll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_video_change_vpll._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_setup_audio_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_setup_audio_infoframe._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_hw_send_info_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_setup_avi_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_setup_avi_infoframe._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_setup_spd_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_setup_spd_infoframe._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_conf_mt2701 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_conf_mt8167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_hdmi_audio_hw_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_hdmi_aud_output_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_hdmi_aud_get_chnl_count to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_hdmi_hw_send_info_frame to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_hdmi_hw_send_info_frame.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmitx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_unregister_drivers(ptr noundef nonnull @mtk_hdmi_drivers, i32 noundef 3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmitx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @mtk_hdmi_drivers, i32 noundef 3, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_drm_hdmi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  %codec_data.i = alloca %struct.hdmi_codec_pdata, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 824, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %conf = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %conf, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_clk_get_by_name(ptr noundef %3, ptr noundef nonnull @.str.41) #8
  %arrayidx1.i.i = getelementptr %struct.mtk_hdmi, ptr %call.i, i32 0, i32 8, i32 0
  %4 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %arrayidx1.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.mtk_hdmi_get_all_clk.exit.i_crit_edge, label %for.cond.i.i

if.end.mtk_hdmi_get_all_clk.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_get_all_clk.exit.i

for.cond.i.i:                                     ; preds = %if.end
  %call.1.i.i = tail call ptr @of_clk_get_by_name(ptr noundef %3, ptr noundef nonnull @.str.42) #8
  %arrayidx1.1.i.i = getelementptr %struct.mtk_hdmi, ptr %call.i, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.1.i.i, ptr %arrayidx1.1.i.i, align 4
  %cmp.i.1.i.i = icmp ugt ptr %call.1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i.i, label %for.cond.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_get_all_clk.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call.2.i.i = tail call ptr @of_clk_get_by_name(ptr noundef %3, ptr noundef nonnull @.str.43) #8
  %arrayidx1.2.i.i = getelementptr %struct.mtk_hdmi, ptr %call.i, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.2.i.i, ptr %arrayidx1.2.i.i, align 4
  %cmp.i.2.i.i = icmp ugt ptr %call.2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i.i, label %for.cond.1.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_get_all_clk.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %call.3.i.i = tail call ptr @of_clk_get_by_name(ptr noundef %3, ptr noundef nonnull @.str.44) #8
  %arrayidx1.3.i.i = getelementptr %struct.mtk_hdmi, ptr %call.i, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.3.i.i, ptr %arrayidx1.3.i.i, align 4
  %cmp.i.3.i.i = icmp ugt ptr %call.3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i.i, label %for.cond.2.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge, label %for.cond.2.i.i.if.end3.i_crit_edge

for.cond.2.i.i.if.end3.i_crit_edge:               ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

for.cond.2.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_get_all_clk.exit.i

mtk_hdmi_get_all_clk.exit.i:                      ; preds = %for.cond.2.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge, %for.cond.1.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge, %for.cond.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge, %if.end.mtk_hdmi_get_all_clk.exit.i_crit_edge
  %call.lcssa.i.i = phi ptr [ %call.i.i, %if.end.mtk_hdmi_get_all_clk.exit.i_crit_edge ], [ %call.1.i.i, %for.cond.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge ], [ %call.2.i.i, %for.cond.1.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge ], [ %call.3.i.i, %for.cond.2.i.i.mtk_hdmi_get_all_clk.exit.i_crit_edge ]
  %8 = ptrtoint ptr %call.lcssa.i.i to i32
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end.i [
    i32 0, label %mtk_hdmi_get_all_clk.exit.i.if.end3.i_crit_edge
    i32 -517, label %mtk_hdmi_get_all_clk.exit.i.cleanup_crit_edge
  ]

mtk_hdmi_get_all_clk.exit.i.cleanup_crit_edge:    ; preds = %mtk_hdmi_get_all_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtk_hdmi_get_all_clk.exit.i.if.end3.i_crit_edge:  ; preds = %mtk_hdmi_get_all_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

do.end.i:                                         ; preds = %mtk_hdmi_get_all_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %8) #11
  br label %mtk_hdmi_dt_parse_pdata.exit

if.end3.i:                                        ; preds = %mtk_hdmi_get_all_clk.exit.i.if.end3.i_crit_edge, %for.cond.2.i.i.if.end3.i_crit_edge
  %parent.i = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 4
  %call4.i = tail call ptr @of_get_compatible_child(ptr noundef %11, ptr noundef nonnull @.str.19) #8
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end10.i

do.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.end10.i:                                       ; preds = %if.end3.i
  %call11.i = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call4.i) #8
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end18.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.24, ptr noundef nonnull %call4.i) #11
  tail call void @of_node_put(ptr noundef nonnull %call4.i) #8
  br label %cleanup

if.end18.i:                                       ; preds = %if.end10.i
  tail call void @of_node_put(ptr noundef nonnull %call4.i) #8
  %dev19.i = getelementptr inbounds %struct.platform_device, ptr %call11.i, i32 0, i32 3
  %cec_dev.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %cec_dev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev19.i, ptr %cec_dev.i, align 4
  %call20.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.26) #8
  %sys_offset.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 18
  %call21.i = tail call i32 @of_property_read_u32_index(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef %sys_offset.i) #8
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call20.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %15, i32 %call21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool26.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool26.not.i, label %if.end31.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %spec.select.i) #11
  br label %put_device.i

if.end31.i:                                       ; preds = %if.end18.i
  %sys_regmap.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 17
  %16 = ptrtoint ptr %sys_regmap.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20.i, ptr %sys_regmap.i, align 4
  %call32.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call33.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call32.i) #8
  %regs.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 19
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call33.i, ptr %regs.i, align 4
  %cmp.i126.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126.i, label %if.then36.i, label %if.end39.i

if.then36.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call33.i to i32
  br label %put_device.i

if.end39.i:                                       ; preds = %if.end31.i
  %call40.i = tail call ptr @of_graph_get_remote_node(ptr noundef %3, i32 noundef 1, i32 noundef 0) #8
  %tobool41.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool41.not.i, label %if.end39.i.put_device.i_crit_edge, label %if.end43.i

if.end39.i.put_device.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_device.i

if.end43.i:                                       ; preds = %if.end39.i
  %call44.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call40.i, ptr noundef nonnull @.str.30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end43.i.if.end55.i_crit_edge

if.end43.i.if.end55.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.then46.i:                                      ; preds = %if.end43.i
  %call47.i = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call40.i) #8
  %next_bridge.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %next_bridge.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call47.i, ptr %next_bridge.i, align 4
  %tobool49.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool49.not.i, label %do.end53.i, label %if.then46.i.if.end55.i_crit_edge

if.then46.i.if.end55.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

do.end53.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #11
  tail call void @of_node_put(ptr noundef nonnull %call40.i) #8
  br label %put_device.i

if.end55.i:                                       ; preds = %if.then46.i.if.end55.i_crit_edge, %if.end43.i.if.end55.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %20 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i127.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call40.i, ptr noundef nonnull @.str.34, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127.i)
  %tobool.not.i.i = icmp eq i32 %call.i127.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  br label %do.end61.i

of_parse_phandle.exit.i:                          ; preds = %if.end55.i
  %21 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  %tobool57.not.i = icmp eq ptr %22, null
  br i1 %tobool57.not.i, label %of_parse_phandle.exit.i.do.end61.i_crit_edge, label %if.end62.i

of_parse_phandle.exit.i.do.end61.i_crit_edge:     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end61.i

do.end61.i:                                       ; preds = %of_parse_phandle.exit.i.do.end61.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, ptr noundef nonnull %call40.i) #11
  call void @of_node_put(ptr noundef nonnull %call40.i) #8
  br label %put_device.i

if.end62.i:                                       ; preds = %of_parse_phandle.exit.i
  call void @of_node_put(ptr noundef nonnull %call40.i) #8
  %call63.i = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %22) #8
  %ddc_adpt.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %ddc_adpt.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call63.i, ptr %ddc_adpt.i, align 4
  call void @of_node_put(ptr noundef nonnull %22) #8
  %24 = ptrtoint ptr %ddc_adpt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddc_adpt.i, align 4
  %tobool65.not.i = icmp eq ptr %25, null
  br i1 %tobool65.not.i, label %do.end69.i, label %if.end62.i.if.end7_crit_edge

if.end62.i.if.end7_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end69.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #11
  br label %put_device.i

put_device.i:                                     ; preds = %do.end69.i, %do.end61.i, %do.end53.i, %if.end39.i.put_device.i_crit_edge, %if.then36.i, %do.end30.i
  %ret.1.i = phi i32 [ %spec.select.i, %do.end30.i ], [ %18, %if.then36.i ], [ -22, %do.end69.i ], [ -22, %do.end61.i ], [ -517, %do.end53.i ], [ -22, %if.end39.i.put_device.i_crit_edge ]
  %26 = ptrtoint ptr %cec_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cec_dev.i, align 4
  call void @put_device(ptr noundef %27) #8
  br label %mtk_hdmi_dt_parse_pdata.exit

mtk_hdmi_dt_parse_pdata.exit:                     ; preds = %put_device.i, %do.end.i
  %retval.0.i = phi i32 [ %ret.1.i, %put_device.i ], [ %8, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %mtk_hdmi_dt_parse_pdata.exit.if.end7_crit_edge, label %mtk_hdmi_dt_parse_pdata.exit.cleanup_crit_edge

mtk_hdmi_dt_parse_pdata.exit.cleanup_crit_edge:   ; preds = %mtk_hdmi_dt_parse_pdata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtk_hdmi_dt_parse_pdata.exit.if.end7_crit_edge:   ; preds = %mtk_hdmi_dt_parse_pdata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %mtk_hdmi_dt_parse_pdata.exit.if.end7_crit_edge, %if.end62.i.if.end7_crit_edge
  %call8 = call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %phy = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %do.body15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %29) #11
  br label %cleanup

do.body15:                                        ; preds = %if.end7
  %update_plugged_status_lock = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 27
  call void @__mutex_init(ptr noundef %update_plugged_status_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mtk_drm_hdmi_probe.__key) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %aud_param1.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 21
  %csp.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 20
  %31 = ptrtoint ptr %csp.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %csp.i, align 4
  %32 = ptrtoint ptr %aud_param1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %aud_param1.i, align 4
  %aud_sampe_size.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 21, i32 1
  %33 = ptrtoint ptr %aud_sampe_size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %aud_sampe_size.i, align 4
  %aud_input_type.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 21, i32 2
  %34 = ptrtoint ptr %aud_input_type.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %aud_input_type.i, align 4
  %aud_i2s_fmt.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 21, i32 3
  %35 = ptrtoint ptr %aud_i2s_fmt.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %aud_i2s_fmt.i, align 4
  %aud_mclk.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 21, i32 4
  %36 = ptrtoint ptr %aud_mclk.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %aud_mclk.i, align 4
  %aud_input_chan_type.i = getelementptr inbounds %struct.mtk_hdmi, ptr %call.i, i32 0, i32 21, i32 5
  %37 = ptrtoint ptr %aud_input_chan_type.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %aud_input_chan_type.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %codec_data.i) #8
  %38 = getelementptr inbounds i8, ptr %codec_data.i, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1073741825, ptr %38, align 4
  %40 = ptrtoint ptr %codec_data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mtk_hdmi_audio_codec_ops, ptr %codec_data.i, align 4
  %max_i2s_channels.i = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data.i, i32 0, i32 2
  %41 = ptrtoint ptr %max_i2s_channels.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %max_i2s_channels.i, align 4
  %data.i = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data.i, i32 0, i32 3
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #8
  %43 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %44 = call ptr @memset(ptr %43, i32 255, i32 48)
  %45 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev1, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %43, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.45, ptr %name2.i.i.i, align 4
  %id3.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -2, ptr %id3.i.i.i, align 8
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %res4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %res4.i.i.i, align 4
  %num_res.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %num_res.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %num_res.i.i.i, align 8
  %data5.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 7
  %52 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %codec_data.i, ptr %data5.i.i.i, align 4
  %size_data.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 8
  %53 = ptrtoint ptr %size_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 16, ptr %size_data.i.i.i, align 8
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %54 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %55 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %properties.i.i.i, align 8
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #8
  %cmp.i.i87 = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i87, label %mtk_hdmi_register_audio_driver.exit, label %mtk_hdmi_register_audio_driver.exit.thread

mtk_hdmi_register_audio_driver.exit.thread:       ; preds = %do.body15
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data.i) #8
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 7
  %56 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @mtk_hdmi_bridge_funcs, ptr %funcs, align 4
  %57 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node.i, align 8
  %of_node34 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 4
  %59 = ptrtoint ptr %of_node34 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %of_node34, align 4
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 9
  %60 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 7, ptr %ops, align 4
  %type = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 10
  %61 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 11, ptr %type, align 4
  call void @drm_bridge_add(ptr noundef nonnull %call.i) #8
  %call38 = call fastcc i32 @mtk_hdmi_clk_enable_audio(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %mtk_hdmi_register_audio_driver.exit.thread.cleanup_crit_edge, label %do.end43

mtk_hdmi_register_audio_driver.exit.thread.cleanup_crit_edge: ; preds = %mtk_hdmi_register_audio_driver.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtk_hdmi_register_audio_driver.exit:              ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data.i) #8
  %62 = ptrtoint ptr %call.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %62) #11
  br label %cleanup

do.end43:                                         ; preds = %mtk_hdmi_register_audio_driver.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call38) #11
  call void @drm_bridge_remove(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %mtk_hdmi_register_audio_driver.exit, %mtk_hdmi_register_audio_driver.exit.thread.cleanup_crit_edge, %if.then11, %mtk_hdmi_dt_parse_pdata.exit.cleanup_crit_edge, %do.end16.i, %do.end9.i, %mtk_hdmi_get_all_clk.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %if.then11 ], [ %62, %mtk_hdmi_register_audio_driver.exit ], [ %call38, %do.end43 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %mtk_hdmi_dt_parse_pdata.exit.cleanup_crit_edge ], [ 0, %mtk_hdmi_register_audio_driver.exit.thread.cleanup_crit_edge ], [ %8, %mtk_hdmi_get_all_clk.exit.i.cleanup_crit_edge ], [ -22, %do.end9.i ], [ -517, %do.end16.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_drm_hdmi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_bridge_remove(ptr noundef %1) #8
  %arrayidx.i = getelementptr %struct.mtk_hdmi, ptr %1, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %arrayidx2.i = getelementptr %struct.mtk_hdmi, ptr %1, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_hdmi_clk_enable_audio(ptr nocapture noundef readonly %hdmi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %arrayidx2 = getelementptr %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %call.i14 = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %if.end.i18, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end.i18:                                       ; preds = %if.end
  %call1.i16 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool2.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool2.not.i17, label %if.end.i18.cleanup_crit_edge, label %if.then3.i19

if.end.i18.cleanup_crit_edge:                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i19:                                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %err

err:                                              ; preds = %if.then3.i19, %if.end.err_crit_edge
  %retval.0.i20.ph = phi i32 [ %call1.i16, %if.then3.i19 ], [ %call.i14, %if.end.err_crit_edge ]
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %5, %err ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i20.ph, %err ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i18.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_audio_startup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs.i.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 432
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %5 = and i32 %4, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %5) #8, !srcloc !246
  %audio_enable.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %audio_enable.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %audio_enable.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_audio_hw_params(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %daifmt, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  %hdmi_params.sroa.19 = alloca { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958 }, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %hdmi_params.sroa.19)
  %channels = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %params, i32 0, i32 3
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channels, align 2
  %conv = zext i8 %3 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_audio_hw_params.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_audio_hw_params, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !247

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  %sample_rate = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sample_rate, align 4
  %sample_width = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 3
  %8 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sample_width, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_audio_hw_params.__UNIQUE_ID_ddebug324, ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %7, i32 noundef %9, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encoder, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %switch.tableidx = add i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %12 = icmp ult i8 %switch.tableidx, 7
  br i1 %12, label %switch.hole_check, label %if.end7.do.end16_crit_edge

if.end7.do.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.end16:                                         ; preds = %switch.hole_check.do.end16_crit_edge, %if.end7.do.end16_crit_edge
  %dev17 = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.51, i32 noundef %conv) #11
  br label %cleanup

switch.hole_check:                                ; preds = %if.end7
  %switch.shifted = lshr i8 85, %switch.tableidx
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end16_crit_edge, label %switch.lookup

switch.hole_check.do.end16_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

switch.lookup:                                    ; preds = %switch.hole_check
  %16 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mtk_hdmi_audio_hw_params, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %sample_rate18 = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 2
  %18 = ptrtoint ptr %sample_rate18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sample_rate18, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %19, label %do.end23 [
    i32 32000, label %switch.lookup.sw.epilog26_crit_edge
    i32 44100, label %switch.lookup.sw.epilog26_crit_edge60
    i32 48000, label %switch.lookup.sw.epilog26_crit_edge61
    i32 88200, label %switch.lookup.sw.epilog26_crit_edge62
    i32 96000, label %switch.lookup.sw.epilog26_crit_edge63
    i32 176400, label %switch.lookup.sw.epilog26_crit_edge64
    i32 192000, label %switch.lookup.sw.epilog26_crit_edge65
  ]

switch.lookup.sw.epilog26_crit_edge65:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

switch.lookup.sw.epilog26_crit_edge64:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

switch.lookup.sw.epilog26_crit_edge63:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

switch.lookup.sw.epilog26_crit_edge62:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

switch.lookup.sw.epilog26_crit_edge61:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

switch.lookup.sw.epilog26_crit_edge60:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

switch.lookup.sw.epilog26_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

do.end23:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.53, i32 noundef %19) #11
  br label %cleanup

sw.epilog26:                                      ; preds = %switch.lookup.sw.epilog26_crit_edge, %switch.lookup.sw.epilog26_crit_edge60, %switch.lookup.sw.epilog26_crit_edge61, %switch.lookup.sw.epilog26_crit_edge62, %switch.lookup.sw.epilog26_crit_edge63, %switch.lookup.sw.epilog26_crit_edge64, %switch.lookup.sw.epilog26_crit_edge65
  %23 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %daifmt, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %24, label %do.end35 [
    i32 0, label %sw.epilog26.sw.epilog38_crit_edge
    i32 6, label %sw.bb28
  ]

sw.epilog26.sw.epilog38_crit_edge:                ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog38

sw.bb28:                                          ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog38

do.end35:                                         ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  %dev36 = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.49, i32 noundef %24) #11
  br label %cleanup

sw.epilog38:                                      ; preds = %sw.bb28, %sw.epilog26.sw.epilog38_crit_edge
  %hdmi_params.sroa.9.0 = phi i32 [ 1, %sw.bb28 ], [ %24, %sw.epilog26.sw.epilog38_crit_edge ]
  %hdmi_params.sroa.12.0 = phi i32 [ -1, %sw.bb28 ], [ 4, %sw.epilog26.sw.epilog38_crit_edge ]
  %hdmi_params.sroa.13.0 = phi i32 [ -1, %sw.bb28 ], [ %24, %sw.epilog26.sw.epilog38_crit_edge ]
  %28 = call ptr @memcpy(ptr %hdmi_params.sroa.19, ptr %params, i32 204)
  %29 = ptrtoint ptr %sample_rate18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %hdmi_params.sroa.20.24.copyload = load i32, ptr %sample_rate18, align 4
  %hdmi_params.sroa.21.24.params.sroa_idx = getelementptr inbounds i8, ptr %params, i32 208
  %30 = ptrtoint ptr %hdmi_params.sroa.21.24.params.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %hdmi_params.sroa.21.24.params.sroa_idx, align 4
  %audio_enable.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 22
  %32 = ptrtoint ptr %audio_enable.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %audio_enable.i, align 4, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body1.i

do.end.i:                                         ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.58) #11
  br label %cleanup

do.body1.i:                                       ; preds = %sw.epilog38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_audio_set_param.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_audio_hw_params, %if.then5.i)) #8
          to label %do.end8.i [label %if.then5.i], !srcloc !247

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev6.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev6.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_audio_set_param.__UNIQUE_ID_ddebug317, ptr noundef %37, ptr noundef nonnull @.str.60, i32 noundef 1, i32 noundef %hdmi_params.sroa.9.0, i32 noundef %switch.load, i32 noundef %hdmi_params.sroa.20.24.copyload) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i
  %aud_param.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 21
  %38 = ptrtoint ptr %aud_param.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %aud_param.i, align 4
  %hdmi_params.sroa.7.0.aud_param.i.sroa_idx = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 21, i32 1
  %39 = ptrtoint ptr %hdmi_params.sroa.7.0.aud_param.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %hdmi_params.sroa.7.0.aud_param.i.sroa_idx, align 4
  %hdmi_params.sroa.9.0.aud_param.i.sroa_idx = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 21, i32 2
  %40 = ptrtoint ptr %hdmi_params.sroa.9.0.aud_param.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %hdmi_params.sroa.9.0, ptr %hdmi_params.sroa.9.0.aud_param.i.sroa_idx, align 4
  %hdmi_params.sroa.12.0.aud_param.i.sroa_idx = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 21, i32 3
  %41 = ptrtoint ptr %hdmi_params.sroa.12.0.aud_param.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %hdmi_params.sroa.12.0, ptr %hdmi_params.sroa.12.0.aud_param.i.sroa_idx, align 4
  %hdmi_params.sroa.13.0.aud_param.i.sroa_idx = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 21, i32 4
  %42 = ptrtoint ptr %hdmi_params.sroa.13.0.aud_param.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %hdmi_params.sroa.13.0, ptr %hdmi_params.sroa.13.0.aud_param.i.sroa_idx, align 4
  %hdmi_params.sroa.14.0.aud_param.i.sroa_idx = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 21, i32 5
  %43 = ptrtoint ptr %hdmi_params.sroa.14.0.aud_param.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %switch.load, ptr %hdmi_params.sroa.14.0.aud_param.i.sroa_idx, align 4
  %hdmi_params.sroa.19.0.aud_param.i.sroa_idx = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 21, i32 6
  %44 = call ptr @memcpy(ptr %hdmi_params.sroa.19.0.aud_param.i.sroa_idx, ptr %hdmi_params.sroa.19, i32 204)
  %hdmi_params.sroa.20.0.aud_param.i.sroa_idx = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 21, i32 6, i32 2
  %45 = ptrtoint ptr %hdmi_params.sroa.20.0.aud_param.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %hdmi_params.sroa.20.24.copyload, ptr %hdmi_params.sroa.20.0.aud_param.i.sroa_idx, align 4
  %hdmi_params.sroa.21.0.aud_param.i.sroa_idx = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 21, i32 6, i32 3
  %46 = ptrtoint ptr %hdmi_params.sroa.21.0.aud_param.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %31, ptr %hdmi_params.sroa.21.0.aud_param.i.sroa_idx, align 4
  %mode.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 9
  tail call fastcc void @mtk_hdmi_aud_output_config(ptr noundef %1, ptr noundef %mode.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end8.i, %do.end.i, %do.end35, %do.end23, %do.end16, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end16 ], [ -22, %do.end23 ], [ -22, %do.end35 ], [ -19, %do.end.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %do.end8.i ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %hdmi_params.sroa.19)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_audio_shutdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs.i.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 432
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %5 = or i32 %4, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %5) #8, !srcloc !246
  %audio_enable.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %audio_enable.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %audio_enable.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_audio_mute(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, i1 noundef zeroext %enable, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 380
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #8, !srcloc !246
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #8, !srcloc !246
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_hdmi_audio_get_eld(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enabled = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 2, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %curr_conn = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %curr_conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr_conn, align 4
  %eld = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 42
  %6 = tail call i32 @llvm.umin.i32(i32 %len, i32 128)
  %7 = call ptr @memcpy(ptr %buf, ptr %eld, i32 %6)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memset(ptr %buf, i32 0, i32 %len)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_audio_hook_plugged_cb(ptr nocapture noundef readnone %dev, ptr noundef %data, ptr noundef %fn, ptr noundef %codec_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %update_plugged_status_lock = getelementptr inbounds %struct.mtk_hdmi, ptr %data, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %update_plugged_status_lock, i32 noundef 0) #8
  %plugged_cb = getelementptr inbounds %struct.mtk_hdmi, ptr %data, i32 0, i32 25
  %0 = ptrtoint ptr %plugged_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fn, ptr %plugged_cb, align 4
  %codec_dev1 = getelementptr inbounds %struct.mtk_hdmi, ptr %data, i32 0, i32 26
  %1 = ptrtoint ptr %codec_dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %codec_dev, ptr %codec_dev1, align 4
  tail call void @mutex_unlock(ptr noundef %update_plugged_status_lock) #8
  tail call void @mutex_lock_nested(ptr noundef %update_plugged_status_lock, i32 noundef 0) #8
  %cec_dev.i = getelementptr inbounds %struct.mtk_hdmi, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %cec_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cec_dev.i, align 4
  %call.i = tail call zeroext i1 @mtk_cec_hpd_high(ptr noundef %3) #8
  %4 = ptrtoint ptr %plugged_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plugged_cb, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mtk_hdmi_update_plugged_status.exit_crit_edge, label %land.lhs.true.i

entry.mtk_hdmi_update_plugged_status.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_update_plugged_status.exit

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %codec_dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %codec_dev1, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.mtk_hdmi_update_plugged_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.mtk_hdmi_update_plugged_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_update_plugged_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(ptr noundef nonnull %7, i1 noundef zeroext %call.i) #8
  br label %mtk_hdmi_update_plugged_status.exit

mtk_hdmi_update_plugged_status.exit:              ; preds = %if.then.i, %land.lhs.true.i.mtk_hdmi_update_plugged_status.exit_crit_edge, %entry.mtk_hdmi_update_plugged_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_plugged_status_lock) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_hdmi_aud_output_config(ptr nocapture noundef %hdmi, ptr nocapture noundef readonly %display_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 19
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 380
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #8, !srcloc !246
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i2 = getelementptr i8, ptr %5, i32 432
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %7 = or i32 %6, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2, i32 %7) #8, !srcloc !246
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 408
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %11 = and i32 %10, 16777215
  %12 = or i32 %11, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %12) #8, !srcloc !246
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i3 = getelementptr i8, ptr %14, i32 436
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %16 = or i32 %15, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i3, i32 %16) #8, !srcloc !246
  %aud_param.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 21
  %aud_input_type.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 21, i32 2
  %17 = ptrtoint ptr %aud_input_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %aud_input_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %19 = ptrtoint ptr %aud_param.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aud_param.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %20)
  %cmp2.i = icmp eq i32 %20, 13
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i45.i = getelementptr i8, ptr %22, i32 452
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %24 = and i32 %23, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45.i, i32 %24) #8, !srcloc !246
  br label %if.end8.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %aud_i2s_fmt.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 21, i32 3
  %25 = ptrtoint ptr %aud_i2s_fmt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %aud_i2s_fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp4.i = icmp eq i32 %26, 2
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %aud_i2s_fmt.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %aud_i2s_fmt.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.else.i.if.end8.i_crit_edge, %if.then.i
  %aud_i2s_fmt10.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 21, i32 3
  %28 = ptrtoint ptr %aud_i2s_fmt10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aud_i2s_fmt10.i, align 4
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i47.i = getelementptr i8, ptr %31, i32 36
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  %33 = and i32 %32, -855638017
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  %35 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %29, label %if.end8.i.mtk_hdmi_hw_aud_set_i2s_fmt.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 5, label %sw.bb9.i.i
    i32 3, label %sw.bb5.i.i
    i32 4, label %sw.bb7.i.i
  ]

if.end8.i.mtk_hdmi_hw_aud_set_i2s_fmt.exit.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_hw_aud_set_i2s_fmt.exit.i

sw.bb.i.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i48.i = or i32 %34, 1
  br label %mtk_hdmi_hw_aud_set_i2s_fmt.exit.i

sw.bb1.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %or2.i.i = or i32 %34, 17
  br label %mtk_hdmi_hw_aud_set_i2s_fmt.exit.i

sw.bb5.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i.i = or i32 %34, 16
  br label %mtk_hdmi_hw_aud_set_i2s_fmt.exit.i

sw.bb7.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %or8.i.i = or i32 %34, 2
  br label %mtk_hdmi_hw_aud_set_i2s_fmt.exit.i

sw.bb9.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %or10.i.i = or i32 %34, 18
  br label %mtk_hdmi_hw_aud_set_i2s_fmt.exit.i

mtk_hdmi_hw_aud_set_i2s_fmt.exit.i:               ; preds = %sw.bb9.i.i, %sw.bb7.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.end8.i.mtk_hdmi_hw_aud_set_i2s_fmt.exit.i_crit_edge
  %val.0.i.i = phi i32 [ %or8.i.i, %sw.bb7.i.i ], [ %or6.i.i, %sw.bb5.i.i ], [ %or10.i.i, %sw.bb9.i.i ], [ %or2.i.i, %sw.bb1.i.i ], [ %or.i48.i, %sw.bb.i.i ], [ %34, %if.end8.i.mtk_hdmi_hw_aud_set_i2s_fmt.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #8
  %37 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %38, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 %36) #8, !srcloc !246
  %39 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i50.i = getelementptr i8, ptr %40, i32 452
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %42 = and i32 %41, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i50.i, i32 %42) #8, !srcloc !246
  %43 = ptrtoint ptr %aud_input_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %aud_input_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp13.i = icmp eq i32 %44, 1
  br i1 %cmp13.i, label %land.rhs.i, label %mtk_hdmi_hw_aud_set_i2s_fmt.exit.i.land.end.i_crit_edge

mtk_hdmi_hw_aud_set_i2s_fmt.exit.i.land.end.i_crit_edge: ; preds = %mtk_hdmi_hw_aud_set_i2s_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.rhs.i:                                       ; preds = %mtk_hdmi_hw_aud_set_i2s_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %aud_param.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %aud_param.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %46)
  %cmp16.i = icmp eq i32 %46, 13
  %phi.sel.i = select i1 %cmp16.i, i32 12, i32 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %mtk_hdmi_hw_aud_set_i2s_fmt.exit.i.land.end.i_crit_edge
  %47 = phi i32 [ 0, %mtk_hdmi_hw_aud_set_i2s_fmt.exit.i.land.end.i_crit_edge ], [ %phi.sel.i, %land.rhs.i ]
  %48 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i52.i = getelementptr i8, ptr %49, i32 452
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  %51 = and i32 %50, 1073741823
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52.i, i32 %51) #8, !srcloc !246
  %52 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %53, i32 380
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %55 = and i32 %54, 1912602623
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #8
  %or.i.i.i = or i32 %56, %47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i, i32 %57) #8, !srcloc !246
  %58 = ptrtoint ptr %aud_input_type.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %aud_input_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp19.i = icmp eq i32 %59, 1
  br i1 %cmp19.i, label %land.end.i.if.end23.i_crit_edge, label %if.else21.i

land.end.i.if.end23.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.else21.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %aud_input_chan_type.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 21, i32 5
  %60 = ptrtoint ptr %aud_input_chan_type.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %aud_input_chan_type.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else21.i, %land.end.i.if.end23.i_crit_edge
  %chan_type.0.i = phi i32 [ %61, %if.else21.i ], [ 2, %land.end.i.if.end23.i_crit_edge ]
  %call.i = tail call fastcc zeroext i8 @mtk_hdmi_aud_get_chnl_count(i32 noundef %chan_type.0.i) #8, !range !255
  %trunc.i = trunc i8 %call.i to i4
  %62 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.111)
  switch i4 %trunc.i, label %if.end23.i.mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i_crit_edge [
    i4 5, label %if.end53.fold.split84.i.i
    i4 4, label %land.lhs.true.i.i
    i4 3, label %if.else18.i.i
    i4 7, label %if.end23.i.if.end53.fold.split.i.i_crit_edge
    i4 -8, label %if.end23.i.if.end53.fold.split.i.i_crit_edge24
    i4 6, label %switch.early.test.i.i
  ]

if.end23.i.if.end53.fold.split.i.i_crit_edge24:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.fold.split.i.i

if.end23.i.if.end53.fold.split.i.i_crit_edge:     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.fold.split.i.i

if.end23.i.mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i

land.lhs.true.i.i:                                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = add i32 %chan_type.0.i, -6
  %switch.and.i.i = and i32 %63, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  %64 = select i1 %switch.selectcmp.i.i, i32 335544320, i32 805306368
  br label %mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i

if.else18.i.i:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i

switch.early.test.i.i:                            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = add i32 %chan_type.0.i, -9
  %switch.and76.i.i = and i32 %65, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and76.i.i)
  %switch.selectcmp77.i.i = icmp eq i32 %switch.and76.i.i, 0
  %66 = select i1 %switch.selectcmp77.i.i, i32 469762048, i32 1006632960
  br label %mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i

if.end53.fold.split.i.i:                          ; preds = %if.end23.i.if.end53.fold.split.i.i_crit_edge, %if.end23.i.if.end53.fold.split.i.i_crit_edge24
  br label %mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i

if.end53.fold.split84.i.i:                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i

mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i:          ; preds = %if.end53.fold.split84.i.i, %if.end53.fold.split.i.i, %switch.early.test.i.i, %if.else18.i.i, %land.lhs.true.i.i, %if.end23.i.mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i_crit_edge
  %i2s_uv.0.i.i = phi i32 [ 805306368, %if.else18.i.i ], [ %64, %land.lhs.true.i.i ], [ %66, %switch.early.test.i.i ], [ 1006632960, %if.end53.fold.split.i.i ], [ 469762048, %if.end53.fold.split84.i.i ], [ 67108864, %if.end23.i.mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i54.i = getelementptr i8, ptr %68, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54.i, i32 1342177280) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i79.i.i = getelementptr i8, ptr %70, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i.i, i32 -973078528) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i81.i.i = getelementptr i8, ptr %72, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i.i, i32 -100663296) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i83.i.i = getelementptr i8, ptr %74, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i.i, i32 %i2s_uv.0.i.i) #8, !srcloc !246
  %75 = ptrtoint ptr %aud_input_type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %aud_input_type.i, align 4
  %77 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i56.i = getelementptr i8, ptr %78, i32 40
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56.i) #8, !srcloc !243
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i = icmp ne i32 %76, 0
  %and.i.i = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp1.not.i.i
  br i1 %or.cond.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i.i = and i32 %80, -3
  br label %mtk_hdmi_aud_set_input.exit

if.else.i.i:                                      ; preds = %mtk_hdmi_hw_aud_set_i2s_chan_num.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp3.i.i = icmp eq i32 %76, 1
  %or.cond15.i.i = select i1 %cmp3.i.i, i1 %cmp1.not.i.i, i1 false
  %or.i57.i = or i32 %80, 2
  %spec.select.i.i = select i1 %or.cond15.i.i, i32 %or.i57.i, i32 %80
  br label %mtk_hdmi_aud_set_input.exit

mtk_hdmi_aud_set_input.exit:                      ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i58.i = phi i32 [ %and2.i.i, %if.then.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %81 = tail call i32 @llvm.bswap.i32(i32 %val.0.i58.i) #8
  %82 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %83, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 %81) #8, !srcloc !246
  %sample_rate1.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 21, i32 6, i32 2
  %84 = ptrtoint ptr %sample_rate1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sample_rate1.i, align 4
  %86 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i5 = getelementptr i8, ptr %87, i32 352
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i5) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %89 = or i32 %88, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i5, i32 %89) #8, !srcloc !246
  %90 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %91, i32 436
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  %93 = and i32 %92, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %95, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %93) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %97, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 0) #8, !srcloc !246
  %98 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %99, i32 44
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  %101 = and i32 %100, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6, i32 %101) #8, !srcloc !246
  %102 = ptrtoint ptr %aud_input_type.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %aud_input_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i8 = icmp eq i32 %103, 0
  br i1 %cmp.i8, label %if.then.i9, label %if.else.i13

if.then.i9:                                       ; preds = %mtk_hdmi_aud_set_input.exit
  %104 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %85, label %if.then.i9.mtk_hdmi_aud_set_src.exit_crit_edge [
    i32 32000, label %if.then.i9.sw.epilog.i_crit_edge
    i32 44100, label %if.then.i9.sw.epilog.i_crit_edge25
    i32 48000, label %if.then.i9.sw.epilog.i_crit_edge26
    i32 88200, label %if.then.i9.sw.epilog.i_crit_edge27
    i32 96000, label %if.then.i9.sw.epilog.i_crit_edge28
  ]

if.then.i9.sw.epilog.i_crit_edge28:               ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.i9.sw.epilog.i_crit_edge27:               ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.i9.sw.epilog.i_crit_edge26:               ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.i9.sw.epilog.i_crit_edge25:               ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.i9.sw.epilog.i_crit_edge:                 ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.i9.mtk_hdmi_aud_set_src.exit_crit_edge:   ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_aud_set_src.exit

sw.epilog.i:                                      ; preds = %if.then.i9.sw.epilog.i_crit_edge, %if.then.i9.sw.epilog.i_crit_edge25, %if.then.i9.sw.epilog.i_crit_edge26, %if.then.i9.sw.epilog.i_crit_edge27, %if.then.i9.sw.epilog.i_crit_edge28
  %aud_mclk.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 21, i32 4
  %105 = ptrtoint ptr %aud_mclk.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %aud_mclk.i, align 4
  %107 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %108, i32 56
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %106)
  %110 = icmp ult i32 %106, 6
  br i1 %110, label %switch.lookup, label %sw.epilog.i.mtk_hdmi_hw_aud_set_mclk.exit.i_crit_edge

sw.epilog.i.mtk_hdmi_hw_aud_set_mclk.exit.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_hw_aud_set_mclk.exit.i

switch.lookup:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_hdmi_aud_output_config, i32 0, i32 %106
  %111 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %111)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_hdmi_hw_aud_set_mclk.exit.i

mtk_hdmi_hw_aud_set_mclk.exit.i:                  ; preds = %switch.lookup, %sw.epilog.i.mtk_hdmi_hw_aud_set_mclk.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 536870912, %sw.epilog.i.mtk_hdmi_hw_aud_set_mclk.exit.i_crit_edge ]
  %and.i5.i = and i32 %109, -1895825408
  %or9.i.i = or i32 %.sink.i.i, %and.i5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %112 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %113, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %or9.i.i) #8, !srcloc !246
  br label %if.end.i

if.else.i13:                                      ; preds = %mtk_hdmi_aud_set_input.exit
  %114 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %85, label %if.else.i13.mtk_hdmi_aud_set_src.exit_crit_edge [
    i32 32000, label %if.else.i13.sw.epilog6.i_crit_edge
    i32 44100, label %if.else.i13.sw.epilog6.i_crit_edge29
    i32 48000, label %if.else.i13.sw.epilog6.i_crit_edge30
  ]

if.else.i13.sw.epilog6.i_crit_edge30:             ; preds = %if.else.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog6.i

if.else.i13.sw.epilog6.i_crit_edge29:             ; preds = %if.else.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog6.i

if.else.i13.sw.epilog6.i_crit_edge:               ; preds = %if.else.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog6.i

if.else.i13.mtk_hdmi_aud_set_src.exit_crit_edge:  ; preds = %if.else.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_aud_set_src.exit

sw.epilog6.i:                                     ; preds = %if.else.i13.sw.epilog6.i_crit_edge, %if.else.i13.sw.epilog6.i_crit_edge29, %if.else.i13.sw.epilog6.i_crit_edge30
  %115 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %116, i32 56
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  %and.i9.i = and i32 %117, -1895825408
  %or9.i10.i = or i32 %and.i9.i, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %118 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i19.i11.i = getelementptr i8, ptr %119, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i11.i, i32 %or9.i10.i) #8, !srcloc !246
  br label %if.end.i

if.end.i:                                         ; preds = %sw.epilog6.i, %mtk_hdmi_hw_aud_set_mclk.exit.i
  %120 = ptrtoint ptr %display_mode to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %display_mode, align 4
  tail call fastcc void @mtk_hdmi_hw_aud_set_ncts(ptr noundef %hdmi, i32 noundef %85, i32 noundef %121) #8
  %122 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %123, i32 436
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #8, !srcloc !243
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  %and.i14.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %tobool.not.i.i = icmp eq i32 %and.i14.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.mtk_hdmi_aud_set_src.exit_crit_edge, label %if.then.i.i15

if.end.i.mtk_hdmi_aud_set_src.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_aud_set_src.exit

if.then.i.i15:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i = and i32 %125, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %126 = tail call i32 @llvm.bswap.i32(i32 %and1.i.i) #8
  %127 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %128, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %126) #8, !srcloc !246
  tail call void @usleep_range_state(i32 noundef 255, i32 noundef 512, i32 noundef 2) #8
  %or.i.i14 = or i32 %125, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %129 = tail call i32 @llvm.bswap.i32(i32 %or.i.i14) #8
  %130 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %131, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %129) #8, !srcloc !246
  br label %mtk_hdmi_aud_set_src.exit

mtk_hdmi_aud_set_src.exit:                        ; preds = %if.then.i.i15, %if.end.i.mtk_hdmi_aud_set_src.exit_crit_edge, %if.else.i13.mtk_hdmi_aud_set_src.exit_crit_edge, %if.then.i9.mtk_hdmi_aud_set_src.exit_crit_edge
  %iec = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 21, i32 6, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %mtk_hdmi_aud_set_src.exit
  %i.045.i = phi i32 [ 0, %mtk_hdmi_aud_set_src.exit ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.045.i, 2
  %add.i = add nuw nsw i32 %mul.i, 320
  %arrayidx.i = getelementptr i8, ptr %iec, i32 %i.045.i
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %133 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %134 = shl nuw i32 %conv.i, 24
  %135 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %136, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17, i32 %134) #8, !srcloc !246
  %add2.i = add nuw nsw i32 %mul.i, 512
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = zext i8 %138 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %139 = shl nuw i32 %conv4.i, 24
  %140 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %141, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 %139) #8, !srcloc !246
  %add6.i = add nuw nsw i32 %mul.i, 608
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i, align 1
  %conv8.i = zext i8 %143 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %144 = shl nuw i32 %conv8.i, 24
  %145 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %146, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %144) #8, !srcloc !246
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.body.i.for.body12.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.body12.i_crit_edge:                ; preds = %for.body.i
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body.i.for.body12.i_crit_edge
  %i.147.i = phi i32 [ %inc18.i, %for.body12.i.for.body12.i_crit_edge ], [ 5, %for.body.i.for.body12.i_crit_edge ]
  %mul13.i = shl i32 %i.147.i, 2
  %add14.i = add nuw nsw i32 %mul13.i, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %147 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %148, i32 %add14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 0) #8, !srcloc !246
  %add16.i = add nuw nsw i32 %mul13.i, 608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %149 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %150, i32 %add16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 0) #8, !srcloc !246
  %inc18.i = add nuw nsw i32 %i.147.i, 1
  %exitcond48.not.i = icmp eq i32 %inc18.i, 24
  br i1 %exitcond48.not.i, label %mtk_hdmi_hw_aud_set_channel_status.exit, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i

mtk_hdmi_hw_aud_set_channel_status.exit:          ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #8
  %151 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %152, i32 352
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %154 = and i32 %153, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 %154) #8, !srcloc !246
  %155 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %156, i32 432
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %158 = and i32 %157, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 %158) #8, !srcloc !246
  %159 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %160, i32 380
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  %162 = and i32 %161, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 %162) #8, !srcloc !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @mtk_hdmi_aud_get_chnl_count(i32 noundef %channel_type) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %channel_type, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 52
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [52 x i8], ptr @switch.table.mtk_hdmi_aud_get_chnl_count, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %1)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i8 [ 2, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_hdmi_hw_aud_set_ncts(ptr nocapture noundef readonly %hdmi, i32 noundef %sample_rate, i32 noundef %clock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %clock, label %for.inc.4.i [
    i32 25175, label %entry.for.end.i_crit_edge
    i32 74176, label %for.end.fold.split.i
    i32 148352, label %for.end.fold.split38.i
    i32 296703, label %for.end.fold.split39.i
    i32 297000, label %for.end.fold.split40.i
  ]

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.4.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.fold.split38.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.fold.split39.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.fold.split40.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split40.i, %for.end.fold.split39.i, %for.end.fold.split38.i, %for.end.fold.split.i, %for.inc.4.i, %entry.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ 5, %for.inc.4.i ], [ 1, %for.end.fold.split.i ], [ 2, %for.end.fold.split38.i ], [ 3, %for.end.fold.split39.i ], [ 4, %for.end.fold.split40.i ]
  %1 = zext i32 %sample_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %sample_rate, label %sw.default.i [
    i32 32000, label %sw.bb.i
    i32 44100, label %sw.bb4.i
    i32 48000, label %sw.bb7.i
    i32 88200, label %sw.bb10.i
    i32 96000, label %sw.bb13.i
    i32 176400, label %sw.bb17.i
    i32 192000, label %sw.bb21.i
  ]

sw.bb.i:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %n.i = getelementptr %struct.hdmi_acr_n, ptr @hdmi_rec_n_table, i32 %i.0.lcssa.i, i32 1
  %2 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n.i, align 4
  br label %hdmi_recommended_n.exit

sw.bb4.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6.i = getelementptr %struct.hdmi_acr_n, ptr @hdmi_rec_n_table, i32 %i.0.lcssa.i, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6.i, align 4
  br label %hdmi_recommended_n.exit

sw.bb7.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.i = getelementptr %struct.hdmi_acr_n, ptr @hdmi_rec_n_table, i32 %i.0.lcssa.i, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx9.i, align 4
  br label %hdmi_recommended_n.exit

sw.bb10.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12.i = getelementptr %struct.hdmi_acr_n, ptr @hdmi_rec_n_table, i32 %i.0.lcssa.i, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12.i, align 4
  %mul.i = shl i32 %9, 1
  br label %hdmi_recommended_n.exit

sw.bb13.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15.i = getelementptr %struct.hdmi_acr_n, ptr @hdmi_rec_n_table, i32 %i.0.lcssa.i, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx15.i, align 4
  %mul16.i = shl i32 %11, 1
  br label %hdmi_recommended_n.exit

sw.bb17.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19.i = getelementptr %struct.hdmi_acr_n, ptr @hdmi_rec_n_table, i32 %i.0.lcssa.i, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx19.i, align 4
  %mul20.i = shl i32 %13, 2
  br label %hdmi_recommended_n.exit

sw.bb21.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23.i = getelementptr %struct.hdmi_acr_n, ptr @hdmi_rec_n_table, i32 %i.0.lcssa.i, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx23.i, align 4
  %mul24.i = shl i32 %15, 2
  br label %hdmi_recommended_n.exit

sw.default.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul25.i = shl i32 %sample_rate, 7
  %div.i = udiv i32 %mul25.i, 1000
  br label %hdmi_recommended_n.exit

hdmi_recommended_n.exit:                          ; preds = %sw.default.i, %sw.bb21.i, %sw.bb17.i, %sw.bb13.i, %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb.i
  %retval.0.i14 = phi i32 [ %div.i, %sw.default.i ], [ %mul24.i, %sw.bb21.i ], [ %mul20.i, %sw.bb17.i ], [ %mul16.i, %sw.bb13.i ], [ %mul.i, %sw.bb10.i ], [ %7, %sw.bb7.i ], [ %5, %sw.bb4.i ], [ %3, %sw.bb.i ]
  %mul.i15 = shl i32 %sample_rate, 7
  %16 = zext i32 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %clock, label %sw.default.i.i [
    i32 25175, label %hdmi_recommended_n.exit.hdmi_mode_clock_to_hz.exit.i_crit_edge
    i32 74176, label %sw.bb1.i.i
    i32 148352, label %sw.bb2.i.i
    i32 296703, label %sw.bb3.i.i
  ]

hdmi_recommended_n.exit.hdmi_mode_clock_to_hz.exit.i_crit_edge: ; preds = %hdmi_recommended_n.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_mode_clock_to_hz.exit.i

sw.bb1.i.i:                                       ; preds = %hdmi_recommended_n.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_mode_clock_to_hz.exit.i

sw.bb2.i.i:                                       ; preds = %hdmi_recommended_n.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_mode_clock_to_hz.exit.i

sw.bb3.i.i:                                       ; preds = %hdmi_recommended_n.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hdmi_mode_clock_to_hz.exit.i

sw.default.i.i:                                   ; preds = %hdmi_recommended_n.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i = mul i32 %clock, 1000
  br label %hdmi_mode_clock_to_hz.exit.i

hdmi_mode_clock_to_hz.exit.i:                     ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %hdmi_recommended_n.exit.hdmi_mode_clock_to_hz.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %mul.i.i, %sw.default.i.i ], [ 296703297, %sw.bb3.i.i ], [ 148351648, %sw.bb2.i.i ], [ 74175824, %sw.bb1.i.i ], [ 25174825, %hdmi_recommended_n.exit.hdmi_mode_clock_to_hz.exit.i_crit_edge ]
  %conv.i = zext i32 %retval.0.i.i to i64
  %conv1.i = zext i32 %retval.0.i14 to i64
  %mul2.i = mul nuw i64 %conv.i, %conv1.i
  %div271.i = lshr exact i32 %mul.i15, 1
  %conv3.i = zext i32 %div271.i to i64
  %add.i = add nuw i64 %mul2.i, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp173.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp173.i, label %if.then177.i, label %if.else183.i, !prof !256

if.then177.i:                                     ; preds = %hdmi_mode_clock_to_hz.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv178.i = trunc i64 %add.i to i32
  %div181.i = udiv i32 %conv178.i, %mul.i15
  br label %hdmi_expected_cts.exit

if.else183.i:                                     ; preds = %hdmi_mode_clock_to_hz.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i15, i64 %add.i) #12, !srcloc !257
  %asmresult1.i.i = extractvalue { i64, i64 } %17, 1
  %extract.t297.i = trunc i64 %asmresult1.i.i to i32
  br label %hdmi_expected_cts.exit

hdmi_expected_cts.exit:                           ; preds = %if.else183.i, %if.then177.i
  %_tmp.0.off0.i = phi i32 [ %div181.i, %if.then177.i ], [ %extract.t297.i, %if.else183.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_hw_aud_set_ncts.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_hw_aud_set_ncts, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !247

if.then:                                          ; preds = %hdmi_expected_cts.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_hw_aud_set_ncts.__UNIQUE_ID_ddebug315, ptr noundef %19, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef %sample_rate, i32 noundef %clock, i32 noundef %retval.0.i14, i32 noundef %_tmp.0.off0.i) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %hdmi_expected_cts.exit
  %regs.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 19
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 772
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %23 = or i32 %22, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %27, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 0) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %29, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 0) #8, !srcloc !246
  %shr.i16 = and i32 %_tmp.0.off0.i, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %31, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 %shr.i16) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %32 = shl i32 %_tmp.0.off0.i, 8
  %conv25.1.i = and i32 %32, -16777216
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41.1.i = getelementptr i8, ptr %34, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.1.i, i32 %conv25.1.i) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %35 = shl i32 %_tmp.0.off0.i, 16
  %conv25.2.i = and i32 %35, -16777216
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41.2.i = getelementptr i8, ptr %37, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.2.i, i32 %conv25.2.i) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %conv25.3.i = shl i32 %_tmp.0.off0.i, 24
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41.3.i = getelementptr i8, ptr %39, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.3.i, i32 %conv25.3.i) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %40 = shl i32 %retval.0.i14, 8
  %conv25.4.i = and i32 %40, -16777216
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41.4.i = getelementptr i8, ptr %42, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.4.i, i32 %conv25.4.i) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %43 = shl i32 %retval.0.i14, 16
  %conv25.5.i = and i32 %43, -16777216
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41.5.i = getelementptr i8, ptr %45, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.5.i, i32 %conv25.5.i) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %conv25.6.i = shl i32 %retval.0.i14, 24
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41.6.i = getelementptr i8, ptr %47, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.6.i, i32 %conv25.6.i) #8, !srcloc !246
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mtk_cec_hpd_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.mtk_hdmi_bridge_attach) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_bridge = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_bridge, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %call4 = tail call i32 @drm_bridge_attach(ptr noundef %3, ptr noundef nonnull %1, ptr noundef %bridge, i32 noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %cec_dev = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 6
  %4 = ptrtoint ptr %cec_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cec_dev, align 4
  %dev = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @mtk_cec_set_hpd_event(ptr noundef %5, ptr noundef nonnull @mtk_hdmi_hpd_event, ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %if.then ], [ %call4, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_bridge_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr noundef %mode) #2 align 64 {
entry:
  %adjusted_mode = alloca %struct.drm_display_mode, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_bridge_mode_valid.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_bridge_mode_valid, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !247

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %4 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay, align 2
  %conv4 = zext i16 %5 to i32
  %call5 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #8
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_bridge_mode_valid.__UNIQUE_ID_ddebug318, ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %conv, i32 noundef %conv4, i32 noundef %call5, i32 noundef %and.lobit, i32 noundef %mul) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chain_node.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 3
  %encoder.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %10 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encoder.i, align 4
  %bridge_chain.i = getelementptr inbounds %struct.drm_encoder, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %chain_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chain_node.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, %bridge_chain.i
  %add.ptr.i = getelementptr i8, ptr %13, i32 -132
  %tobool13.not71 = icmp eq ptr %add.ptr.i, null
  %tobool13.not = or i1 %cmp.i.not.i, %tobool13.not71
  br i1 %tobool13.not, label %do.end.if.end18_crit_edge, label %if.then14

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then14:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %adjusted_mode) #8
  %14 = call ptr @memset(ptr %adjusted_mode, i32 255, i32 112)
  call void @drm_mode_copy(ptr noundef nonnull %adjusted_mode, ptr noundef %mode) #8
  %call15 = call zeroext i1 @drm_bridge_chain_mode_fixup(ptr noundef nonnull %add.ptr.i, ptr noundef %mode, ptr noundef nonnull %adjusted_mode) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %adjusted_mode) #8
  br i1 %call15, label %if.then14.if.end18_crit_edge, label %if.then14.cleanup49_crit_edge

if.then14.cleanup49_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %if.then14.if.end18_crit_edge, %do.end.if.end18_crit_edge
  %conf = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 4
  %15 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conf, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %if.end18.if.end37thread-pre-split_crit_edge, label %if.then20

if.end18.if.end37thread-pre-split_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37thread-pre-split

if.then20:                                        ; preds = %if.end18
  %cea_modes_only = getelementptr inbounds %struct.mtk_hdmi_conf, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %cea_modes_only to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cea_modes_only, align 1, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool22.not = icmp eq i8 %18, 0
  br i1 %tobool22.not, label %if.then20.if.end27_crit_edge, label %land.lhs.true

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true:                                    ; preds = %if.then20
  %call24 = call zeroext i8 @drm_match_cea_mode(ptr noundef %mode) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call24)
  %tobool25.not = icmp eq i8 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.cleanup49_crit_edge, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true.cleanup49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %if.then20.if.end27_crit_edge
  %19 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %conf, align 4
  %max_mode_clock = getelementptr inbounds %struct.mtk_hdmi_conf, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %max_mode_clock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_mode_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool29.not = icmp eq i32 %22, 0
  br i1 %tobool29.not, label %if.end27.if.end37thread-pre-split_crit_edge, label %land.lhs.true30

if.end27.if.end37thread-pre-split_crit_edge:      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37thread-pre-split

land.lhs.true30:                                  ; preds = %if.end27
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp = icmp ugt i32 %24, %22
  br i1 %cmp, label %land.lhs.true30.cleanup49_crit_edge, label %land.lhs.true30.if.end37_crit_edge

land.lhs.true30.if.end37_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true30.cleanup49_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.end37thread-pre-split:                         ; preds = %if.end27.if.end37thread-pre-split_crit_edge, %if.end18.if.end37thread-pre-split_crit_edge
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %mode, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37thread-pre-split, %land.lhs.true30.if.end37_crit_edge
  %26 = phi i32 [ %.pr, %if.end37thread-pre-split ], [ %24, %land.lhs.true30.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000, i32 %26)
  %cmp39 = icmp slt i32 %26, 27000
  br i1 %cmp39, label %if.end37.cleanup49_crit_edge, label %if.end42

if.end37.cleanup49_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.end42:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 297000, i32 %26)
  %cmp44 = icmp ugt i32 %26, 297000
  br i1 %cmp44, label %if.end42.cleanup49_crit_edge, label %if.end47

if.end42.cleanup49_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup49

if.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = call i32 @drm_mode_validate_size(ptr noundef %mode, i32 noundef 8191, i32 noundef 8191) #8
  br label %cleanup49

cleanup49:                                        ; preds = %if.end47, %if.end42.cleanup49_crit_edge, %if.end37.cleanup49_crit_edge, %land.lhs.true30.cleanup49_crit_edge, %land.lhs.true.cleanup49_crit_edge, %if.then14.cleanup49_crit_edge
  %retval.1 = phi i32 [ %call48, %if.end47 ], [ -2, %if.then14.cleanup49_crit_edge ], [ -2, %land.lhs.true.cleanup49_crit_edge ], [ 15, %land.lhs.true30.cleanup49_crit_edge ], [ 16, %if.end37.cleanup49_crit_edge ], [ 15, %if.end42.cleanup49_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mtk_hdmi_bridge_mode_fixup(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adjusted_mode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_bridge_mode_set, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !247

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 31
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug319, ptr noundef %1, ptr noundef nonnull @.str.67, ptr noundef %name, i32 noundef %conv) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_bridge_mode_set, %if.then16)) #8
          to label %do.body24 [label %if.then16], !srcloc !247

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %4 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev17, align 4
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 2
  %6 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hsync_start, align 2
  %conv18 = zext i16 %7 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 3
  %8 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hsync_end, align 4
  %conv19 = zext i16 %9 to i32
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %10 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %htotal, align 2
  %conv20 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug320, ptr noundef %5, ptr noundef nonnull @.str.68, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %conv20) #8
  br label %do.body24

do.body24:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_bridge_mode_set, %if.then36)) #8
          to label %do.body43 [label %if.then36], !srcloc !247

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %dev37 = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %12 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev37, align 4
  %hskew = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 5
  %14 = ptrtoint ptr %hskew to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hskew, align 4
  %conv38 = zext i16 %15 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %16 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vdisplay, align 2
  %conv39 = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug321, ptr noundef %13, ptr noundef nonnull @.str.69, i32 noundef %conv38, i32 noundef %conv39) #8
  br label %do.body43

do.body43:                                        ; preds = %if.then36, %do.body24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_bridge_mode_set, %if.then55)) #8
          to label %do.body63 [label %if.then55], !srcloc !247

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %dev56 = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %18 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev56, align 4
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 7
  %20 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsync_start, align 4
  %conv57 = zext i16 %21 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 8
  %22 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vsync_end, align 2
  %conv58 = zext i16 %23 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 9
  %24 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vtotal, align 4
  %conv59 = zext i16 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug322, ptr noundef %19, ptr noundef nonnull @.str.70, i32 noundef %conv57, i32 noundef %conv58, i32 noundef %conv59) #8
  br label %do.body63

do.body63:                                        ; preds = %if.then55, %do.body43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_bridge_mode_set, %if.then75)) #8
          to label %do.end80 [label %if.then75], !srcloc !247

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %dev76 = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %26 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev76, align 4
  %vscan = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 10
  %28 = ptrtoint ptr %vscan to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vscan, align 2
  %conv77 = zext i16 %29 to i32
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug323, ptr noundef %27, ptr noundef nonnull @.str.71, i32 noundef %conv77, i32 noundef %31) #8
  br label %do.end80

do.end80:                                         ; preds = %if.then75, %do.body63
  %mode81 = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 9
  tail call void @drm_mode_copy(ptr noundef %mode81, ptr noundef %adjusted_mode) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_bridge_atomic_pre_enable(ptr nocapture noundef %bridge, ptr nocapture noundef readnone %old_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mtk_hdmi_hw_make_reg_writable(ptr noundef %bridge, i1 noundef zeroext true)
  %sys_regmap.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 17
  %0 = ptrtoint ptr %sys_regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sys_regmap.i, align 4
  %sys_offset.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 18
  %2 = ptrtoint ptr %sys_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sys_offset.i, align 4
  %add.i = add i32 %3, 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add.i, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %powered = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 23
  %4 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %powered, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_bridge_atomic_enable(ptr noundef %bridge, ptr nocapture noundef readonly %old_state) #2 align 64 {
entry:
  %frame.i29.i = alloca %struct.hdmi_vendor_infoframe, align 4
  %buffer.i30.i = alloca [10 x i8], align 1
  %frame.i17.i = alloca %struct.hdmi_spd_infoframe, align 4
  %buffer.i18.i = alloca [29 x i8], align 1
  %frame.i9.i = alloca %struct.hdmi_avi_infoframe, align 4
  %buffer.i10.i = alloca [17 x i8], align 1
  %frame.i.i = alloca %struct.hdmi_audio_infoframe, align 4
  %buffer.i.i = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_state, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %call2 = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %1, ptr noundef %3) #8
  %curr_conn = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 2
  %4 = ptrtoint ptr %curr_conn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %curr_conn, align 4
  %mode = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 9
  %regs.i.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 19
  %5 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 912
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %8 = and i32 %7, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %8) #8, !srcloc !246
  %9 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %10, i32 380
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %12 = or i32 %11, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %12) #8, !srcloc !246
  %13 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %14, i32 52
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  %16 = and i32 %15, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 %16) #8, !srcloc !246
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %17 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %18, i32 52
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %20 = or i32 %19, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i, i32 %20) #8, !srcloc !246
  %phy.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 5
  %21 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %22) #8
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 4
  %mul.i = mul i32 %24, 1000
  %call1.i = tail call fastcc i32 @mtk_hdmi_video_change_vpll(ptr noundef %bridge, i32 noundef %mul.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.72, i32 noundef %call1.i) #11
  br label %mtk_hdmi_output_set_display_mode.exit

if.end.i:                                         ; preds = %entry
  %sys_regmap.i.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 17
  %27 = ptrtoint ptr %sys_regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sys_regmap.i.i.i, align 4
  %sys_offset.i.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 18
  %29 = ptrtoint ptr %sys_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sys_offset.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %30, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %31 = ptrtoint ptr %sys_regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sys_regmap.i.i.i, align 4
  %33 = ptrtoint ptr %sys_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sys_offset.i.i.i, align 4
  %call.i15.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %34, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %35 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %36, i32 48
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  %38 = and i32 %37, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %38) #8, !srcloc !246
  %39 = ptrtoint ptr %sys_regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sys_regmap.i.i.i, align 4
  %41 = ptrtoint ptr %sys_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sys_offset.i.i.i, align 4
  %call.i16.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %42, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %43 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i8.i.i = getelementptr i8, ptr %44, i32 44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %46 = or i32 %45, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i.i, i32 %46) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i10.i.i = getelementptr i8, ptr %48, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i.i, i32 -16777216) #8, !srcloc !246
  %dvi_mode.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 10
  %49 = ptrtoint ptr %dvi_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dvi_mode.i.i, align 4, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i = icmp eq i8 %50, 0
  %cond.i.i.i = select i1 %tobool.not.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i12.i.i = getelementptr i8, ptr %52, i32 40
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %54 = and i32 %53, -67108865
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  %or.i.i.i.i = or i32 %55, %cond.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12.i.i, i32 %56) #8, !srcloc !246
  %57 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %58, i32 352
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %60 = or i32 %59, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i.i, i32 %60) #8, !srcloc !246
  %61 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i16.i.i = getelementptr i8, ptr %62, i32 52
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  %64 = and i32 %63, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16.i.i, i32 %64) #8, !srcloc !246
  %flags.i.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 9, i32 11
  %65 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.if.else.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.else.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %67 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 74250, i32 %68)
  %cmp.i.i.i = icmp eq i32 %68, 74250
  br i1 %cmp.i.i.i, label %land.lhs.true1.i.i.i, label %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i

land.lhs.true1.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %vdisplay.i.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 9, i32 6
  %69 = ptrtoint ptr %vdisplay.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vdisplay.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1080, i16 %70)
  %cmp2.i.i.i = icmp eq i16 %70, 1080
  br i1 %cmp2.i.i.i, label %if.then.i.i.i, label %land.lhs.true1.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true1.i.i.i.if.else.i.i.i_crit_edge:     ; preds = %land.lhs.true1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i.i.i = getelementptr i8, ptr %72, i32 44
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  %74 = and i32 %73, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i.i, i32 %74) #8, !srcloc !246
  br label %mtk_hdmi_video_set_display_mode.exit.i

if.else.i.i.i:                                    ; preds = %land.lhs.true1.i.i.i.if.else.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, %if.end.i.if.else.i.i.i_crit_edge
  %75 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %76, i32 44
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %78 = or i32 %77, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i.i, i32 %78) #8, !srcloc !246
  br label %mtk_hdmi_video_set_display_mode.exit.i

mtk_hdmi_video_set_display_mode.exit.i:           ; preds = %if.else.i.i.i, %if.then.i.i.i
  %79 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %phy.i, align 4
  %call3.i = tail call i32 @phy_power_on(ptr noundef %80) #8
  tail call fastcc void @mtk_hdmi_aud_output_config(ptr noundef %bridge, ptr noundef %mode) #8
  %81 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %82, i32 912
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %84 = or i32 %83, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i, i32 %84) #8, !srcloc !246
  %85 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %86, i32 380
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  %88 = and i32 %87, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i, i32 %88) #8, !srcloc !246
  %89 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %90, i32 52
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %92 = and i32 %91, -1610612737
  %93 = or i32 %92, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 %93) #8, !srcloc !246
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %94 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i3.i11.i = getelementptr i8, ptr %95, i32 52
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i11.i) #8, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %97 = and i32 %96, -1610612737
  %98 = or i32 %97, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i11.i, i32 %98) #8, !srcloc !246
  br label %mtk_hdmi_output_set_display_mode.exit

mtk_hdmi_output_set_display_mode.exit:            ; preds = %mtk_hdmi_video_set_display_mode.exit.i, %do.end.i
  %clk = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 8
  %arrayidx = getelementptr %struct.mtk_hdmi, ptr %bridge, i32 0, i32 8, i32 1
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx, align 4
  %call.i19 = tail call i32 @clk_prepare(ptr noundef %100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %if.end.i22, label %mtk_hdmi_output_set_display_mode.exit.clk_prepare_enable.exit_crit_edge

mtk_hdmi_output_set_display_mode.exit.clk_prepare_enable.exit_crit_edge: ; preds = %mtk_hdmi_output_set_display_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i22:                                       ; preds = %mtk_hdmi_output_set_display_mode.exit
  %call1.i21 = tail call i32 @clk_enable(ptr noundef %100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool2.not.i = icmp eq i32 %call1.i21, 0
  br i1 %tobool2.not.i, label %if.end.i22.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i22.clk_prepare_enable.exit_crit_edge:     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %100) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i22.clk_prepare_enable.exit_crit_edge, %mtk_hdmi_output_set_display_mode.exit.clk_prepare_enable.exit_crit_edge
  %101 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %clk, align 4
  %call.i23 = tail call i32 @clk_prepare(ptr noundef %102) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %if.end.i27, label %clk_prepare_enable.exit.clk_prepare_enable.exit30_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit30_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit30

if.end.i27:                                       ; preds = %clk_prepare_enable.exit
  %call1.i25 = tail call i32 @clk_enable(ptr noundef %102) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool2.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool2.not.i26, label %if.end.i27.clk_prepare_enable.exit30_crit_edge, label %if.then3.i28

if.end.i27.clk_prepare_enable.exit30_crit_edge:   ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit30

if.then3.i28:                                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %102) #8
  br label %clk_prepare_enable.exit30

clk_prepare_enable.exit30:                        ; preds = %if.then3.i28, %if.end.i27.clk_prepare_enable.exit30_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit30_crit_edge
  %103 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %phy.i, align 4
  %call8 = tail call i32 @phy_power_on(ptr noundef %104) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %frame.i.i) #8
  %105 = call ptr @memset(ptr %frame.i.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buffer.i.i) #8
  %106 = call ptr @memset(ptr %buffer.i.i, i32 255, i32 14)
  %call.i.i = call i32 @hdmi_audio_infoframe_init(ptr noundef nonnull %frame.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %clk_prepare_enable.exit30
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %107 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.82, i32 noundef %call.i.i) #11
  br label %mtk_hdmi_setup_audio_infoframe.exit.i

if.end.i.i:                                       ; preds = %clk_prepare_enable.exit30
  %coding_type.i.i = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame.i.i, i32 0, i32 4
  %109 = ptrtoint ptr %coding_type.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %coding_type.i.i, align 4
  %sample_frequency.i.i = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame.i.i, i32 0, i32 6
  %110 = ptrtoint ptr %sample_frequency.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %sample_frequency.i.i, align 4
  %sample_size.i.i = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame.i.i, i32 0, i32 5
  %111 = ptrtoint ptr %sample_size.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %sample_size.i.i, align 4
  %aud_input_chan_type.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 21, i32 5
  %112 = ptrtoint ptr %aud_input_chan_type.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %aud_input_chan_type.i.i, align 4
  %call1.i.i = call fastcc zeroext i8 @mtk_hdmi_aud_get_chnl_count(i32 noundef %113) #8
  %channels.i.i = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame.i.i, i32 0, i32 3
  %114 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %call1.i.i, ptr %channels.i.i, align 2
  %call2.i.i = call i32 @hdmi_audio_infoframe_pack(ptr noundef nonnull %frame.i.i, ptr noundef nonnull %buffer.i.i, i32 noundef 14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end7.i.i, label %if.end9.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev8.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %115 = ptrtoint ptr %dev8.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev8.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.85, i32 noundef %call2.i.i) #11
  br label %mtk_hdmi_setup_audio_infoframe.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mtk_hdmi_hw_send_info_frame(ptr noundef %bridge, ptr noundef nonnull %buffer.i.i) #8
  br label %mtk_hdmi_setup_audio_infoframe.exit.i

mtk_hdmi_setup_audio_infoframe.exit.i:            ; preds = %if.end9.i.i, %do.end7.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buffer.i.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %frame.i.i) #8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i9.i) #8
  %117 = call ptr @memset(ptr %frame.i9.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer.i10.i) #8
  %118 = call ptr @memset(ptr %buffer.i10.i, i32 255, i32 17)
  %119 = ptrtoint ptr %curr_conn to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %curr_conn, align 4
  %call.i11.i = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame.i9.i, ptr noundef %120, ptr noundef %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp.i12.i = icmp slt i32 %call.i11.i, 0
  br i1 %cmp.i12.i, label %do.end.i14.i, label %if.end.i16.i

do.end.i14.i:                                     ; preds = %mtk_hdmi_setup_audio_infoframe.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i13.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %121 = ptrtoint ptr %dev.i13.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i13.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.90, i32 noundef %call.i11.i) #11
  br label %mtk_hdmi_setup_avi_infoframe.exit.i

if.end.i16.i:                                     ; preds = %mtk_hdmi_setup_audio_infoframe.exit.i
  %call1.i15.i = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %frame.i9.i, ptr noundef nonnull %buffer.i10.i, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15.i)
  %cmp2.i.i = icmp slt i32 %call1.i15.i, 0
  br i1 %cmp2.i.i, label %do.end6.i.i, label %if.end8.i.i

do.end6.i.i:                                      ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev7.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %123 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev7.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.93, i32 noundef %call1.i15.i) #11
  br label %mtk_hdmi_setup_avi_infoframe.exit.i

if.end8.i.i:                                      ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mtk_hdmi_hw_send_info_frame(ptr noundef %bridge, ptr noundef nonnull %buffer.i10.i) #8
  br label %mtk_hdmi_setup_avi_infoframe.exit.i

mtk_hdmi_setup_avi_infoframe.exit.i:              ; preds = %if.end8.i.i, %do.end6.i.i, %do.end.i14.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i10.i) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i9.i) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %frame.i17.i) #8
  %125 = call ptr @memset(ptr %frame.i17.i, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %buffer.i18.i) #8
  %126 = call ptr @memset(ptr %buffer.i18.i, i32 255, i32 29)
  %call.i19.i = call i32 @hdmi_spd_infoframe_init(ptr noundef nonnull %frame.i17.i, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %cmp.i20.i = icmp slt i32 %call.i19.i, 0
  br i1 %cmp.i20.i, label %do.end.i22.i, label %if.end.i25.i

do.end.i22.i:                                     ; preds = %mtk_hdmi_setup_avi_infoframe.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i21.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %127 = ptrtoint ptr %dev.i21.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i21.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.95, i32 noundef %call.i19.i) #11
  br label %mtk_hdmi_setup_spd_infoframe.exit.i

if.end.i25.i:                                     ; preds = %mtk_hdmi_setup_avi_infoframe.exit.i
  %call1.i23.i = call i32 @hdmi_spd_infoframe_pack(ptr noundef nonnull %frame.i17.i, ptr noundef nonnull %buffer.i18.i, i32 noundef 29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i)
  %cmp2.i24.i = icmp slt i32 %call1.i23.i, 0
  br i1 %cmp2.i24.i, label %do.end6.i27.i, label %if.end8.i28.i

do.end6.i27.i:                                    ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev7.i26.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %129 = ptrtoint ptr %dev7.i26.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev7.i26.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.98, i32 noundef %call1.i23.i) #11
  br label %mtk_hdmi_setup_spd_infoframe.exit.i

if.end8.i28.i:                                    ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mtk_hdmi_hw_send_info_frame(ptr noundef %bridge, ptr noundef nonnull %buffer.i18.i) #8
  br label %mtk_hdmi_setup_spd_infoframe.exit.i

mtk_hdmi_setup_spd_infoframe.exit.i:              ; preds = %if.end8.i28.i, %do.end6.i27.i, %do.end.i22.i
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %buffer.i18.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %frame.i17.i) #8
  %flags.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 9, i32 11
  %131 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %132, 507904
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i31 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i31, label %mtk_hdmi_setup_spd_infoframe.exit.i.mtk_hdmi_send_infoframe.exit_crit_edge, label %if.then.i

mtk_hdmi_setup_spd_infoframe.exit.i.mtk_hdmi_send_infoframe.exit_crit_edge: ; preds = %mtk_hdmi_setup_spd_infoframe.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_send_infoframe.exit

if.then.i:                                        ; preds = %mtk_hdmi_setup_spd_infoframe.exit.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %frame.i29.i) #8
  %133 = call ptr @memset(ptr %frame.i29.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buffer.i30.i) #8
  %134 = call ptr @memset(ptr %buffer.i30.i, i32 255, i32 10)
  %135 = ptrtoint ptr %curr_conn to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %curr_conn, align 4
  %call.i32.i = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef nonnull %frame.i29.i, ptr noundef %136, ptr noundef %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool.not.i.i32 = icmp eq i32 %call.i32.i, 0
  br i1 %tobool.not.i.i32, label %if.end.i37.i, label %do.end.i34.i

do.end.i34.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i33.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %137 = ptrtoint ptr %dev.i33.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i33.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.100, i32 noundef %call.i32.i) #11
  br label %mtk_hdmi_setup_vendor_specific_infoframe.exit.i

if.end.i37.i:                                     ; preds = %if.then.i
  %call1.i35.i = call i32 @hdmi_vendor_infoframe_pack(ptr noundef nonnull %frame.i29.i, ptr noundef nonnull %buffer.i30.i, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35.i)
  %cmp.i36.i = icmp slt i32 %call1.i35.i, 0
  br i1 %cmp.i36.i, label %do.end5.i.i, label %if.end7.i.i

do.end5.i.i:                                      ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev6.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 3
  %139 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev6.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.103, i32 noundef %call1.i35.i) #11
  br label %mtk_hdmi_setup_vendor_specific_infoframe.exit.i

if.end7.i.i:                                      ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mtk_hdmi_hw_send_info_frame(ptr noundef %bridge, ptr noundef nonnull %buffer.i30.i) #8
  br label %mtk_hdmi_setup_vendor_specific_infoframe.exit.i

mtk_hdmi_setup_vendor_specific_infoframe.exit.i:  ; preds = %if.end7.i.i, %do.end5.i.i, %do.end.i34.i
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buffer.i30.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %frame.i29.i) #8
  br label %mtk_hdmi_send_infoframe.exit

mtk_hdmi_send_infoframe.exit:                     ; preds = %mtk_hdmi_setup_vendor_specific_infoframe.exit.i, %mtk_hdmi_setup_spd_infoframe.exit.i.mtk_hdmi_send_infoframe.exit_crit_edge
  %enabled = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 24
  %141 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %enabled, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_bridge_atomic_disable(ptr nocapture noundef %bridge, ptr nocapture noundef readnone %old_bridge_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 24
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 2, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %phy = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 5
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %call1 = tail call i32 @phy_power_off(ptr noundef %3) #8
  %clk = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 8
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %arrayidx3 = getelementptr %struct.mtk_hdmi, ptr %bridge, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %curr_conn = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 2
  %8 = ptrtoint ptr %curr_conn to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %curr_conn, align 4
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %enabled, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_bridge_atomic_post_disable(ptr nocapture noundef %bridge, ptr nocapture noundef readnone %old_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %powered = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 23
  %0 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered, align 1, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sys_regmap.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 17
  %2 = ptrtoint ptr %sys_regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sys_regmap.i, align 4
  %sys_offset.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 18
  %4 = ptrtoint ptr %sys_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sys_offset.i, align 4
  %add.i = add i32 %5, 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add.i, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call fastcc void @mtk_hdmi_hw_make_reg_writable(ptr noundef %bridge, i1 noundef zeroext false)
  %6 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %powered, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_bridge_detect(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %update_plugged_status_lock.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %update_plugged_status_lock.i.i, i32 noundef 0) #8
  %cec_dev.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 6
  %0 = ptrtoint ptr %cec_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cec_dev.i.i, align 4
  %call.i.i = tail call zeroext i1 @mtk_cec_hpd_high(ptr noundef %1) #8
  %plugged_cb.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 25
  %2 = ptrtoint ptr %plugged_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plugged_cb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.mtk_hdmi_detect.exit_crit_edge, label %land.lhs.true.i.i

entry.mtk_hdmi_detect.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_detect.exit

land.lhs.true.i.i:                                ; preds = %entry
  %codec_dev.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 26
  %4 = ptrtoint ptr %codec_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.mtk_hdmi_detect.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.mtk_hdmi_detect.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_detect.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef nonnull %5, i1 noundef zeroext %call.i.i) #8
  br label %mtk_hdmi_detect.exit

mtk_hdmi_detect.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.mtk_hdmi_detect.exit_crit_edge, %entry.mtk_hdmi_detect.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_plugged_status_lock.i.i) #8
  %cond.i.i = select i1 %call.i.i, i32 1, i32 2
  ret i32 %cond.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_hdmi_bridge_get_edid(ptr nocapture noundef %bridge, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc_adpt = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 7
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
  %call6 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef nonnull %call2) #8
  %lnot = xor i1 %call6, true
  %dvi_mode = getelementptr inbounds %struct.mtk_hdmi, ptr %bridge, i32 0, i32 10
  %frombool = zext i1 %lnot to i8
  %2 = ptrtoint ptr %dvi_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %dvi_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end5 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_cec_set_hpd_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_hpd_event(i1 noundef zeroext %hpd, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %update_plugged_status_lock.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %update_plugged_status_lock.i.i, i32 noundef 0) #8
  %cec_dev.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %cec_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cec_dev.i.i, align 4
  %call.i.i = tail call zeroext i1 @mtk_cec_hpd_high(ptr noundef %7) #8
  %plugged_cb.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %plugged_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plugged_cb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.mtk_hdmi_detect.exit_crit_edge, label %land.lhs.true.i.i

if.then.mtk_hdmi_detect.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_detect.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %codec_dev.i.i = getelementptr inbounds %struct.mtk_hdmi, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %codec_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %codec_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.mtk_hdmi_detect.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.mtk_hdmi_detect.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hdmi_detect.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef nonnull %11, i1 noundef zeroext %call.i.i) #8
  br label %mtk_hdmi_detect.exit

mtk_hdmi_detect.exit:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.mtk_hdmi_detect.exit_crit_edge, %if.then.mtk_hdmi_detect.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_plugged_status_lock.i.i) #8
  %cond.i.i = select i1 %call.i.i, i32 1, i32 2
  store i32 %cond.i.i, ptr @mtk_hdmi_hpd_event.status, align 4
  %12 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %encoder, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call11 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %15) #8
  %16 = load i32, ptr @mtk_hdmi_hpd_event.status, align 4
  tail call void @drm_bridge_hpd_notify(ptr noundef nonnull %1, i32 noundef %16) #8
  br label %if.end

if.end:                                           ; preds = %mtk_hdmi_detect.exit, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_bridge_chain_mode_fixup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_match_cea_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_validate_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_hdmi_hw_make_reg_writable(ptr nocapture noundef readonly %hdmi, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #8
  %conf = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 4
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  %1 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conf, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 4, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sys_regmap = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 17
  %5 = ptrtoint ptr %sys_regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sys_regmap, align 4
  %sys_offset = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 18
  %7 = ptrtoint ptr %sys_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sys_offset, align 4
  %add = add i32 %8, 4
  %cond = select i1 %enable, i32 -2147483643, i32 32768
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add, i32 noundef -2147450875, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__arm_smccc_smc(i32 noundef -2113929215, i32 noundef 335546628, i32 noundef -2147483648, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sys_regmap4 = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 17
  %9 = ptrtoint ptr %sys_regmap4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sys_regmap4, align 4
  %sys_offset5 = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 18
  %11 = ptrtoint ptr %sys_offset5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sys_offset5, align 4
  %add6 = add i32 %12, 4
  %cond8 = select i1 %enable, i32 -2147483648, i32 0
  %call.i25 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %add6, i32 noundef -2147483648, i32 noundef %cond8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %13 = ptrtoint ptr %sys_regmap4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sys_regmap4, align 4
  %15 = ptrtoint ptr %sys_offset5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sys_offset5, align 4
  %cond14 = select i1 %enable, i32 5, i32 0
  %call.i26 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef 5, i32 noundef %cond14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_hdmi_video_change_vpll(ptr nocapture noundef readonly %hdmi, i32 noundef %clock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef %clock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.74, i32 noundef %clock, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %5) #8
  %add = add i32 %call3, 500
  %div4 = udiv i32 %add, 1000
  %add9 = add i32 %clock, 500
  %div10 = udiv i32 %add9, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div4, i32 %div10)
  %cmp.not = icmp eq i32 %div4, %div10
  br i1 %cmp.not, label %do.body16, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 3
  %6 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.77, i32 noundef %clock, i32 noundef %call3) #11
  br label %if.end27

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_video_change_vpll.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_video_change_vpll, %if.then22)) #8
          to label %if.end27 [label %if.then22], !srcloc !247

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 3
  %8 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_video_change_vpll.__UNIQUE_ID_ddebug316, ptr noundef %9, ptr noundef nonnull @.str.77, i32 noundef %clock, i32 noundef %call3) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %do.body16, %do.end14
  %sys_regmap.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 17
  %10 = ptrtoint ptr %sys_regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_regmap.i, align 4
  %sys_offset.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 18
  %12 = ptrtoint ptr %sys_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sys_offset.i, align 4
  %add.i = add i32 %13, 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add.i, i32 noundef 268500992, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %14 = ptrtoint ptr %sys_regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sys_regmap.i, align 4
  %16 = ptrtoint ptr %sys_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sys_offset.i, align 4
  %add3.i = add i32 %17, 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add3.i, i32 noundef 268500992, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %18 = ptrtoint ptr %sys_regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sys_regmap.i, align 4
  %20 = ptrtoint ptr %sys_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sys_offset.i, align 4
  %add.i47 = add i32 %21, 4
  %call.i.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %add.i47, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_hdmi_hw_send_info_frame(ptr nocapture noundef readonly %hdmi, ptr nocapture noundef readonly %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr = getelementptr i8, ptr %buffer, i32 1
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer, align 1
  %conv = zext i8 %1 to i32
  %incdec.ptr1 = getelementptr i8, ptr %buffer, i32 2
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %incdec.ptr, align 1
  %incdec.ptr2 = getelementptr i8, ptr %buffer, i32 3
  %4 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr1, align 1
  %incdec.ptr3 = getelementptr i8, ptr %buffer, i32 4
  %6 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_hw_send_info_frame.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_hw_send_info_frame, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !247

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %conv6 = zext i8 %3 to i32
  %conv7 = zext i8 %5 to i32
  %conv8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_hw_send_info_frame.__UNIQUE_ID_ddebug314, ptr noundef %9, ptr noundef nonnull @.str.88, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %switch.tableidx = add i8 %1, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 4
  br i1 %10, label %switch.lookup, label %do.end14

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 3
  %11 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.89, i32 noundef %conv) #11
  br label %cleanup

switch.lookup:                                    ; preds = %do.end
  %13 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mtk_hdmi_hw_send_info_frame, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %15 = sext i8 %switch.tableidx to i32
  %switch.gep16 = getelementptr inbounds [4 x i32], ptr @switch.table.mtk_hdmi_hw_send_info_frame.107, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load17 = load i32, ptr %switch.gep16, align 4
  %regs.i = getelementptr inbounds %struct.mtk_hdmi, ptr %hdmi, i32 0, i32 19
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %switch.load17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !243
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  %neg.i = xor i32 %switch.load, -1
  %and.i = and i32 %20, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #8, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %22 = shl nuw i32 %conv, 24
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %24, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %22) #8, !srcloc !246
  %conv16 = zext i8 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %25 = shl nuw i32 %conv16, 24
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %27, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %25) #8, !srcloc !246
  %conv17 = zext i8 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %28 = shl nuw i32 %conv17, 24
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %30, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %28) #8, !srcloc !246
  %conv18 = zext i8 %7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %31 = shl nuw i32 %conv18, 24
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %33, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %31) #8, !srcloc !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp14.not = icmp eq i8 %5, 0
  br i1 %cmp14.not, label %switch.lookup.for.end_crit_edge, label %switch.lookup.for.body_crit_edge

switch.lookup.for.body_crit_edge:                 ; preds = %switch.lookup
  br label %for.body

switch.lookup.for.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %switch.lookup.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %switch.lookup.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %incdec.ptr3, i32 %i.015
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %conv21 = zext i8 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void @arm_heavy_mb() #8
  %36 = shl nuw i32 %conv21, 24
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %38, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %36) #8, !srcloc !246
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %conv17
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %switch.lookup.for.end_crit_edge
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %40, i32 %switch.load17
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !243
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  %or.i = or i32 %42, %switch.load
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void @arm_heavy_mb() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %43) #8, !srcloc !246
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_spd_infoframe_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_spd_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_vendor_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx.i = getelementptr %struct.mtk_hdmi, ptr %1, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %arrayidx2.i = getelementptr %struct.mtk_hdmi, ptr %1, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @mtk_hdmi_clk_enable_audio(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.105) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !65, !67, !68, !69, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !125, !126, !127, !129, !131, !133, !134, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !225, !227, !229, !231, !232, !233}
!llvm.module.flags = !{!234, !235, !236, !237, !238, !239, !240, !241}
!llvm.ident = !{!242}

!0 = !{ptr @__initcall__kmod_mediatek_drm_hdmi__327_1835_mtk_hdmitx_init6, !1, !"__initcall__kmod_mediatek_drm_hdmi__327_1835_mtk_hdmitx_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1835, i32 1}
!2 = !{ptr @__exitcall_mtk_hdmitx_exit, !3, !"__exitcall_mtk_hdmitx_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1836, i32 1}
!4 = !{ptr @__UNIQUE_ID_author328, !5, !"__UNIQUE_ID_author328", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1838, i32 1}
!6 = !{ptr @__UNIQUE_ID_description329, !7, !"__UNIQUE_ID_description329", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1839, i32 1}
!8 = !{ptr @__UNIQUE_ID_file330, !9, !"__UNIQUE_ID_file330", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1840, i32 1}
!10 = !{ptr @__UNIQUE_ID_license331, !9, !"__UNIQUE_ID_license331", i1 false, i1 false}
!11 = !{ptr @mtk_hdmi_drivers, !12, !"mtk_hdmi_drivers", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1817, i32 39}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1811, i32 11}
!15 = !{ptr @mtk_hdmi_driver, !16, !"mtk_hdmi_driver", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1807, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1707, i32 32}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1710, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mtk_drm_hdmi_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mtk_drm_hdmi_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mtk_drm_hdmi_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1714, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1719, i32 3}
!32 = !{ptr @mtk_drm_hdmi_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_drm_hdmi_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1725, i32 3}
!36 = !{ptr @mtk_drm_hdmi_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_drm_hdmi_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1738, i32 3}
!40 = !{ptr @mtk_drm_hdmi_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mtk_drm_hdmi_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1437, i32 4}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mtk_hdmi_dt_parse_pdata._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @mtk_hdmi_dt_parse_pdata._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1443, i32 47}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1445, i32 3}
!51 = !{ptr @mtk_hdmi_dt_parse_pdata._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1451, i32 3}
!55 = !{ptr @mtk_hdmi_dt_parse_pdata._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1464, i32 47}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1470, i32 3}
!61 = !{ptr @mtk_hdmi_dt_parse_pdata._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1490, i32 39}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1493, i32 4}
!67 = !{ptr @mtk_hdmi_dt_parse_pdata._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1500, i32 36}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1502, i32 3}
!73 = !{ptr @mtk_hdmi_dt_parse_pdata._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1513, i32 3}
!77 = !{ptr @mtk_hdmi_dt_parse_pdata._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mtk_hdmi_dt_parse_pdata._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1142, i32 30}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1143, i32 28}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1144, i32 28}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1145, i32 29}
!87 = distinct !{null, !88, !"mtk_hdmi_clk_names", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1141, i32 27}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1680, i32 44}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1686, i32 2}
!93 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mtk_hdmi_register_audio_driver._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mtk_hdmi_register_audio_driver._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @mtk_hdmi_audio_codec_ops, !97, !"mtk_hdmi_audio_codec_ops", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1659, i32 36}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1536, i32 2}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mtk_hdmi_audio_hw_params.__UNIQUE_ID_ddebug324, !99, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1556, i32 3}
!105 = !{ptr @mtk_hdmi_audio_hw_params._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @mtk_hdmi_audio_hw_params._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1570, i32 3}
!109 = !{ptr @mtk_hdmi_audio_hw_params._entry.52, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @mtk_hdmi_audio_hw_params._entry_ptr.54, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1589, i32 3}
!113 = !{ptr @mtk_hdmi_audio_hw_params._entry.55, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @mtk_hdmi_audio_hw_params._entry_ptr.57, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1103, i32 3}
!117 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mtk_hdmi_audio_set_param._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @mtk_hdmi_audio_set_param._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1106, i32 2}
!122 = !{ptr @mtk_hdmi_audio_set_param.__UNIQUE_ID_ddebug317, !121, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 759, i32 2}
!125 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @mtk_hdmi_hw_aud_set_ncts.__UNIQUE_ID_ddebug315, !124, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!127 = !{ptr @hdmi_rec_n_table, !128, !"hdmi_rec_n_table", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 657, i32 32}
!129 = !{ptr @mtk_hdmi_bridge_funcs, !130, !"mtk_hdmi_bridge_funcs", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1407, i32 38}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1290, i32 3}
!133 = !{ptr @__func__.mtk_hdmi_bridge_attach, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mtk_hdmi_hpd_event.status, !135, !"status", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1249, i32 36}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1213, i32 2}
!138 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @mtk_hdmi_bridge_mode_valid.__UNIQUE_ID_ddebug318, !137, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1351, i32 2}
!142 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug319, !141, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1353, i32 2}
!146 = !{ptr @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug320, !145, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1356, i32 2}
!149 = !{ptr @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug321, !148, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1358, i32 2}
!152 = !{ptr @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug322, !151, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1361, i32 2}
!155 = !{ptr @mtk_hdmi_bridge_mode_set.__UNIQUE_ID_ddebug323, !154, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1126, i32 3}
!158 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @mtk_hdmi_output_set_display_mode._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @mtk_hdmi_output_set_display_mode._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 845, i32 3}
!163 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @mtk_hdmi_video_change_vpll._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @mtk_hdmi_video_change_vpll._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 853, i32 3}
!168 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @mtk_hdmi_video_change_vpll._entry.76, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @mtk_hdmi_video_change_vpll._entry_ptr.79, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @mtk_hdmi_video_change_vpll.__UNIQUE_ID_ddebug316, !172, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 856, i32 3}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1383, i32 37}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1383, i32 49}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1024, i32 3}
!179 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @mtk_hdmi_setup_audio_infoframe._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @mtk_hdmi_setup_audio_infoframe._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1037, i32 3}
!184 = !{ptr @mtk_hdmi_setup_audio_infoframe._entry.84, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @mtk_hdmi_setup_audio_infoframe._entry_ptr.86, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 322, i32 2}
!188 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mtk_hdmi_hw_send_info_frame.__UNIQUE_ID_ddebug314, !187, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 344, i32 3}
!192 = !{ptr @mtk_hdmi_hw_send_info_frame._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @mtk_hdmi_hw_send_info_frame._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 976, i32 3}
!196 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @mtk_hdmi_setup_avi_infoframe._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @mtk_hdmi_setup_avi_infoframe._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 983, i32 3}
!201 = !{ptr @mtk_hdmi_setup_avi_infoframe._entry.92, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @mtk_hdmi_setup_avi_infoframe._entry_ptr.94, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1001, i32 3}
!205 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @mtk_hdmi_setup_spd_infoframe._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @mtk_hdmi_setup_spd_infoframe._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1008, i32 3}
!210 = !{ptr @mtk_hdmi_setup_spd_infoframe._entry.97, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @mtk_hdmi_setup_spd_infoframe._entry_ptr.99, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1056, i32 3}
!214 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1063, i32 3}
!219 = !{ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry.102, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @mtk_hdmi_setup_vendor_specific_infoframe._entry_ptr.104, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @mtk_drm_hdmi_of_ids, !222, !"mtk_drm_hdmi_of_ids", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1794, i32 34}
!223 = !{ptr @mtk_hdmi_conf_mt2701, !224, !"mtk_hdmi_conf_mt2701", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1785, i32 35}
!225 = !{ptr @mtk_hdmi_conf_mt8167, !226, !"mtk_hdmi_conf_mt8167", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1789, i32 35}
!227 = !{ptr @mtk_hdmi_pm_ops, !228, !"mtk_hdmi_pm_ops", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1782, i32 8}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/mediatek/mtk_hdmi.c", i32 1775, i32 3}
!231 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @mtk_hdmi_resume._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @mtk_hdmi_resume._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{i32 1, !"wchar_size", i32 2}
!235 = !{i32 1, !"min_enum_size", i32 4}
!236 = !{i32 8, !"branch-target-enforcement", i32 0}
!237 = !{i32 8, !"sign-return-address", i32 0}
!238 = !{i32 8, !"sign-return-address-all", i32 0}
!239 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!240 = !{i32 7, !"uwtable", i32 1}
!241 = !{i32 7, !"frame-pointer", i32 2}
!242 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!243 = !{i64 6940916}
!244 = !{i64 2157488799}
!245 = !{i64 2157488999}
!246 = !{i64 6940498}
!247 = !{i64 2148795481, i64 2148795486, i64 2148795499, i64 2148795543, i64 2148795577, i64 2148795598}
!248 = !{i8 0, i8 2}
!249 = !{i64 2157488208}
!250 = !{i64 2157487417}
!251 = !{i64 2157488008}
!252 = !{i64 2157486394}
!253 = !{i64 2157486610}
!254 = !{i64 2157487217}
!255 = !{i8 2, i8 9}
!256 = !{!"branch_weights", i32 2000, i32 1}
!257 = !{i64 2148716684, i64 2148716964, i64 2148717298, i64 2148717632}
