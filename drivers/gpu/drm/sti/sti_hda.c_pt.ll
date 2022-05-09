; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_hda.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_hda.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sti_hda_video_config = type { %struct.drm_display_mode, ptr, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sti_hda = type { %struct.device, ptr, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.sti_hda_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sti-hda\00", [24 x i8] zeroinitializer }, align 32
@hda_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih416-hda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-hda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sti_hda_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sti_hda_probe, ptr @sti_hda_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hda_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author307 = internal constant [60 x i8] c"sti_drm.author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [54 x i8] c"sti_drm.description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [41 x i8] c"sti_drm.file=drivers/gpu/drm/sti/sti-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [20 x i8] c"sti_drm.license=GPL\00", section ".modinfo", align 1
@sti_hda_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016[drm] %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sti_hda_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/sti/sti_hda.c\00", [34 x i8] zeroinitializer }, align 32
@sti_hda_probe._entry_ptr = internal global ptr @sti_hda_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hda-reg\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid hda resource\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"video-dacs-ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No video-dacs-ctrl resource\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pix\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot get hda_pix clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hddac\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot get hda_hddac clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sti_hda_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sti_hda_bind, ptr @sti_hda_unbind }, [24 x i8] zeroinitializer }, align 32
@sti_hda_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @sti_hda_disable, ptr @sti_hda_bridge_nope, ptr @sti_hda_set_mode, ptr @sti_hda_pre_enable, ptr @sti_hda_bridge_nope, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sti_hda_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @sti_hda_late_register, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sti_hda_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @sti_hda_connector_get_modes, ptr null, ptr @sti_hda_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to attach a connector to a encoder\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Undefined mode\0A\00", [16 x i8] zeroinitializer }, align 32
@hda_supported_modes = internal constant { [10 x %struct.sti_hda_video_config], [296 x i8] } { [10 x %struct.sti_hda_video_config] [%struct.sti_hda_video_config { %struct.drm_display_mode { i32 74250, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_1080p_30, i32 21, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74176, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_1080p_30, i32 21, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74250, i16 1920, i16 2558, i16 2602, i16 2750, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_1080p_24, i32 21, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74176, i16 1920, i16 2558, i16 2602, i16 2750, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_1080p_24, i32 21, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74250, i16 1920, i16 2448, i16 2492, i16 2640, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_1080p_25, i32 21, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74250, i16 1280, i16 1390, i16 1430, i16 1650, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_720p_60, i32 18, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74176, i16 1280, i16 1390, i16 1430, i16 1650, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_720p_60, i32 18, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74250, i16 1280, i16 1720, i16 1760, i16 1980, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_720p_50, i32 18, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 27027, i16 720, i16 736, i16 798, i16 858, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_720x480p_60, i32 8, i32 1 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 27000, i16 720, i16 736, i16 798, i16 858, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_720x480p_60, i32 8, i32 1 }], [296 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot set rate (%dHz) for hda_hddac clk\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot set rate (%dHz) for hda_pix clk\0A\00", [56 x i8] zeroinitializer }, align 32
@AWGi_1080p_30 = internal global { [21 x i32], [44 x i8] } { [21 x i32] [i32 2417, i32 3114, i32 315, i32 3158, i32 260, i32 4060, i32 4061, i32 315, i32 3114, i32 260, i32 6148, i32 2417, i32 3114, i32 59, i32 3774, i32 3775, i32 3775, i32 260, i32 6703, i32 7243, i32 7250], [44 x i8] zeroinitializer }, align 32
@AWGi_1080p_24 = internal global { [21 x i32], [44 x i8] } { [21 x i32] [i32 2417, i32 3114, i32 315, i32 3158, i32 260, i32 4060, i32 4061, i32 315, i32 3664, i32 260, i32 6148, i32 2417, i32 3114, i32 59, i32 3958, i32 3958, i32 3958, i32 260, i32 6703, i32 7243, i32 7250], [44 x i8] zeroinitializer }, align 32
@AWGi_1080p_25 = internal global { [21 x i32], [44 x i8] } { [21 x i32] [i32 2417, i32 3114, i32 315, i32 3158, i32 260, i32 4060, i32 4061, i32 315, i32 3554, i32 260, i32 6148, i32 2417, i32 3114, i32 59, i32 3921, i32 3921, i32 3922, i32 260, i32 6703, i32 7243, i32 7250], [44 x i8] zeroinitializer }, align 32
@AWGi_720p_60 = internal global { [18 x i32], [56 x i8] } { [18 x i32] [i32 2417, i32 3110, i32 315, i32 3290, i32 260, i32 3710, i32 3711, i32 315, i32 3140, i32 260, i32 6148, i32 2417, i32 3110, i32 59, i32 3855, i32 3856, i32 260, i32 6888], [56 x i8] zeroinitializer }, align 32
@AWGi_720p_50 = internal global { [18 x i32], [56 x i8] } { [18 x i32] [i32 2417, i32 3110, i32 315, i32 3290, i32 260, i32 3710, i32 3711, i32 315, i32 3470, i32 260, i32 6148, i32 2417, i32 3110, i32 59, i32 4020, i32 4021, i32 260, i32 6888], [56 x i8] zeroinitializer }, align 32
@AWGi_720x480p_60 = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 2308, i32 3864, i32 315, i32 6149, i32 2308, i32 3133, i32 59, i32 6662], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to prepare/enable hda_pix clk\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to prepare/enable hda_hddac clk\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Beyond HD analog capabilities\0A\00", [33 x i8] zeroinitializer }, align 32
@coef_y_alt_2x = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16679931, i32 529531905, i32 0, i32 0, i32 15993081, i32 90143781, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@coef_c_alt_2x = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1246711, i32 86461392, i32 0, i32 0, i32 299132, i32 164105117, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@coef_yc_4x = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16548479, i32 9429515, i32 16155900, i32 84900900, i32 16024956, i32 169820206, i32 16384639, i32 235367965], [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Not supported\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Undefined resolution\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Using HDA mode #%d\0A\00", [44 x i8] zeroinitializer }, align 32
@hda_debugfs_files = internal global { [1 x %struct.drm_info_list], [16 x i8] } { [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.23, ptr @hda_dbg_show, i32 0, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hda\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HD Analog: (vaddr = 0x%p)\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A  %-25s 0x%08X\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDA_ANA_CFG\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDA_ANA_SCALE_CTRL_Y\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDA_ANA_SCALE_CTRL_CB\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDA_ANA_SCALE_CTRL_CR\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDA_ANA_ANC_CTRL\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDA_ANA_SRC_Y_CFG\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDA_ANA_SRC_C_CFG\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\09AWG \00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0A\0A  HDA AWG microcode:\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0A  %04X:\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %04X\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A\0A  %-25s 0x%08X\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VIDEO_DACS_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09HD DACs \00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"target rate = %d => available rate = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hda pixclk=%d not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 808, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"hda_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 799, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"sti_hda_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 806, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 744, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 753, i32 59 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 755, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 763, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 771, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 776, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 778, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 782, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 784, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"sti_hda_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 733, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"sti_hda_bridge_funcs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 565, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant [24 x i8] c"sti_hda_connector_funcs\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 650, i32 41 }
@___asan_gen_.99 = private unnamed_addr constant [31 x i8] c"sti_hda_connector_helper_funcs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 634, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 715, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 409, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 529, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"hda_supported_modes\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 181, i32 42 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 550, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 556, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"AWGi_1080p_30\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 120, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"AWGi_1080p_24\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 144, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"AWGi_1080p_25\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 132, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant [13 x i8] c"AWGi_720p_60\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 109, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant [13 x i8] c"AWGi_720p_50\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 98, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"AWGi_720x480p_60\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 156, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 441, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 443, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 452, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [14 x i8] c"coef_y_alt_2x\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 75, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"coef_c_alt_2x\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 81, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant [11 x i8] c"coef_yc_4x\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 89, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 471, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 474, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 477, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"hda_debugfs_files\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 366, i32 29 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 367, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 350, i32 16 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 351, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 353, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 354, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 355, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 356, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 357, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 358, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 320, i32 14 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 321, i32 39 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 321, i32 51 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 328, i32 14 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 331, i32 18 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 332, i32 17 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 340, i32 16 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 340, i32 38 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 341, i32 14 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 620, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private constant [33 x i8] c"../drivers/gpu/drm/sti/sti_hda.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 624, i32 4 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @sti_hda_probe._entry, ptr @sti_hda_probe._entry_ptr, ptr @.str, ptr @hda_of_match, ptr @sti_hda_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @sti_hda_ops, ptr @sti_hda_bridge_funcs, ptr @sti_hda_connector_funcs, ptr @sti_hda_connector_helper_funcs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @hda_supported_modes, ptr @.str.15, ptr @.str.16, ptr @AWGi_1080p_30, ptr @AWGi_1080p_24, ptr @AWGi_1080p_25, ptr @AWGi_720p_60, ptr @AWGi_720p_50, ptr @AWGi_720x480p_60, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @coef_y_alt_2x, ptr @coef_c_alt_2x, ptr @coef_yc_4x, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @hda_debugfs_files, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hda_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hda_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hda_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hda_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hda_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hda_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_supported_modes to i32), i32 1240, i32 1536, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AWGi_1080p_30 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AWGi_1080p_24 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AWGi_1080p_25 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AWGi_720p_60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AWGi_720p_50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AWGi_720x480p_60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_y_alt_2x to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_c_alt_2x to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_yc_4x to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_debugfs_files to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hda_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1064, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memcpy(ptr %call.i, ptr %dev1, i32 928)
  %call5 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.4) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call10 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %2, i32 noundef %add.i) #6
  %regs = getelementptr inbounds %struct.sti_hda, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %regs, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %call15 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.6) #6
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  %6 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call15, align 4
  %end.i72 = getelementptr inbounds %struct.resource, ptr %call15, i32 0, i32 1
  %8 = ptrtoint ptr %end.i72 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i72, align 4
  %sub.i73 = sub i32 1, %7
  %add.i74 = add i32 %sub.i73, %9
  %call20 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %7, i32 noundef %add.i74) #6
  %video_dacs_ctrl = getelementptr inbounds %struct.sti_hda, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %video_dacs_ctrl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20, ptr %video_dacs_ctrl, align 8
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.then17.cleanup_crit_edge, label %if.then17.if.end26_crit_edge

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #6
  %video_dacs_ctrl25 = getelementptr inbounds %struct.sti_hda, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %video_dacs_ctrl25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %video_dacs_ctrl25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then17.if.end26_crit_edge
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #6
  %clk_pix = getelementptr inbounds %struct.sti_hda, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %clk_pix to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call27, ptr %clk_pix, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #6
  %13 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_pix, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %call34 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #6
  %clk_hddac = getelementptr inbounds %struct.sti_hda, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %clk_hddac to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call34, ptr %clk_hddac, align 8
  %cmp.i75 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #6
  %17 = ptrtoint ptr %clk_hddac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_hddac, align 8
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call42 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @sti_hda_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then37, %if.then30, %if.then17.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then30 ], [ %19, %if.then37 ], [ %call42, %if.end40 ], [ -12, %if.then7 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ -12, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hda_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sti_hda_ops) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hda_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_dev1 = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %drm_dev1, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %encoder_type.i = getelementptr i8, ptr %.pn.i, i32 32
  %4 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encoder_type.i, align 4
  %cmp3.i = icmp eq i32 %5, 1
  br i1 %cmp3.i, label %sti_hda_find_encoder.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

sti_hda_find_encoder.exit:                        ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %sti_hda_find_encoder.exit.cleanup_crit_edge, label %if.end

sti_hda_find_encoder.exit.cleanup_crit_edge:      ; preds = %sti_hda_find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sti_hda_find_encoder.exit
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1048, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %hda7 = getelementptr inbounds %struct.sti_hda_connector, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %hda7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %hda7, align 4
  %call.i44 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 280, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i44, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %call.i44, i32 0, i32 8
  %7 = ptrtoint ptr %driver_private to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %driver_private, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i44, i32 0, i32 7
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sti_hda_bridge_funcs, ptr %funcs, align 4
  %call12 = tail call i32 @drm_bridge_attach(ptr noundef nonnull %encoder.0.le.i, ptr noundef nonnull %call.i44, ptr noundef null, i32 noundef 0) #6
  %encoder13 = getelementptr inbounds %struct.sti_hda_connector, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %encoder13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %encoder.0.le.i, ptr %encoder13, align 8
  %polled = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 33
  %10 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %polled, align 4
  %call14 = tail call i32 @drm_connector_init(ptr noundef %data, ptr noundef nonnull %call.i, ptr noundef nonnull @sti_hda_connector_funcs, i32 noundef 8) #6
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 35
  %11 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sti_hda_connector_helper_funcs, ptr %helper_private.i, align 4
  %call15 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call.i, ptr noundef nonnull %encoder.0.le.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %video_dacs_ctrl.i = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %video_dacs_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video_dacs_ctrl.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end18.cleanup_crit_edge, label %if.then.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %15 = or i32 %14, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %video_dacs_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video_dacs_ctrl.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !140
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end18.cleanup_crit_edge, %if.then17, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sti_hda_find_encoder.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then17 ], [ -12, %sti_hda_find_encoder.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.then.i ], [ -12, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sti_hda_unbind(ptr nocapture noundef %dev, ptr nocapture noundef %master, ptr nocapture noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_hda_disable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  %enabled = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13) #6
  %regs.i = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !140
  %video_dacs_ctrl.i = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %video_dacs_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video_dacs_ctrl.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.hda_enable_hd_dacs.exit_crit_edge, label %if.then.i

if.end.hda_enable_hd_dacs.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %hda_enable_hd_dacs.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %15 = or i32 %14, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %video_dacs_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video_dacs_ctrl.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !140
  br label %hda_enable_hd_dacs.exit

hda_enable_hd_dacs.exit:                          ; preds = %if.then.i, %if.end.hda_enable_hd_dacs.exit_crit_edge
  %clk_hddac = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %clk_hddac to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_hddac, align 8
  tail call void @clk_disable(ptr noundef %19) #6
  tail call void @clk_unprepare(ptr noundef %19) #6
  %clk_pix = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_pix, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  %22 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %hda_enable_hd_dacs.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sti_hda_bridge_nope(ptr nocapture noundef %bridge) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_hda_set_mode(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %adjusted_mode) #0 align 64 {
entry:
  %mode_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode_idx) #6
  %2 = ptrtoint ptr %mode_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode_idx, align 4, !annotation !144
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13) #6
  %mode1 = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %mode1, ptr %mode, i32 112)
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %4, i32 112)
  %call = call fastcc zeroext i1 @hda_get_mode_idx(ptr noundef byval(%struct.drm_display_mode) align 4 %mode, ptr noundef nonnull %mode_idx)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %mode_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode_idx, align 4
  %vid_cat = getelementptr [10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 %6, i32 3
  %7 = ptrtoint ptr %vid_cat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vid_cat, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default [
    i32 2, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %if.end.sw.epilog_crit_edge
  %.sink31 = phi i32 [ 4000, %sw.bb4 ], [ 2000, %if.end.sw.epilog_crit_edge ]
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %mul7 = mul i32 %11, %.sink31
  %clk_hddac = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %clk_hddac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_hddac, align 8
  %call8 = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef %mul7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then9, label %sw.epilog.if.end10_crit_edge

sw.epilog.if.end10_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %mul7) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.epilog.if.end10_crit_edge
  %clk_pix = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_pix, align 4
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  %mul12 = mul i32 %17, 1000
  %call13 = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef %mul12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  %mul17 = mul i32 %19, 1000
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %mul17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end10.cleanup_crit_edge, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode_idx) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_hda_pre_enable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  %mode_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode_idx) #6
  %2 = ptrtoint ptr %mode_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode_idx, align 4, !annotation !144
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13) #6
  %enabled = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 4, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_pix = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_pix, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end3_crit_edge, label %if.then3.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %6) #6
  br label %if.then2

if.then2:                                         ; preds = %if.then3.i, %if.end.if.then2_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.i.if.end3_crit_edge
  %clk_hddac = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %clk_hddac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_hddac, align 8
  %call.i62 = tail call i32 @clk_prepare(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.end.i66, label %if.end3.if.then6_crit_edge

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end.i66:                                       ; preds = %if.end3
  %call1.i64 = tail call i32 @clk_enable(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool2.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool2.not.i65, label %if.end.i66.if.end7_crit_edge, label %if.then3.i67

if.end.i66.if.end7_crit_edge:                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then3.i67:                                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %if.then6

if.then6:                                         ; preds = %if.then3.i67, %if.end3.if.then6_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.i66.if.end7_crit_edge
  %mode = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %9, i32 112)
  %call8 = call fastcc zeroext i1 @hda_get_mode_idx(ptr noundef byval(%struct.drm_display_mode) align 4 %mode, ptr noundef nonnull %mode_idx)
  br i1 %call8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %mode_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode_idx, align 4
  %vid_cat = getelementptr [10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 %11, i32 3
  %12 = ptrtoint ptr %vid_cat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vid_cat, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %13, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %if.end10.sw.epilog_crit_edge
    i32 1, label %sw.bb12
    i32 0, label %sw.bb13
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #6
  br label %cleanup

sw.bb12:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #6
  br label %cleanup

sw.default:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb12, %if.end10.sw.epilog_crit_edge
  %src_filter_y.0 = phi i32 [ 32309253, %sw.bb12 ], [ 18022400, %if.end10.sw.epilog_crit_edge ]
  %src_filter_c.0 = phi i32 [ 32309252, %sw.bb12 ], [ 24444932, %if.end10.sw.epilog_crit_edge ]
  %coef_y.0 = phi ptr [ @coef_yc_4x, %sw.bb12 ], [ @coef_y_alt_2x, %if.end10.sw.epilog_crit_edge ]
  %coef_c.0 = phi ptr [ @coef_yc_4x, %sw.bb12 ], [ @coef_c_alt_2x, %if.end10.sw.epilog_crit_edge ]
  %filter_mode.0 = phi i32 [ 16, %sw.bb12 ], [ 32, %if.end10.sw.epilog_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef %11) #6
  %video_dacs_ctrl.i = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %video_dacs_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video_dacs_ctrl.i, align 8
  %tobool.not.i70 = icmp eq ptr %16, null
  br i1 %tobool.not.i70, label %sw.epilog.hda_enable_hd_dacs.exit_crit_edge, label %if.then.i

sw.epilog.hda_enable_hd_dacs.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %hda_enable_hd_dacs.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %18 = and i32 %17, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %video_dacs_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %video_dacs_ctrl.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !140
  br label %hda_enable_hd_dacs.exit

hda_enable_hd_dacs.exit:                          ; preds = %if.then.i, %sw.epilog.hda_enable_hd_dacs.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1443022080) #6, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 1224923904) #6, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 1224923904) #6, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %src_filter_y.0) #6
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %27) #6, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %src_filter_c.0) #6
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %32, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %30) #6, !srcloc !140
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %hda_enable_hd_dacs.exit
  %i.090 = phi i32 [ 0, %hda_enable_hd_dacs.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx14 = getelementptr i32, ptr %coef_y.0, i32 %i.090
  %33 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx14, align 4
  %mul = shl nuw nsw i32 %i.090, 2
  %add = add nuw nsw i32 %mul, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %37, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %35) #6, !srcloc !140
  %arrayidx15 = getelementptr i32, ptr %coef_c.0, i32 %i.090
  %38 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx15, align 4
  %add17 = add nuw nsw i32 %mul, 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %42, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %40) #6, !srcloc !140
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %flags = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 2, i32 11
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and = lshr i32 %44, 2
  %45 = and i32 %and, 4
  %46 = or i32 %45, %filter_mode.0
  %or21 = xor i32 %46, 18284548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %47 = tail call i32 @llvm.bswap.i32(i32 %or21) #6
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #6, !srcloc !140
  %awg_instr = getelementptr [10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 %11, i32 1
  %50 = ptrtoint ptr %awg_instr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %awg_instr, align 4
  %nb_instr = getelementptr [10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 %11, i32 2
  %52 = ptrtoint ptr %nb_instr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nb_instr, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %arrayidx.i = getelementptr i32, ptr %51, i32 %i.020.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %i.020.i, 2
  %add.i = add i32 %mul.i, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %58, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %56) #6, !srcloc !140
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %53
  br i1 %exitcond.not.i, label %for.body.i.for.body3.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.body3.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body.i.for.body3.i_crit_edge
  %i.122.i = phi i32 [ %inc7.i, %for.body3.i.for.body3.i_crit_edge ], [ %53, %for.body.i.for.body3.i_crit_edge ]
  %mul4.i = shl nuw nsw i32 %i.122.i, 2
  %add5.i = add nuw nsw i32 %mul4.i, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %60, i32 %add5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 0) #6, !srcloc !140
  %inc7.i = add i32 %i.122.i, 1
  %exitcond23.not.i = icmp eq i32 %inc7.i, 64
  br i1 %exitcond23.not.i, label %sti_hda_configure_awg.exit, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

sti_hda_configure_awg.exit:                       ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %64 = or i32 %63, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #6, !srcloc !140
  %67 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %sti_hda_configure_awg.exit, %sw.default, %sw.bb13, %sw.bb, %if.then9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode_idx) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hda_get_mode_idx(ptr noundef byval(%struct.drm_display_mode) align 4 %mode, ptr nocapture noundef writeonly %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = call zeroext i1 @drm_mode_equal(ptr noundef nonnull @hda_supported_modes, ptr noundef %mode) #6
  br i1 %call, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.08.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ]
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %i.08.lcssa, ptr %idx, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 1), ptr noundef %mode) #6
  br i1 %call.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %call.2 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 2), ptr noundef %mode) #6
  br i1 %call.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 3), ptr noundef %mode) #6
  br i1 %call.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 4), ptr noundef %mode) #6
  br i1 %call.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 5), ptr noundef %mode) #6
  br i1 %call.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 6), ptr noundef %mode) #6
  br i1 %call.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 7), ptr noundef %mode) #6
  br i1 %call.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %call.8 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 8), ptr noundef %mode) #6
  br i1 %call.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %call.9 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 9), ptr noundef %mode) #6
  br i1 %call.9, label %for.inc.8.if.then_crit_edge, label %for.inc.8.cleanup_crit_edge

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cleanup:                                          ; preds = %for.inc.8.cleanup_crit_edge, %if.then
  %cmp6 = phi i1 [ true, %if.then ], [ false, %for.inc.8.cleanup_crit_edge ]
  ret i1 %cmp6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hda_late_register(ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hda1 = getelementptr inbounds %struct.sti_hda_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %hda1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hda1, align 4
  %drm_dev = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm_dev, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary, align 4
  store ptr %1, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @hda_debugfs_files, i32 0, i32 0, i32 3), align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_root.i, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @hda_debugfs_files, i32 noundef 1, ptr noundef %7, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_dbg_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
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
  %regs = getelementptr inbounds %struct.sti_hda, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef %7) #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !137
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %11) #6
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.33) #6
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.35, ptr @.str.34
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %cond.i) #6
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !137
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, i32 noundef %19) #6
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !137
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, i32 noundef %23) #6
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !137
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.29, i32 noundef %27) #6
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr35 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #6, !srcloc !137
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, i32 noundef %31) #6
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr42 = getelementptr i8, ptr %33, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #6, !srcloc !137
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31, i32 noundef %35) #6
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr49 = getelementptr i8, ptr %37, i32 64
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #6, !srcloc !137
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.32, i32 noundef %39) #6
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr54 = getelementptr i8, ptr %41, i32 768
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.36) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.09.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %rem.i = and i32 %i.09.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.37, i32 noundef %i.09.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %mul.i = shl nuw nsw i32 %i.09.i, 2
  %add.ptr.i = getelementptr i8, ptr %add.ptr54, i32 %mul.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !137
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %43) #6
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %hda_dbg_awg_microcode.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

hda_dbg_awg_microcode.exit:                       ; preds = %if.end.i
  %video_dacs_ctrl = getelementptr inbounds %struct.sti_hda, ptr %5, i32 0, i32 4
  %44 = ptrtoint ptr %video_dacs_ctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %video_dacs_ctrl, align 8
  %tobool.not = icmp eq ptr %45, null
  br i1 %tobool.not, label %hda_dbg_awg_microcode.exit.if.end_crit_edge, label %if.then

hda_dbg_awg_microcode.exit.if.end_crit_edge:      ; preds = %hda_dbg_awg_microcode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %hda_dbg_awg_microcode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %45) #6, !srcloc !137
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %47) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.41) #6
  %and.i79 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i80 = icmp eq i32 %and.i79, 0
  %cond.i81 = select i1 %tobool.not.i80, ptr @.str.34, ptr @.str.35
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %cond.i81) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %hda_dbg_awg_microcode.exit.if.end_crit_edge
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
define internal i32 @sti_hda_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hda1 = getelementptr inbounds %struct.sti_hda_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %hda1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hda1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13) #6
  %drm_dev = getelementptr inbounds %struct.sti_hda, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm_dev, align 8
  %call.peel = tail call ptr @drm_mode_duplicate(ptr noundef %3, ptr noundef nonnull @hda_supported_modes) #6
  %tobool.not.peel = icmp eq ptr %call.peel, null
  br i1 %tobool.not.peel, label %entry.for.body_crit_edge, label %if.end6.peel

entry.for.body_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end6.peel:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %type.peel = getelementptr inbounds %struct.drm_display_mode, ptr %call.peel, i32 0, i32 28
  %4 = ptrtoint ptr %type.peel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.peel, align 2
  %6 = or i8 %5, 8
  store i8 %6, ptr %type.peel, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.peel) #6
  br label %for.body

for.body:                                         ; preds = %if.end6.peel, %entry.for.body_crit_edge
  %count.019.ph = phi i32 [ 1, %if.end6.peel ], [ 0, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drm_dev, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %8, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 1)) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #6
  %inc = add nuw nsw i32 %count.019.ph, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.body.cleanup_crit_edge
  %count.1 = phi i32 [ %inc, %if.end6 ], [ %count.019.ph, %for.body.cleanup_crit_edge ]
  %9 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm_dev, align 8
  %call.1 = tail call ptr @drm_mode_duplicate(ptr noundef %10, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 2)) #6
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end6.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.1

if.end6.1:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.1) #6
  %inc.1 = add nsw i32 %count.1, 1
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end6.1, %cleanup.cleanup.1_crit_edge
  %count.1.1 = phi i32 [ %inc.1, %if.end6.1 ], [ %count.1, %cleanup.cleanup.1_crit_edge ]
  %11 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drm_dev, align 8
  %call.2 = tail call ptr @drm_mode_duplicate(ptr noundef %12, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 3)) #6
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end6.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.2

if.end6.2:                                        ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.2) #6
  %inc.2 = add nsw i32 %count.1.1, 1
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end6.2, %cleanup.1.cleanup.2_crit_edge
  %count.1.2 = phi i32 [ %inc.2, %if.end6.2 ], [ %count.1.1, %cleanup.1.cleanup.2_crit_edge ]
  %13 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drm_dev, align 8
  %call.3 = tail call ptr @drm_mode_duplicate(ptr noundef %14, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 4)) #6
  %tobool.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool.not.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end6.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.3

if.end6.3:                                        ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.3) #6
  %inc.3 = add i32 %count.1.2, 1
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end6.3, %cleanup.2.cleanup.3_crit_edge
  %count.1.3 = phi i32 [ %inc.3, %if.end6.3 ], [ %count.1.2, %cleanup.2.cleanup.3_crit_edge ]
  %15 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drm_dev, align 8
  %call.4 = tail call ptr @drm_mode_duplicate(ptr noundef %16, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 5)) #6
  %tobool.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool.not.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end6.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.4

if.end6.4:                                        ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.4) #6
  %inc.4 = add i32 %count.1.3, 1
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end6.4, %cleanup.3.cleanup.4_crit_edge
  %count.1.4 = phi i32 [ %inc.4, %if.end6.4 ], [ %count.1.3, %cleanup.3.cleanup.4_crit_edge ]
  %17 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drm_dev, align 8
  %call.5 = tail call ptr @drm_mode_duplicate(ptr noundef %18, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 6)) #6
  %tobool.not.5 = icmp eq ptr %call.5, null
  br i1 %tobool.not.5, label %cleanup.4.cleanup.5_crit_edge, label %if.end6.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.5

if.end6.5:                                        ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.5) #6
  %inc.5 = add i32 %count.1.4, 1
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.end6.5, %cleanup.4.cleanup.5_crit_edge
  %count.1.5 = phi i32 [ %inc.5, %if.end6.5 ], [ %count.1.4, %cleanup.4.cleanup.5_crit_edge ]
  %19 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drm_dev, align 8
  %call.6 = tail call ptr @drm_mode_duplicate(ptr noundef %20, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 7)) #6
  %tobool.not.6 = icmp eq ptr %call.6, null
  br i1 %tobool.not.6, label %cleanup.5.cleanup.6_crit_edge, label %if.end6.6

cleanup.5.cleanup.6_crit_edge:                    ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.6

if.end6.6:                                        ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.6) #6
  %inc.6 = add i32 %count.1.5, 1
  br label %cleanup.6

cleanup.6:                                        ; preds = %if.end6.6, %cleanup.5.cleanup.6_crit_edge
  %count.1.6 = phi i32 [ %inc.6, %if.end6.6 ], [ %count.1.5, %cleanup.5.cleanup.6_crit_edge ]
  %21 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drm_dev, align 8
  %call.7 = tail call ptr @drm_mode_duplicate(ptr noundef %22, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 8)) #6
  %tobool.not.7 = icmp eq ptr %call.7, null
  br i1 %tobool.not.7, label %cleanup.6.cleanup.7_crit_edge, label %if.end6.7

cleanup.6.cleanup.7_crit_edge:                    ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.7

if.end6.7:                                        ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.7) #6
  %inc.7 = add i32 %count.1.6, 1
  br label %cleanup.7

cleanup.7:                                        ; preds = %if.end6.7, %cleanup.6.cleanup.7_crit_edge
  %count.1.7 = phi i32 [ %inc.7, %if.end6.7 ], [ %count.1.6, %cleanup.6.cleanup.7_crit_edge ]
  %23 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drm_dev, align 8
  %call.8 = tail call ptr @drm_mode_duplicate(ptr noundef %24, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 9)) #6
  %tobool.not.8 = icmp eq ptr %call.8, null
  br i1 %tobool.not.8, label %cleanup.7.cleanup.8_crit_edge, label %if.end6.8

cleanup.7.cleanup.8_crit_edge:                    ; preds = %cleanup.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.8

if.end6.8:                                        ; preds = %cleanup.7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.8) #6
  %inc.8 = add i32 %count.1.7, 1
  br label %cleanup.8

cleanup.8:                                        ; preds = %if.end6.8, %cleanup.7.cleanup.8_crit_edge
  %count.1.8 = phi i32 [ %inc.8, %if.end6.8 ], [ %count.1.7, %cleanup.7.cleanup.8_crit_edge ]
  ret i32 %count.1.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hda_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr noundef %mode) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #6
  %hda1 = getelementptr inbounds %struct.sti_hda_connector, ptr %connector, i32 0, i32 2
  %2 = ptrtoint ptr %hda1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hda1, align 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %4, i32 112)
  %call = call fastcc zeroext i1 @hda_get_mode_idx(ptr noundef byval(%struct.drm_display_mode) align 4 %mode, ptr noundef nonnull %idx)
  br i1 %call, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %add = add i32 %mul, 50
  %sub = add i32 %mul, -50
  %clk_pix = getelementptr inbounds %struct.sti_hda, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_pix, align 4
  %call2 = tail call i32 @clk_round_rate(ptr noundef %6, i32 noundef %mul) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef %mul, i32 noundef %call2) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %sub)
  %cmp = icmp slt i32 %call2, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %add)
  %cmp3 = icmp sgt i32 %call2, %add
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %if.then4, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %mul) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then4 ], [ -2, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 808, i32 11}
!2 = !{ptr @sti_hda_driver, !3, !"sti_hda_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 806, i32 24}
!4 = !{ptr @__UNIQUE_ID_author307, !5, !"__UNIQUE_ID_author307", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 816, i32 1}
!6 = !{ptr @__UNIQUE_ID_description308, !7, !"__UNIQUE_ID_description308", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 817, i32 1}
!8 = !{ptr @__UNIQUE_ID_file309, !9, !"__UNIQUE_ID_file309", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 818, i32 1}
!10 = !{ptr @__UNIQUE_ID_license310, !9, !"__UNIQUE_ID_license310", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 744, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sti_hda_probe._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @sti_hda_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 753, i32 59}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 755, i32 3}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 763, i32 4}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 771, i32 3}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 776, i32 35}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 778, i32 3}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 782, i32 37}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 784, i32 3}
!33 = !{ptr @sti_hda_ops, !34, !"sti_hda_ops", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 733, i32 35}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 715, i32 3}
!37 = !{ptr @sti_hda_bridge_funcs, !38, !"sti_hda_bridge_funcs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 565, i32 38}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 409, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 529, i32 3}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 550, i32 3}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 556, i32 3}
!47 = !{ptr @hda_supported_modes, !48, !"hda_supported_modes", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 181, i32 42}
!49 = !{ptr @AWGi_1080p_30, !50, !"AWGi_1080p_30", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 120, i32 12}
!51 = !{ptr @AWGi_1080p_24, !52, !"AWGi_1080p_24", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 144, i32 12}
!53 = !{ptr @AWGi_1080p_25, !54, !"AWGi_1080p_25", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 132, i32 12}
!55 = !{ptr @AWGi_720p_60, !56, !"AWGi_720p_60", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 109, i32 12}
!57 = !{ptr @AWGi_720p_50, !58, !"AWGi_720p_50", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 98, i32 12}
!59 = !{ptr @AWGi_720x480p_60, !60, !"AWGi_720x480p_60", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 156, i32 12}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 441, i32 3}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 443, i32 3}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 452, i32 3}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 471, i32 3}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 474, i32 3}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 477, i32 2}
!73 = !{ptr @coef_y_alt_2x, !74, !"coef_y_alt_2x", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 75, i32 12}
!75 = !{ptr @coef_c_alt_2x, !76, !"coef_c_alt_2x", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 81, i32 12}
!77 = !{ptr @coef_yc_4x, !78, !"coef_yc_4x", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 89, i32 12}
!79 = !{ptr @sti_hda_connector_funcs, !80, !"sti_hda_connector_funcs", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 650, i32 41}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 367, i32 4}
!83 = !{ptr @hda_debugfs_files, !84, !"hda_debugfs_files", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 366, i32 29}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 350, i32 16}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 351, i32 2}
!89 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 353, i32 2}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 354, i32 2}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 355, i32 2}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 356, i32 2}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 357, i32 2}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 358, i32 2}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 320, i32 14}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 321, i32 39}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 321, i32 51}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 328, i32 14}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 331, i32 18}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 332, i32 17}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 340, i32 16}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 340, i32 38}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 341, i32 14}
!120 = !{ptr @sti_hda_connector_helper_funcs, !121, !"sti_hda_connector_helper_funcs", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 634, i32 35}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 620, i32 3}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 624, i32 4}
!126 = !{ptr @hda_of_match, !127, !"hda_of_match", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/sti/sti_hda.c", i32 799, i32 34}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i64 2054408}
!138 = !{i64 2156687495}
!139 = !{i64 2156687876}
!140 = !{i64 2053990}
!141 = !{i8 0, i8 2}
!142 = !{i64 2156686157}
!143 = !{i64 2156686372}
!144 = !{!"auto-init"}
!145 = !{i64 2156689704}
!146 = !{i64 2156690201}
!147 = !{i64 2156690801}
!148 = !{i64 2156691402}
!149 = !{i64 2156692003}
!150 = !{i64 2156692599}
!151 = !{i64 2156693196}
!152 = !{i64 2156693793}
!153 = !{i64 2156688601}
!154 = !{i64 2156689031}
