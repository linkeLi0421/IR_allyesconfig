; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/sii902x.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/sii902x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.atomic_t = type { i32 }
%struct.sii902x_sample_freq = type { i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.sii902x = type { ptr, ptr, %struct.drm_bridge, %struct.drm_connector, ptr, ptr, [2 x %struct.regulator_bulk_data], %struct.mutex, %struct.sii902x_audio }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.sii902x_audio = type { ptr, ptr, [4 x i32] }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.87 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.of_endpoint = type { i32, i32, ptr }

@__initcall__kmod_sii902x__326_1111_sii902x_driver_init6 = internal global ptr @sii902x_driver_init, section ".initcall6.init", align 4
@sii902x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sii902x_probe, ptr @sii902x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sii902x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sii902x_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sii902x_driver_exit = internal global ptr @sii902x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author327 = internal constant [68 x i8] c"sii902x.author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description328 = internal constant [48 x i8] c"sii902x.description=SII902x RGB -> HDMI bridges\00", section ".modinfo", align 1
@__UNIQUE_ID_file329 = internal constant [44 x i8] c"sii902x.file=drivers/gpu/drm/bridge/sii902x\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [20 x i8] c"sii902x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sii902x\00", [24 x i8] zeroinitializer }, align 32
@sii902x_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sil,sii9022\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sii902x_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sii9022\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sii902x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1031, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I2C adapter not suitable\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sii902x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/bridge/sii902x.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sii902x_probe._entry_ptr = internal global ptr @sii902x_probe._entry, section ".printk_index", align 4
@sii902x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sii902x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 222, ptr null, ptr null, ptr @sii902x_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sii902x:1040:(&sii902x_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@sii902x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1048, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to retrieve/request reset gpio: %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@sii902x_probe._entry_ptr.10 = internal global ptr @sii902x_probe._entry.8, section ".printk_index", align 4
@sii902x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sii902x->mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iovcc\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cvcc12\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable supplies\00", [38 x i8] zeroinitializer }, align 32
@sii902x_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @sii902x_volatile_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sii902x_volatile_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 255 }], [24 x i8] zeroinitializer }, align 32
@sii902x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 975, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regmap_read failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sii902x_init\00", [19 x i8] zeroinitializer }, align 32
@sii902x_init._entry_ptr = internal global ptr @sii902x_init._entry, section ".printk_index", align 4
@sii902x_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 981, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid chipid: %02x (expecting 0xb0)\0A\00", [57 x i8] zeroinitializer }, align 32
@sii902x_init._entry_ptr.19 = internal global ptr @sii902x_init._entry.17, section ".printk_index", align 4
@sii902x_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @sii902x_bridge_attach, ptr null, ptr null, ptr null, ptr @sii902x_bridge_disable, ptr null, ptr @sii902x_bridge_mode_set, ptr null, ptr @sii902x_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@default_sii902x_timings = internal constant { %struct.drm_bridge_timings, [16 x i8] } { %struct.drm_bridge_timings { i32 70, i32 0, i32 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Fix bridge driver to make connector optional!\00", [50 x i8] zeroinitializer }, align 32
@sii902x_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @sii902x_get_modes, ptr null, ptr @sii902x_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sii902x_bridge_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"sii902x driver is only compatible with DRM devices supporting atomic updates\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sii902x_bridge_attach\00", [42 x i8] zeroinitializer }, align 32
@sii902x_bridge_attach._entry_ptr = internal global ptr @sii902x_bridge_attach._entry, section ".printk_index", align 4
@sii902x_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @sii902x_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't fill AVI infoframe\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to pack AVI infoframe: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sii902x_audio_codec_init.audio_fifo_id = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\02\03", [28 x i8] zeroinitializer }, align 32
@sii902x_audio_codec_init.i2s_lane_id = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\10 0", [28 x i8] zeroinitializer }, align 32
@sii902x_audio_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr null, ptr @sii902x_audio_hw_params, ptr null, ptr @sii902x_audio_shutdown, ptr @sii902x_audio_mute, ptr @sii902x_audio_get_eld, ptr @sii902x_audio_get_dai_id, ptr null, i8 -128 }, [60 x i8] zeroinitializer }, align 32
@__const.sii902x_audio_codec_init.codec_data = private unnamed_addr constant { ptr, i8, [3 x i8], i32, ptr } { ptr @sii902x_audio_codec_ops, i8 -128, [3 x i8] zeroinitializer, i32 0, ptr null }, align 4
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"#sound-dai-cells\00", [47 x i8] zeroinitializer }, align 32
@sii902x_audio_codec_init.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sii902x_audio_codec_init\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: No \22#sound-dai-cells\22, no audio\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sil,i2s-data-lanes\00", [45 x i8] zeroinitializer }, align 32
@sii902x_audio_codec_init.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.29, i8 0, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: No \22sil,i2s-data-lanes\22, use default <0>\0A\00", [50 x i8] zeroinitializer }, align 32
@sii902x_audio_codec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.3, i32 779, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Error gettin \22sil,i2s-data-lanes\22: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@sii902x_audio_codec_init._entry_ptr = internal global ptr @sii902x_audio_codec_init._entry, section ".printk_index", align 4
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@sii902x_audio_codec_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.26, ptr @.str.3, i32 791, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: No clock (audio mclk) found: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@sii902x_audio_codec_init._entry_ptr.34 = internal global ptr @sii902x_audio_codec_init._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@sii902x_audio_hw_params.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sii902x_audio_hw_params\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: I2S master mode not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@sii902x_audio_hw_params.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.38, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Unsupported i2s format %u\0A\00", [33 x i8] zeroinitializer }, align 32
@sii902x_audio_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.3, i32 565, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Unsupported sample width %u\0A\00", [63 x i8] zeroinitializer }, align 32
@sii902x_audio_hw_params._entry_ptr = internal global ptr @sii902x_audio_hw_params._entry, section ".printk_index", align 4
@sii902x_sample_freq = internal constant { [7 x %struct.sii902x_sample_freq], [40 x i8] } { [7 x %struct.sii902x_sample_freq] [%struct.sii902x_sample_freq { i32 32000, i8 8 }, %struct.sii902x_sample_freq { i32 44000, i8 16 }, %struct.sii902x_sample_freq { i32 48000, i8 24 }, %struct.sii902x_sample_freq { i32 88000, i8 32 }, %struct.sii902x_sample_freq { i32 96000, i8 40 }, %struct.sii902x_sample_freq { i32 176000, i8 48 }, %struct.sii902x_sample_freq { i32 192000, i8 56 }], [40 x i8] zeroinitializer }, align 32
@sii902x_audio_hw_params._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Enabling mclk failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sii902x_audio_hw_params._entry_ptr.42 = internal global ptr @sii902x_audio_hw_params._entry.40, section ".printk_index", align 4
@sii902x_audio_hw_params.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.43, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Inaccurate reference clock (%ld/%d != %u)\0A\00", [53 x i8] zeroinitializer }, align 32
@sii902x_audio_hw_params._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.3, i32 626, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to pack audio infoframe: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sii902x_audio_hw_params._entry_ptr.46 = internal global ptr @sii902x_audio_hw_params._entry.44, section ".printk_index", align 4
@sii902x_audio_hw_params.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.47, i8 0, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: hdmi audio enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@sii902x_audio_hw_params._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.36, ptr @.str.3, i32 657, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: hdmi audio enable failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sii902x_audio_hw_params._entry_ptr.50 = internal global ptr @sii902x_audio_hw_params._entry.48, section ".printk_index", align 4
@sii902x_mclk_div_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 128, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1152, i32 192], [32 x i8] zeroinitializer }, align 32
@sii902x_mute.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sii902x_mute\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Muted\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unmuted\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sii902x_i2c_bypass_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 875, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to acquire the i2c bus\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sii902x_i2c_bypass_select\00", [38 x i8] zeroinitializer }, align 32
@sii902x_i2c_bypass_select._entry_ptr = internal global ptr @sii902x_i2c_bypass_select._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sii902x_i2c_bypass_deselect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 923, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read status (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sii902x_i2c_bypass_deselect\00", [36 x i8] zeroinitializer }, align 32
@sii902x_i2c_bypass_deselect._entry_ptr = internal global ptr @sii902x_i2c_bypass_deselect._entry, section ".printk_index", align 4
@sii902x_i2c_bypass_deselect._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 946, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to release the i2c bus\0A\00", [33 x i8] zeroinitializer }, align 32
@sii902x_i2c_bypass_deselect._entry_ptr.61 = internal global ptr @sii902x_i2c_bypass_deselect._entry.59, section ".printk_index", align 4
@switch.table.sii902x_audio_hw_params = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"@\80\C0@\C0", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44000, i64 48000, i64 88000, i64 96000, i64 176000, i64 192000]
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"sii902x_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1102, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1106, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"sii902x_dt_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1090, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"sii902x_i2c_ids\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1096, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1031, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [22 x i8] c"sii902x_regmap_config\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 811, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1040, i32 20 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1044, i32 53 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1047, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1052, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1054, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1055, i32 32 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1064, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant [23 x i8] c"sii902x_volatile_table\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 806, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant [24 x i8] c"sii902x_volatile_ranges\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 802, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 975, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 980, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [21 x i8] c"sii902x_bridge_funcs\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 441, i32 38 }
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"default_sii902x_timings\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 953, i32 40 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 412, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [31 x i8] c"sii902x_connector_helper_funcs\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 319, i32 48 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 420, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [24 x i8] c"sii902x_connector_funcs\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 264, i32 41 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 385, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 391, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"audio_fifo_id\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 738, i32 18 }
@___asan_gen_.179 = private unnamed_addr constant [12 x i8] c"i2s_lane_id\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 744, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant [24 x i8] c"sii902x_audio_codec_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 726, i32 36 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 759, i32 43 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 760, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 766, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 771, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 777, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 788, i32 51 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 790, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 796, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 516, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 532, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 564, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"sii902x_sample_freq\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 491, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 578, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 587, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 625, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 650, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 656, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [23 x i8] c"sii902x_mclk_div_table\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 461, i32 18 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 454, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 875, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 923, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.297 = private constant [36 x i8] c"../drivers/gpu/drm/bridge/sii902x.c\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 946, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [37 x i8] c"switch.table.sii902x_audio_hw_params\00", align 1
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_description328, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__exitcall_sii902x_driver_exit, ptr @__initcall__kmod_sii902x__326_1111_sii902x_driver_init6, ptr @sii902x_audio_codec_init._entry, ptr @sii902x_audio_codec_init._entry.32, ptr @sii902x_audio_codec_init._entry_ptr, ptr @sii902x_audio_codec_init._entry_ptr.34, ptr @sii902x_audio_hw_params._entry, ptr @sii902x_audio_hw_params._entry.40, ptr @sii902x_audio_hw_params._entry.44, ptr @sii902x_audio_hw_params._entry.48, ptr @sii902x_audio_hw_params._entry_ptr, ptr @sii902x_audio_hw_params._entry_ptr.42, ptr @sii902x_audio_hw_params._entry_ptr.46, ptr @sii902x_audio_hw_params._entry_ptr.50, ptr @sii902x_bridge_attach._entry, ptr @sii902x_bridge_attach._entry_ptr, ptr @sii902x_driver_exit, ptr @sii902x_i2c_bypass_deselect._entry, ptr @sii902x_i2c_bypass_deselect._entry.59, ptr @sii902x_i2c_bypass_deselect._entry_ptr, ptr @sii902x_i2c_bypass_deselect._entry_ptr.61, ptr @sii902x_i2c_bypass_select._entry, ptr @sii902x_i2c_bypass_select._entry_ptr, ptr @sii902x_init._entry, ptr @sii902x_init._entry.17, ptr @sii902x_init._entry_ptr, ptr @sii902x_init._entry_ptr.19, ptr @sii902x_probe._entry, ptr @sii902x_probe._entry.8, ptr @sii902x_probe._entry_ptr, ptr @sii902x_probe._entry_ptr.10, ptr @sii902x_driver, ptr @.str, ptr @sii902x_dt_ids, ptr @sii902x_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sii902x_probe._key, ptr @sii902x_regmap_config, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @sii902x_probe.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sii902x_volatile_table, ptr @sii902x_volatile_ranges, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @sii902x_bridge_funcs, ptr @default_sii902x_timings, ptr @.str.20, ptr @sii902x_connector_helper_funcs, ptr @.str.21, ptr @.str.22, ptr @sii902x_connector_funcs, ptr @.str.23, ptr @.str.24, ptr @sii902x_audio_codec_init.audio_fifo_id, ptr @sii902x_audio_codec_init.i2s_lane_id, ptr @sii902x_audio_codec_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @sii902x_sample_freq, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @sii902x_mclk_div_table, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @switch.table.sii902x_audio_hw_params], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_volatile_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_sii902x_timings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_bridge_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_audio_codec_init.audio_fifo_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_audio_codec_init.i2s_lane_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_audio_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_audio_codec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_audio_codec_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_audio_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_sample_freq to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_audio_hw_params._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_audio_hw_params._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_audio_hw_params._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_mclk_div_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_i2c_bypass_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_i2c_bypass_deselect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii902x_i2c_bypass_deselect._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sii902x_audio_hw_params to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sii902x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sii902x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @sii902x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  %chipid.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1480, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 8
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @sii902x_regmap_config, ptr noundef nonnull @sii902x_probe._key, ptr noundef nonnull @.str.6) #7
  %regmap = getelementptr inbounds %struct.sii902x, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %regmap, align 4
  %cmp.i81 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call13 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 3) #7
  %reset_gpio = getelementptr inbounds %struct.sii902x, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %reset_gpio, align 8
  %cmp.i82 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %do.end19, label %do.body25

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %10) #10
  %11 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset_gpio, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

do.body25:                                        ; preds = %if.end12
  %mutex = getelementptr inbounds %struct.sii902x, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @sii902x_probe.__key) #7
  %supplies = getelementptr inbounds %struct.sii902x, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.12, ptr %supplies, align 8
  %arrayidx29 = getelementptr %struct.sii902x, ptr %call.i, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.13, ptr %arrayidx29, align 4
  %call32 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %do.body25.cleanup_crit_edge, label %if.end34

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %do.body25
  %call37 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call37, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %status.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chipid.i) #7
  %19 = ptrtoint ptr %chipid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %chipid.i, align 4
  %20 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset_gpio, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end41.sii902x_reset.exit.i_crit_edge, label %if.end.i.i

if.end41.sii902x_reset.exit.i_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sii902x_reset.exit.i

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %21, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #7
  %22 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reset_gpio, align 8
  tail call void @gpiod_set_value(ptr noundef %23, i32 noundef 0) #7
  br label %sii902x_reset.exit.i

sii902x_reset.exit.i:                             ; preds = %if.end.i.i, %if.end41.sii902x_reset.exit.i_crit_edge
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i83 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 199, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i, label %if.end.i, label %sii902x_reset.exit.i.sii902x_init.exit_crit_edge

sii902x_reset.exit.i.sii902x_init.exit_crit_edge: ; preds = %sii902x_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sii902x_init.exit

if.end.i:                                         ; preds = %sii902x_reset.exit.i
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call3.i = call i32 @regmap_bulk_read(ptr noundef %27, i32 noundef 27, ptr noundef nonnull %chipid.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.15, i32 noundef %call3.i) #10
  br label %sii902x_init.exit

if.end6.i:                                        ; preds = %if.end.i
  %28 = ptrtoint ptr %chipid.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chipid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %29)
  %cmp.not.i = icmp eq i8 %29, -80
  br i1 %cmp.not.i, label %if.end14.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i84 = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.18, i32 noundef %conv.i84) #10
  br label %sii902x_init.exit.thread

if.end14.i:                                       ; preds = %if.end6.i
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call16.i = call i32 @regmap_read(ptr noundef %31, i32 noundef 61, ptr noundef nonnull %status.i) #7
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status.i, align 4
  %call18.i = call i32 @regmap_write(ptr noundef %33, i32 noundef 61, i32 noundef %35) #7
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 8
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp20.i = icmp sgt i32 %39, 0
  br i1 %cmp20.i, label %if.then22.i, label %if.end14.i.if.end32.i_crit_edge

if.end14.i.if.end32.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then22.i:                                      ; preds = %if.end14.i
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call24.i = call i32 @regmap_write(ptr noundef %41, i32 noundef 60, i32 noundef 1) #7
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 8
  %irq26.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %irq26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq26.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i85.i = icmp eq ptr %47, null
  br i1 %tobool.not.i85.i, label %if.end.i86.i, label %if.then22.i.dev_name.exit.i_crit_edge

if.then22.i.dev_name.exit.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i86.i:                                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i86.i, %if.then22.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %49, %if.end.i86.i ], [ %47, %if.then22.i.dev_name.exit.i_crit_edge ]
  %call28.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1.i, i32 noundef %45, ptr noundef null, ptr noundef nonnull @sii902x_interrupt, i32 noundef 8192, ptr noundef %retval.0.i.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %dev_name.exit.i.if.end32.i_crit_edge, label %dev_name.exit.i.sii902x_init.exit_crit_edge

dev_name.exit.i.sii902x_init.exit_crit_edge:      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sii902x_init.exit

dev_name.exit.i.if.end32.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %dev_name.exit.i.if.end32.i_crit_edge, %if.end14.i.if.end32.i_crit_edge
  %bridge.i = getelementptr inbounds %struct.sii902x, ptr %call.i, i32 0, i32 2
  %funcs.i = getelementptr inbounds %struct.sii902x, ptr %call.i, i32 0, i32 2, i32 7
  %50 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @sii902x_bridge_funcs, ptr %funcs.i, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4, i32 27
  %51 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node.i, align 8
  %of_node34.i = getelementptr inbounds %struct.sii902x, ptr %call.i, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %of_node34.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %of_node34.i, align 4
  %timings.i = getelementptr inbounds %struct.sii902x, ptr %call.i, i32 0, i32 2, i32 6
  %54 = ptrtoint ptr %timings.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @default_sii902x_timings, ptr %timings.i, align 8
  call void @drm_bridge_add(ptr noundef %bridge.i) #7
  call fastcc void @sii902x_audio_codec_init(ptr noundef nonnull %call.i, ptr noundef %dev1.i) #7
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4, i32 8
  %57 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %58 = load ptr, ptr %call.i, align 8
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter.i, align 8
  %call40.i = call ptr @i2c_mux_alloc(ptr noundef %60, ptr noundef %dev1.i, i32 noundef 1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @sii902x_i2c_bypass_select, ptr noundef nonnull @sii902x_i2c_bypass_deselect) #7
  %i2cmux.i = getelementptr inbounds %struct.sii902x, ptr %call.i, i32 0, i32 5
  %61 = ptrtoint ptr %i2cmux.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call40.i, ptr %i2cmux.i, align 4
  %tobool42.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool42.not.i, label %if.end32.i.sii902x_init.exit.thread_crit_edge, label %if.end44.i

if.end32.i.sii902x_init.exit.thread_crit_edge:    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sii902x_init.exit.thread

if.end44.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %call40.i, i32 0, i32 3
  %62 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %priv.i, align 4
  %63 = ptrtoint ptr %i2cmux.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2cmux.i, align 4
  %call47.i = call i32 @i2c_mux_add_adapter(ptr noundef %64, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %sii902x_init.exit

sii902x_init.exit.thread:                         ; preds = %if.end32.i.sii902x_init.exit.thread_crit_edge, %do.end11.i
  %retval.0.i.ph = phi i32 [ -12, %if.end32.i.sii902x_init.exit.thread_crit_edge ], [ -22, %do.end11.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br label %if.then44

sii902x_init.exit:                                ; preds = %if.end44.i, %dev_name.exit.i.sii902x_init.exit_crit_edge, %do.end.i, %sii902x_reset.exit.i.sii902x_init.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %do.end.i ], [ %call47.i, %if.end44.i ], [ %call.i83, %sii902x_reset.exit.i.sii902x_init.exit_crit_edge ], [ %call28.i, %dev_name.exit.i.sii902x_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp43 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp43, label %sii902x_init.exit.if.then44_crit_edge, label %sii902x_init.exit.cleanup_crit_edge

sii902x_init.exit.cleanup_crit_edge:              ; preds = %sii902x_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sii902x_init.exit.if.then44_crit_edge:            ; preds = %sii902x_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.then44:                                        ; preds = %sii902x_init.exit.if.then44_crit_edge, %sii902x_init.exit.thread
  %retval.0.i87 = phi i32 [ %retval.0.i.ph, %sii902x_init.exit.thread ], [ %retval.0.i, %sii902x_init.exit.if.then44_crit_edge ]
  %call47 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %sii902x_init.exit.cleanup_crit_edge, %if.then39, %do.body25.cleanup_crit_edge, %do.end19, %if.then9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %8, %if.then9 ], [ %13, %do.end19 ], [ %call37, %if.then39 ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call32, %do.body25.cleanup_crit_edge ], [ %retval.0.i87, %if.then44 ], [ %retval.0.i, %sii902x_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2cmux = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %i2cmux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2cmux, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %3) #7
  %bridge = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 2
  tail call void @drm_bridge_remove(ptr noundef %bridge) #7
  %supplies = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %mutex = getelementptr inbounds %struct.sii902x, ptr %data, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.sii902x, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 61, ptr noundef nonnull %status) #7
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %call2 = call i32 @regmap_write(ptr noundef %4, i32 noundef 61, i32 noundef %6) #7
  call void @mutex_unlock(ptr noundef %mutex) #7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.sii902x, ptr %data, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %10) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii902x_audio_codec_init(ptr nocapture noundef %sii902x, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %codec_data = alloca %struct.hdmi_codec_pdata, align 4
  %lanes = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %codec_data) #7
  %0 = call ptr @memcpy(ptr %codec_data, ptr @__const.sii902x_audio_codec_init.codec_data, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lanes) #7
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lanes, align 4
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.25, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii902x_audio_codec_init.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii902x_audio_codec_init, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !169

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii902x_audio_codec_init.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26) #7
  br label %cleanup

if.end5:                                          ; preds = %entry
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call7 = call i32 @of_property_read_variable_u8_array(ptr noundef %5, ptr noundef nonnull @.str.28, ptr noundef nonnull %lanes, i32 noundef 1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call7)
  %cmp = icmp eq i32 %call7, -22
  br i1 %cmp, label %do.body9, label %if.else

do.body9:                                         ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii902x_audio_codec_init.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii902x_audio_codec_init, %if.then21)) #7
          to label %if.end31.thread [label %if.then21], !srcloc !169

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii902x_audio_codec_init.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26) #7
  br label %if.end31.thread

if.end31.thread:                                  ; preds = %if.then21, %do.body9
  %6 = ptrtoint ptr %lanes to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %lanes, align 4
  %max_i2s_channels11 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data, i32 0, i32 2
  %7 = ptrtoint ptr %max_i2s_channels11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %max_i2s_channels11, align 4
  br label %for.body.preheader

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp25 = icmp slt i32 %call7, 0
  br i1 %cmp25, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26, i32 noundef %call7) #10
  br label %cleanup

if.end31:                                         ; preds = %if.else
  %mul = shl nuw i32 %call7, 1
  %max_i2s_channels = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data, i32 0, i32 2
  %8 = ptrtoint ptr %max_i2s_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %max_i2s_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp327.not = icmp eq i32 %call7, 0
  br i1 %cmp327.not, label %if.end31.for.end_crit_edge, label %if.end31.for.body.preheader_crit_edge

if.end31.for.body.preheader_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end31.for.body.preheader_crit_edge, %if.end31.thread
  %num_lanes.013 = phi i32 [ 1, %if.end31.thread ], [ %call7, %if.end31.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx33 = getelementptr [4 x i8], ptr @sii902x_audio_codec_init.audio_fifo_id, i32 0, i32 %i.08
  %9 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx33, align 1
  %arrayidx34 = getelementptr [4 x i8], ptr %lanes, i32 0, i32 %i.08
  %11 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx34, align 1
  %idxprom = zext i8 %12 to i32
  %arrayidx35 = getelementptr [4 x i8], ptr @sii902x_audio_codec_init.i2s_lane_id, i32 0, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx35, align 1
  %or1 = or i8 %10, %14
  %15 = or i8 %or1, -128
  %or37 = zext i8 %15 to i32
  %arrayidx38 = getelementptr %struct.sii902x, ptr %sii902x, i32 0, i32 8, i32 2, i32 %i.08
  %16 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx38, align 4
  %or39 = or i32 %17, %or37
  store i32 %or39, ptr %arrayidx38, align 4
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %num_lanes.013
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end31.for.end_crit_edge
  %call40 = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.31) #7
  %mclk = getelementptr inbounds %struct.sii902x, ptr %sii902x, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call40, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end48, label %if.end55

do.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call40 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, i32 noundef %19) #10
  br label %cleanup

if.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %audio41 = getelementptr inbounds %struct.sii902x, ptr %sii902x, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %20 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 255, i32 48)
  %22 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %fwnode.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %20, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.35, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %codec_data, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %33 = ptrtoint ptr %audio41 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i, ptr %audio41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end48, %do.end29, %if.then4, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lanes) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_i2c_bypass_select(ptr nocapture noundef readonly %mux, i32 noundef %chan_id) #2 align 64 {
entry:
  %data.i34 = alloca %union.i2c_smbus_data, align 2
  %data.i = alloca %union.i2c_smbus_data, align 2
  %data.i3.i = alloca %union.i2c_smbus_data, align 2
  %data.i.i = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %mux, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i.i) #7
  %4 = call ptr @memset(ptr %data.i.i, i32 255, i32 34)
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i.i, align 2
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 8
  %call.i.i = call i32 @__i2c_smbus_xfer(ptr noundef %6, i16 noundef zeroext %8, i16 noundef zeroext %10, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sii902x_update_bits_unlocked.exit.thread, label %sii902x_update_bits_unlocked.exit

sii902x_update_bits_unlocked.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i.i) #7
  br label %cleanup

sii902x_update_bits_unlocked.exit:                ; preds = %entry
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i.i) #7
  %or2.i = or i8 %12, 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i3.i) #7
  %13 = call ptr @memset(ptr %data.i3.i, i32 255, i32 34)
  %14 = ptrtoint ptr %data.i3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or2.i, ptr %data.i3.i, align 2
  %15 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i.i, align 8
  %17 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr.i.i, align 2
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %3, align 8
  %call.i6.i = call i32 @__i2c_smbus_xfer(ptr noundef %16, i16 noundef zeroext %18, i16 noundef zeroext %20, i8 noundef zeroext 0, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i3.i) #7
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool.not = icmp eq i32 %call.i6.i, 0
  br i1 %tobool.not, label %if.end, label %sii902x_update_bits_unlocked.exit.cleanup_crit_edge

sii902x_update_bits_unlocked.exit.cleanup_crit_edge: ; preds = %sii902x_update_bits_unlocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sii902x_update_bits_unlocked.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -50, %21
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #7
  %24 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr.i, align 2
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %23, align 8
  %call.i = call i32 @__i2c_smbus_xfer(ptr noundef %26, i16 noundef zeroext %28, i16 noundef zeroext %30, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sii902x_read_unlocked.exit, label %do.cond

sii902x_read_unlocked.exit:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #7
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data.i, align 2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #7
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool10.not = icmp eq i8 %33, 0
  br i1 %tobool10.not, label %land.rhs, label %if.end19

land.rhs:                                         ; preds = %do.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %34
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs.do.body_crit_edge, label %do.end18

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end18:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55) #10
  br label %cleanup

if.end19:                                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i34) #7
  %37 = call ptr @memset(ptr %data.i34, i32 255, i32 34)
  %38 = ptrtoint ptr %data.i34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %32, ptr %data.i34, align 2
  %adapter.i35 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %adapter.i35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i35, align 8
  %addr.i36 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %addr.i36 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %addr.i36, align 2
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %36, align 8
  %call.i37 = call i32 @__i2c_smbus_xfer(ptr noundef %40, i16 noundef zeroext %42, i16 noundef zeroext %44, i8 noundef zeroext 0, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i34) #7
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i34) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end18, %sii902x_read_unlocked.exit, %sii902x_update_bits_unlocked.exit.cleanup_crit_edge, %sii902x_update_bits_unlocked.exit.thread
  %retval.0 = phi i32 [ %call.i37, %if.end19 ], [ -110, %do.end18 ], [ %call.i6.i, %sii902x_update_bits_unlocked.exit.cleanup_crit_edge ], [ %call.i, %sii902x_read_unlocked.exit ], [ %call.i.i, %sii902x_update_bits_unlocked.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_i2c_bypass_deselect(ptr nocapture noundef readonly %mux, i32 noundef %chan_id) #2 align 64 {
entry:
  %data.i54 = alloca %union.i2c_smbus_data, align 2
  %data.i3.i = alloca %union.i2c_smbus_data, align 2
  %data.i.i = alloca %union.i2c_smbus_data, align 2
  %data.i = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %mux, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 6442440) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #7
  %7 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 8
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %6, align 8
  %call.i = call i32 @__i2c_smbus_xfer(ptr noundef %9, i16 noundef zeroext %11, i16 noundef zeroext %13, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sii902x_read_unlocked.exit, label %entry.do.end.thread_crit_edge

entry.do.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.thread

do.end.thread:                                    ; preds = %sii902x_read_unlocked.exit.3.do.end.thread_crit_edge, %sii902x_read_unlocked.exit.2.do.end.thread_crit_edge, %sii902x_read_unlocked.exit.1.do.end.thread_crit_edge, %sii902x_read_unlocked.exit.do.end.thread_crit_edge, %entry.do.end.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i.i) #7
  %16 = call ptr @memset(ptr %data.i.i, i32 255, i32 34)
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i.i, align 2
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %15, align 8
  %call.i.i = call i32 @__i2c_smbus_xfer(ptr noundef %18, i16 noundef zeroext %20, i16 noundef zeroext %22, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sii902x_update_bits_unlocked.exit.thread, label %sii902x_update_bits_unlocked.exit

sii902x_read_unlocked.exit:                       ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #7
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #7
  %25 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %adapter.i.1 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i.1, align 8
  %addr.i.1 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %addr.i.1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr.i.1, align 2
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %24, align 8
  %call.i.1 = call i32 @__i2c_smbus_xfer(ptr noundef %27, i16 noundef zeroext %29, i16 noundef zeroext %31, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %sii902x_read_unlocked.exit.1, label %sii902x_read_unlocked.exit.do.end.thread_crit_edge

sii902x_read_unlocked.exit.do.end.thread_crit_edge: ; preds = %sii902x_read_unlocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.thread

sii902x_read_unlocked.exit.1:                     ; preds = %sii902x_read_unlocked.exit
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #7
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #7
  %34 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %adapter.i.2 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %35 = ptrtoint ptr %adapter.i.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i.2, align 8
  %addr.i.2 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 1
  %37 = ptrtoint ptr %addr.i.2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr.i.2, align 2
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %33, align 8
  %call.i.2 = call i32 @__i2c_smbus_xfer(ptr noundef %36, i16 noundef zeroext %38, i16 noundef zeroext %40, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp.i.2, label %sii902x_read_unlocked.exit.2, label %sii902x_read_unlocked.exit.1.do.end.thread_crit_edge

sii902x_read_unlocked.exit.1.do.end.thread_crit_edge: ; preds = %sii902x_read_unlocked.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.thread

sii902x_read_unlocked.exit.2:                     ; preds = %sii902x_read_unlocked.exit.1
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #7
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #7
  %43 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %adapter.i.3 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 3
  %44 = ptrtoint ptr %adapter.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i.3, align 8
  %addr.i.3 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 1
  %46 = ptrtoint ptr %addr.i.3 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr.i.3, align 2
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %42, align 8
  %call.i.3 = call i32 @__i2c_smbus_xfer(ptr noundef %45, i16 noundef zeroext %47, i16 noundef zeroext %49, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp.i.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp.i.3, label %sii902x_read_unlocked.exit.3, label %sii902x_read_unlocked.exit.2.do.end.thread_crit_edge

sii902x_read_unlocked.exit.2.do.end.thread_crit_edge: ; preds = %sii902x_read_unlocked.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.thread

sii902x_read_unlocked.exit.3:                     ; preds = %sii902x_read_unlocked.exit.2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #7
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i) #7
  %52 = call ptr @memset(ptr %data.i, i32 255, i32 34)
  %adapter.i.4 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 3
  %53 = ptrtoint ptr %adapter.i.4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter.i.4, align 8
  %addr.i.4 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 1
  %55 = ptrtoint ptr %addr.i.4 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %addr.i.4, align 2
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %51, align 8
  %call.i.4 = call i32 @__i2c_smbus_xfer(ptr noundef %54, i16 noundef zeroext %56, i16 noundef zeroext %58, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp.i.4 = icmp slt i32 %call.i.4, 0
  br i1 %cmp.i.4, label %sii902x_read_unlocked.exit.4, label %sii902x_read_unlocked.exit.3.do.end.thread_crit_edge

sii902x_read_unlocked.exit.3.do.end.thread_crit_edge: ; preds = %sii902x_read_unlocked.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.thread

sii902x_read_unlocked.exit.4:                     ; preds = %sii902x_read_unlocked.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef %call.i.4) #10
  br label %cleanup

sii902x_update_bits_unlocked.exit.thread:         ; preds = %do.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i.i) #7
  br label %cleanup

sii902x_update_bits_unlocked.exit:                ; preds = %do.end.thread
  %59 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %data.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i.i) #7
  %and.i = and i8 %60, -7
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i3.i) #7
  %61 = call ptr @memset(ptr %data.i3.i, i32 255, i32 34)
  %62 = ptrtoint ptr %data.i3.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %and.i, ptr %data.i3.i, align 2
  %63 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter.i.i, align 8
  %65 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %addr.i.i, align 2
  %67 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %15, align 8
  %call.i6.i = call i32 @__i2c_smbus_xfer(ptr noundef %64, i16 noundef zeroext %66, i16 noundef zeroext %68, i8 noundef zeroext 0, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i3.i) #7
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool11.not = icmp eq i32 %call.i6.i, 0
  br i1 %tobool11.not, label %if.end13, label %sii902x_update_bits_unlocked.exit.cleanup_crit_edge

sii902x_update_bits_unlocked.exit.cleanup_crit_edge: ; preds = %sii902x_update_bits_unlocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %sii902x_update_bits_unlocked.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -50, %69
  br label %do.body15

do.body15:                                        ; preds = %land.rhs23.do.body15_crit_edge, %if.end13
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data.i54) #7
  %72 = call ptr @memset(ptr %data.i54, i32 255, i32 34)
  %adapter.i55 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 3
  %73 = ptrtoint ptr %adapter.i55 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter.i55, align 8
  %addr.i56 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 1
  %75 = ptrtoint ptr %addr.i56 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %addr.i56, align 2
  %77 = ptrtoint ptr %71 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %71, align 8
  %call.i57 = call i32 @__i2c_smbus_xfer(ptr noundef %74, i16 noundef zeroext %76, i16 noundef zeroext %78, i8 noundef zeroext 1, i8 noundef zeroext 26, i32 noundef 2, ptr noundef nonnull %data.i54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp.i58 = icmp slt i32 %call.i57, 0
  br i1 %cmp.i58, label %sii902x_read_unlocked.exit61, label %do.cond21

sii902x_read_unlocked.exit61:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i54) #7
  br label %cleanup

do.cond21:                                        ; preds = %do.body15
  %79 = ptrtoint ptr %data.i54 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %data.i54, align 2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data.i54) #7
  %81 = and i8 %80, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool22.not = icmp eq i8 %81, 0
  br i1 %tobool22.not, label %do.cond21.cleanup_crit_edge, label %land.rhs23

do.cond21.cleanup_crit_edge:                      ; preds = %do.cond21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs23:                                       ; preds = %do.cond21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %82
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs23.do.body15_crit_edge, label %do.end33

land.rhs23.do.body15_crit_edge:                   ; preds = %land.rhs23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

do.end33:                                         ; preds = %land.rhs23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.cond21.cleanup_crit_edge, %sii902x_read_unlocked.exit61, %sii902x_update_bits_unlocked.exit.cleanup_crit_edge, %sii902x_update_bits_unlocked.exit.thread, %sii902x_read_unlocked.exit.4
  %retval.0 = phi i32 [ %call.i.4, %sii902x_read_unlocked.exit.4 ], [ -110, %do.end33 ], [ %call.i6.i, %sii902x_update_bits_unlocked.exit.cleanup_crit_edge ], [ %call.i57, %sii902x_read_unlocked.exit61 ], [ %call.i.i, %sii902x_update_bits_unlocked.exit.thread ], [ 0, %do.cond21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -8
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %connector = getelementptr i8, ptr %bridge, i32 280
  %helper_private.i = getelementptr i8, ptr %bridge, i32 988
  %2 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sii902x_connector_helper_funcs, ptr %helper_private.i, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %6, 16
  %and2.i.i = and i32 %and.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call i32 @drm_connector_init(ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @sii902x_connector_funcs, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp sgt i32 %14, 0
  %spec.select = select i1 %cmp, i8 1, i8 2
  %15 = getelementptr i8, ptr %bridge, i32 980
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %15, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %17 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encoder, align 4
  %call17 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef %18) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end9 ], [ -524, %do.end ], [ %call6, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii902x_bridge_disable(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %bridge, i32 1352
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %regmap = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 26, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii902x_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readnone %mode, ptr noundef %adj) #2 align 64 {
entry:
  %buf = alloca [17 x i8], align 1
  %frame = alloca %struct.hdmi_avi_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 7
  %9 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 8
  %10 = getelementptr inbounds [17 x i8], ptr %buf, i32 0, i32 9
  %11 = getelementptr inbounds i8, ptr %buf, i32 10
  %12 = call ptr @memset(ptr %11, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame) #7
  %13 = call ptr @memset(ptr %frame, i32 255, i32 68)
  %14 = ptrtoint ptr %adj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %adj, align 4
  %div = sdiv i32 %15, 10
  %conv3 = trunc i32 %div to i8
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3, ptr %buf, align 1
  %conv2 = lshr i32 %div, 8
  %conv5 = trunc i32 %conv2 to i8
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv5, ptr %2, align 1
  %call7 = tail call i32 @drm_mode_vrefresh(ptr noundef %adj) #7
  %conv8 = trunc i32 %call7 to i8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv8, ptr %3, align 1
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %4, align 1
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adj, i32 0, i32 1
  %20 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hdisplay, align 4
  %conv11 = trunc i16 %21 to i8
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv11, ptr %5, align 1
  %23 = lshr i16 %21, 8
  %conv16 = trunc i16 %23 to i8
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv16, ptr %6, align 1
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adj, i32 0, i32 6
  %25 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vdisplay, align 2
  %conv18 = trunc i16 %26 to i8
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv18, ptr %7, align 1
  %28 = lshr i16 %26, 8
  %conv23 = trunc i16 %28 to i8
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv23, ptr %8, align 1
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 96, ptr %9, align 1
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %10, align 1
  %mutex = getelementptr i8, ptr %bridge, i32 1352
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call27 = call i32 @regmap_bulk_write(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %connector = getelementptr i8, ptr %bridge, i32 280
  %call28 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame, ptr noundef %connector, ptr noundef %adj) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #7
  br label %out

if.end31:                                         ; preds = %if.end
  %call33 = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %frame, ptr noundef nonnull %buf, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %call33) #7
  br label %out

if.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = call i32 @regmap_bulk_write(ptr noundef %1, i32 noundef 12, ptr noundef %4, i32 noundef 14) #7
  br label %out

out:                                              ; preds = %if.end37, %if.then36, %if.then30, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame) #7
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii902x_bridge_enable(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %bridge, i32 1352
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %regmap = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 30, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 26, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  %bus_format = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_format) #7
  %0 = ptrtoint ptr %bus_format to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4106, ptr %bus_format, align 4
  %mutex = getelementptr i8, ptr %connector, i32 1072
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %i2cmux = getelementptr i8, ptr %connector, i32 1044
  %1 = ptrtoint ptr %i2cmux to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2cmux, align 4
  %adapter = getelementptr inbounds %struct.i2c_mux_core, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 4
  %call1 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %4) #7
  %call2 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %call1) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %call1) #7
  %spec.select = zext i1 %call3 to i32
  %call5 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call1) #7
  tail call void @kfree(ptr noundef nonnull %call1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %output_mode.1 = phi i32 [ %spec.select, %if.then ], [ 0, %entry.if.end6_crit_edge ]
  %num.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.if.end6_crit_edge ]
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %call7 = call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef nonnull %bus_format, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.error_out_crit_edge

if.end6.error_out_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_out

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr i8, ptr %connector, i32 -284
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 26, i32 noundef 1, i32 noundef %output_mode.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  %spec.select29 = select i1 %tobool12.not, i32 %num.0, i32 %call.i
  br label %error_out

error_out:                                        ; preds = %if.end10, %if.end6.error_out_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end6.error_out_crit_edge ], [ %spec.select29, %if.end10 ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_format) #7
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sii902x_mode_valid(ptr nocapture noundef readnone %connector, ptr nocapture noundef readnone %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_connector_detect(ptr noundef %connector, i1 noundef zeroext %force) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !170
  %mutex = getelementptr i8, ptr %connector, i32 1072
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %regmap = getelementptr i8, ptr %connector, i32 -284
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 61, ptr noundef nonnull %status) #7
  call void @mutex_unlock(ptr noundef %mutex) #7
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_audio_hw_params(ptr noundef %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %daifmt, ptr noundef %params) #2 align 64 {
entry:
  %infoframe_buf = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %infoframe_buf) #7
  %bit_clk_master = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %daifmt, i32 0, i32 1
  %2 = call ptr @memset(ptr %infoframe_buf, i32 255, i32 14)
  %3 = ptrtoint ptr %bit_clk_master to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %bit_clk_master, align 4
  %4 = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii902x_audio_hw_params.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii902x_audio_hw_params, %if.then10)) #7
          to label %cleanup [label %if.then10], !srcloc !169

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii902x_audio_hw_params.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36) #7
  br label %cleanup

if.end11:                                         ; preds = %entry
  %6 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daifmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %switch.lookup, label %do.body21

do.body21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii902x_audio_hw_params.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii902x_audio_hw_params, %if.then33)) #7
          to label %cleanup [label %if.then33], !srcloc !169

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %daifmt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii902x_audio_hw_params.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %10) #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end11
  %switch.cast = trunc i32 %7 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 1024, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %11 = or i8 %switch.masked, -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool41.not343 = icmp slt i8 %bf.load, 0
  %spec.select = select i1 %tobool41.not343, i8 %switch.masked, i8 %11
  %12 = lshr i8 %bf.load, 3
  %13 = and i8 %12, 8
  %14 = or i8 %spec.select, %13
  %15 = xor i8 %14, 8
  %channels = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 4
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp sgt i32 %17, 2
  %. = select i1 %cmp, i32 177, i32 145
  %sample_width = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 3
  %18 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sample_width, align 4
  %20 = add i32 %19, -16
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %22 = icmp ult i32 %21, 5
  br i1 %22, label %switch.hole_check, label %switch.lookup.do.end89_crit_edge

switch.lookup.do.end89_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89

do.end89:                                         ; preds = %switch.hole_check.do.end89_crit_edge, %switch.lookup.do.end89_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36, i32 noundef %19) #10
  br label %cleanup

switch.hole_check:                                ; preds = %switch.lookup
  %switch.maskindex = trunc i32 %21 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %23 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %switch.lobit.not = icmp eq i8 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end89_crit_edge, label %switch.lookup354

switch.hole_check.do.end89_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89

switch.lookup354:                                 ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.sii902x_audio_hw_params, i32 0, i32 %21
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %24)
  %switch.load = load i8, ptr %switch.gep, align 1
  %sample_rate = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 2
  %25 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sample_rate, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %switch.lookup354.for.end_crit_edge [
    i32 32000, label %switch.lookup354.if.then96_crit_edge
    i32 44000, label %if.then96.fold.split
    i32 48000, label %if.then96.fold.split348
    i32 88000, label %if.then96.fold.split349
    i32 96000, label %if.then96.fold.split350
    i32 176000, label %if.then96.fold.split351
    i32 192000, label %if.then96.fold.split352
  ]

switch.lookup354.if.then96_crit_edge:             ; preds = %switch.lookup354
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

switch.lookup354.for.end_crit_edge:               ; preds = %switch.lookup354
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then96.fold.split:                             ; preds = %switch.lookup354
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

if.then96.fold.split348:                          ; preds = %switch.lookup354
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

if.then96.fold.split349:                          ; preds = %switch.lookup354
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

if.then96.fold.split350:                          ; preds = %switch.lookup354
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

if.then96.fold.split351:                          ; preds = %switch.lookup354
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

if.then96.fold.split352:                          ; preds = %switch.lookup354
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

if.then96:                                        ; preds = %if.then96.fold.split352, %if.then96.fold.split351, %if.then96.fold.split350, %if.then96.fold.split349, %if.then96.fold.split348, %if.then96.fold.split, %switch.lookup354.if.then96_crit_edge
  %i.0345.lcssa = phi i32 [ 0, %switch.lookup354.if.then96_crit_edge ], [ 1, %if.then96.fold.split ], [ 2, %if.then96.fold.split348 ], [ 3, %if.then96.fold.split349 ], [ 4, %if.then96.fold.split350 ], [ 5, %if.then96.fold.split351 ], [ 6, %if.then96.fold.split352 ]
  %val = getelementptr [7 x %struct.sii902x_sample_freq], ptr @sii902x_sample_freq, i32 0, i32 %i.0345.lcssa, i32 1
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %val, align 4
  %or100318 = or i8 %29, %switch.load
  br label %for.end

for.end:                                          ; preds = %if.then96, %switch.lookup354.for.end_crit_edge
  %config_byte3_reg.1 = phi i8 [ %or100318, %if.then96 ], [ %switch.load, %switch.lookup354.for.end_crit_edge ]
  %mclk = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.do.end108_crit_edge

for.end.do.end108_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end108

if.end.i:                                         ; preds = %for.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end109, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %31) #7
  br label %do.end108

do.end108:                                        ; preds = %if.then3.i, %for.end.do.end108_crit_edge
  %retval.0.i328.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.end.do.end108_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i328.ph) #10
  br label %cleanup

if.end109:                                        ; preds = %if.end.i
  %32 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mclk, align 4
  %tobool112.not = icmp eq ptr %33, null
  br i1 %tobool112.not, label %if.end109.if.end141_crit_edge, label %if.then113

if.end109.if.end141_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then113:                                       ; preds = %if.end109
  %call116 = tail call i32 @clk_get_rate(ptr noundef nonnull %33) #7
  %34 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sample_rate, align 4
  %div1.i = udiv i32 %call116, %35
  %sub.i = add i32 %div1.i, -128
  %36 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %36)
  %cmp6.not.i = icmp ult i32 %36, 100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div1.i)
  %cmp8.i = icmp eq i32 %div1.i, 128
  %switch.i = and i1 %cmp8.i, %cmp6.not.i
  br i1 %switch.i, label %if.then113.sii902x_select_mclk_div.exit_crit_edge, label %for.inc.i

if.then113.sii902x_select_mclk_div.exit_crit_edge: ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %sii902x_select_mclk_div.exit

for.inc.i:                                        ; preds = %if.then113
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 100000) #7
  %sub.1.i = add i32 %div1.i, -256
  %38 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %37)
  %cmp6.not.1.i = icmp ult i32 %38, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div1.i)
  %cmp8.1.i = icmp eq i32 %div1.i, 256
  %nearest.1.1.i = zext i1 %cmp6.not.1.i to i8
  %switch.1.i = and i1 %cmp8.1.i, %cmp6.not.1.i
  br i1 %switch.1.i, label %for.inc.i.sii902x_select_mclk_div.exit_crit_edge, label %for.inc.1.i

for.inc.i.sii902x_select_mclk_div.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sii902x_select_mclk_div.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 %37) #7
  %sub.2.i = add i32 %div1.i, -384
  %40 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %39)
  %cmp6.not.2.i = icmp ult i32 %40, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %div1.i)
  %cmp8.2.i = icmp eq i32 %div1.i, 384
  %nearest.1.2.i = select i1 %cmp6.not.2.i, i8 2, i8 %nearest.1.1.i
  %switch.2.i = and i1 %cmp8.2.i, %cmp6.not.2.i
  br i1 %switch.2.i, label %for.inc.1.i.sii902x_select_mclk_div.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.sii902x_select_mclk_div.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sii902x_select_mclk_div.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 %39) #7
  %sub.3.i = add i32 %div1.i, -512
  %42 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %41)
  %cmp6.not.3.i = icmp ult i32 %42, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %div1.i)
  %cmp8.3.i = icmp eq i32 %div1.i, 512
  %nearest.1.3.i = select i1 %cmp6.not.3.i, i8 3, i8 %nearest.1.2.i
  %switch.3.i = and i1 %cmp8.3.i, %cmp6.not.3.i
  br i1 %switch.3.i, label %for.inc.2.i.sii902x_select_mclk_div.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.sii902x_select_mclk_div.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sii902x_select_mclk_div.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 %41) #7
  %sub.4.i = add i32 %div1.i, -768
  %44 = tail call i32 @llvm.abs.i32(i32 %sub.4.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %43)
  %cmp6.not.4.i = icmp ult i32 %44, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %div1.i)
  %cmp8.4.i = icmp eq i32 %div1.i, 768
  %nearest.1.4.i = select i1 %cmp6.not.4.i, i8 4, i8 %nearest.1.3.i
  %switch.4.i = and i1 %cmp8.4.i, %cmp6.not.4.i
  br i1 %switch.4.i, label %for.inc.3.i.sii902x_select_mclk_div.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.sii902x_select_mclk_div.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sii902x_select_mclk_div.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 %43) #7
  %sub.5.i = add i32 %div1.i, -1024
  %46 = tail call i32 @llvm.abs.i32(i32 %sub.5.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %45)
  %cmp6.not.5.i = icmp ult i32 %46, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %div1.i)
  %cmp8.5.i = icmp eq i32 %div1.i, 1024
  %nearest.1.5.i = select i1 %cmp6.not.5.i, i8 5, i8 %nearest.1.4.i
  %switch.5.i = and i1 %cmp8.5.i, %cmp6.not.5.i
  br i1 %switch.5.i, label %for.inc.4.i.sii902x_select_mclk_div.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.sii902x_select_mclk_div.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sii902x_select_mclk_div.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 %45) #7
  %sub.6.i = add i32 %div1.i, -1152
  %48 = tail call i32 @llvm.abs.i32(i32 %sub.6.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %47)
  %cmp6.not.6.i = icmp ult i32 %48, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %div1.i)
  %cmp8.6.i = icmp eq i32 %div1.i, 1152
  %nearest.1.6.i = select i1 %cmp6.not.6.i, i8 6, i8 %nearest.1.5.i
  %switch.6.i = and i1 %cmp8.6.i, %cmp6.not.6.i
  br i1 %switch.6.i, label %for.inc.5.i.sii902x_select_mclk_div.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.sii902x_select_mclk_div.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sii902x_select_mclk_div.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 %47) #7
  %sub.7.i = add i32 %div1.i, -192
  %50 = tail call i32 @llvm.abs.i32(i32 %sub.7.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %49)
  %cmp6.not.7.i = icmp ult i32 %50, %49
  %nearest.1.7.i = select i1 %cmp6.not.7.i, i8 7, i8 %nearest.1.6.i
  br label %sii902x_select_mclk_div.exit

sii902x_select_mclk_div.exit:                     ; preds = %for.inc.6.i, %for.inc.5.i.sii902x_select_mclk_div.exit_crit_edge, %for.inc.4.i.sii902x_select_mclk_div.exit_crit_edge, %for.inc.3.i.sii902x_select_mclk_div.exit_crit_edge, %for.inc.2.i.sii902x_select_mclk_div.exit_crit_edge, %for.inc.1.i.sii902x_select_mclk_div.exit_crit_edge, %for.inc.i.sii902x_select_mclk_div.exit_crit_edge, %if.then113.sii902x_select_mclk_div.exit_crit_edge
  %nearest.1.lcssa.i = phi i8 [ 0, %if.then113.sii902x_select_mclk_div.exit_crit_edge ], [ %nearest.1.1.i, %for.inc.i.sii902x_select_mclk_div.exit_crit_edge ], [ %nearest.1.2.i, %for.inc.1.i.sii902x_select_mclk_div.exit_crit_edge ], [ %nearest.1.3.i, %for.inc.2.i.sii902x_select_mclk_div.exit_crit_edge ], [ %nearest.1.4.i, %for.inc.3.i.sii902x_select_mclk_div.exit_crit_edge ], [ %nearest.1.5.i, %for.inc.4.i.sii902x_select_mclk_div.exit_crit_edge ], [ %nearest.1.6.i, %for.inc.5.i.sii902x_select_mclk_div.exit_crit_edge ], [ %nearest.1.7.i, %for.inc.6.i ]
  %conv12.i = zext i8 %nearest.1.lcssa.i to i32
  %shl.i = shl nuw nsw i8 %nearest.1.lcssa.i, 4
  %or.i = or i8 %shl.i, %15
  %arrayidx16.i = getelementptr [8 x i32], ptr @sii902x_mclk_div_table, i32 0, i32 %conv12.i
  %51 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx16.i, align 4
  %mul = mul i32 %52, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %call116, i32 %mul)
  %cmp120.not = icmp eq i32 %call116, %mul
  br i1 %cmp120.not, label %sii902x_select_mclk_div.exit.if.end141_crit_edge, label %do.body123

sii902x_select_mclk_div.exit.if.end141_crit_edge: ; preds = %sii902x_select_mclk_div.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

do.body123:                                       ; preds = %sii902x_select_mclk_div.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii902x_audio_hw_params.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii902x_audio_hw_params, %if.then135)) #7
          to label %if.end141 [label %if.then135], !srcloc !169

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sample_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii902x_audio_hw_params.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %call116, i32 noundef %52, i32 noundef %54) #7
  br label %if.end141

if.end141:                                        ; preds = %if.then135, %do.body123, %sii902x_select_mclk_div.exit.if.end141_crit_edge, %if.end109.if.end141_crit_edge
  %i2s_config_reg.3 = phi i8 [ %15, %if.end109.if.end141_crit_edge ], [ %or.i, %sii902x_select_mclk_div.exit.if.end141_crit_edge ], [ %or.i, %if.then135 ], [ %or.i, %do.body123 ]
  %mutex = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call143 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 38, i32 noundef %.) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.end141.if.then231_crit_edge, label %if.end147

if.end141.if.then231_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

if.end147:                                        ; preds = %if.end141
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %conv149 = zext i8 %i2s_config_reg.3 to i32
  %call150 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 32, i32 noundef %conv149) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %land.rhs.preheader, label %if.end147.if.then231_crit_edge

if.end147.if.then231_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

land.rhs.preheader:                               ; preds = %if.end147
  %arrayidx158 = getelementptr %struct.sii902x, ptr %1, i32 0, i32 8, i32 2, i32 0
  %59 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool159.not = icmp eq i32 %60, 0
  br i1 %tobool159.not, label %land.rhs.preheader.for.end168_crit_edge, label %for.body160

land.rhs.preheader.for.end168_crit_edge:          ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end168

for.body160:                                      ; preds = %land.rhs.preheader
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call165 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 31, i32 noundef %60) #7
  %arrayidx158.1 = getelementptr %struct.sii902x, ptr %1, i32 0, i32 8, i32 2, i32 1
  %63 = ptrtoint ptr %arrayidx158.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx158.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool159.not.1 = icmp eq i32 %64, 0
  br i1 %tobool159.not.1, label %for.body160.for.end168_crit_edge, label %for.body160.1

for.body160.for.end168_crit_edge:                 ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end168

for.body160.1:                                    ; preds = %for.body160
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call165.1 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 31, i32 noundef %64) #7
  %arrayidx158.2 = getelementptr %struct.sii902x, ptr %1, i32 0, i32 8, i32 2, i32 2
  %67 = ptrtoint ptr %arrayidx158.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx158.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool159.not.2 = icmp eq i32 %68, 0
  br i1 %tobool159.not.2, label %for.body160.1.for.end168_crit_edge, label %for.body160.2

for.body160.1.for.end168_crit_edge:               ; preds = %for.body160.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end168

for.body160.2:                                    ; preds = %for.body160.1
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %call165.2 = tail call i32 @regmap_write(ptr noundef %70, i32 noundef 31, i32 noundef %68) #7
  %arrayidx158.3 = getelementptr %struct.sii902x, ptr %1, i32 0, i32 8, i32 2, i32 3
  %71 = ptrtoint ptr %arrayidx158.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx158.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool159.not.3 = icmp eq i32 %72, 0
  br i1 %tobool159.not.3, label %for.body160.2.for.end168_crit_edge, label %for.body160.3

for.body160.2.for.end168_crit_edge:               ; preds = %for.body160.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end168

for.body160.3:                                    ; preds = %for.body160.2
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %call165.3 = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 31, i32 noundef %72) #7
  br label %for.end168

for.end168:                                       ; preds = %for.body160.3, %for.body160.2.for.end168_crit_edge, %for.body160.1.for.end168_crit_edge, %for.body160.for.end168_crit_edge, %land.rhs.preheader.for.end168_crit_edge
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %conv170 = zext i8 %config_byte3_reg.1 to i32
  %call171 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 39, i32 noundef %conv170) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end174, label %for.end168.if.then231_crit_edge

for.end168.if.then231_crit_edge:                  ; preds = %for.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

if.end174:                                        ; preds = %for.end168
  %77 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap, align 4
  %iec = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 1
  %call176 = tail call i32 @regmap_bulk_write(ptr noundef %78, i32 noundef 33, ptr noundef %iec, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end179, label %if.end174.if.then231_crit_edge

if.end174.if.then231_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

if.end179:                                        ; preds = %if.end174
  %call181 = call i32 @hdmi_audio_infoframe_pack(ptr noundef %params, ptr noundef nonnull %infoframe_buf, i32 noundef 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182 = icmp slt i32 %call181, 0
  br i1 %cmp182, label %do.end187, label %if.end188

do.end187:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.36, i32 noundef %call181) #10
  br label %if.then231

if.end188:                                        ; preds = %if.end179
  %79 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap, align 4
  %81 = call i32 @llvm.umin.i32(i32 %call181, i32 31)
  %call194 = call i32 @regmap_bulk_write(ptr noundef %80, i32 noundef 191, ptr noundef nonnull %infoframe_buf, i32 noundef %81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end197, label %if.end188.if.then231_crit_edge

if.end188.if.then231_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

if.end197:                                        ; preds = %if.end188
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %call199 = call i32 @regmap_write(ptr noundef %83, i32 noundef 188, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.end197.if.then231_crit_edge

if.end197.if.then231_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

if.end202:                                        ; preds = %if.end197
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call204 = call i32 @regmap_write(ptr noundef %85, i32 noundef 189, i32 noundef 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end207, label %if.end202.if.then231_crit_edge

if.end202.if.then231_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

if.end207:                                        ; preds = %if.end202
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call209 = call i32 @regmap_write(ptr noundef %87, i32 noundef 190, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %do.body213, label %if.end207.if.then231_crit_edge

if.end207.if.then231_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

do.body213:                                       ; preds = %if.end207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii902x_audio_hw_params.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii902x_audio_hw_params, %if.then225)) #7
          to label %out [label %if.then225], !srcloc !169

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii902x_audio_hw_params.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.36) #7
  br label %out

out:                                              ; preds = %if.then225, %do.body213
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

if.then231:                                       ; preds = %if.end207.if.then231_crit_edge, %if.end202.if.then231_crit_edge, %if.end197.if.then231_crit_edge, %if.end188.if.then231_crit_edge, %do.end187, %if.end174.if.then231_crit_edge, %for.end168.if.then231_crit_edge, %if.end147.if.then231_crit_edge, %if.end141.if.then231_crit_edge
  %ret.0.ph = phi i32 [ %call209, %if.end207.if.then231_crit_edge ], [ %call204, %if.end202.if.then231_crit_edge ], [ %call199, %if.end197.if.then231_crit_edge ], [ %call194, %if.end188.if.then231_crit_edge ], [ %call181, %do.end187 ], [ %call176, %if.end174.if.then231_crit_edge ], [ %call171, %for.end168.if.then231_crit_edge ], [ %call150, %if.end147.if.then231_crit_edge ], [ %call143, %if.end141.if.then231_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  %88 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mclk, align 4
  call void @clk_disable(ptr noundef %89) #7
  call void @clk_unprepare(ptr noundef %89) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.36, i32 noundef %ret.0.ph) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then231, %out, %do.end108, %do.end89, %if.then33, %do.body21, %if.then10, %do.body
  %retval.0 = phi i32 [ -22, %do.end89 ], [ %retval.0.i328.ph, %do.end108 ], [ -22, %if.then10 ], [ -22, %if.then33 ], [ %ret.0.ph, %if.then231 ], [ 0, %out ], [ -22, %do.body ], [ -22, %do.body21 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %infoframe_buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii902x_audio_shutdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 38, i32 noundef 0) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %mclk = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_audio_mute(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, i1 noundef zeroext %enable, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii902x_mute.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii902x_audio_mute, %if.then.i)) #7
          to label %sii902x_mute.exit [label %if.then.i], !srcloc !169

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %cond7.i = select i1 %enable, ptr @.str.53, ptr @.str.54
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii902x_mute.__UNIQUE_ID_ddebug313, ptr noundef %dev1.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond7.i) #7
  br label %sii902x_mute.exit

sii902x_mute.exit:                                ; preds = %if.then.i, %entry
  %cond.i = select i1 %enable, i32 16, i32 0
  %regmap.i = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 38, i32 noundef 16, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_audio_get_eld(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %2 = tail call i32 @llvm.umin.i32(i32 %len, i32 128)
  %eld = getelementptr inbounds %struct.sii902x, ptr %1, i32 0, i32 3, i32 42
  %3 = call ptr @memcpy(ptr %buf, ptr %eld, i32 %2)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii902x_audio_get_dai_id(ptr nocapture noundef readnone %component, ptr noundef %endpoint) #2 align 64 {
entry:
  %of_ep = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %of_ep) #7
  %0 = ptrtoint ptr %of_ep to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %of_ep, align 4, !annotation !170
  %1 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !170
  %3 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !170
  %call = call i32 @of_graph_parse_endpoint(ptr noundef %endpoint, ptr noundef nonnull %of_ep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %of_ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %of_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp1 = icmp eq i32 %6, 3
  %. = select i1 %cmp1, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %of_ep) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !86, !88, !89, !91, !92, !93, !95, !97, !98, !99, !101, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !136, !138, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__initcall__kmod_sii902x__326_1111_sii902x_driver_init6, !1, !"__initcall__kmod_sii902x__326_1111_sii902x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1111, i32 1}
!2 = !{ptr @__exitcall_sii902x_driver_exit, !1, !"__exitcall_sii902x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author327, !4, !"__UNIQUE_ID_author327", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1113, i32 1}
!5 = !{ptr @__UNIQUE_ID_description328, !6, !"__UNIQUE_ID_description328", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1114, i32 1}
!7 = !{ptr @__UNIQUE_ID_file329, !8, !"__UNIQUE_ID_file329", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1115, i32 1}
!9 = !{ptr @__UNIQUE_ID_license330, !8, !"__UNIQUE_ID_license330", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1106, i32 11}
!12 = !{ptr @sii902x_driver, !13, !"sii902x_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1102, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1031, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sii902x_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sii902x_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @sii902x_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1040, i32 20}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1044, i32 53}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1047, i32 3}
!29 = !{ptr @sii902x_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sii902x_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @sii902x_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1052, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1054, i32 32}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1055, i32 32}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1064, i32 27}
!40 = !{ptr @sii902x_regmap_config, !41, !"sii902x_regmap_config", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 811, i32 35}
!42 = !{ptr @sii902x_volatile_table, !43, !"sii902x_volatile_table", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 806, i32 41}
!44 = !{ptr @sii902x_volatile_ranges, !45, !"sii902x_volatile_ranges", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 802, i32 34}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 975, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sii902x_init._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sii902x_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 980, i32 3}
!53 = !{ptr @sii902x_init._entry.17, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sii902x_init._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sii902x_bridge_funcs, !56, !"sii902x_bridge_funcs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 441, i32 38}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 412, i32 3}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 420, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sii902x_bridge_attach._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @sii902x_bridge_attach._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @sii902x_connector_helper_funcs, !65, !"sii902x_connector_helper_funcs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 319, i32 48}
!66 = !{ptr @sii902x_connector_funcs, !67, !"sii902x_connector_funcs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 264, i32 41}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 385, i32 3}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 391, i32 3}
!72 = !{ptr @default_sii902x_timings, !73, !"default_sii902x_timings", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 953, i32 40}
!74 = !{ptr @sii902x_audio_codec_init.audio_fifo_id, !75, !"audio_fifo_id", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 738, i32 18}
!76 = !{ptr @sii902x_audio_codec_init.i2s_lane_id, !77, !"i2s_lane_id", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 744, i32 18}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 759, i32 43}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 760, i32 3}
!82 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sii902x_audio_codec_init.__UNIQUE_ID_ddebug324, !81, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 766, i32 14}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 771, i32 3}
!88 = !{ptr @sii902x_audio_codec_init.__UNIQUE_ID_ddebug325, !87, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 777, i32 3}
!91 = !{ptr @sii902x_audio_codec_init._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @sii902x_audio_codec_init._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 788, i32 51}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 790, i32 3}
!97 = !{ptr @sii902x_audio_codec_init._entry.32, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @sii902x_audio_codec_init._entry_ptr.34, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 796, i32 8}
!101 = !{ptr @sii902x_audio_codec_ops, !102, !"sii902x_audio_codec_ops", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 726, i32 36}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 516, i32 3}
!105 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @sii902x_audio_hw_params.__UNIQUE_ID_ddebug314, !104, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 532, i32 3}
!109 = !{ptr @sii902x_audio_hw_params.__UNIQUE_ID_ddebug315, !108, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 564, i32 3}
!112 = !{ptr @sii902x_audio_hw_params._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @sii902x_audio_hw_params._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 578, i32 3}
!116 = !{ptr @sii902x_audio_hw_params._entry.40, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @sii902x_audio_hw_params._entry_ptr.42, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 587, i32 4}
!120 = !{ptr @sii902x_audio_hw_params.__UNIQUE_ID_ddebug316, !119, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 625, i32 3}
!123 = !{ptr @sii902x_audio_hw_params._entry.44, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @sii902x_audio_hw_params._entry_ptr.46, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 650, i32 2}
!127 = !{ptr @sii902x_audio_hw_params.__UNIQUE_ID_ddebug321, !126, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 656, i32 3}
!130 = !{ptr @sii902x_audio_hw_params._entry.48, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @sii902x_audio_hw_params._entry_ptr.50, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @sii902x_sample_freq, !133, !"sii902x_sample_freq", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 491, i32 3}
!134 = !{ptr @sii902x_mclk_div_table, !135, !"sii902x_mclk_div_table", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 461, i32 18}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 454, i32 2}
!138 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @sii902x_mute.__UNIQUE_ID_ddebug313, !137, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!140 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 875, i32 3}
!144 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @sii902x_i2c_bypass_select._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @sii902x_i2c_bypass_select._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 923, i32 3}
!149 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @sii902x_i2c_bypass_deselect._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @sii902x_i2c_bypass_deselect._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 946, i32 3}
!154 = !{ptr @sii902x_i2c_bypass_deselect._entry.59, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @sii902x_i2c_bypass_deselect._entry_ptr.61, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @sii902x_dt_ids, !157, !"sii902x_dt_ids", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1090, i32 34}
!158 = !{ptr @sii902x_i2c_ids, !159, !"sii902x_i2c_ids", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/bridge/sii902x.c", i32 1096, i32 35}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{i64 2148197195, i64 2148197200, i64 2148197213, i64 2148197257, i64 2148197291, i64 2148197312}
!170 = !{!"auto-init"}
