; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/i2c/tda998x_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/i2c/tda998x_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.tda998x_audio_route = type { i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tda998x_priv = type { ptr, ptr, %struct.mutex, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, %struct.tda998x_audio_settings, ptr, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.drm_encoder, %struct.drm_bridge, %struct.drm_connector, [2 x i8], %struct.tda9950_glue, ptr, ptr }
%struct.tda998x_audio_settings = type { ptr, %struct.hdmi_audio_infoframe, i32, [5 x i8], i8, i8, i8 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.tda9950_glue = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.tda998x_encoder_params = type { i24, %struct.tda998x_audio_params }
%struct.tda998x_audio_params = type { i8, i8, i32, i32, %struct.hdmi_audio_infoframe, [5 x i8] }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_tda998x__320_2109_tda998x_driver_init6 = internal global ptr @tda998x_driver_init, section ".initcall6.init", align 4
@tda998x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tda998x_probe, ptr @tda998x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tda998x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tda998x_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tda998x_driver_exit = internal global ptr @tda998x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [46 x i8] c"tda998x.author=Rob Clark <robdclark@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [60 x i8] c"tda998x.description=NXP Semiconductors TDA998X HDMI Encoder\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [41 x i8] c"tda998x.file=drivers/gpu/drm/i2c/tda998x\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [20 x i8] c"tda998x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda998x\00", [24 x i8] zeroinitializer }, align 32
@tda998x_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,tda998x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tda998x_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tda998x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tda998x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2064, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"adapter does not support I2C\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda998x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/i2c/tda998x_drv.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tda998x_probe._entry_ptr = internal global ptr @tda998x_probe._entry, section ".printk_index", align 4
@tda998x_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @tda998x_bind, ptr @tda998x_unbind }, [24 x i8] zeroinitializer }, align 32
@tda998x_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@tda998x_create.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->audio_mutex\00", [45 x i8] zeroinitializer }, align 32
@tda998x_create.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->edid_mutex\00", [46 x i8] zeroinitializer }, align 32
@tda998x_create.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&priv->edid_delay_waitq\00", [40 x i8] zeroinitializer }, align 32
@tda998x_create.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&priv->edid_delay_timer)\00", [38 x i8] zeroinitializer }, align 32
@tda998x_create.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&priv->detect_work)\00", [58 x i8] zeroinitializer }, align 32
@tda998x_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1848, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read version: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda998x_create\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tda998x_create._entry_ptr = internal global ptr @tda998x_create._entry, section ".printk_index", align 4
@tda998x_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1854, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tda998x_create._entry_ptr.21 = internal global ptr @tda998x_create._entry.20, section ".printk_index", align 4
@tda998x_create._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 1865, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"found TDA9989 n2\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tda998x_create._entry_ptr.25 = internal global ptr @tda998x_create._entry.22, section ".printk_index", align 4
@tda998x_create._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.3, i32 1868, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"found TDA19989\00", [17 x i8] zeroinitializer }, align 32
@tda998x_create._entry_ptr.28 = internal global ptr @tda998x_create._entry.26, section ".printk_index", align 4
@tda998x_create._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.3, i32 1871, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"found TDA19989 n2\00", [46 x i8] zeroinitializer }, align 32
@tda998x_create._entry_ptr.31 = internal global ptr @tda998x_create._entry.29, section ".printk_index", align 4
@tda998x_create._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.3, i32 1874, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"found TDA19988\00", [17 x i8] zeroinitializer }, align 32
@tda998x_create._entry_ptr.34 = internal global ptr @tda998x_create._entry.32, section ".printk_index", align 4
@tda998x_create._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.18, ptr @.str.3, i32 1877, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"found unsupported device: %04x\0A\00", [32 x i8] zeroinitializer }, align 32
@tda998x_create._entry_ptr.37 = internal global ptr @tda998x_create._entry.35, section ".printk_index", align 4
@tda998x_create.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->wq_edid\00", [17 x i8] zeroinitializer }, align 32
@tda998x_create._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.18, ptr @.str.3, i32 1921, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request IRQ#%u: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tda998x_create._entry_ptr.42 = internal global ptr @tda998x_create._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9950\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"video-ports\00", [20 x i8] zeroinitializer }, align 32
@tda998x_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @tda998x_bridge_attach, ptr @tda998x_bridge_detach, ptr @tda998x_bridge_mode_valid, ptr null, ptr @tda998x_bridge_disable, ptr null, ptr @tda998x_bridge_mode_set, ptr null, ptr @tda998x_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cec_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 418, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error %d writing to cec:0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cec_write\00", [22 x i8] zeroinitializer }, align 32
@cec_write._entry_ptr = internal global ptr @cec_write._entry, section ".printk_index", align 4
@reg_read_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 600, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error %d reading from 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_read_range\00", [17 x i8] zeroinitializer }, align 32
@reg_read_range._entry_ptr = internal global ptr @reg_read_range._entry, section ".printk_index", align 4
@set_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 568, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %04x err %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_page\00", [23 x i8] zeroinitializer }, align 32
@set_page._entry_ptr = internal global ptr @set_page._entry, section ".printk_index", align 4
@reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 663, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error %d writing to 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_write\00", [22 x i8] zeroinitializer }, align 32
@reg_write._entry_ptr = internal global ptr @reg_write._entry, section ".printk_index", align 4
@cec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 442, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error %d reading from cec:0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cec_read\00", [23 x i8] zeroinitializer }, align 32
@cec_read._entry_ptr = internal global ptr @cec_read._entry, section ".printk_index", align 4
@.str.55 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"tda irq sta %02x cec %02x lvl %02x f0 %02x f1 %02x f2 %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nxp,calib\00", [22 x i8] zeroinitializer }, align 32
@tda998x_cec_hook_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get calibration gpio: %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda998x_cec_hook_init\00", [42 x i8] zeroinitializer }, align 32
@tda998x_cec_hook_init._entry_ptr = internal global ptr @tda998x_cec_hook_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audio-ports\00", [20 x i8] zeroinitializer }, align 32
@tda998x_get_audio_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 1704, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Bad number of elements in audio-ports dt-property\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tda998x_get_audio_ports\00", [40 x i8] zeroinitializer }, align 32
@tda998x_get_audio_ports._entry_ptr = internal global ptr @tda998x_get_audio_ports._entry, section ".printk_index", align 4
@tda998x_get_audio_ports._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 1724, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad audio format %u\0A\00", [43 x i8] zeroinitializer }, align 32
@tda998x_get_audio_ports._entry_ptr.64 = internal global ptr @tda998x_get_audio_ports._entry.62, section ".printk_index", align 4
@tda998x_get_audio_ports._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.3, i32 1729, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid zero port config\0A\00", [38 x i8] zeroinitializer }, align 32
@tda998x_get_audio_ports._entry_ptr.67 = internal global ptr @tda998x_get_audio_ports._entry.65, section ".printk_index", align 4
@tda998x_get_audio_ports._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.3, i32 1736, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s format already configured\0A\00", [34 x i8] zeroinitializer }, align 32
@tda998x_get_audio_ports._entry_ptr.70 = internal global ptr @tda998x_get_audio_ports._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPDIF\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2S\00", [28 x i8] zeroinitializer }, align 32
@audio_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr null, ptr @tda998x_audio_hw_params, ptr null, ptr @tda998x_audio_shutdown, ptr @tda998x_audio_mute_stream, ptr @tda998x_audio_get_eld, ptr null, ptr null, i8 -128 }, [60 x i8] zeroinitializer }, align 32
@__const.tda998x_audio_codec_init.codec_data = private unnamed_addr constant { ptr, i8, [3 x i8], i32, ptr } { ptr @audio_codec_ops, i8 0, [3 x i8] zeroinitializer, i32 2, ptr null }, align 4
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@tda998x_audio_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1092, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid format %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tda998x_audio_hw_params\00", [40 x i8] zeroinitializer }, align 32
@tda998x_audio_hw_params._entry_ptr = internal global ptr @tda998x_audio_hw_params._entry, section ".printk_index", align 4
@tda998x_audio_hw_params._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.3, i32 1102, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Bad flags %d %d %d %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tda998x_audio_hw_params._entry_ptr.78 = internal global ptr @tda998x_audio_hw_params._entry.76, section ".printk_index", align 4
@tda998x_audio_route = internal constant { [2 x %struct.tda998x_audio_route], [26 x i8] } { [2 x %struct.tda998x_audio_route] [%struct.tda998x_audio_route { i8 1, i8 100, i8 8 }, %struct.tda998x_audio_route { i8 0, i8 64, i8 2 }], [26 x i8] zeroinitializer }, align 32
@tda998x_derive_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 907, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no audio configuration found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda998x_derive_routing\00", [41 x i8] zeroinitializer }, align 32
@tda998x_derive_routing._entry_ptr = internal global ptr @tda998x_derive_routing._entry, section ".printk_index", align 4
@tda998x_derive_cts_n._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 986, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported bclk ratio %ufs\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda998x_derive_cts_n\00", [43 x i8] zeroinitializer }, align 32
@tda998x_derive_cts_n._entry_ptr = internal global ptr @tda998x_derive_cts_n._entry, section ".printk_index", align 4
@tda998x_get_adiv.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 0, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda998x_get_adiv\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ser_clk=%luHz fs=%uHz min_aclk=%luHz adiv=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@reg_write_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 618, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fixed write buffer too small (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_write_range\00", [16 x i8] zeroinitializer }, align 32
@reg_write_range._entry_ptr = internal global ptr @reg_write_range._entry, section ".printk_index", align 4
@reg_write_range._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.86, ptr @.str.3, i32 632, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@reg_write_range._entry_ptr.88 = internal global ptr @reg_write_range._entry.87, section ".printk_index", align 4
@tda998x_write_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 838, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"hdmi_infoframe_pack() type=0x%02x failed: %zd\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda998x_write_if\00", [47 x i8] zeroinitializer }, align 32
@tda998x_write_if._entry_ptr = internal global ptr @tda998x_write_if._entry, section ".printk_index", align 4
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Fix bridge driver to make connector optional!\00", [50 x i8] zeroinitializer }, align 32
@tda998x_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @tda998x_connector_get_modes, ptr null, ptr null, ptr null, ptr @tda998x_connector_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tda998x_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @tda998x_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @tda998x_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tda998x_connector_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 1303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to read EDID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tda998x_connector_get_modes\00", [36 x i8] zeroinitializer }, align 32
@tda998x_connector_get_modes._entry_ptr = internal global ptr @tda998x_connector_get_modes._entry, section ".printk_index", align 4
@read_edid_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1245, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"read edid wait err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read_edid_block\00", [16 x i8] zeroinitializer }, align 32
@read_edid_block._entry_ptr = internal global ptr @read_edid_block._entry, section ".printk_index", align 4
@read_edid_block._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 1261, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read edid timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@read_edid_block._entry_ptr.98 = internal global ptr @read_edid_block._entry.96, section ".printk_index", align 4
@read_edid_block._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.3, i32 1269, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read edid block %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@read_edid_block._entry_ptr.101 = internal global ptr @read_edid_block._entry.99, section ".printk_index", align 4
@tda998x_bridge_mode_set.tda998x_full_to_limited_range = internal global { [31 x i8], [33 x i8] } { [31 x i8] c"\02\00\00\00\00\00\00\03o\00\00\00\00\00\00\03o\00\00\00\00\00\00\03o\00@\00@\00@", [33 x i8] zeroinitializer }, align 32
@reg_write16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.102, ptr @.str.3, i32 682, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_write16\00", [20 x i8] zeroinitializer }, align 32
@reg_write16._entry_ptr = internal global ptr @reg_write16._entry, section ".printk_index", align 4
@tda998x_encoder_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 2015, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Falling back to first CRTC\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda998x_encoder_init\00", [43 x i8] zeroinitializer }, align 32
@tda998x_encoder_init._entry_ptr = internal global ptr @tda998x_encoder_init._entry, section ".printk_index", align 4
@switch.table.tda998x_audio_hw_params = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\03\02\00\00\00\00", [25 x i8] zeroinitializer }, align 32
@switch.table.tda998x_audio_hw_params.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0123000\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 257, i64 513, i64 514, i64 769]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.107 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7]
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"tda998x_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 2099, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 2103, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"tda998x_dt_ids\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 2086, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"tda998x_ids\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 2093, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 2064, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"tda998x_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 2053, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1822, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1823, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1824, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1826, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1827, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1828, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1848, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1854, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1865, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1868, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1871, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1874, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1877, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1908, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1920, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1951, i32 25 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1967, i32 34 }
@___asan_gen_.243 = private unnamed_addr constant [21 x i8] c"tda998x_bridge_funcs\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1679, i32 38 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 417, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 600, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 567, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 663, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 441, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 801, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 520, i32 38 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 522, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1697, i32 34 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1703, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1723, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1729, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1734, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant [16 x i8] c"audio_codec_ops\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1162, i32 36 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1184, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1092, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1099, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c"tda998x_audio_route\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 886, i32 41 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 907, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 985, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 933, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 617, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 632, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 836, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1368, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant [31 x i8] c"tda998x_connector_helper_funcs\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1329, i32 41 }
@___asan_gen_.417 = private unnamed_addr constant [24 x i8] c"tda998x_connector_funcs\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1207, i32 41 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1303, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1245, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1261, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1268, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant [30 x i8] c"tda998x_full_to_limited_range\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1572, i32 13 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 682, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.466 = private constant [37 x i8] c"../drivers/gpu/drm/i2c/tda998x_drv.c\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 2015, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant [37 x i8] c"switch.table.tda998x_audio_hw_params\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [41 x i8] c"switch.table.tda998x_audio_hw_params.105\00", align 1
@llvm.compiler.used = appending global [161 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_tda998x_driver_exit, ptr @__initcall__kmod_tda998x__320_2109_tda998x_driver_init6, ptr @cec_read._entry, ptr @cec_read._entry_ptr, ptr @cec_write._entry, ptr @cec_write._entry_ptr, ptr @read_edid_block._entry, ptr @read_edid_block._entry.96, ptr @read_edid_block._entry.99, ptr @read_edid_block._entry_ptr, ptr @read_edid_block._entry_ptr.101, ptr @read_edid_block._entry_ptr.98, ptr @reg_read_range._entry, ptr @reg_read_range._entry_ptr, ptr @reg_write._entry, ptr @reg_write._entry_ptr, ptr @reg_write16._entry, ptr @reg_write16._entry_ptr, ptr @reg_write_range._entry, ptr @reg_write_range._entry.87, ptr @reg_write_range._entry_ptr, ptr @reg_write_range._entry_ptr.88, ptr @set_page._entry, ptr @set_page._entry_ptr, ptr @tda998x_audio_hw_params._entry, ptr @tda998x_audio_hw_params._entry.76, ptr @tda998x_audio_hw_params._entry_ptr, ptr @tda998x_audio_hw_params._entry_ptr.78, ptr @tda998x_cec_hook_init._entry, ptr @tda998x_cec_hook_init._entry_ptr, ptr @tda998x_connector_get_modes._entry, ptr @tda998x_connector_get_modes._entry_ptr, ptr @tda998x_create._entry, ptr @tda998x_create._entry.20, ptr @tda998x_create._entry.22, ptr @tda998x_create._entry.26, ptr @tda998x_create._entry.29, ptr @tda998x_create._entry.32, ptr @tda998x_create._entry.35, ptr @tda998x_create._entry.40, ptr @tda998x_create._entry_ptr, ptr @tda998x_create._entry_ptr.21, ptr @tda998x_create._entry_ptr.25, ptr @tda998x_create._entry_ptr.28, ptr @tda998x_create._entry_ptr.31, ptr @tda998x_create._entry_ptr.34, ptr @tda998x_create._entry_ptr.37, ptr @tda998x_create._entry_ptr.42, ptr @tda998x_derive_cts_n._entry, ptr @tda998x_derive_cts_n._entry_ptr, ptr @tda998x_derive_routing._entry, ptr @tda998x_derive_routing._entry_ptr, ptr @tda998x_driver_exit, ptr @tda998x_encoder_init._entry, ptr @tda998x_encoder_init._entry_ptr, ptr @tda998x_get_audio_ports._entry, ptr @tda998x_get_audio_ports._entry.62, ptr @tda998x_get_audio_ports._entry.65, ptr @tda998x_get_audio_ports._entry.68, ptr @tda998x_get_audio_ports._entry_ptr, ptr @tda998x_get_audio_ports._entry_ptr.64, ptr @tda998x_get_audio_ports._entry_ptr.67, ptr @tda998x_get_audio_ports._entry_ptr.70, ptr @tda998x_probe._entry, ptr @tda998x_probe._entry_ptr, ptr @tda998x_write_if._entry, ptr @tda998x_write_if._entry_ptr, ptr @tda998x_driver, ptr @.str, ptr @tda998x_dt_ids, ptr @tda998x_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tda998x_ops, ptr @tda998x_create.__key, ptr @.str.6, ptr @tda998x_create.__key.7, ptr @.str.8, ptr @tda998x_create.__key.9, ptr @.str.10, ptr @tda998x_create.__key.11, ptr @.str.12, ptr @tda998x_create.__key.13, ptr @.str.14, ptr @tda998x_create.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @tda998x_create.__key.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @tda998x_bridge_funcs, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @audio_codec_ops, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @tda998x_audio_route, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @tda998x_connector_helper_funcs, ptr @tda998x_connector_funcs, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @tda998x_bridge_mode_set.tda998x_full_to_limited_range, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @switch.table.tda998x_audio_hw_params, ptr @switch.table.tda998x_audio_hw_params.105], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_create._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_read_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_cec_hook_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_get_audio_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_get_audio_ports._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_get_audio_ports._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_get_audio_ports._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_audio_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_audio_hw_params._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_audio_route to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_derive_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_derive_cts_n._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_write_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_write_range._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_write_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_connector_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_edid_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_edid_block._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_edid_block._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_bridge_mode_set.tda998x_full_to_limited_range to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_write16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda998x_encoder_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda998x_audio_hw_params to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda998x_audio_hw_params.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tda998x_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @tda998x_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i304.i = alloca i8, align 1
  %val.i297.i = alloca i8, align 1
  %val.i290.i = alloca i8, align 1
  %val.i283.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %val.i.i18.i.i = alloca i8, align 1
  %val.i.i.i.i = alloca i8, align 1
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %cec_info.i = alloca %struct.i2c_board_info, align 4
  %video.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cec_info.i) #8
  %8 = call ptr @memset(ptr %cec_info.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %video.i) #8
  %9 = ptrtoint ptr %video.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %video.i, align 4, !annotation !230
  %call.i.i19 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1992, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i19, null
  br i1 %tobool.not.i, label %if.end.tda998x_create.exit.thread_crit_edge, label %if.end.i

if.end.tda998x_create.exit.thread_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_create.exit.thread

if.end.i:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i19, ptr %driver_data.i.i, align 4
  %mutex.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @tda998x_create.__key) #8
  %audio_mutex.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %audio_mutex.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @tda998x_create.__key.7) #8
  %edid_mutex.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %edid_mutex.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @tda998x_create.__key.9) #8
  %bridge.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 25
  %list.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 25, i32 5
  %11 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 25, i32 5, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list.i, ptr %prev.i.i, align 4
  %edid_delay_waitq.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %edid_delay_waitq.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @tda998x_create.__key.11) #8
  %edid_delay_timer.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 21
  tail call void @init_timer_key(ptr noundef %edid_delay_timer.i, ptr noundef nonnull @tda998x_edid_delay_done, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @tda998x_create.__key.13) #8
  %detect_work.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 20
  tail call void @__init_work(ptr noundef %detect_work.i, i32 noundef 0) #8
  %13 = ptrtoint ptr %detect_work.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %detect_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @tda998x_create.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry18.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 20, i32 1
  %14 = ptrtoint ptr %entry18.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry18.i, ptr %entry18.i, align 4
  %prev.i279.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 20, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i279.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry18.i, ptr %prev.i279.i, align 4
  %func.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tda998x_detect_work, ptr %func.i, align 4
  %vip_cntrl_0.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 10
  %17 = ptrtoint ptr %vip_cntrl_0.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 35, ptr %vip_cntrl_0.i, align 8
  %vip_cntrl_1.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 11
  %18 = ptrtoint ptr %vip_cntrl_1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %vip_cntrl_1.i, align 1
  %vip_cntrl_2.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 12
  %19 = ptrtoint ptr %vip_cntrl_2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 69, ptr %vip_cntrl_2.i, align 2
  %addr.i = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 1
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i, align 2
  %22 = trunc i16 %21 to i8
  %23 = and i8 %22, 3
  %conv22.i = or i8 %23, 52
  %cec_addr.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 4
  %24 = ptrtoint ptr %cec_addr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv22.i, ptr %cec_addr.i, align 2
  %current_page.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 5
  %25 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %current_page.i, align 1
  %hdmi.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 1
  %26 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %client, ptr %hdmi.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %27 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %buf.i.i, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 6, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %30 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 196607, ptr %30, align 4
  %conv2.i.i = zext i8 %conv22.i to i16
  %32 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv2.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i.i, align 2
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i.i, ptr %buf3.i.i, align 4
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  %call.i280.i = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280.i)
  %cmp.i.i = icmp slt i32 %call.i280.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.cec_write.exit.i_crit_edge

if.end.i.cec_write.exit.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hdmi.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.45, i32 noundef %call.i280.i, i32 noundef 255) #11
  br label %cec_write.exit.i

cec_write.exit.i:                                 ; preds = %do.end.i.i, %if.end.i.cec_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 10, i8 noundef zeroext 3) #8
  call void @msleep(i32 noundef 50) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 10, i8 noundef zeroext 0) #8
  call void @msleep(i32 noundef 50) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i.i) #8
  %39 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %val.i.i.i.i, align 1
  %call.i.i.i.i = call fastcc i32 @reg_read_range(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 1, ptr noundef nonnull %val.i.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %reg_read.exit.i.i.i, label %if.then.i.i.i

reg_read.exit.i.i.i:                              ; preds = %cec_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i.i) #8
  br label %reg_set.exit.i.i

if.then.i.i.i:                                    ; preds = %cec_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %val.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i.i) #8
  %conv1.i.i.i = or i8 %41, 1
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 1, i8 noundef zeroext %conv1.i.i.i) #8
  br label %reg_set.exit.i.i

reg_set.exit.i.i:                                 ; preds = %if.then.i.i.i, %reg_read.exit.i.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i18.i.i) #8
  %42 = ptrtoint ptr %val.i.i18.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %val.i.i18.i.i, align 1
  %call.i.i19.i.i = call fastcc i32 @reg_read_range(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 1, ptr noundef nonnull %val.i.i18.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19.i.i)
  %cmp.i.i20.i.i = icmp slt i32 %call.i.i19.i.i, 0
  br i1 %cmp.i.i20.i.i, label %reg_read.exit.i21.i.i, label %if.then.i22.i.i

reg_read.exit.i21.i.i:                            ; preds = %reg_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i18.i.i) #8
  br label %tda998x_reset.exit.i

if.then.i22.i.i:                                  ; preds = %reg_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %val.i.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val.i.i18.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i18.i.i) #8
  %and.i.i.i = and i8 %44, -2
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 1, i8 noundef zeroext %and.i.i.i) #8
  br label %tda998x_reset.exit.i

tda998x_reset.exit.i:                             ; preds = %if.then.i22.i.i, %reg_read.exit.i21.i.i
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 512, i8 noundef zeroext 0) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 513, i8 noundef zeroext 1) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 514, i8 noundef zeroext 0) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 515, i8 noundef zeroext 0) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 516, i8 noundef zeroext 0) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 517, i8 noundef zeroext 0) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 526, i8 noundef zeroext 3) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 529, i8 noundef zeroext 9) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 519, i8 noundef zeroext -6) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 520, i8 noundef zeroext 0) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 521, i8 noundef zeroext 91) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 522, i8 noundef zeroext 0) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 518, i8 noundef zeroext 16) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 39, i8 noundef zeroext 36) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %45 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %val.i.i, align 1
  %call.i281.i = call fastcc i32 @reg_read_range(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 0, ptr noundef nonnull %val.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281.i)
  %cmp.i282.i = icmp slt i32 %call.i281.i, 0
  br i1 %cmp.i282.i, label %reg_read.exit.thread.i, label %reg_read.exit.i

reg_read.exit.thread.i:                           ; preds = %tda998x_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call.i281.i) #11
  br label %tda998x_create.exit.thread

reg_read.exit.i:                                  ; preds = %tda998x_reset.exit.i
  %46 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i283.i) #8
  %48 = ptrtoint ptr %val.i283.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %val.i283.i, align 1
  %call.i284.i = call fastcc i32 @reg_read_range(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 2, ptr noundef nonnull %val.i283.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284.i)
  %cmp.i285.i = icmp slt i32 %call.i284.i, 0
  br i1 %cmp.i285.i, label %reg_read.exit289.thread.i, label %reg_read.exit289.i

reg_read.exit289.thread.i:                        ; preds = %reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i283.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call.i284.i) #11
  br label %tda998x_create.exit.thread

reg_read.exit289.i:                               ; preds = %reg_read.exit.i
  %49 = ptrtoint ptr %val.i283.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %val.i283.i, align 1
  %conv.i286.i = zext i8 %50 to i16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i283.i) #8
  %shl.i = shl nuw i16 %conv.i286.i, 8
  %rev.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 3
  %51 = and i8 %47, -49
  %conv.i.masked.i = zext i8 %51 to i16
  %conv42.i = or i16 %shl.i, %conv.i.masked.i
  %52 = ptrtoint ptr %rev.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv42.i, ptr %rev.i, align 4
  %53 = zext i16 %conv42.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i16 %conv42.i, label %do.end62.i [
    i16 257, label %reg_read.exit289.i.sw.epilog.i_crit_edge
    i16 513, label %do.end51.i
    i16 514, label %do.end55.i
    i16 769, label %do.end59.i
  ]

reg_read.exit289.i.sw.epilog.i_crit_edge:         ; preds = %reg_read.exit289.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end51.i:                                       ; preds = %reg_read.exit289.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end55.i:                                       ; preds = %reg_read.exit289.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end59.i:                                       ; preds = %reg_read.exit289.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end62.i:                                       ; preds = %reg_read.exit289.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv44.i = zext i16 %conv42.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %conv44.i) #11
  br label %tda998x_create.exit.thread

sw.epilog.i:                                      ; preds = %do.end59.i, %do.end55.i, %do.end51.i, %reg_read.exit289.i.sw.epilog.i_crit_edge
  %.str.33.sink.i = phi ptr [ @.str.33, %do.end59.i ], [ @.str.30, %do.end55.i ], [ @.str.27, %do.end51.i ], [ @.str.23, %reg_read.exit289.i.sw.epilog.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.33.sink.i) #11
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 11, i8 noundef zeroext 0) #8
  call fastcc void @reg_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 4762, i8 noundef zeroext 39) #8
  %54 = ptrtoint ptr %rev.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 513, i16 %55)
  %cmp67.i = icmp eq i16 %55, 513
  br i1 %cmp67.i, label %if.then69.i, label %sw.epilog.i.if.end70.i_crit_edge

sw.epilog.i.if.end70.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i

if.then69.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @reg_set(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 13, i8 noundef zeroext 1) #8
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then69.i, %sw.epilog.i.if.end70.i_crit_edge
  call fastcc void @cec_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 251, i8 noundef zeroext -126) #8
  call fastcc void @cec_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 252, i8 noundef zeroext 0) #8
  %call71.i = call fastcc zeroext i8 @cec_read(ptr noundef nonnull %call.i.i19, i8 noundef zeroext -3) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i290.i) #8
  %56 = ptrtoint ptr %val.i290.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %val.i290.i, align 1
  %call.i291.i = call fastcc i32 @reg_read_range(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 15, ptr noundef nonnull %val.i290.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i290.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i297.i) #8
  %57 = ptrtoint ptr %val.i297.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %val.i297.i, align 1
  %call.i298.i = call fastcc i32 @reg_read_range(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 16, ptr noundef nonnull %val.i297.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i297.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i304.i) #8
  %58 = ptrtoint ptr %val.i304.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %val.i304.i, align 1
  %call.i305.i = call fastcc i32 @reg_read_range(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 17, ptr noundef nonnull %val.i304.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i304.i) #8
  %irq.i = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 6
  %59 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool75.not.i = icmp eq i32 %60, 0
  br i1 %tobool75.not.i, label %if.end70.i.if.end94.i_crit_edge, label %if.then76.i

if.end70.i.if.end94.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i

if.then76.i:                                      ; preds = %if.end70.i
  %wq_edid.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 18
  call void @__init_waitqueue_head(ptr noundef %wq_edid.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @tda998x_create.__key.38) #8
  %61 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq.i, align 4
  %call81.i = call ptr @irq_get_irq_data(i32 noundef %62) #8
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call81.i, i32 0, i32 3
  %63 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %common.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %and.i.i = and i32 %66, 15
  %irq_flags83.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 28, i32 1
  %67 = ptrtoint ptr %irq_flags83.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and.i.i, ptr %irq_flags83.i, align 4
  %or84.i = or i32 %and.i.i, 8320
  %68 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq.i, align 4
  %call86.i = call i32 @request_threaded_irq(i32 noundef %69, ptr noundef null, ptr noundef nonnull @tda998x_irq_thread, i32 noundef %or84.i, ptr noundef nonnull @.str, ptr noundef nonnull %call.i.i19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @cec_write(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 252, i8 noundef zeroext 2) #8
  br label %if.end94.i

cleanup.i:                                        ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %71, i32 noundef %call86.i) #11
  br label %tda998x_create.exit.thread

if.end94.i:                                       ; preds = %cleanup.thread.i, %if.end70.i.if.end94.i_crit_edge
  %call95.i = call ptr @cec_notifier_conn_register(ptr noundef %dev, ptr noundef null, ptr noundef null) #8
  %cec_notify.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 30
  %72 = ptrtoint ptr %cec_notify.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call95.i, ptr %cec_notify.i, align 4
  %tobool97.not.i = icmp eq ptr %call95.i, null
  br i1 %tobool97.not.i, label %if.end94.i.tda998x_create.exit.thread26_crit_edge, label %if.end99.i

if.end94.i.tda998x_create.exit.thread26_crit_edge: ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_create.exit.thread26

if.end99.i:                                       ; preds = %if.end94.i
  %cec_glue100.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 28
  %73 = ptrtoint ptr %cec_glue100.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %dev, ptr %cec_glue100.i, align 4
  %data102.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 28, i32 2
  %74 = ptrtoint ptr %data102.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i19, ptr %data102.i, align 4
  %init.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 28, i32 3
  %75 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @tda998x_cec_hook_init, ptr %init.i, align 4
  %exit.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 28, i32 4
  %76 = ptrtoint ptr %exit.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @tda998x_cec_hook_exit, ptr %exit.i, align 4
  %open.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 28, i32 5
  %77 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @tda998x_cec_hook_open, ptr %open.i, align 4
  %release.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 28, i32 6
  %78 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @tda998x_cec_hook_release, ptr %release.i, align 4
  %79 = call ptr @memset(ptr %cec_info.i, i32 0, i32 56)
  %call107.i = call i32 @strlcpy(ptr noundef nonnull %cec_info.i, ptr noundef nonnull @.str.43, i32 noundef 20) #8
  %80 = ptrtoint ptr %cec_addr.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cec_addr.i, align 2
  %conv109.i = zext i8 %81 to i16
  %addr110.i = getelementptr inbounds %struct.i2c_board_info, ptr %cec_info.i, i32 0, i32 2
  %82 = ptrtoint ptr %addr110.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv109.i, ptr %addr110.i, align 2
  %platform_data.i = getelementptr inbounds %struct.i2c_board_info, ptr %cec_info.i, i32 0, i32 4
  %83 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %cec_glue100.i, ptr %platform_data.i, align 4
  %84 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq.i, align 4
  %irq113.i = getelementptr inbounds %struct.i2c_board_info, ptr %cec_info.i, i32 0, i32 10
  %86 = ptrtoint ptr %irq113.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %irq113.i, align 4
  %87 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %adapter, align 8
  %call114.i = call ptr @i2c_new_client_device(ptr noundef %88, ptr noundef nonnull %cec_info.i) #8
  %89 = ptrtoint ptr %call.i.i19 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call114.i, ptr %call.i.i19, align 8
  %cmp.i311.i = icmp ugt ptr %call114.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i311.i, label %tda998x_create.exit, label %if.end120.i

if.end120.i:                                      ; preds = %if.end99.i
  call fastcc void @reg_set(ptr noundef nonnull %call.i.i19, i16 noundef zeroext 17, i8 noundef zeroext 2) #8
  %tobool121.not.i = icmp eq ptr %7, null
  br i1 %tobool121.not.i, label %if.else.i, label %if.then122.i

if.then122.i:                                     ; preds = %if.end120.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.44, ptr noundef nonnull %video.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp124.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp124.i, label %if.then126.i, label %if.then122.i.if.end134.i_crit_edge

if.then122.i.if.end134.i_crit_edge:               ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134.i

if.then126.i:                                     ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %video.i, align 4
  %shr.i = lshr i32 %91, 16
  %conv127.i = trunc i32 %shr.i to i8
  %92 = ptrtoint ptr %vip_cntrl_0.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv127.i, ptr %vip_cntrl_0.i, align 8
  %shr129.i = lshr i32 %91, 8
  %conv130.i = trunc i32 %shr129.i to i8
  %93 = ptrtoint ptr %vip_cntrl_1.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv130.i, ptr %vip_cntrl_1.i, align 1
  %conv132.i = trunc i32 %91 to i8
  %94 = ptrtoint ptr %vip_cntrl_2.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv132.i, ptr %vip_cntrl_2.i, align 2
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.then126.i, %if.then122.i.if.end134.i_crit_edge
  %call135.i = call fastcc i32 @tda998x_get_audio_ports(ptr noundef nonnull %call.i.i19, ptr noundef nonnull %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135.i)
  %tobool136.not.i = icmp eq i32 %call135.i, 0
  br i1 %tobool136.not.i, label %if.end138.i, label %if.end134.i.tda998x_create.exit.thread26_crit_edge

if.end134.i.tda998x_create.exit.thread26_crit_edge: ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_create.exit.thread26

if.end138.i:                                      ; preds = %if.end134.i
  %audio_port_enable.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 27
  %95 = ptrtoint ptr %audio_port_enable.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %audio_port_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool140.not.i = icmp eq i8 %96, 0
  br i1 %tobool140.not.i, label %lor.lhs.false.i, label %if.end138.i.if.then145.i_crit_edge

if.end138.i.if.then145.i_crit_edge:               ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then145.i

lor.lhs.false.i:                                  ; preds = %if.end138.i
  %arrayidx142.i = getelementptr %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 27, i32 1
  %97 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx142.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool144.not.i = icmp eq i8 %98, 0
  br i1 %tobool144.not.i, label %lor.lhs.false.i.tda998x_create.exit.thread22_crit_edge, label %lor.lhs.false.i.if.then145.i_crit_edge

lor.lhs.false.i.if.then145.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then145.i

lor.lhs.false.i.tda998x_create.exit.thread22_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_create.exit.thread22

if.then145.i:                                     ; preds = %lor.lhs.false.i.if.then145.i_crit_edge, %if.end138.i.if.then145.i_crit_edge
  call fastcc void @tda998x_audio_codec_init(ptr noundef nonnull %call.i.i19, ptr noundef %dev) #8
  br label %tda998x_create.exit.thread22

if.else.i:                                        ; preds = %if.end120.i
  %platform_data149.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %99 = ptrtoint ptr %platform_data149.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %platform_data149.i, align 8
  %tobool150.not.i = icmp eq ptr %100, null
  br i1 %tobool150.not.i, label %if.else.i.tda998x_create.exit.thread22_crit_edge, label %if.then151.i

if.else.i.tda998x_create.exit.thread22_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_create.exit.thread22

if.then151.i:                                     ; preds = %if.else.i
  %call153.i = call fastcc i32 @tda998x_set_config(ptr noundef nonnull %call.i.i19, ptr noundef nonnull %100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153.i)
  %tobool154.not.i = icmp eq i32 %call153.i, 0
  br i1 %tobool154.not.i, label %if.then151.i.tda998x_create.exit.thread22_crit_edge, label %if.then151.i.tda998x_create.exit.thread26_crit_edge

if.then151.i.tda998x_create.exit.thread26_crit_edge: ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_create.exit.thread26

if.then151.i.tda998x_create.exit.thread22_crit_edge: ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_create.exit.thread22

tda998x_create.exit.thread22:                     ; preds = %if.then151.i.tda998x_create.exit.thread22_crit_edge, %if.else.i.tda998x_create.exit.thread22_crit_edge, %if.then145.i, %lor.lhs.false.i.tda998x_create.exit.thread22_crit_edge
  %funcs.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 25, i32 7
  %101 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @tda998x_bridge_funcs, ptr %funcs.i, align 4
  %102 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %of_node.i, align 8
  %of_node162.i = getelementptr inbounds %struct.tda998x_priv, ptr %call.i.i19, i32 0, i32 25, i32 4
  %104 = ptrtoint ptr %of_node162.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %of_node162.i, align 4
  call void @drm_bridge_add(ptr noundef %bridge.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %video.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cec_info.i) #8
  %call7 = call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @tda998x_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %tda998x_create.exit.thread22.cleanup_crit_edge, label %if.then9

tda998x_create.exit.thread22.cleanup_crit_edge:   ; preds = %tda998x_create.exit.thread22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

tda998x_create.exit.thread:                       ; preds = %cleanup.i, %do.end62.i, %reg_read.exit289.thread.i, %reg_read.exit.thread.i, %if.end.tda998x_create.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call86.i, %cleanup.i ], [ -12, %if.end.tda998x_create.exit.thread_crit_edge ], [ -6, %do.end62.i ], [ %call.i284.i, %reg_read.exit289.thread.i ], [ %call.i281.i, %reg_read.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %video.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cec_info.i) #8
  br label %cleanup

tda998x_create.exit.thread26:                     ; preds = %if.then151.i.tda998x_create.exit.thread26_crit_edge, %if.end134.i.tda998x_create.exit.thread26_crit_edge, %if.end94.i.tda998x_create.exit.thread26_crit_edge
  %ret.0.i.ph = phi i32 [ -12, %if.end94.i.tda998x_create.exit.thread26_crit_edge ], [ %call153.i, %if.then151.i.tda998x_create.exit.thread26_crit_edge ], [ %call135.i, %if.end134.i.tda998x_create.exit.thread26_crit_edge ]
  call fastcc void @tda998x_destroy(ptr noundef %dev) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %video.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cec_info.i) #8
  br label %cleanup

tda998x_create.exit:                              ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %call114.i to i32
  call fastcc void @tda998x_destroy(ptr noundef %dev) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %video.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cec_info.i) #8
  br label %cleanup

if.then9:                                         ; preds = %tda998x_create.exit.thread22
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @tda998x_destroy(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %tda998x_create.exit, %tda998x_create.exit.thread26, %tda998x_create.exit.thread, %tda998x_create.exit.thread22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %105, %tda998x_create.exit ], [ %call7, %if.then9 ], [ 0, %tda998x_create.exit.thread22.cleanup_crit_edge ], [ %retval.0.i.ph, %tda998x_create.exit.thread ], [ %ret.0.i.ph, %tda998x_create.exit.thread26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @tda998x_ops) #8
  tail call fastcc void @tda998x_destroy(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda998x_destroy(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bridge = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 25
  tail call void @drm_bridge_remove(ptr noundef %bridge) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -4, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %cec_addr.i = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %cec_addr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cec_addr.i, align 2
  %conv2.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i, ptr %buf3.i, align 4
  %hdmi.i = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdmi.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.cec_write.exit_crit_edge

entry.cec_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdmi.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %call.i, i32 noundef 252) #11
  br label %cec_write.exit

cec_write.exit:                                   ; preds = %do.end.i, %entry.cec_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %18 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i = call fastcc i32 @reg_read_range(ptr noundef %1, i16 noundef zeroext 17, ptr noundef nonnull %val.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %reg_read.exit.i, label %if.then.i

reg_read.exit.i:                                  ; preds = %cec_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  br label %reg_clear.exit

if.then.i:                                        ; preds = %cec_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  %and.i = and i8 %20, -3
  call fastcc void @reg_write(ptr noundef %1, i16 noundef zeroext 17, i8 noundef zeroext %and.i) #8
  br label %reg_clear.exit

reg_clear.exit:                                   ; preds = %if.then.i, %reg_read.exit.i
  %audio_pdev = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %audio_pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %audio_pdev, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %reg_clear.exit.if.end_crit_edge, label %if.then

reg_clear.exit.if.end_crit_edge:                  ; preds = %reg_clear.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %reg_clear.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @platform_device_unregister(ptr noundef nonnull %22) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %reg_clear.exit.if.end_crit_edge
  %23 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hdmi.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool2.not = icmp eq i32 %26, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call ptr @free_irq(i32 noundef %26, ptr noundef %1) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %edid_delay_timer = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 21
  %call8 = call i32 @del_timer_sync(ptr noundef %edid_delay_timer) #8
  %detect_work = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 20
  %call9 = call zeroext i1 @cancel_work_sync(ptr noundef %detect_work) #8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  call void @i2c_unregister_device(ptr noundef %28) #8
  %cec_notify = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 30
  %29 = ptrtoint ptr %cec_notify to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cec_notify, align 4
  call void @cec_notifier_conn_unregister(ptr noundef %30) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_edid_delay_done(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %edid_delay_active = getelementptr i8, ptr %t, i32 100
  %0 = ptrtoint ptr %edid_delay_active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %edid_delay_active, align 8
  %edid_delay_waitq = getelementptr i8, ptr %t, i32 48
  tail call void @__wake_up(ptr noundef %edid_delay_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %detect_work = getelementptr i8, ptr %t, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %detect_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_detect_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr i8, ptr %work, i32 504
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_kms_helper_hotplug_event(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cec_write(ptr nocapture noundef readonly %priv, i16 noundef zeroext %addr, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %conv = trunc i16 %addr to i8
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %cec_addr = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 4
  %5 = ptrtoint ptr %cec_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cec_addr, align 2
  %conv2 = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv2, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %len, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf3, align 4
  %hdmi = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdmi, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdmi, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %conv6 = zext i16 %addr to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call, i32 noundef %conv6) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %conv = zext i16 %reg to i32
  %conv1 = trunc i16 %reg to i8
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %buf, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %val, ptr %2, align 1
  %mutex = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %5 = lshr i32 %conv, 8
  %current_page.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %current_page.i, align 1
  %conv1.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %5, %conv1.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdmi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %conv6.i = trunc i32 %5 to i8
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %buf.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6.i, ptr %10, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %set_page.exit, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6.i, ptr %current_page.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %if.end

set_page.exit:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %out

if.end:                                           ; preds = %cleanup.thread.i, %entry.if.end_crit_edge
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.end, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %call.i, i32 noundef %conv) #11
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %set_page.exit
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_set(ptr noundef %priv, i16 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %val.i, align 1
  %call.i = call fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext %reg, ptr noundef nonnull %val.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %reg_read.exit, label %if.then

reg_read.exit:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  %conv1 = or i8 %2, %val
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext %reg, i8 noundef zeroext %conv1)
  br label %if.end

if.end:                                           ; preds = %if.then, %reg_read.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @cec_read(ptr nocapture noundef readonly %priv, i8 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  %addr.addr = alloca i8, align 1
  %val = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %addr, ptr %addr.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 1, !annotation !230
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %cec_addr = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %cec_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cec_addr, align 2
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %addr.addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %11 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %12 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %13 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %val, ptr %buf7, align 4
  %hdmi = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdmi, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdmi, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr.addr, align 1
  %conv10 = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %call, i32 noundef %conv10) #11
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %val, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i8 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %val.i102 = alloca i8, align 1
  %val.i95 = alloca i8, align 1
  %val.i91 = alloca i8, align 1
  %addr.addr.i71 = alloca i8, align 1
  %val.i72 = alloca i8, align 1
  %msg.i73 = alloca [2 x %struct.i2c_msg], align 4
  %addr.addr.i51 = alloca i8, align 1
  %val.i52 = alloca i8, align 1
  %msg.i53 = alloca [2 x %struct.i2c_msg], align 4
  %addr.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %0 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -18, ptr %addr.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !230
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %cec_addr.i = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %cec_addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cec_addr.i, align 2
  %conv.i = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %2, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %addr.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %10 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %12 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %val.i, ptr %buf7.i, align 4
  %hdmi.i = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdmi.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.cec_read.exit_crit_edge

entry.cec_read.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdmi.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr.addr.i, align 1
  %conv10.i = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53, i32 noundef %call.i, i32 noundef %conv10.i) #11
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %val.i, align 1
  br label %cec_read.exit

cec_read.exit:                                    ; preds = %do.end.i, %entry.cec_read.exit_crit_edge
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  %conv = zext i8 %24 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cec_read.exit.if.end32_crit_edge, label %if.then

cec_read.exit.if.end32_crit_edge:                 ; preds = %cec_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then:                                          ; preds = %cec_read.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i51)
  %25 = ptrtoint ptr %addr.addr.i51 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -3, ptr %addr.addr.i51, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i52) #8
  %26 = ptrtoint ptr %val.i52 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %val.i52, align 1, !annotation !230
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i53) #8
  %27 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %28 = call ptr @memset(ptr %27, i32 255, i32 16)
  %29 = ptrtoint ptr %cec_addr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cec_addr.i, align 2
  %conv.i55 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i55, ptr %msg.i53, align 4
  %flags.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i56, align 2
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %27, align 4
  %buf.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i58 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %addr.addr.i51, ptr %buf.i58, align 4
  %arrayinit.element.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 1
  %35 = ptrtoint ptr %arrayinit.element.i59 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i55, ptr %arrayinit.element.i59, align 4
  %flags5.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 1, i32 1
  %36 = ptrtoint ptr %flags5.i60 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %flags5.i60, align 2
  %len6.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 1, i32 2
  %37 = ptrtoint ptr %len6.i61 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %len6.i61, align 4
  %buf7.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 1, i32 3
  %38 = ptrtoint ptr %buf7.i62 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %val.i52, ptr %buf7.i62, align 4
  %39 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hdmi.i, align 4
  %adapter.i64 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %adapter.i64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter.i64, align 8
  %call.i65 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i53, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp.i66 = icmp slt i32 %call.i65, 0
  br i1 %cmp.i66, label %do.end.i69, label %if.then.cec_read.exit70_crit_edge

if.then.cec_read.exit70_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_read.exit70

do.end.i69:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hdmi.i, align 4
  %dev.i67 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %addr.addr.i51 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %addr.addr.i51, align 1
  %conv10.i68 = zext i8 %46 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i67, ptr noundef nonnull @.str.53, i32 noundef %call.i65, i32 noundef %conv10.i68) #11
  %47 = ptrtoint ptr %val.i52 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %val.i52, align 1
  br label %cec_read.exit70

cec_read.exit70:                                  ; preds = %do.end.i69, %if.then.cec_read.exit70_crit_edge
  %48 = ptrtoint ptr %val.i52 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %val.i52, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i53) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i52) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i51)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i71)
  %50 = ptrtoint ptr %addr.addr.i71 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -2, ptr %addr.addr.i71, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i72) #8
  %51 = ptrtoint ptr %val.i72 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %val.i72, align 1, !annotation !230
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i73) #8
  %52 = getelementptr inbounds i8, ptr %msg.i73, i32 4
  %53 = call ptr @memset(ptr %52, i32 255, i32 16)
  %54 = ptrtoint ptr %cec_addr.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cec_addr.i, align 2
  %conv.i75 = zext i8 %55 to i16
  %56 = ptrtoint ptr %msg.i73 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i75, ptr %msg.i73, align 4
  %flags.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i76 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i76, align 2
  %58 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %52, align 4
  %buf.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 0, i32 3
  %59 = ptrtoint ptr %buf.i78 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %addr.addr.i71, ptr %buf.i78, align 4
  %arrayinit.element.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 1
  %60 = ptrtoint ptr %arrayinit.element.i79 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i75, ptr %arrayinit.element.i79, align 4
  %flags5.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 1, i32 1
  %61 = ptrtoint ptr %flags5.i80 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %flags5.i80, align 2
  %len6.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 1, i32 2
  %62 = ptrtoint ptr %len6.i81 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %len6.i81, align 4
  %buf7.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 1, i32 3
  %63 = ptrtoint ptr %buf7.i82 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %val.i72, ptr %buf7.i82, align 4
  %64 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hdmi.i, align 4
  %adapter.i84 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter.i84, align 8
  %call.i85 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i73, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp.i86 = icmp slt i32 %call.i85, 0
  br i1 %cmp.i86, label %do.end.i89, label %cec_read.exit70.cec_read.exit90_crit_edge

cec_read.exit70.cec_read.exit90_crit_edge:        ; preds = %cec_read.exit70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_read.exit90

do.end.i89:                                       ; preds = %cec_read.exit70
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hdmi.i, align 4
  %dev.i87 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %addr.addr.i71 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %addr.addr.i71, align 1
  %conv10.i88 = zext i8 %71 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i87, ptr noundef nonnull @.str.53, i32 noundef %call.i85, i32 noundef %conv10.i88) #11
  %72 = ptrtoint ptr %val.i72 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %val.i72, align 1
  br label %cec_read.exit90

cec_read.exit90:                                  ; preds = %do.end.i89, %cec_read.exit70.cec_read.exit90_crit_edge
  %73 = ptrtoint ptr %val.i72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %val.i72, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i73) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i72) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i71)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i91) #8
  %75 = ptrtoint ptr %val.i91 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %val.i91, align 1
  %call.i92 = call fastcc i32 @reg_read_range(ptr noundef %data, i16 noundef zeroext 15, ptr noundef nonnull %val.i91, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp.i93 = icmp slt i32 %call.i92, 0
  br i1 %cmp.i93, label %cec_read.exit90.reg_read.exit_crit_edge, label %if.end.i

cec_read.exit90.reg_read.exit_crit_edge:          ; preds = %cec_read.exit90
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_read.exit

if.end.i:                                         ; preds = %cec_read.exit90
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %val.i91 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %val.i91, align 1
  %conv.i94 = zext i8 %77 to i32
  br label %reg_read.exit

reg_read.exit:                                    ; preds = %if.end.i, %cec_read.exit90.reg_read.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i94, %if.end.i ], [ %call.i92, %cec_read.exit90.reg_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i91) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i95) #8
  %78 = ptrtoint ptr %val.i95 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %val.i95, align 1
  %call.i96 = call fastcc i32 @reg_read_range(ptr noundef %data, i16 noundef zeroext 16, ptr noundef nonnull %val.i95, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp.i97 = icmp slt i32 %call.i96, 0
  br i1 %cmp.i97, label %reg_read.exit.reg_read.exit101_crit_edge, label %if.end.i99

reg_read.exit.reg_read.exit101_crit_edge:         ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_read.exit101

if.end.i99:                                       ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %val.i95 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %val.i95, align 1
  %conv.i98 = zext i8 %80 to i32
  br label %reg_read.exit101

reg_read.exit101:                                 ; preds = %if.end.i99, %reg_read.exit.reg_read.exit101_crit_edge
  %retval.0.i100 = phi i32 [ %conv.i98, %if.end.i99 ], [ %call.i96, %reg_read.exit.reg_read.exit101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i95) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i102) #8
  %81 = ptrtoint ptr %val.i102 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %val.i102, align 1
  %call.i103 = call fastcc i32 @reg_read_range(ptr noundef %data, i16 noundef zeroext 17, ptr noundef nonnull %val.i102, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp.i104 = icmp slt i32 %call.i103, 0
  br i1 %cmp.i104, label %reg_read.exit101.reg_read.exit108_crit_edge, label %if.end.i106

reg_read.exit101.reg_read.exit108_crit_edge:      ; preds = %reg_read.exit101
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_read.exit108

if.end.i106:                                      ; preds = %reg_read.exit101
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %val.i102 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %val.i102, align 1
  %conv.i105 = zext i8 %83 to i32
  br label %reg_read.exit108

reg_read.exit108:                                 ; preds = %if.end.i106, %reg_read.exit101.reg_read.exit108_crit_edge
  %retval.0.i107 = phi i32 [ %conv.i105, %if.end.i106 ], [ %call.i103, %reg_read.exit101.reg_read.exit108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i102) #8
  %conv10 = zext i8 %49 to i32
  %conv11 = zext i8 %74 to i32
  %conv12 = and i32 %retval.0.i, 255
  %conv13 = and i32 %retval.0.i100, 255
  %conv14 = and i32 %retval.0.i107, 255
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.55, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14) #8
  %and16 = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %reg_read.exit108.if.end24_crit_edge

reg_read.exit108.if.end24_crit_edge:              ; preds = %reg_read.exit108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then18:                                        ; preds = %reg_read.exit108
  %and20 = and i32 %conv11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %edid_delay_active.i = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 23
  %84 = ptrtoint ptr %edid_delay_active.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %edid_delay_active.i, align 8
  %edid_delay_timer.i = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %85, 10
  %call.i109 = call i32 @mod_timer(ptr noundef %edid_delay_timer.i, i32 noundef %add.i) #8
  br label %if.end24

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %detect_work = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %86 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %86, ptr noundef %detect_work) #8
  %cec_notify = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 30
  %87 = ptrtoint ptr %cec_notify to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cec_notify, align 4
  call void @cec_notifier_set_phys_addr(ptr noundef %88, i16 noundef zeroext -1) #8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22, %reg_read.exit108.if.end24_crit_edge
  %and26 = and i32 %retval.0.i107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end32_crit_edge, label %land.lhs.true

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end24
  %wq_edid_wait = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 19
  %89 = ptrtoint ptr %wq_edid_wait to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %wq_edid_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool28.not = icmp eq i32 %90, 0
  br i1 %tobool28.not, label %land.lhs.true.if.end32_crit_edge, label %if.then29

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %wq_edid_wait to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 0, ptr %wq_edid_wait, align 4
  %wq_edid = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 18
  call void @__wake_up(ptr noundef %wq_edid, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %land.lhs.true.if.end32_crit_edge, %if.end24.if.end32_crit_edge, %cec_read.exit.if.end32_crit_edge
  %handled.1.off0 = phi i1 [ true, %if.then29 ], [ %tobool17, %land.lhs.true.if.end32_crit_edge ], [ %tobool17, %if.end24.if.end32_crit_edge ], [ false, %cec_read.exit.if.end32_crit_edge ]
  %cond = zext i1 %handled.1.off0 to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_conn_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_cec_hook_init(ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call = tail call ptr @gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.57, i32 noundef %4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %calib6 = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 29
  %5 = ptrtoint ptr %calib6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %calib6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %4, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_cec_hook_exit(ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %calib = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 29
  %0 = ptrtoint ptr %calib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calib, align 8
  tail call void @gpiod_put(ptr noundef %1) #8
  %2 = ptrtoint ptr %calib to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %calib, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_cec_hook_open(ptr noundef %data) #2 align 64 {
entry:
  %buf.i63.i = alloca [2 x i8], align 1
  %msg.i64.i = alloca %struct.i2c_msg, align 4
  %buf.i49.i = alloca [2 x i8], align 1
  %msg.i50.i = alloca %struct.i2c_msg, align 4
  %buf.i35.i = alloca [2 x i8], align 1
  %msg.i36.i = alloca %struct.i2c_msg, align 4
  %addr.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %msg.i24.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i10.i = alloca [2 x i8], align 1
  %msg.i11.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i77.i.i = alloca [2 x i8], align 1
  %msg.i78.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cec_enamods(ptr noundef %data, i8 noundef zeroext -127, i1 noundef zeroext true)
  %calib1.i = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 29
  %0 = ptrtoint ptr %calib1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calib1.i, align 8
  %edid_mutex.i = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %edid_mutex.i, i32 noundef 0) #8
  %hdmi.i = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp sgt i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disable_irq(i32 noundef %5) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %1, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -13, ptr %buf.i.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -64, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %cec_addr.i.i = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %cec_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cec_addr.i.i, align 2
  %conv2.i.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv2.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i.i, align 2
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i.i, ptr %buf3.i.i, align 4
  %16 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdmi.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.cec_write.exit.i_crit_edge

if.end.i.cec_write.exit.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdmi.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.45, i32 noundef %call.i.i, i32 noundef 243) #11
  br label %cec_write.exit.i

cec_write.exit.i:                                 ; preds = %do.end.i.i, %if.end.i.cec_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i10.i) #8
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i10.i, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i10.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -12, ptr %buf.i10.i, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -44, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i11.i) #8
  %25 = getelementptr inbounds i8, ptr %msg.i11.i, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %27 = ptrtoint ptr %cec_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cec_addr.i.i, align 2
  %conv2.i13.i = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i11.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv2.i13.i, ptr %msg.i11.i, align 4
  %flags.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i14.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i14.i, align 2
  %buf3.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11.i, i32 0, i32 3
  %31 = ptrtoint ptr %buf3.i16.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf.i10.i, ptr %buf3.i16.i, align 4
  %32 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hdmi.i, align 4
  %adapter.i18.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %adapter.i18.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i18.i, align 8
  %call.i19.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i11.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %cmp.i20.i = icmp slt i32 %call.i19.i, 0
  br i1 %cmp.i20.i, label %do.end.i22.i, label %cec_write.exit.i.cec_write.exit23.i_crit_edge

cec_write.exit.i.cec_write.exit23.i_crit_edge:    ; preds = %cec_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_write.exit23.i

do.end.i22.i:                                     ; preds = %cec_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hdmi.i, align 4
  %dev.i21.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i21.i, ptr noundef nonnull @.str.45, i32 noundef %call.i19.i, i32 noundef 244) #11
  br label %cec_write.exit23.i

cec_write.exit23.i:                               ; preds = %do.end.i22.i, %cec_write.exit.i.cec_write.exit23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i11.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i10.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i.i) #8
  %38 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -11, ptr %addr.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %39 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %val.i.i, align 1, !annotation !230
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i24.i) #8
  %40 = getelementptr inbounds i8, ptr %msg.i24.i, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  %42 = ptrtoint ptr %cec_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cec_addr.i.i, align 2
  %conv.i.i = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i24.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i.i, ptr %msg.i24.i, align 4
  %flags.i26.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i26.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i26.i, align 2
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %40, align 4
  %buf.i28.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i28.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %addr.addr.i.i, ptr %buf.i28.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i, i32 1
  %48 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i, i32 1, i32 1
  %49 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i, i32 1, i32 2
  %50 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %len6.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i, i32 1, i32 3
  %51 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %val.i.i, ptr %buf7.i.i, align 4
  %52 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hdmi.i, align 4
  %adapter.i30.i = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %adapter.i30.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter.i30.i, align 8
  %call.i31.i = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i24.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %cmp.i32.i = icmp slt i32 %call.i31.i, 0
  br i1 %cmp.i32.i, label %do.end.i34.i, label %cec_write.exit23.i.cec_read.exit.i_crit_edge

cec_write.exit23.i.cec_read.exit.i_crit_edge:     ; preds = %cec_write.exit23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_read.exit.i

do.end.i34.i:                                     ; preds = %cec_write.exit23.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hdmi.i, align 4
  %dev.i33.i = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %addr.addr.i.i, align 1
  %conv10.i.i = zext i8 %59 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i33.i, ptr noundef nonnull @.str.53, i32 noundef %call.i31.i, i32 noundef %conv10.i.i) #11
  %60 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %val.i.i, align 1
  br label %cec_read.exit.i

cec_read.exit.i:                                  ; preds = %do.end.i34.i, %cec_write.exit23.i.cec_read.exit.i_crit_edge
  %61 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i24.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i.i) #8
  %63 = and i8 %62, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i35.i) #8
  %64 = getelementptr inbounds [2 x i8], ptr %buf.i35.i, i32 0, i32 1
  %65 = ptrtoint ptr %buf.i35.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -11, ptr %buf.i35.i, align 1
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %63, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i36.i) #8
  %67 = getelementptr inbounds i8, ptr %msg.i36.i, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 196607, ptr %67, align 4
  %69 = ptrtoint ptr %cec_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cec_addr.i.i, align 2
  %conv2.i38.i = zext i8 %70 to i16
  %71 = ptrtoint ptr %msg.i36.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv2.i38.i, ptr %msg.i36.i, align 4
  %flags.i39.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36.i, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i39.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i39.i, align 2
  %buf3.i41.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36.i, i32 0, i32 3
  %73 = ptrtoint ptr %buf3.i41.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %buf.i35.i, ptr %buf3.i41.i, align 4
  %74 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hdmi.i, align 4
  %adapter.i43.i = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %adapter.i43.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adapter.i43.i, align 8
  %call.i44.i = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %msg.i36.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %cmp.i45.i = icmp slt i32 %call.i44.i, 0
  br i1 %cmp.i45.i, label %do.end.i47.i, label %cec_read.exit.i.cec_write.exit48.i_crit_edge

cec_read.exit.i.cec_write.exit48.i_crit_edge:     ; preds = %cec_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_write.exit48.i

do.end.i47.i:                                     ; preds = %cec_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hdmi.i, align 4
  %dev.i46.i = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i46.i, ptr noundef nonnull @.str.45, i32 noundef %call.i44.i, i32 noundef 245) #11
  br label %cec_write.exit48.i

cec_write.exit48.i:                               ; preds = %do.end.i47.i, %cec_read.exit.i.cec_write.exit48.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i36.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i49.i) #8
  %80 = getelementptr inbounds [2 x i8], ptr %buf.i49.i, i32 0, i32 1
  %81 = ptrtoint ptr %buf.i49.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -10, ptr %buf.i49.i, align 1
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 17, ptr %80, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i50.i) #8
  %83 = getelementptr inbounds i8, ptr %msg.i50.i, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 196607, ptr %83, align 4
  %85 = ptrtoint ptr %cec_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %cec_addr.i.i, align 2
  %conv2.i52.i = zext i8 %86 to i16
  %87 = ptrtoint ptr %msg.i50.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv2.i52.i, ptr %msg.i50.i, align 4
  %flags.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 1
  %88 = ptrtoint ptr %flags.i53.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i53.i, align 2
  %buf3.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 3
  %89 = ptrtoint ptr %buf3.i55.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %buf.i49.i, ptr %buf3.i55.i, align 4
  %90 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hdmi.i, align 4
  %adapter.i57.i = getelementptr inbounds %struct.i2c_client, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %adapter.i57.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter.i57.i, align 8
  %call.i58.i = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i50.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %cmp.i59.i = icmp slt i32 %call.i58.i, 0
  br i1 %cmp.i59.i, label %do.end.i61.i, label %cec_write.exit48.i.cec_write.exit62.i_crit_edge

cec_write.exit48.i.cec_write.exit62.i_crit_edge:  ; preds = %cec_write.exit48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_write.exit62.i

do.end.i61.i:                                     ; preds = %cec_write.exit48.i
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hdmi.i, align 4
  %dev.i60.i = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i60.i, ptr noundef nonnull @.str.45, i32 noundef %call.i58.i, i32 noundef 246) #11
  br label %cec_write.exit62.i

cec_write.exit62.i:                               ; preds = %do.end.i61.i, %cec_write.exit48.i.cec_write.exit62.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i49.i) #8
  call fastcc void @cec_enamods(ptr noundef %data, i8 noundef zeroext 64, i1 noundef zeroext false) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i63.i) #8
  %96 = getelementptr inbounds [2 x i8], ptr %buf.i63.i, i32 0, i32 1
  %97 = ptrtoint ptr %buf.i63.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -14, ptr %buf.i63.i, align 1
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i64.i) #8
  %99 = getelementptr inbounds i8, ptr %msg.i64.i, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 196607, ptr %99, align 4
  %101 = ptrtoint ptr %cec_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %cec_addr.i.i, align 2
  %conv2.i66.i = zext i8 %102 to i16
  %103 = ptrtoint ptr %msg.i64.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv2.i66.i, ptr %msg.i64.i, align 4
  %flags.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64.i, i32 0, i32 1
  %104 = ptrtoint ptr %flags.i67.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %flags.i67.i, align 2
  %buf3.i69.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64.i, i32 0, i32 3
  %105 = ptrtoint ptr %buf3.i69.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %buf.i63.i, ptr %buf3.i69.i, align 4
  %106 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hdmi.i, align 4
  %adapter.i71.i = getelementptr inbounds %struct.i2c_client, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %adapter.i71.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %adapter.i71.i, align 8
  %call.i72.i = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i64.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %cmp.i73.i = icmp slt i32 %call.i72.i, 0
  br i1 %cmp.i73.i, label %do.end.i75.i, label %cec_write.exit62.i.tda998x_cec_set_calibration.exit_crit_edge

cec_write.exit62.i.tda998x_cec_set_calibration.exit_crit_edge: ; preds = %cec_write.exit62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_cec_set_calibration.exit

do.end.i75.i:                                     ; preds = %cec_write.exit62.i
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hdmi.i, align 4
  %dev.i74.i = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i74.i, ptr noundef nonnull @.str.45, i32 noundef %call.i72.i, i32 noundef 242) #11
  br label %tda998x_cec_set_calibration.exit

tda998x_cec_set_calibration.exit:                 ; preds = %do.end.i75.i, %cec_write.exit62.i.tda998x_cec_set_calibration.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i64.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i63.i) #8
  %112 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !231
  %and.i.i.i = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #8, !srcloc !232
  br i1 %tobool.not.i, label %if.then6.i, label %tda998x_cec_set_calibration.exit.if.end7.i_crit_edge

tda998x_cec_set_calibration.exit.if.end7.i_crit_edge: ; preds = %tda998x_cec_set_calibration.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then6.i:                                       ; preds = %tda998x_cec_set_calibration.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @trace_hardirqs_off() #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %tda998x_cec_set_calibration.exit.if.end7.i_crit_edge
  call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %113(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %114(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %119(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %120(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %121(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %122(i32 noundef 214748000) #8
  call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #8
  call void @trace_hardirqs_on() #8
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !233
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i77.i.i) #8
  %123 = getelementptr inbounds [2 x i8], ptr %buf.i77.i.i, i32 0, i32 1
  %124 = ptrtoint ptr %buf.i77.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -14, ptr %buf.i77.i.i, align 1
  %125 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %123, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i78.i.i) #8
  %126 = getelementptr inbounds i8, ptr %msg.i78.i.i, i32 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 196607, ptr %126, align 4
  %128 = ptrtoint ptr %cec_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %cec_addr.i.i, align 2
  %conv2.i80.i.i = zext i8 %129 to i16
  %130 = ptrtoint ptr %msg.i78.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv2.i80.i.i, ptr %msg.i78.i.i, align 4
  %flags.i81.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i78.i.i, i32 0, i32 1
  %131 = ptrtoint ptr %flags.i81.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %flags.i81.i.i, align 2
  %buf3.i83.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i78.i.i, i32 0, i32 3
  %132 = ptrtoint ptr %buf3.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %buf.i77.i.i, ptr %buf3.i83.i.i, align 4
  %133 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hdmi.i, align 4
  %adapter.i85.i.i = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %adapter.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %adapter.i85.i.i, align 8
  %call.i86.i.i = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %msg.i78.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i.i)
  %cmp.i87.i.i = icmp slt i32 %call.i86.i.i, 0
  br i1 %cmp.i87.i.i, label %do.end.i89.i.i, label %if.end7.i.tda998x_cec_set_calibration.exit.i_crit_edge

if.end7.i.tda998x_cec_set_calibration.exit.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_cec_set_calibration.exit.i

do.end.i89.i.i:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hdmi.i, align 4
  %dev.i88.i.i = getelementptr inbounds %struct.i2c_client, ptr %138, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i88.i.i, ptr noundef nonnull @.str.45, i32 noundef %call.i86.i.i, i32 noundef 242) #11
  br label %tda998x_cec_set_calibration.exit.i

tda998x_cec_set_calibration.exit.i:               ; preds = %do.end.i89.i.i, %if.end7.i.tda998x_cec_set_calibration.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i78.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i77.i.i) #8
  %call12.i = call i32 @gpiod_direction_input(ptr noundef %1) #8
  %139 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hdmi.i, align 4
  %irq14.i = getelementptr inbounds %struct.i2c_client, ptr %140, i32 0, i32 6
  %141 = ptrtoint ptr %irq14.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %irq14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp15.i = icmp sgt i32 %142, 0
  br i1 %cmp15.i, label %if.then16.i, label %tda998x_cec_set_calibration.exit.i.tda998x_cec_calibration.exit_crit_edge

tda998x_cec_set_calibration.exit.i.tda998x_cec_calibration.exit_crit_edge: ; preds = %tda998x_cec_set_calibration.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_cec_calibration.exit

if.then16.i:                                      ; preds = %tda998x_cec_set_calibration.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @enable_irq(i32 noundef %142) #8
  br label %tda998x_cec_calibration.exit

tda998x_cec_calibration.exit:                     ; preds = %if.then16.i, %tda998x_cec_set_calibration.exit.i.tda998x_cec_calibration.exit_crit_edge
  call void @mutex_unlock(ptr noundef %edid_mutex.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_cec_hook_release(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cec_enamods(ptr noundef %data, i8 noundef zeroext -127, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda998x_get_audio_ports(ptr nocapture noundef %priv, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !230
  %call = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.59, ptr noundef nonnull %size) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %div59 = lshr i32 %2, 2
  store i32 %div59, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %2)
  %cmp = icmp ult i32 %2, 20
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hdmi = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdmi, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #11
  br label %cleanup42

if.end3:                                          ; preds = %if.end
  %div460 = lshr i32 %2, 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div460, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp563.not = icmp ult i32 %2, 8
  br i1 %cmp563.not, label %if.end3.cleanup42_crit_edge, label %for.body.lr.ph

if.end3.cleanup42_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

for.body.lr.ph:                                   ; preds = %if.end3
  %hdmi24 = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.064, 1
  %arrayidx = getelementptr i32, ptr %call, i32 %mul
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = or i32 %mul, 1
  %arrayidx8 = getelementptr i32, ptr %call, i32 %add
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx8, align 4
  %conv10 = trunc i32 %10 to i8
  %trunc = trunc i32 %8 to i8
  %11 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %trunc, label %do.end15 [
    i8 2, label %for.body.sw.epilog_crit_edge
    i8 1, label %sw.bb12
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv11 = and i32 %8, 255
  %12 = ptrtoint ptr %hdmi24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdmi24, align 4
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.63, i32 noundef %conv11) #11
  br label %cleanup42

sw.epilog:                                        ; preds = %sw.bb12, %for.body.sw.epilog_crit_edge
  %cmp35 = phi ptr [ @.str.71, %sw.bb12 ], [ @.str.72, %for.body.sw.epilog_crit_edge ]
  %route.0 = phi i32 [ 1, %sw.bb12 ], [ 0, %for.body.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv10)
  %tobool19.not = icmp eq i8 %conv10, 0
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %hdmi24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdmi24, align 4
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.66) #11
  br label %for.inc

if.end26:                                         ; preds = %sw.epilog
  %arrayidx27 = getelementptr %struct.tda998x_priv, ptr %priv, i32 0, i32 27, i32 %route.0
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  br i1 %tobool28.not, label %if.end37, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %hdmi24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdmi24, align 4
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.69, ptr noundef nonnull %cmp35) #11
  br label %cleanup42

if.end37:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10, ptr %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %do.end23
  %inc = add nuw i32 %i.064, 1
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %cmp5 = icmp ult i32 %inc, %22
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.cleanup42_crit_edge

for.inc.cleanup42_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup42:                                        ; preds = %for.inc.cleanup42_crit_edge, %do.end32, %do.end15, %if.end3.cleanup42_crit_edge, %do.end, %entry.cleanup42_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup42_crit_edge ], [ -22, %do.end15 ], [ -22, %do.end32 ], [ 0, %if.end3.cleanup42_crit_edge ], [ 0, %for.inc.cleanup42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda998x_audio_codec_init(ptr nocapture noundef %priv, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %codec_data = alloca %struct.hdmi_codec_pdata, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %codec_data) #8
  %0 = call ptr @memcpy(ptr %codec_data, ptr @__const.tda998x_audio_codec_init.codec_data, i32 16)
  %audio_port_enable = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 27
  %1 = ptrtoint ptr %audio_port_enable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %audio_port_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2s = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data, i32 0, i32 1
  %3 = ptrtoint ptr %i2s to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %i2s, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %i2s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx2 = getelementptr %struct.tda998x_priv, ptr %priv, i32 0, i32 27, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %spdif = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data, i32 0, i32 1
  %6 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load5 = load i8, ptr %spdif, align 4
  %bf.set7 = or i8 %bf.load5, 64
  store i8 %bf.set7, ptr %spdif, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %7 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 255, i32 48)
  %9 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %fwnode.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %7, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.73, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %codec_data, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %audio_pdev = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 15
  %20 = ptrtoint ptr %audio_pdev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %audio_pdev, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda998x_set_config(ptr nocapture noundef %priv, ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %p, align 4
  %1 = lshr i32 %bf.load, 21
  %shl = and i32 %1, 112
  %2 = lshr i32 %bf.load, 17
  %3 = and i32 %2, 128
  %bf.lshr7 = lshr i32 %bf.load, 29
  %4 = lshr i32 %bf.load, 25
  %5 = and i32 %4, 8
  %or = or i32 %3, %bf.lshr7
  %or12 = or i32 %or, %shl
  %or20 = or i32 %or12, %5
  %conv21 = trunc i32 %or20 to i8
  %vip_cntrl_0 = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 10
  %6 = ptrtoint ptr %vip_cntrl_0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv21, ptr %vip_cntrl_0, align 8
  %bf.load22 = load i32, ptr %p, align 4
  %7 = lshr i32 %bf.load22, 13
  %shl28 = and i32 %7, 112
  %8 = lshr i32 %bf.load22, 9
  %9 = and i32 %8, 128
  %or36 = or i32 %shl28, %9
  %bf.lshr38 = lshr i32 %bf.load22, 21
  %bf.cast40 = and i32 %bf.lshr38, 7
  %or44 = or i32 %or36, %bf.cast40
  %10 = lshr i32 %bf.load22, 17
  %11 = and i32 %10, 8
  %or52 = or i32 %or44, %11
  %conv53 = trunc i32 %or52 to i8
  %vip_cntrl_1 = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 11
  %12 = ptrtoint ptr %vip_cntrl_1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv53, ptr %vip_cntrl_1, align 1
  %bf.load54 = load i32, ptr %p, align 4
  %13 = lshr i32 %bf.load54, 5
  %shl60 = and i32 %13, 112
  %14 = lshr i32 %bf.load54, 1
  %15 = and i32 %14, 128
  %or68 = or i32 %shl60, %15
  %bf.lshr70 = lshr i32 %bf.load54, 13
  %bf.cast72 = and i32 %bf.lshr70, 7
  %or76 = or i32 %or68, %bf.cast72
  %16 = lshr i32 %bf.load54, 9
  %17 = and i32 %16, 8
  %or84 = or i32 %or76, %17
  %conv85 = trunc i32 %or84 to i8
  %vip_cntrl_2 = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 12
  %18 = ptrtoint ptr %vip_cntrl_2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv85, ptr %vip_cntrl_2, align 2
  %format = getelementptr inbounds %struct.tda998x_encoder_params, ptr %p, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %format, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.not = icmp eq i8 %20, 0
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  %audio_params = getelementptr inbounds %struct.tda998x_encoder_params, ptr %p, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp91 = icmp eq i8 %20, 1
  %conv94 = zext i1 %cmp91 to i32
  %arrayidx = getelementptr [2 x %struct.tda998x_audio_route], ptr @tda998x_audio_route, i32 0, i32 %conv94
  %audio = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14
  %21 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %audio, align 8
  %cea = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 1
  %cea98 = getelementptr inbounds %struct.tda998x_encoder_params, ptr %p, i32 0, i32 1, i32 4
  %22 = call ptr @memcpy(ptr %cea, ptr %cea98, i32 28)
  %sample_rate = getelementptr inbounds %struct.tda998x_encoder_params, ptr %p, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sample_rate, align 4
  %sample_rate101 = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 2
  %25 = ptrtoint ptr %sample_rate101 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sample_rate101, align 8
  %status = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 3
  %status104 = getelementptr inbounds %struct.tda998x_encoder_params, ptr %p, i32 0, i32 1, i32 5
  %26 = call ptr @memcpy(ptr %status, ptr %status104, i32 5)
  %27 = ptrtoint ptr %audio_params to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %audio_params, align 4
  %ena_ap = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 4
  %29 = ptrtoint ptr %ena_ap to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %ena_ap, align 1
  %i2s_format = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 5
  %30 = ptrtoint ptr %i2s_format to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %i2s_format, align 2
  br i1 %cmp91, label %if.then.cond.end_crit_edge, label %cond.false

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sample_width = getelementptr inbounds %struct.tda998x_encoder_params, ptr %p, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sample_width, align 4
  %mul = shl i32 %32, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond112 = phi i32 [ %mul, %cond.false ], [ 64, %if.then.cond.end_crit_edge ]
  %33 = add i32 %cond112, -16
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 28) #8
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %34, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb5.i
    i32 7, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %cts_n.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 6
  %36 = ptrtoint ptr %cts_n.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 48, ptr %cts_n.i, align 1
  br label %return

sw.bb1.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %cts_n2.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 6
  %37 = ptrtoint ptr %cts_n2.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 49, ptr %cts_n2.i, align 1
  br label %return

sw.bb3.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %cts_n4.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 6
  %38 = ptrtoint ptr %cts_n4.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 50, ptr %cts_n4.i, align 1
  br label %return

sw.bb5.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %cts_n6.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 6
  %39 = ptrtoint ptr %cts_n6.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 51, ptr %cts_n6.i, align 1
  br label %return

sw.bb7.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %cts_n8.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 6
  %40 = ptrtoint ptr %cts_n8.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %cts_n8.i, align 1
  br label %return

do.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %hdmi.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  %41 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hdmi.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.81, i32 noundef %cond112) #11
  br label %return

return:                                           ; preds = %do.end.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ -22, %do.end.i ], [ 0, %sw.bb7.i ], [ 0, %sw.bb5.i ], [ 0, %sw.bb3.i ], [ 0, %sw.bb1.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext %reg, ptr noundef %buf, i32 noundef %cnt) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #8
  %conv = zext i16 %reg to i32
  %conv1 = trunc i16 %reg to i8
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %addr, align 1
  %mutex = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %3 = lshr i32 %conv, 8
  %current_page.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %current_page.i, align 1
  %conv1.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %3, %conv1.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdmi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %conv6.i = trunc i32 %3 to i8
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %buf.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %8, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %set_page.exit, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6.i, ptr %current_page.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %if.end

set_page.exit:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %out

if.end:                                           ; preds = %cleanup.thread.i, %entry.if.end_crit_edge
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %addr, i32 noundef 1, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %if.end.do.end_crit_edge, label %if.end7

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7:                                          ; preds = %if.end
  %call.i26 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %buf, i32 noundef %cnt, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp9 = icmp slt i32 %call.i26, 0
  br i1 %cmp9, label %if.end7.do.end_crit_edge, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end7.do.end_crit_edge, %if.end.do.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.do.end_crit_edge ], [ %call.i26, %if.end7.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %ret.0, i32 noundef %conv) #11
  br label %out

out:                                              ; preds = %do.end, %if.end7.out_crit_edge, %set_page.exit
  %ret.1 = phi i32 [ %call.i.i, %set_page.exit ], [ %ret.0, %do.end ], [ %call.i26, %if.end7.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cec_enamods(ptr nocapture noundef readonly %priv, i8 noundef zeroext %mods, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %buf.i12 = alloca [2 x i8], align 1
  %msg.i13 = alloca %struct.i2c_msg, align 4
  %addr.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %0 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %addr.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !230
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %cec_addr.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %cec_addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cec_addr.i, align 2
  %conv.i = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %2, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %addr.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %10 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %12 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %val.i, ptr %buf7.i, align 4
  %hdmi.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdmi.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.cec_read.exit_crit_edge

entry.cec_read.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdmi.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr.addr.i, align 1
  %conv10.i = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53, i32 noundef %call.i, i32 noundef %conv10.i) #11
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %val.i, align 1
  br label %cec_read.exit

cec_read.exit:                                    ; preds = %do.end.i, %entry.cec_read.exit_crit_edge
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  %or = or i8 %24, %mods
  %neg = xor i8 %mods, -1
  %and = and i8 %24, %neg
  %val.0 = select i1 %enable, i8 %or, i8 %and
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i12) #8
  %25 = getelementptr inbounds [2 x i8], ptr %buf.i12, i32 0, i32 1
  %26 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %buf.i12, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %val.0, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i13) #8
  %28 = getelementptr inbounds i8, ptr %msg.i13, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  %30 = ptrtoint ptr %cec_addr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cec_addr.i, align 2
  %conv2.i = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i13 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv2.i, ptr %msg.i13, align 4
  %flags.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i15, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 3
  %34 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i12, ptr %buf3.i, align 4
  %35 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hdmi.i, align 4
  %adapter.i18 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %adapter.i18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i18, align 8
  %call.i19 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i13, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp.i20 = icmp slt i32 %call.i19, 0
  br i1 %cmp.i20, label %do.end.i22, label %cec_read.exit.cec_write.exit_crit_edge

cec_read.exit.cec_write.exit_crit_edge:           ; preds = %cec_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_write.exit

do.end.i22:                                       ; preds = %cec_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hdmi.i, align 4
  %dev.i21 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i21, ptr noundef nonnull @.str.45, i32 noundef %call.i19, i32 noundef 255) #11
  br label %cec_write.exit

cec_write.exit:                                   ; preds = %do.end.i22, %cec_read.exit.cec_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i13) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i12) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_audio_hw_params(ptr noundef %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %daifmt, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  %audio.sroa.6 = alloca %struct.hdmi_audio_infoframe, align 4
  %audio.sroa.8 = alloca [5 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %daifmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %audio.sroa.6)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %audio.sroa.8)
  %4 = call ptr @memcpy(ptr %audio.sroa.6, ptr %params, i32 28)
  %sample_rate2 = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 2
  %5 = ptrtoint ptr %sample_rate2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sample_rate2, align 4
  %iec = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %audio.sroa.8, ptr %iec, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %8 = icmp ult i32 %3, 7
  br i1 %8, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef %3) #11
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %3 to i8
  %switch.shifted = lshr i8 71, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.tda998x_audio_hw_params, i32 0, i32 %3
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %10)
  %switch.load = load i8, ptr %switch.gep, align 1
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %switch.lookup
  %bit_clk_inv = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %daifmt, i32 0, i32 1
  %11 = ptrtoint ptr %bit_clk_inv to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %bit_clk_inv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load)
  %12 = icmp ult i8 %bf.load, 16
  br i1 %12, label %if.end.thread, label %do.end34

do.end34:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr37 = lshr i8 %bf.load, 7
  %bf.cast38 = zext i8 %bf.lshr37 to i32
  %bf.lshr41 = lshr i8 %bf.load, 6
  %bf.clear42 = and i8 %bf.lshr41, 1
  %bf.cast43 = zext i8 %bf.clear42 to i32
  %bf.lshr46 = lshr i8 %bf.load, 5
  %bf.clear47 = and i8 %bf.lshr46, 1
  %bf.cast48 = zext i8 %bf.clear47 to i32
  %bf.lshr51 = lshr i8 %bf.load, 4
  %bf.clear52 = and i8 %bf.lshr51, 1
  %bf.cast53 = zext i8 %bf.clear52 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %bf.cast38, i32 noundef %bf.cast43, i32 noundef %bf.cast48, i32 noundef %bf.cast53) #11
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %arrayidx2.i = getelementptr %struct.tda998x_priv, ptr %1, i32 0, i32 27, i32 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i = icmp eq i8 %14, 0
  br i1 %cmp.i, label %if.end.tda998x_derive_routing.exit.thread_crit_edge, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.tda998x_derive_routing.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_derive_routing.exit.thread

if.end.thread:                                    ; preds = %land.lhs.true
  %arrayidx2.i117 = getelementptr %struct.tda998x_priv, ptr %1, i32 0, i32 27, i32 0
  %15 = ptrtoint ptr %arrayidx2.i117 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i117, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i118 = icmp eq i8 %16, 0
  br i1 %cmp.i118, label %if.end.thread.tda998x_derive_routing.exit.thread_crit_edge, label %cond.false

if.end.thread.tda998x_derive_routing.exit.thread_crit_edge: ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_derive_routing.exit.thread

tda998x_derive_routing.exit.thread:               ; preds = %if.end.thread.tda998x_derive_routing.exit.thread_crit_edge, %if.end.tda998x_derive_routing.exit.thread_crit_edge
  %hdmi.i = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdmi.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.79) #11
  br label %cleanup

cond.false:                                       ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  %sample_width = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 3
  %19 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sample_width, align 4
  %mul = shl i32 %20, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %conv115.pn = phi i32 [ 0, %cond.false ], [ 1, %if.end.cond.end_crit_edge ]
  %21 = phi i8 [ %16, %cond.false ], [ %14, %if.end.cond.end_crit_edge ]
  %cond = phi i32 [ %mul, %cond.false ], [ 64, %if.end.cond.end_crit_edge ]
  %arrayidx.i119123 = getelementptr [2 x %struct.tda998x_audio_route], ptr @tda998x_audio_route, i32 0, i32 %conv115.pn
  %22 = add i32 %cond, -16
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %24 = icmp ult i32 %23, 8
  br i1 %24, label %switch.hole_check129, label %cond.end.tda998x_derive_cts_n.exit_crit_edge

cond.end.tda998x_derive_cts_n.exit_crit_edge:     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_derive_cts_n.exit

tda998x_derive_cts_n.exit:                        ; preds = %switch.hole_check129.tda998x_derive_cts_n.exit_crit_edge, %cond.end.tda998x_derive_cts_n.exit_crit_edge
  %hdmi.i109 = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %hdmi.i109 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdmi.i109, align 4
  %dev.i110 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i110, ptr noundef nonnull @.str.81, i32 noundef %cond) #11
  br label %cleanup

switch.hole_check129:                             ; preds = %cond.end
  %switch.maskindex131 = trunc i32 %23 to i8
  %switch.shifted132 = lshr i8 -113, %switch.maskindex131
  %27 = and i8 %switch.shifted132, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %switch.lobit133.not = icmp eq i8 %27, 0
  br i1 %switch.lobit133.not, label %switch.hole_check129.tda998x_derive_cts_n.exit_crit_edge, label %switch.lookup130

switch.hole_check129.tda998x_derive_cts_n.exit_crit_edge: ; preds = %switch.hole_check129
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_derive_cts_n.exit

switch.lookup130:                                 ; preds = %switch.hole_check129
  %switch.gep134 = getelementptr inbounds [8 x i8], ptr @switch.table.tda998x_audio_hw_params.105, i32 0, i32 %23
  %28 = ptrtoint ptr %switch.gep134 to i32
  call void @__asan_load1_noabort(i32 %28)
  %switch.load135 = load i8, ptr %switch.gep134, align 1
  %audio_mutex = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #8
  %audio67 = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %audio67 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx.i119123, ptr %audio67, align 8
  %audio.sroa.6.0.audio67.sroa_idx = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 14, i32 1
  %30 = call ptr @memcpy(ptr %audio.sroa.6.0.audio67.sroa_idx, ptr %audio.sroa.6, i32 28)
  %audio.sroa.7.0.audio67.sroa_idx = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 14, i32 2
  %31 = ptrtoint ptr %audio.sroa.7.0.audio67.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %6, ptr %audio.sroa.7.0.audio67.sroa_idx, align 8
  %audio.sroa.8.0.audio67.sroa_idx = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 14, i32 3
  %32 = call ptr @memcpy(ptr %audio.sroa.8.0.audio67.sroa_idx, ptr %audio.sroa.8, i32 5)
  %audio.sroa.10.0.audio67.sroa_idx = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 14, i32 4
  %33 = ptrtoint ptr %audio.sroa.10.0.audio67.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %21, ptr %audio.sroa.10.0.audio67.sroa_idx, align 1
  %audio.sroa.12.0.audio67.sroa_idx = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 14, i32 5
  %34 = ptrtoint ptr %audio.sroa.12.0.audio67.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %switch.load, ptr %audio.sroa.12.0.audio67.sroa_idx, align 2
  %audio.sroa.17.0.audio67.sroa_idx = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 14, i32 6
  %35 = ptrtoint ptr %audio.sroa.17.0.audio67.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %switch.load135, ptr %audio.sroa.17.0.audio67.sroa_idx, align 1
  %supports_infoframes = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %supports_infoframes to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %supports_infoframes, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool68.not = icmp eq i8 %37, 0
  br i1 %tobool68.not, label %switch.lookup130.if.end74_crit_edge, label %land.lhs.true70

switch.lookup130.if.end74_crit_edge:              ; preds = %switch.lookup130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true70:                                  ; preds = %switch.lookup130
  %sink_has_audio = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %sink_has_audio to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sink_has_audio, align 2, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool71.not = icmp eq i8 %39, 0
  br i1 %tobool71.not, label %land.lhs.true70.if.end74_crit_edge, label %if.then73

land.lhs.true70.if.end74_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then73:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @tda998x_configure_audio(ptr noundef %1)
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %land.lhs.true70.if.end74_crit_edge, %switch.lookup130.if.end74_crit_edge
  tail call void @mutex_unlock(ptr noundef %audio_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %tda998x_derive_cts_n.exit, %tda998x_derive_routing.exit.thread, %do.end34, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end74 ], [ -22, %do.end34 ], [ -22, %tda998x_derive_cts_n.exit ], [ -22, %tda998x_derive_routing.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %audio.sroa.6)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %audio.sroa.8)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_audio_shutdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %audio_mutex = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #8
  tail call fastcc void @reg_write(ptr noundef %1, i16 noundef zeroext 30, i8 noundef zeroext 0)
  %ena_ap = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %ena_ap to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ena_ap, align 1
  tail call void @mutex_unlock(ptr noundef %audio_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_audio_mute_stream(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, i1 noundef zeroext %enable, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %audio_mutex = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #8
  tail call fastcc void @tda998x_audio_mute(ptr noundef %1, i1 noundef zeroext %enable)
  tail call void @mutex_unlock(ptr noundef %audio_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_audio_get_eld(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %audio_mutex = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #8
  %2 = tail call i32 @llvm.umin.i32(i32 %len, i32 128)
  %eld = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 26, i32 42
  %3 = call ptr @memcpy(ptr %buf, ptr %eld, i32 %2)
  tail call void @mutex_unlock(ptr noundef %audio_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda998x_configure_audio(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %frame.i = alloca %union.hdmi_infoframe, align 4
  %val.i.i16.i = alloca i8, align 1
  %val.i.i66 = alloca i8, align 1
  %val.i.i61 = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  %ena_ap = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 4
  %5 = call ptr @memset(ptr %buf, i32 255, i32 6)
  %6 = ptrtoint ptr %ena_ap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ena_ap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sample_rate = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 2
  %8 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sample_rate, align 4
  %mul.i = shl i32 %9, 7
  %tmds_clock.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 13
  %10 = ptrtoint ptr %tmds_clock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmds_clock.i, align 4
  %mul1.i = mul i32 %11, 1000
  %shl.i = shl i32 %9, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %shl.i)
  %cmp4.i = icmp ugt i32 %mul1.i, %shl.i
  br i1 %cmp4.i, label %if.end.do.body.i_crit_edge, label %for.cond.i.1

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.cond.i.1:                                     ; preds = %if.end
  %shl.i.1 = shl i32 %9, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %shl.i.1)
  %cmp4.i.1 = icmp ugt i32 %mul1.i, %shl.i.1
  br i1 %cmp4.i.1, label %for.cond.i.1.do.body.i_crit_edge, label %for.cond.i.2

for.cond.i.1.do.body.i_crit_edge:                 ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %shl.i.2 = shl i32 %9, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %shl.i.2)
  %cmp4.i.2 = icmp ugt i32 %mul1.i, %shl.i.2
  br i1 %cmp4.i.2, label %for.cond.i.2.do.body.i_crit_edge, label %for.cond.i.3

for.cond.i.2.do.body.i_crit_edge:                 ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %shl.i.3 = shl i32 %9, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %shl.i.3)
  %cmp4.i.3 = icmp ugt i32 %mul1.i, %shl.i.3
  br i1 %cmp4.i.3, label %for.cond.i.3.do.body.i_crit_edge, label %for.cond.i.4

for.cond.i.3.do.body.i_crit_edge:                 ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.cond.i.4:                                     ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i.4 = shl i32 %9, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %shl.i.4)
  %cmp4.i.4 = icmp ugt i32 %mul1.i, %shl.i.4
  %spec.select = select i1 %cmp4.i.4, i32 1, i32 0
  br label %do.body.i

do.body.i:                                        ; preds = %for.cond.i.4, %for.cond.i.3.do.body.i_crit_edge, %for.cond.i.2.do.body.i_crit_edge, %for.cond.i.1.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %indvars.iv.i.lcssa = phi i32 [ 5, %if.end.do.body.i_crit_edge ], [ 4, %for.cond.i.1.do.body.i_crit_edge ], [ 3, %for.cond.i.2.do.body.i_crit_edge ], [ 2, %for.cond.i.3.do.body.i_crit_edge ], [ %spec.select, %for.cond.i.4 ]
  %audio = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda998x_get_adiv.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda998x_configure_audio, %if.then8.i)) #8
          to label %tda998x_get_adiv.exit [label %if.then8.i], !srcloc !235

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %hdmi.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdmi.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda998x_get_adiv.__UNIQUE_ID_ddebug313, ptr noundef %dev.i, ptr noundef nonnull @.str.84, i32 noundef %mul1.i, i32 noundef %9, i32 noundef %mul.i, i32 noundef %indvars.iv.i.lcssa) #8
  br label %tda998x_get_adiv.exit

tda998x_get_adiv.exit:                            ; preds = %if.then8.i, %do.body.i
  %14 = trunc i32 %indvars.iv.i.lcssa to i8
  %15 = ptrtoint ptr %ena_ap to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ena_ap, align 1
  tail call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 30, i8 noundef zeroext %16)
  %17 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %audio, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  tail call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 22, i8 noundef zeroext %20)
  %21 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %audio, align 4
  %mux_ap = getelementptr inbounds %struct.tda998x_audio_route, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %mux_ap to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mux_ap, align 1
  tail call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 38, i8 noundef zeroext %24)
  %i2s_format = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 5
  %25 = ptrtoint ptr %i2s_format to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i2s_format, align 2
  tail call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 252, i8 noundef zeroext %26)
  %27 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %audio, align 4
  %aip_clksel = getelementptr inbounds %struct.tda998x_audio_route, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %aip_clksel to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %aip_clksel, align 1
  tail call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 253, i8 noundef zeroext %30)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %31 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i = call fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext 4352, ptr noundef nonnull %val.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %reg_read.exit.i, label %if.then.i

reg_read.exit.i:                                  ; preds = %tda998x_get_adiv.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  br label %reg_clear.exit

if.then.i:                                        ; preds = %tda998x_get_adiv.exit
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  %and.i = and i8 %33, -37
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 4352, i8 noundef zeroext %and.i) #8
  br label %reg_clear.exit

reg_clear.exit:                                   ; preds = %if.then.i, %reg_read.exit.i
  %cts_n = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 6
  %34 = ptrtoint ptr %cts_n to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cts_n, align 1
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 4364, i8 noundef zeroext %35)
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 526, i8 noundef zeroext %14)
  %36 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sample_rate, align 4
  %mul = shl i32 %37, 7
  %div = udiv i32 %mul, 1000
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 68, ptr %buf, align 1
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 66, ptr %0, align 1
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %1, align 1
  %conv8 = trunc i32 %div to i8
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv8, ptr %2, align 1
  %shr = lshr i32 %div, 8
  %conv10 = trunc i32 %shr to i8
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv10, ptr %3, align 1
  %shr12 = lshr i32 %div, 16
  %conv13 = trunc i32 %shr12 to i8
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv13, ptr %4, align 1
  call fastcc void @reg_write_range(ptr noundef %priv, i16 noundef zeroext 4357, ptr noundef nonnull %buf, i32 noundef 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i61) #8
  %44 = ptrtoint ptr %val.i.i61 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %val.i.i61, align 1
  %call.i.i62 = call fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext 4352, ptr noundef nonnull %val.i.i61, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %cmp.i.i63 = icmp slt i32 %call.i.i62, 0
  br i1 %cmp.i.i63, label %reg_read.exit.i64, label %if.then.i65

reg_read.exit.i64:                                ; preds = %reg_clear.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i61) #8
  br label %reg_set.exit

if.then.i65:                                      ; preds = %reg_clear.exit
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %val.i.i61 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val.i.i61, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i61) #8
  %conv1.i = or i8 %46, 64
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 4352, i8 noundef zeroext %conv1.i) #8
  br label %reg_set.exit

reg_set.exit:                                     ; preds = %if.then.i65, %reg_read.exit.i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i66) #8
  %47 = ptrtoint ptr %val.i.i66 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %val.i.i66, align 1
  %call.i.i67 = call fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext 4352, ptr noundef nonnull %val.i.i66, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %cmp.i.i68 = icmp slt i32 %call.i.i67, 0
  br i1 %cmp.i.i68, label %reg_read.exit.i69, label %if.then.i71

reg_read.exit.i69:                                ; preds = %reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i66) #8
  br label %reg_clear.exit72

if.then.i71:                                      ; preds = %reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %val.i.i66 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %val.i.i66, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i66) #8
  %and.i70 = and i8 %49, -65
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 4352, i8 noundef zeroext %and.i70) #8
  br label %reg_clear.exit72

reg_clear.exit72:                                 ; preds = %if.then.i71, %reg_read.exit.i69
  %status = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 3
  %50 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %status, align 4
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %buf, align 1
  %arrayidx18 = getelementptr %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx18, align 1
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %0, align 1
  %arrayidx21 = getelementptr %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 3, i32 3
  %56 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx21, align 1
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %1, align 1
  %arrayidx24 = getelementptr %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 3, i32 4
  %59 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx24, align 4
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %2, align 1
  call fastcc void @reg_write_range(ptr noundef %priv, i16 noundef zeroext 4372, ptr noundef nonnull %buf, i32 noundef 4)
  call fastcc void @tda998x_audio_mute(ptr noundef %priv, i1 noundef zeroext true)
  call void @msleep(i32 noundef 20) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i16.i) #8
  %62 = ptrtoint ptr %val.i.i16.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %val.i.i16.i, align 1
  %call.i.i17.i = call fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext 4352, ptr noundef nonnull %val.i.i16.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17.i)
  %cmp.i.i18.i = icmp slt i32 %call.i.i17.i, 0
  br i1 %cmp.i.i18.i, label %reg_read.exit.i19.i, label %if.then.i21.i

reg_read.exit.i19.i:                              ; preds = %reg_clear.exit72
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i16.i) #8
  br label %tda998x_audio_mute.exit

if.then.i21.i:                                    ; preds = %reg_clear.exit72
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %val.i.i16.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %val.i.i16.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i16.i) #8
  %and.i20.i = and i8 %64, -2
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 4352, i8 noundef zeroext %and.i20.i) #8
  br label %tda998x_audio_mute.exit

tda998x_audio_mute.exit:                          ; preds = %if.then.i21.i, %reg_read.exit.i19.i
  %cea = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 14, i32 1
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i) #8
  %65 = getelementptr inbounds i8, ptr %frame.i, i32 28
  %66 = call ptr @memset(ptr %65, i32 255, i32 40)
  %67 = call ptr @memcpy(ptr %frame.i, ptr %cea, i32 28)
  call fastcc void @tda998x_write_if(ptr noundef %priv, i8 noundef zeroext 16, i16 noundef zeroext 4224, ptr noundef nonnull %frame.i) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i) #8
  br label %cleanup

cleanup:                                          ; preds = %tda998x_audio_mute.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_write_range(ptr noundef %priv, i16 noundef zeroext %reg, ptr nocapture noundef readonly %p, i32 noundef %cnt) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %buf = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf) #8
  %2 = getelementptr inbounds i8, ptr %buf, i32 1
  %3 = call ptr @memset(ptr %2, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cnt)
  %cmp = icmp sgt i32 %cnt, 32
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef 32) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %reg to i32
  %conv1 = trunc i16 %reg to i8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %buf, align 1
  %arrayidx2 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %arrayidx2, ptr %p, i32 %cnt)
  %mutex = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %6 = lshr i32 %conv, 8
  %current_page.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 5
  %7 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %current_page.i, align 1
  %conv1.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %6, %conv1.i
  br i1 %cmp.not.i, label %if.end.if.end6_crit_edge, label %if.then.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then.i:                                        ; preds = %if.end
  %9 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdmi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %11 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %conv6.i = trunc i32 %6 to i8
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %buf.i, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6.i, ptr %11, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %set_page.exit, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv6.i, ptr %current_page.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %if.end6

set_page.exit:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %out

if.end6:                                          ; preds = %cleanup.thread.i, %if.end.if.end6_crit_edge
  %add = add nsw i32 %cnt, 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %add, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %do.end13, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.51, i32 noundef %call.i, i32 noundef %conv) #11
  br label %out

out:                                              ; preds = %do.end13, %if.end6.out_crit_edge, %set_page.exit
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda998x_audio_mute(ptr noundef %priv, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  %val.i.i16 = alloca i8, align 1
  %val.i.i9 = alloca i8, align 1
  %val.i.i4 = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i = call fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext 10, ptr noundef nonnull %val.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %reg_read.exit.i, label %if.then.i

reg_read.exit.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  br label %reg_set.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  %conv1.i = or i8 %2, 1
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 10, i8 noundef zeroext %conv1.i) #8
  br label %reg_set.exit

reg_set.exit:                                     ; preds = %if.then.i, %reg_read.exit.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i4) #8
  %3 = ptrtoint ptr %val.i.i4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %val.i.i4, align 1
  %call.i.i5 = call fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext 10, ptr noundef nonnull %val.i.i4, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5)
  %cmp.i.i6 = icmp slt i32 %call.i.i5, 0
  br i1 %cmp.i.i6, label %reg_read.exit.i7, label %if.then.i8

reg_read.exit.i7:                                 ; preds = %reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i4) #8
  br label %reg_clear.exit

if.then.i8:                                       ; preds = %reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %val.i.i4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val.i.i4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i4) #8
  %and.i = and i8 %5, -2
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 10, i8 noundef zeroext %and.i) #8
  br label %reg_clear.exit

reg_clear.exit:                                   ; preds = %if.then.i8, %reg_read.exit.i7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i9) #8
  %6 = ptrtoint ptr %val.i.i9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %val.i.i9, align 1
  %call.i.i10 = call fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext 4352, ptr noundef nonnull %val.i.i9, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %cmp.i.i11 = icmp slt i32 %call.i.i10, 0
  br i1 %cmp.i.i11, label %reg_read.exit.i12, label %if.then.i14

reg_read.exit.i12:                                ; preds = %reg_clear.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i9) #8
  br label %if.end

if.then.i14:                                      ; preds = %reg_clear.exit
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %val.i.i9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i.i9, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i9) #8
  %conv1.i13 = or i8 %8, 1
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 4352, i8 noundef zeroext %conv1.i13) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i16) #8
  %9 = ptrtoint ptr %val.i.i16 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %val.i.i16, align 1
  %call.i.i17 = call fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext 4352, ptr noundef nonnull %val.i.i16, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %cmp.i.i18 = icmp slt i32 %call.i.i17, 0
  br i1 %cmp.i.i18, label %reg_read.exit.i19, label %if.then.i21

reg_read.exit.i19:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i16) #8
  br label %if.end

if.then.i21:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %val.i.i16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i.i16, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i16) #8
  %and.i20 = and i8 %11, -2
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 4352, i8 noundef zeroext %and.i20) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i21, %reg_read.exit.i19, %if.then.i14, %reg_read.exit.i12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda998x_write_if(ptr noundef %priv, i8 noundef zeroext %bit, i16 noundef zeroext %addr, ptr noundef %frame) unnamed_addr #2 align 64 {
entry:
  %val.i.i10 = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %call = call i32 @hdmi_infoframe_pack(ptr noundef %frame, ptr noundef nonnull %buf, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hdmi = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdmi, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frame, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef %4, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i = call fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext 4367, ptr noundef nonnull %val.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %reg_read.exit.i, label %if.then.i

reg_read.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  br label %reg_clear.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  %neg.i = xor i8 %bit, -1
  %and.i = and i8 %7, %neg.i
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 4367, i8 noundef zeroext %and.i) #8
  br label %reg_clear.exit

reg_clear.exit:                                   ; preds = %if.then.i, %reg_read.exit.i
  call fastcc void @reg_write_range(ptr noundef %priv, i16 noundef zeroext %addr, ptr noundef nonnull %buf, i32 noundef %call)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i10) #8
  %8 = ptrtoint ptr %val.i.i10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %val.i.i10, align 1
  %call.i.i11 = call fastcc i32 @reg_read_range(ptr noundef %priv, i16 noundef zeroext 4367, ptr noundef nonnull %val.i.i10, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %cmp.i.i12 = icmp slt i32 %call.i.i11, 0
  br i1 %cmp.i.i12, label %reg_read.exit.i13, label %if.then.i14

reg_read.exit.i13:                                ; preds = %reg_clear.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i10) #8
  br label %cleanup

if.then.i14:                                      ; preds = %reg_clear.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %val.i.i10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i.i10, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i10) #8
  %conv1.i = or i8 %10, %bit
  call fastcc void @reg_write(ptr noundef %priv, i16 noundef zeroext 4367, i8 noundef zeroext %conv1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i14, %reg_read.exit.i13, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.91) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %connector1.i = getelementptr i8, ptr %bridge, i32 284
  %interlace_allowed.i = getelementptr i8, ptr %bridge, i32 444
  %2 = ptrtoint ptr %interlace_allowed.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %interlace_allowed.i, align 8
  %hdmi.i = getelementptr i8, ptr %bridge, i32 -624
  %3 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdmi.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %spec.select.i = select i1 %tobool.not.i, i8 6, i8 1
  %7 = getelementptr i8, ptr %bridge, i32 984
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select.i, ptr %7, align 4
  %helper_private.i.i = getelementptr i8, ptr %bridge, i32 992
  %9 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tda998x_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %call.i = tail call i32 @drm_connector_init(ptr noundef %1, ptr noundef %connector1.i, ptr noundef nonnull @tda998x_connector_funcs, i32 noundef 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %encoder.i = getelementptr i8, ptr %bridge, i32 128
  %10 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encoder.i, align 4
  %call7.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector1.i, ptr noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %if.end5.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_bridge_detach(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr i8, ptr %bridge, i32 284
  tail call void @drm_connector_cleanup(ptr noundef %connector) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda998x_bridge_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %rev = getelementptr i8, ptr %bridge, i32 -528
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 769, i16 %3)
  %cmp = icmp eq i16 %3, 769
  %cond = select i1 %cmp, i32 165000, i32 150000
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cond)
  %cmp2 = icmp sgt i32 %1, %cond
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %4 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %htotal, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %5)
  %cmp5 = icmp ugt i16 %5, 8191
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %6 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vtotal, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %7)
  %cmp10 = icmp ugt i16 %7, 2047
  %. = select i1 %cmp10, i32 19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 15, %entry.cleanup_crit_edge ], [ 18, %if.end.cleanup_crit_edge ], [ %., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_bridge_disable(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_on = getelementptr i8, ptr %bridge, i32 -524
  %0 = ptrtoint ptr %is_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_on, align 8, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %bridge, i32 -628
  tail call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 24, i8 noundef zeroext 0)
  tail call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 25, i8 noundef zeroext 0)
  tail call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 26, i8 noundef zeroext 0)
  %2 = ptrtoint ptr %is_on to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_on, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readonly %mode, ptr noundef %adjusted_mode) #2 align 64 {
entry:
  %val.i.i.i = alloca i8, align 1
  %frame.i399 = alloca %union.hdmi_infoframe, align 4
  %frame.i = alloca %union.hdmi_infoframe, align 4
  %val.i.i392 = alloca i8, align 1
  %val.i.i385 = alloca i8, align 1
  %val.i.i378 = alloca i8, align 1
  %val.i.i371 = alloca i8, align 1
  %val.i.i364 = alloca i8, align 1
  %val.i.i357 = alloca i8, align 1
  %val.i.i352 = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -628
  %rgb_quant_range_selectable = getelementptr i8, ptr %bridge, i32 519
  %0 = ptrtoint ptr %rgb_quant_range_selectable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rgb_quant_range_selectable, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @drm_default_rgb_quant_range(ptr noundef %adjusted_mode) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.false ], [ 2, %entry.cond.end_crit_edge ]
  %rgb_quant_range = getelementptr i8, ptr %bridge, i32 -520
  %2 = ptrtoint ptr %rgb_quant_range to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %rgb_quant_range, align 4
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %3 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %htotal, align 2
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %5 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vtotal, align 4
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %7 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hsync_end, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %9 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hdisplay, align 4
  %sub = sub i16 %8, %10
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %11 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hsync_start, align 2
  %sub6 = sub i16 %12, %10
  %sub13 = sub i16 %4, %10
  %add = add i16 %sub6, 3
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %hskew = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 5
  %15 = ptrtoint ptr %hskew to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hskew, align 4
  %add20 = add i16 %16, %add
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %ref_pix.0 = phi i16 [ %add20, %if.then ], [ %add, %cond.end.if.end_crit_edge ]
  %flags22 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %17 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags22, align 4
  %and23 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp = icmp eq i32 %and23, 0
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %19 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vsync_start, align 4
  %conv26 = zext i16 %20 to i32
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add27 = add i16 %20, 1
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %21 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vdisplay, align 2
  %conv28 = zext i16 %22 to i32
  %sub29 = sub i16 %add27, %22
  %23 = xor i16 %22, -1
  %sub36 = add i16 %6, %23
  %conv38 = zext i16 %sub36 to i32
  %add41 = add nuw nsw i32 %conv38, %conv28
  %sub47 = sub i16 %20, %22
  %conv49 = zext i16 %sub47 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %24 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vsync_end, align 2
  %conv50 = zext i16 %25 to i32
  %add51 = sub nsw i32 %conv50, %conv26
  %sub54 = add nsw i32 %add51, %conv49
  br label %if.end126

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %vdisplay58 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %26 = ptrtoint ptr %vdisplay58 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdisplay58, align 2
  %conv59 = zext i16 %27 to i32
  %sub60 = sub nsw i32 %conv26, %conv59
  %div61 = sdiv i32 %sub60, 2
  %28 = trunc i32 %div61 to i16
  %conv63 = add i16 %28, 1
  %conv65 = zext i16 %6 to i32
  %sub68 = sub nsw i32 %conv65, %conv59
  %div69 = sdiv i32 %sub68, 2
  %conv70 = trunc i32 %div69 to i16
  %div74348 = lshr i32 %conv59, 1
  %add75 = add nsw i32 %div69, %div74348
  %vsync_end85 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %29 = ptrtoint ptr %vsync_end85 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vsync_end85, align 2
  %conv86 = zext i16 %30 to i32
  %sub89 = sub nsw i32 %conv86, %conv26
  %div90 = sdiv i32 %sub89, 2
  %add91 = add nsw i32 %div90, %div61
  %div96349 = lshr i32 %conv65, 1
  %add97 = add nsw i32 %div69, %div96349
  %conv98 = trunc i32 %add97 to i16
  %add103 = add nsw i32 %add97, %div74348
  %conv104 = trunc i32 %add103 to i16
  %31 = lshr i16 %4, 1
  %add109 = add i16 %sub6, %31
  %add115 = add nsw i32 %div61, %div96349
  %conv116 = trunc i32 %add115 to i16
  %add124 = add nsw i32 %add115, %div90
  %conv125 = trunc i32 %add124 to i16
  br label %if.end126

if.end126:                                        ; preds = %if.else, %if.then25
  %ref_line.0 = phi i16 [ %sub29, %if.then25 ], [ %conv63, %if.else ]
  %vs1_line_s.0 = phi i16 [ %sub47, %if.then25 ], [ %28, %if.else ]
  %vs1_line_e.0.in = phi i32 [ %sub54, %if.then25 ], [ %add91, %if.else ]
  %vs2_pix_e.0 = phi i16 [ 0, %if.then25 ], [ %add109, %if.else ]
  %vs2_line_s.0 = phi i16 [ 0, %if.then25 ], [ %conv116, %if.else ]
  %vs2_line_e.0 = phi i16 [ 0, %if.then25 ], [ %conv125, %if.else ]
  %vwin1_line_s.0 = phi i16 [ %sub36, %if.then25 ], [ %conv70, %if.else ]
  %vwin1_line_e.0.in = phi i32 [ %add41, %if.then25 ], [ %add75, %if.else ]
  %vwin2_line_s.0 = phi i16 [ 0, %if.then25 ], [ %conv98, %if.else ]
  %vwin2_line_e.0 = phi i16 [ 0, %if.then25 ], [ %conv104, %if.else ]
  %vwin1_line_e.0 = trunc i32 %vwin1_line_e.0.in to i16
  %vs1_line_e.0 = trunc i32 %vs1_line_e.0.in to i16
  %and128 = lshr i32 %18, 12
  %32 = and i32 %and128, 1
  %.tr = trunc i32 %32 to i8
  %33 = shl nuw nsw i8 %.tr, 2
  %conv136 = or i8 %33, 9
  %34 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mode, align 4
  %add138 = add nuw nsw i32 %32, 1
  %mul = mul i32 %35, %add138
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %mul)
  %cmp143.not = icmp ult i32 %mul, 80000
  br i1 %cmp143.not, label %for.inc, label %if.end126.for.end_crit_edge

if.end126.for.end_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end126
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %mul)
  %cmp143.not.1 = icmp ult i32 %mul, 40000
  br i1 %cmp143.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %mul)
  %cmp143.not.2 = icmp ult i32 %mul, 20000
  %spec.select404 = select i1 %cmp143.not.2, i8 3, i8 2
  br label %for.end

for.end:                                          ; preds = %for.inc.1, %for.inc.for.end_crit_edge, %if.end126.for.end_crit_edge
  %div.0.lcssa = phi i8 [ 0, %if.end126.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ %spec.select404, %for.inc.1 ]
  %audio_mutex = getelementptr i8, ptr %bridge, i32 -460
  tail call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #8
  %tmds_clock147 = getelementptr i8, ptr %bridge, i32 -512
  %36 = ptrtoint ptr %tmds_clock147 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %tmds_clock147, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %37 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i = call fastcc i32 @reg_read_range(ptr noundef %add.ptr, i16 noundef zeroext 4352, ptr noundef nonnull %val.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %reg_read.exit.i, label %if.then.i

reg_read.exit.i:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  br label %reg_set.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  %conv1.i = or i8 %39, 1
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 4352, i8 noundef zeroext %conv1.i) #8
  br label %reg_set.exit

reg_set.exit:                                     ; preds = %if.then.i, %reg_read.exit.i
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 203, i8 noundef zeroext 64)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i352) #8
  %40 = ptrtoint ptr %val.i.i352 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %val.i.i352, align 1
  %call.i.i353 = call fastcc i32 @reg_read_range(ptr noundef %add.ptr, i16 noundef zeroext 4792, ptr noundef nonnull %val.i.i352, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i353)
  %cmp.i.i354 = icmp slt i32 %call.i.i353, 0
  br i1 %cmp.i.i354, label %reg_read.exit.i355, label %if.then.i356

reg_read.exit.i355:                               ; preds = %reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i352) #8
  br label %reg_clear.exit

if.then.i356:                                     ; preds = %reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %val.i.i352 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %val.i.i352, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i352) #8
  %and.i = and i8 %42, -3
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 4792, i8 noundef zeroext %and.i) #8
  br label %reg_clear.exit

reg_clear.exit:                                   ; preds = %if.then.i356, %reg_read.exit.i355
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 4365, i8 noundef zeroext 0)
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 228, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i357) #8
  %43 = ptrtoint ptr %val.i.i357 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %val.i.i357, align 1
  %call.i.i358 = call fastcc i32 @reg_read_range(ptr noundef %add.ptr, i16 noundef zeroext 14, ptr noundef nonnull %val.i.i357, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i358)
  %cmp.i.i359 = icmp slt i32 %call.i.i358, 0
  br i1 %cmp.i.i359, label %reg_read.exit.i360, label %if.then.i362

reg_read.exit.i360:                               ; preds = %reg_clear.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i357) #8
  br label %reg_set.exit363

if.then.i362:                                     ; preds = %reg_clear.exit
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %val.i.i357 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %val.i.i357, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i357) #8
  %conv1.i361 = or i8 %45, 1
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 14, i8 noundef zeroext %conv1.i361) #8
  br label %reg_set.exit363

reg_set.exit363:                                  ; preds = %if.then.i362, %reg_read.exit.i360
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 37, i8 noundef zeroext 0)
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 36, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i364) #8
  %46 = ptrtoint ptr %val.i.i364 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %val.i.i364, align 1
  %call.i.i365 = call fastcc i32 @reg_read_range(ptr noundef %add.ptr, i16 noundef zeroext 512, ptr noundef nonnull %val.i.i364, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i365)
  %cmp.i.i366 = icmp slt i32 %call.i.i365, 0
  br i1 %cmp.i.i366, label %reg_read.exit.i367, label %if.then.i369

reg_read.exit.i367:                               ; preds = %reg_set.exit363
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i364) #8
  br label %reg_clear.exit370

if.then.i369:                                     ; preds = %reg_set.exit363
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %val.i.i364 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %val.i.i364, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i364) #8
  %and.i368 = and i8 %48, -65
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 512, i8 noundef zeroext %and.i368) #8
  br label %reg_clear.exit370

reg_clear.exit370:                                ; preds = %if.then.i369, %reg_read.exit.i367
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i371) #8
  %49 = ptrtoint ptr %val.i.i371 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %val.i.i371, align 1
  %call.i.i372 = call fastcc i32 @reg_read_range(ptr noundef %add.ptr, i16 noundef zeroext 514, ptr noundef nonnull %val.i.i371, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i372)
  %cmp.i.i373 = icmp slt i32 %call.i.i372, 0
  br i1 %cmp.i.i373, label %reg_read.exit.i374, label %if.then.i376

reg_read.exit.i374:                               ; preds = %reg_clear.exit370
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i371) #8
  br label %reg_clear.exit377

if.then.i376:                                     ; preds = %reg_clear.exit370
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %val.i.i371 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %val.i.i371, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i371) #8
  %and.i375 = and i8 %51, -6
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 514, i8 noundef zeroext %and.i375) #8
  br label %reg_clear.exit377

reg_clear.exit377:                                ; preds = %if.then.i376, %reg_read.exit.i374
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 515, i8 noundef zeroext 0)
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 229, i8 noundef zeroext 0)
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 240, i8 noundef zeroext %.tr)
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 529, i8 noundef zeroext %conv136)
  %52 = shl nuw nsw i8 %.tr, 4
  %conv157 = or i8 %div.0.lcssa, %52
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 513, i8 noundef zeroext %conv157)
  %53 = ptrtoint ptr %rgb_quant_range to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rgb_quant_range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp159 = icmp eq i32 %54, 1
  br i1 %cmp159, label %if.then161, label %if.else162

if.then161:                                       ; preds = %reg_clear.exit377
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i378) #8
  %55 = ptrtoint ptr %val.i.i378 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %val.i.i378, align 1
  %call.i.i379 = call fastcc i32 @reg_read_range(ptr noundef %add.ptr, i16 noundef zeroext 14, ptr noundef nonnull %val.i.i378, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i379)
  %cmp.i.i380 = icmp slt i32 %call.i.i379, 0
  br i1 %cmp.i.i380, label %reg_read.exit.i381, label %if.then.i383

reg_read.exit.i381:                               ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i378) #8
  br label %reg_clear.exit384

if.then.i383:                                     ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %val.i.i378 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %val.i.i378, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i378) #8
  %and.i382 = and i8 %57, -3
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 14, i8 noundef zeroext %and.i382) #8
  br label %reg_clear.exit384

reg_clear.exit384:                                ; preds = %if.then.i383, %reg_read.exit.i381
  call fastcc void @reg_write_range(ptr noundef %add.ptr, i16 noundef zeroext 128, ptr noundef nonnull @tda998x_bridge_mode_set.tda998x_full_to_limited_range, i32 noundef 31)
  br label %if.end163

if.else162:                                       ; preds = %reg_clear.exit377
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 128, i8 noundef zeroext 5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i385) #8
  %58 = ptrtoint ptr %val.i.i385 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %val.i.i385, align 1
  %call.i.i386 = call fastcc i32 @reg_read_range(ptr noundef %add.ptr, i16 noundef zeroext 14, ptr noundef nonnull %val.i.i385, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i386)
  %cmp.i.i387 = icmp slt i32 %call.i.i386, 0
  br i1 %cmp.i.i387, label %reg_read.exit.i388, label %if.then.i390

reg_read.exit.i388:                               ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i385) #8
  br label %if.end163

if.then.i390:                                     ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %val.i.i385 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %val.i.i385, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i385) #8
  %conv1.i389 = or i8 %60, 2
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 14, i8 noundef zeroext %conv1.i389) #8
  br label %if.end163

if.end163:                                        ; preds = %if.then.i390, %reg_read.exit.i388, %reg_clear.exit384
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 530, i8 noundef zeroext 9)
  %61 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags22, align 4
  %and165 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  %spec.select = select i1 %tobool166.not, i8 32, i8 34
  %63 = trunc i32 %62 to i8
  %64 = lshr i8 %63, 1
  %65 = and i8 %64, 4
  %66 = or i8 %65, %spec.select
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 35, i8 noundef zeroext %66)
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 160, i8 noundef zeroext 0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 161, i16 noundef zeroext %ref_pix.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 163, i16 noundef zeroext %ref_line.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 165, i16 noundef zeroext %4)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 167, i16 noundef zeroext %6)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 169, i16 noundef zeroext %vs1_line_s.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 171, i16 noundef zeroext %sub6)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 173, i16 noundef zeroext %vs1_line_e.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 175, i16 noundef zeroext %sub6)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 177, i16 noundef zeroext %vs2_line_s.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 179, i16 noundef zeroext %vs2_pix_e.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 181, i16 noundef zeroext %vs2_line_e.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 183, i16 noundef zeroext %vs2_pix_e.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 185, i16 noundef zeroext %sub6)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 187, i16 noundef zeroext %sub)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 189, i16 noundef zeroext %vwin1_line_s.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 191, i16 noundef zeroext %vwin1_line_e.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 193, i16 noundef zeroext %vwin2_line_s.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 195, i16 noundef zeroext %vwin2_line_e.0)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 197, i16 noundef zeroext %sub13)
  call fastcc void @reg_write16(ptr noundef %add.ptr, i16 noundef zeroext 199, i16 noundef zeroext %4)
  %rev = getelementptr i8, ptr %bridge, i32 -528
  %67 = ptrtoint ptr %rev to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 769, i16 %68)
  %cmp181 = icmp eq i16 %68, 769
  br i1 %cmp181, label %if.then183, label %if.end163.if.end184_crit_edge

if.end163.if.end184_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184

if.then183:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 214, i8 noundef zeroext 0)
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.end163.if.end184_crit_edge
  %69 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags22, align 4
  %and186 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  %spec.select351 = select i1 %tobool187.not, i8 68, i8 69
  %71 = trunc i32 %70 to i8
  %72 = lshr i8 %71, 2
  %73 = and i8 %72, 2
  %74 = or i8 %73, %spec.select351
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 203, i8 noundef zeroext %74)
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 202, i8 noundef zeroext 0)
  %cea_rev = getelementptr i8, ptr %bridge, i32 521
  %75 = ptrtoint ptr %cea_rev to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cea_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %76)
  %cmp204 = icmp ugt i8 %76, 2
  %supports_infoframes = getelementptr i8, ptr %bridge, i32 -523
  %frombool = zext i1 %cmp204 to i8
  %77 = ptrtoint ptr %supports_infoframes to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %frombool, ptr %supports_infoframes, align 1
  br i1 %cmp204, label %if.then208, label %if.end184.if.end215_crit_edge

if.end184.if.end215_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end215

if.then208:                                       ; preds = %if.end184
  %78 = and i8 %74, 7
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 203, i8 noundef zeroext %78)
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 4365, i8 noundef zeroext 4)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i392) #8
  %79 = ptrtoint ptr %val.i.i392 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %val.i.i392, align 1
  %call.i.i393 = call fastcc i32 @reg_read_range(ptr noundef %add.ptr, i16 noundef zeroext 4792, ptr noundef nonnull %val.i.i392, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i393)
  %cmp.i.i394 = icmp slt i32 %call.i.i393, 0
  br i1 %cmp.i.i394, label %reg_read.exit.i395, label %if.then.i397

reg_read.exit.i395:                               ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i392) #8
  br label %reg_set.exit398

if.then.i397:                                     ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %val.i.i392 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %val.i.i392, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i392) #8
  %conv1.i396 = or i8 %81, 2
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 4792, i8 noundef zeroext %conv1.i396) #8
  br label %reg_set.exit398

reg_set.exit398:                                  ; preds = %if.then.i397, %reg_read.exit.i395
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i) #8
  %82 = call ptr @memset(ptr %frame.i, i32 255, i32 68)
  %connector.i = getelementptr i8, ptr %bridge, i32 284
  %call.i = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame.i, ptr noundef %connector.i, ptr noundef %adjusted_mode) #8
  %quantization_range.i = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %frame.i, i32 0, i32 10
  %83 = ptrtoint ptr %quantization_range.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %quantization_range.i, align 4
  %84 = ptrtoint ptr %rgb_quant_range to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rgb_quant_range, align 4
  call void @drm_hdmi_avi_infoframe_quant_range(ptr noundef nonnull %frame.i, ptr noundef %connector.i, ptr noundef %adjusted_mode, i32 noundef %85) #8
  call fastcc void @tda998x_write_if(ptr noundef %add.ptr, i8 noundef zeroext 4, i16 noundef zeroext 4160, ptr noundef nonnull %frame.i) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i) #8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i399) #8
  %86 = call ptr @memset(ptr %frame.i399, i32 255, i32 68)
  %call.i401 = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef nonnull %frame.i399, ptr noundef %connector.i, ptr noundef %adjusted_mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i401)
  %tobool.not.i = icmp eq i32 %call.i401, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i402

if.then.i402:                                     ; preds = %reg_set.exit398
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i) #8
  %87 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %val.i.i.i, align 1
  %call.i.i.i = call fastcc i32 @reg_read_range(ptr noundef %add.ptr, i16 noundef zeroext 4367, ptr noundef nonnull %val.i.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %reg_read.exit.i.i, label %if.then.i.i

reg_read.exit.i.i:                                ; preds = %if.then.i402
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #8
  br label %tda998x_write_vsi.exit

if.then.i.i:                                      ; preds = %if.then.i402
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %val.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #8
  %and.i.i = and i8 %89, -3
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 4367, i8 noundef zeroext %and.i.i) #8
  br label %tda998x_write_vsi.exit

if.else.i:                                        ; preds = %reg_set.exit398
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @tda998x_write_if(ptr noundef %add.ptr, i8 noundef zeroext 2, i16 noundef zeroext 4128, ptr noundef nonnull %frame.i399) #8
  br label %tda998x_write_vsi.exit

tda998x_write_vsi.exit:                           ; preds = %if.else.i, %if.then.i.i, %reg_read.exit.i.i
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i399) #8
  %sink_has_audio = getelementptr i8, ptr %bridge, i32 -522
  %90 = ptrtoint ptr %sink_has_audio to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sink_has_audio, align 2, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool212.not = icmp eq i8 %91, 0
  br i1 %tobool212.not, label %tda998x_write_vsi.exit.if.end215_crit_edge, label %if.then213

tda998x_write_vsi.exit.if.end215_crit_edge:       ; preds = %tda998x_write_vsi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end215

if.then213:                                       ; preds = %tda998x_write_vsi.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @tda998x_configure_audio(ptr noundef %add.ptr)
  br label %if.end215

if.end215:                                        ; preds = %if.then213, %tda998x_write_vsi.exit.if.end215_crit_edge, %if.end184.if.end215_crit_edge
  call void @mutex_unlock(ptr noundef %audio_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_bridge_enable(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_on = getelementptr i8, ptr %bridge, i32 -524
  %0 = ptrtoint ptr %is_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_on, align 8, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %bridge, i32 -628
  tail call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 24, i8 noundef zeroext -1)
  tail call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 25, i8 noundef zeroext -1)
  tail call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 26, i8 noundef zeroext -1)
  %vip_cntrl_0 = getelementptr i8, ptr %bridge, i32 -516
  %2 = ptrtoint ptr %vip_cntrl_0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vip_cntrl_0, align 8
  tail call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 32, i8 noundef zeroext %3)
  %vip_cntrl_1 = getelementptr i8, ptr %bridge, i32 -515
  %4 = ptrtoint ptr %vip_cntrl_1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vip_cntrl_1, align 1
  tail call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 33, i8 noundef zeroext %5)
  %vip_cntrl_2 = getelementptr i8, ptr %bridge, i32 -514
  %6 = ptrtoint ptr %vip_cntrl_2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vip_cntrl_2, align 2
  tail call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 34, i8 noundef zeroext %7)
  %8 = ptrtoint ptr %is_on to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %is_on, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  %val.i.i40 = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %connector, i32 -912
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 767) #8
  %edid_delay_active.i = getelementptr i8, ptr %connector, i32 -360
  %0 = ptrtoint ptr %edid_delay_active.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %edid_delay_active.i, align 8, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %2 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %edid_delay_waitq.i = getelementptr i8, ptr %connector, i32 -412
  %call27.i = call i32 @prepare_to_wait_event(ptr noundef %edid_delay_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 258) #8
  %3 = ptrtoint ptr %edid_delay_active.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %edid_delay_active.i, align 8, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not28.i = icmp eq i8 %4, 0
  br i1 %tobool6.not28.i, label %if.then.i.tda998x_edid_delay_wait.exit.thread48_crit_edge, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  br label %if.end.i

if.then.i.tda998x_edid_delay_wait.exit.thread48_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_edid_delay_wait.exit.thread48

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %call29.i = phi i32 [ %call.i, %cleanup.i.if.end.i_crit_edge ], [ %call27.i, %if.then.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool8.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool8.not.i, label %cleanup.i, label %tda998x_edid_delay_wait.exit

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #8
  %call.i = call i32 @prepare_to_wait_event(ptr noundef %edid_delay_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 258) #8
  %5 = ptrtoint ptr %edid_delay_active.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %edid_delay_active.i, align 8, !range !234
  %tobool6.not.i = icmp eq i8 %6, 0
  br i1 %tobool6.not.i, label %cleanup.i.tda998x_edid_delay_wait.exit.thread48_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

cleanup.i.tda998x_edid_delay_wait.exit.thread48_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_edid_delay_wait.exit.thread48

tda998x_edid_delay_wait.exit.thread48:            ; preds = %cleanup.i.tda998x_edid_delay_wait.exit.thread48_crit_edge, %if.then.i.tda998x_edid_delay_wait.exit.thread48_crit_edge
  call void @finish_wait(ptr noundef %edid_delay_waitq.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %if.end

tda998x_edid_delay_wait.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %cleanup

if.end:                                           ; preds = %tda998x_edid_delay_wait.exit.thread48, %entry.if.end_crit_edge
  %rev = getelementptr i8, ptr %connector, i32 -812
  %7 = ptrtoint ptr %rev to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 769, i16 %8)
  %cmp = icmp eq i16 %8, 769
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i = call fastcc i32 @reg_read_range(ptr noundef %add.ptr, i16 noundef zeroext 4763, ptr noundef nonnull %val.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %reg_read.exit.i, label %if.then.i38

reg_read.exit.i:                                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  br label %if.end3

if.then.i38:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  %and.i = and i8 %11, -3
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 4763, i8 noundef zeroext %and.i) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then.i38, %reg_read.exit.i, %if.end.if.end3_crit_edge
  %call4 = call ptr @drm_do_get_edid(ptr noundef %connector, ptr noundef nonnull @read_edid_block, ptr noundef %add.ptr) #8
  %12 = ptrtoint ptr %rev to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 769, i16 %13)
  %cmp7 = icmp eq i16 %13, 769
  br i1 %cmp7, label %if.then9, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i40) #8
  %14 = ptrtoint ptr %val.i.i40 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %val.i.i40, align 1
  %call.i.i41 = call fastcc i32 @reg_read_range(ptr noundef %add.ptr, i16 noundef zeroext 4763, ptr noundef nonnull %val.i.i40, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp.i.i42 = icmp slt i32 %call.i.i41, 0
  br i1 %cmp.i.i42, label %reg_read.exit.i43, label %if.then.i44

reg_read.exit.i43:                                ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i40) #8
  br label %if.end10

if.then.i44:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %val.i.i40 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val.i.i40, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i40) #8
  %conv1.i = or i8 %16, 2
  call fastcc void @reg_write(ptr noundef %add.ptr, i16 noundef zeroext 4763, i8 noundef zeroext %conv1.i) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then.i44, %reg_read.exit.i43, %if.end3.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %call4, null
  br i1 %tobool11.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %hdmi = getelementptr i8, ptr %connector, i32 -908
  %17 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdmi, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.92) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call4) #8
  %cec_notify = getelementptr i8, ptr %connector, i32 1076
  %19 = ptrtoint ptr %cec_notify to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cec_notify, align 4
  call void @cec_notifier_set_phys_addr_from_edid(ptr noundef %20, ptr noundef nonnull %call4) #8
  %audio_mutex = getelementptr i8, ptr %connector, i32 -744
  call void @mutex_lock_nested(ptr noundef %audio_mutex, i32 noundef 0) #8
  %call15 = call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call4) #8
  %call16 = call zeroext i1 @drm_detect_monitor_audio(ptr noundef nonnull %call4) #8
  %sink_has_audio = getelementptr i8, ptr %connector, i32 -806
  %frombool = zext i1 %call16 to i8
  %21 = ptrtoint ptr %sink_has_audio to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %sink_has_audio, align 2
  call void @mutex_unlock(ptr noundef %audio_mutex) #8
  call void @kfree(ptr noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %tda998x_edid_delay_wait.exit
  %retval.0 = phi i32 [ %call15, %if.end13 ], [ 0, %do.end ], [ 0, %tda998x_edid_delay_wait.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @tda998x_connector_best_encoder(ptr nocapture noundef readonly %connector) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr i8, ptr %connector, i32 -156
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_edid_block(ptr noundef %data, ptr noundef %buf, i32 noundef %blk, i32 noundef %length) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %blk.tr = trunc i32 %blk to i8
  %conv = shl i8 %blk.tr, 7
  %div132 = lshr i32 %blk, 1
  %conv1 = trunc i32 %div132 to i8
  %edid_mutex = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %edid_mutex, i32 noundef 0) #8
  tail call fastcc void @reg_write(ptr noundef %data, i16 noundef zeroext 2555, i8 noundef zeroext -96)
  tail call fastcc void @reg_write(ptr noundef %data, i16 noundef zeroext 2556, i8 noundef zeroext %conv)
  tail call fastcc void @reg_write(ptr noundef %data, i16 noundef zeroext 2557, i8 noundef zeroext 96)
  tail call fastcc void @reg_write(ptr noundef %data, i16 noundef zeroext 2558, i8 noundef zeroext %conv1)
  %wq_edid_wait = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %wq_edid_wait to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %wq_edid_wait, align 4
  tail call fastcc void @reg_write(ptr noundef %data, i16 noundef zeroext 2554, i8 noundef zeroext 1)
  tail call fastcc void @reg_write(ptr noundef %data, i16 noundef zeroext 2554, i8 noundef zeroext 0)
  %hdmi = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdmi, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %entry.for.body_crit_edge, label %if.then

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1243) #8
  %5 = ptrtoint ptr %wq_edid_wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %wq_edid_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.then.if.end77_crit_edge, label %if.then17

if.then.if.end77_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then17:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wq_edid = getelementptr inbounds %struct.tda998x_priv, ptr %data, i32 0, i32 18
  %call20146 = call i32 @prepare_to_wait_event(ptr noundef %wq_edid, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %8 = ptrtoint ptr %wq_edid_wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %wq_edid_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool23.not147 = icmp eq i32 %9, 0
  br i1 %tobool23.not147, label %if.end68.thread158, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  br label %cleanup

if.end68.thread158:                               ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wq_edid, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end77

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then17.cleanup_crit_edge
  %__ret18.1148 = phi i32 [ %__ret18.1, %cleanup.cleanup_crit_edge ], [ 10, %if.then17.cleanup_crit_edge ]
  %call43 = call i32 @schedule_timeout(i32 noundef %__ret18.1148) #8
  %call20 = call i32 @prepare_to_wait_event(ptr noundef %wq_edid, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %10 = ptrtoint ptr %wq_edid_wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %wq_edid_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool23.not = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool29.not = icmp eq i32 %call43, 0
  %12 = select i1 %tobool23.not, i1 %tobool29.not, i1 false
  %__ret18.1 = select i1 %12, i32 1, i32 %call43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.1)
  %tobool36.not = icmp eq i32 %__ret18.1, 0
  %13 = select i1 %tobool23.not, i1 true, i1 %tobool36.not
  br i1 %13, label %if.end46, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %cleanup
  call void @finish_wait(ptr noundef %wq_edid, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.1)
  %cmp = icmp slt i32 %__ret18.1, 0
  br i1 %cmp, label %do.end52, label %if.end68

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdmi, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %__ret18.1) #11
  br label %failed

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0150 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ 100, %entry.for.body_crit_edge ]
  call void @msleep(i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %val.i, align 1
  %call.i = call fastcc i32 @reg_read_range(ptr noundef %data, i16 noundef zeroext 17, ptr noundef nonnull %val.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %reg_read.exit.thread, label %reg_read.exit

reg_read.exit.thread:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %failed

reg_read.exit:                                    ; preds = %for.body
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool64.not = icmp eq i8 %19, 0
  br i1 %tobool64.not, label %for.inc, label %reg_read.exit.if.end77_crit_edge

reg_read.exit.if.end77_crit_edge:                 ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

for.inc:                                          ; preds = %reg_read.exit
  %dec = add nsw i32 %i.0150, -1
  %cmp56 = icmp ugt i32 %i.0150, 1
  br i1 %cmp56, label %for.inc.for.body_crit_edge, label %for.inc.do.end74_crit_edge

for.inc.do.end74_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end68:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.1)
  %cmp69 = icmp eq i32 %__ret18.1, 0
  br i1 %cmp69, label %if.end68.do.end74_crit_edge, label %if.end68.if.end77_crit_edge

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.end68.do.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

do.end74:                                         ; preds = %if.end68.do.end74_crit_edge, %for.inc.do.end74_crit_edge
  %20 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdmi, align 4
  %dev76 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.97) #11
  br label %failed

if.end77:                                         ; preds = %if.end68.if.end77_crit_edge, %reg_read.exit.if.end77_crit_edge, %if.end68.thread158, %if.then.if.end77_crit_edge
  %call78 = call fastcc i32 @reg_read_range(ptr noundef %data, i16 noundef zeroext 2304, ptr noundef %buf, i32 noundef %length)
  call void @__sanitizer_cov_trace_cmp4(i32 %call78, i32 %length)
  %cmp79.not = icmp eq i32 %call78, %length
  br i1 %cmp79.not, label %if.end77.failed_crit_edge, label %do.end84

if.end77.failed_crit_edge:                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hdmi, align 4
  %dev86 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.100, i32 noundef %blk, i32 noundef %call78) #11
  br label %failed

failed:                                           ; preds = %do.end84, %if.end77.failed_crit_edge, %do.end74, %reg_read.exit.thread, %do.end52
  %ret.0 = phi i32 [ %__ret18.1, %do.end52 ], [ -110, %do.end74 ], [ %call78, %do.end84 ], [ 0, %if.end77.failed_crit_edge ], [ %call.i, %reg_read.exit.thread ]
  call void @mutex_unlock(ptr noundef %edid_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #2 align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %0 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -2, ptr %addr.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !230
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %cec_addr.i = getelementptr i8, ptr %connector, i32 -810
  %4 = ptrtoint ptr %cec_addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cec_addr.i, align 2
  %conv.i = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %2, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %addr.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %10 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %12 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %val.i, ptr %buf7.i, align 4
  %hdmi.i = getelementptr i8, ptr %connector, i32 -908
  %14 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdmi.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.cec_read.exit_crit_edge

entry.cec_read.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdmi.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr.addr.i, align 1
  %conv10.i = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53, i32 noundef %call.i, i32 noundef %conv10.i) #11
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %val.i, align 1
  br label %cec_read.exit

cec_read.exit:                                    ; preds = %do.end.i, %entry.cec_read.exit_crit_edge
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_connector_destroy(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_cleanup(ptr noundef %connector) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_default_rgb_quant_range(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_write16(ptr noundef %priv, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %conv = zext i16 %reg to i32
  %conv1 = trunc i16 %reg to i8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %buf, align 1
  %5 = lshr i16 %val, 8
  %conv3 = trunc i16 %5 to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3, ptr %2, align 1
  %conv5 = trunc i16 %val to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %3, align 1
  %mutex = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %8 = lshr i32 %conv, 8
  %current_page.i = getelementptr inbounds %struct.tda998x_priv, ptr %priv, i32 0, i32 5
  %9 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %current_page.i, align 1
  %conv1.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %8, %conv1.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %entry
  %11 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdmi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %13 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %conv6.i = trunc i32 %8 to i8
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %buf.i, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6.i, ptr %13, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %set_page.exit, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6.i, ptr %current_page.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %if.end

set_page.exit:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %out

if.end:                                           ; preds = %cleanup.thread.i, %entry.if.end_crit_edge
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %do.end, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %call.i, i32 noundef %conv) #11
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %set_page.exit
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_hdmi_avi_infoframe_quant_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda998x_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %data, ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.103) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.end.i.if.end4.i_crit_edge
  %crtcs.1.i = phi i32 [ 1, %do.end.i ], [ %call2.i, %if.end.i.if.end4.i_crit_edge ]
  %encoder.i = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 24
  %possible_crtcs.i = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 24, i32 6
  %4 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %crtcs.1.i, ptr %possible_crtcs.i, align 4
  %call6.i = tail call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %encoder.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.tda998x_encoder_init.exit_crit_edge

if.end4.i.tda998x_encoder_init.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_encoder_init.exit

if.end9.i:                                        ; preds = %if.end4.i
  %bridge.i = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 25
  %call11.i = tail call i32 @drm_bridge_attach(ptr noundef %encoder.i, ptr noundef %bridge.i, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.tda998x_encoder_init.exit_crit_edge, label %err_bridge.i

if.end9.i.tda998x_encoder_init.exit_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tda998x_encoder_init.exit

err_bridge.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_encoder_cleanup(ptr noundef %encoder.i) #8
  br label %tda998x_encoder_init.exit

tda998x_encoder_init.exit:                        ; preds = %err_bridge.i, %if.end9.i.tda998x_encoder_init.exit_crit_edge, %if.end4.i.tda998x_encoder_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i.tda998x_encoder_init.exit_crit_edge ], [ %call6.i, %if.end4.i.tda998x_encoder_init.exit_crit_edge ], [ %call11.i, %err_bridge.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda998x_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %encoder = getelementptr inbounds %struct.tda998x_priv, ptr %1, i32 0, i32 24
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_conn_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !110, !112, !113, !114, !115, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !136, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !175, !176, !177, !178, !180, !182, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !206, !208, !209, !210, !212, !214, !215, !216, !217, !219}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @__initcall__kmod_tda998x__320_2109_tda998x_driver_init6, !1, !"__initcall__kmod_tda998x__320_2109_tda998x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 2109, i32 1}
!2 = !{ptr @__exitcall_tda998x_driver_exit, !1, !"__exitcall_tda998x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author321, !4, !"__UNIQUE_ID_author321", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 2111, i32 1}
!5 = !{ptr @__UNIQUE_ID_description322, !6, !"__UNIQUE_ID_description322", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 2112, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 2113, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 2103, i32 11}
!12 = !{ptr @tda998x_driver, !13, !"tda998x_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 2099, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 2064, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tda998x_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tda998x_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tda998x_create.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1822, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tda998x_create.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1823, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tda998x_create.__key.9, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1824, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tda998x_create.__key.11, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1826, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tda998x_create.__key.13, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1827, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tda998x_create.__key.15, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1828, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1848, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @tda998x_create._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @tda998x_create._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @tda998x_create._entry.20, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1854, i32 3}
!48 = !{ptr @tda998x_create._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1865, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tda998x_create._entry.22, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @tda998x_create._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1868, i32 3}
!56 = !{ptr @tda998x_create._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tda998x_create._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1871, i32 3}
!60 = !{ptr @tda998x_create._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tda998x_create._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1874, i32 3}
!64 = !{ptr @tda998x_create._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tda998x_create._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1877, i32 3}
!68 = !{ptr @tda998x_create._entry.35, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @tda998x_create._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @tda998x_create.__key.38, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1908, i32 3}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1920, i32 4}
!75 = !{ptr @tda998x_create._entry.40, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @tda998x_create._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1951, i32 25}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1967, i32 34}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 417, i32 3}
!83 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cec_write._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @cec_write._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 600, i32 2}
!88 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @reg_read_range._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @reg_read_range._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 567, i32 4}
!93 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @set_page._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @set_page._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 663, i32 3}
!98 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @reg_write._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @reg_write._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 441, i32 3}
!103 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @cec_read._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @cec_read._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 801, i32 3}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 520, i32 38}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 522, i32 3}
!112 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @tda998x_cec_hook_init._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @tda998x_cec_hook_init._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1697, i32 34}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1703, i32 3}
!119 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @tda998x_get_audio_ports._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @tda998x_get_audio_ports._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1723, i32 4}
!124 = !{ptr @tda998x_get_audio_ports._entry.62, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @tda998x_get_audio_ports._entry_ptr.64, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1729, i32 4}
!128 = !{ptr @tda998x_get_audio_ports._entry.65, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @tda998x_get_audio_ports._entry_ptr.67, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1734, i32 4}
!132 = !{ptr @tda998x_get_audio_ports._entry.68, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @tda998x_get_audio_ports._entry_ptr.70, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1184, i32 8}
!138 = !{ptr @audio_codec_ops, !139, !"audio_codec_ops", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1162, i32 36}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1092, i32 3}
!142 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @tda998x_audio_hw_params._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @tda998x_audio_hw_params._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1099, i32 3}
!147 = !{ptr @tda998x_audio_hw_params._entry.76, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @tda998x_audio_hw_params._entry_ptr.78, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 907, i32 3}
!151 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @tda998x_derive_routing._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @tda998x_derive_routing._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @tda998x_audio_route, !155, !"tda998x_audio_route", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 886, i32 41}
!156 = !{ptr @.str.81, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 985, i32 3}
!158 = !{ptr @.str.82, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @tda998x_derive_cts_n._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @tda998x_derive_cts_n._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 933, i32 2}
!163 = !{ptr @.str.84, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @tda998x_get_adiv.__UNIQUE_ID_ddebug313, !162, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!165 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 617, i32 3}
!167 = !{ptr @.str.86, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @reg_write_range._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @reg_write_range._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @reg_write_range._entry.87, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 632, i32 3}
!172 = !{ptr @reg_write_range._entry_ptr.88, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 836, i32 3}
!175 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @tda998x_write_if._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @tda998x_write_if._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @tda998x_bridge_funcs, !179, !"tda998x_bridge_funcs", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1679, i32 38}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1368, i32 3}
!182 = !{ptr @tda998x_connector_helper_funcs, !183, !"tda998x_connector_helper_funcs", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1329, i32 41}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1303, i32 3}
!186 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @tda998x_connector_get_modes._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @tda998x_connector_get_modes._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1245, i32 4}
!191 = !{ptr @.str.95, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @read_edid_block._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @read_edid_block._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1261, i32 3}
!196 = !{ptr @read_edid_block._entry.96, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @read_edid_block._entry_ptr.98, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1268, i32 3}
!200 = !{ptr @read_edid_block._entry.99, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @read_edid_block._entry_ptr.101, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @tda998x_connector_funcs, !203, !"tda998x_connector_funcs", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1207, i32 41}
!204 = !{ptr @tda998x_bridge_mode_set.tda998x_full_to_limited_range, !205, !"tda998x_full_to_limited_range", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 1572, i32 13}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 682, i32 3}
!208 = !{ptr @reg_write16._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @reg_write16._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @tda998x_ops, !211, !"tda998x_ops", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 2053, i32 35}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 2015, i32 3}
!214 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @tda998x_encoder_init._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @tda998x_encoder_init._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @tda998x_dt_ids, !218, !"tda998x_dt_ids", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 2086, i32 34}
!219 = !{ptr @tda998x_ids, !220, !"tda998x_ids", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/i2c/tda998x_drv.c", i32 2093, i32 35}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{!"auto-init"}
!231 = !{i64 976206}
!232 = !{i64 973909}
!233 = !{i64 973719}
!234 = !{i8 0, i8 2}
!235 = !{i64 2148233338, i64 2148233343, i64 2148233356, i64 2148233400, i64 2148233434, i64 2148233455}
