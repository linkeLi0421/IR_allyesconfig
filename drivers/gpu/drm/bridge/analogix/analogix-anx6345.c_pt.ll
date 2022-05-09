; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.anx6345 = type { %struct.drm_dp_aux, %struct.drm_bridge, ptr, ptr, %struct.drm_connector, ptr, ptr, ptr, ptr, %struct.mutex, [2 x ptr], [2 x ptr], i16, [15 x i8], i8 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@__initcall__kmod_analogix_anx6345__307_826_anx6345_driver_init6 = internal global ptr @anx6345_driver_init, section ".initcall6.init", align 4
@anx6345_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @anx6345_i2c_probe, ptr @anx6345_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @anx6345_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @anx6345_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_anx6345_driver_exit = internal global ptr @anx6345_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description308 = internal constant [60 x i8] c"analogix_anx6345.description=ANX6345 eDP Transmitter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [56 x i8] c"analogix_anx6345.author=Icenowy Zheng <icenowy@aosc.io>\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [71 x i8] c"analogix_anx6345.file=drivers/gpu/drm/bridge/analogix/analogix-anx6345\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [32 x i8] c"analogix_anx6345.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"anx6345\00", [24 x i8] zeroinitializer }, align 32
@anx6345_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"analogix,anx6345\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@anx6345_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"anx6345\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@anx6345_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&anx6345->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No panel found\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dvdd12\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get dvdd12 supply (%ld)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dvdd25\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get dvdd25 supply (%ld)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Reset gpio not found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to reserve I2C bus %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@anx6345_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@anx6345_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"analogix_anx6345:764:(&anx6345_regmap_config)->lock\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed regmap initialization %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@anx6345_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @anx6345_bridge_attach, ptr @anx6345_bridge_detach, ptr @anx6345_bridge_mode_valid, ptr null, ptr @anx6345_bridge_disable, ptr null, ptr null, ptr null, ptr @anx6345_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable dvdd12 regulator: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable dvdd25 regulator: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@anx6345_get_chip_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] Found ANX%x (ver. %d) eDP Transmitter\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"anx6345_get_chip_id\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/bridge/analogix/analogix-anx6345.c\00", [45 x i8] zeroinitializer }, align 32
@anx6345_get_chip_id._entry_ptr = internal global ptr @anx6345_get_chip_id._entry, section ".printk_index", align 4
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ANX%x (ver. %d) not supported by this driver\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Fix bridge driver to make connector optional!\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Parent encoder object not found\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DP-AUX\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register aux channel: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@anx6345_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @anx6345_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to initialize connector: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@anx6345_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @anx6345_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to link up connector to encoder: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register connector: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get downstream info: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read EDID from panel\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to update EDID property: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Get sink count failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Downstream disconnected\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to initialize: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable DP output: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed eDP transmitter initialization: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed link training: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DP bandwidth (%#02x) not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read DPCD: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read DP_SET_POWER register: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to power up DisplayPort link: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enable downspread on the sink\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to configure link: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to disable dvdd25 regulator: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to disable dvdd12 regulator: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 10]
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"anx6345_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 817, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 819, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"anx6345_match_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 811, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"anx6345_id\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 805, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 706, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 721, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 724, i32 44 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 727, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 733, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 736, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 742, i32 45 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 744, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 758, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"anx6345_regmap_config\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 654, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 763, i32 21 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 767, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"anx6345_bridge_funcs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 636, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 314, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 324, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 683, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 689, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 528, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 533, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 538, i32 22 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 545, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [24 x i8] c"anx6345_connector_funcs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 513, i32 41 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 553, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [31 x i8] c"anx6345_connector_helper_funcs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 503, i32 48 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 565, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 571, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 470, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 476, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 481, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 442, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 447, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 627, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 633, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 393, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 400, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 119, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 137, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 154, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 164, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 184, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 233, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 360, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [54 x i8] c"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 369, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_anx6345_driver_exit, ptr @__initcall__kmod_analogix_anx6345__307_826_anx6345_driver_init6, ptr @anx6345_driver_exit, ptr @anx6345_get_chip_id._entry, ptr @anx6345_get_chip_id._entry_ptr, ptr @anx6345_driver, ptr @.str, ptr @anx6345_match_table, ptr @anx6345_id, ptr @anx6345_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @anx6345_i2c_probe._key, ptr @anx6345_regmap_config, ptr @.str.10, ptr @.str.11, ptr @anx6345_bridge_funcs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @anx6345_connector_funcs, ptr @.str.22, ptr @anx6345_connector_helper_funcs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx6345_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx6345_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx6345_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx6345_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx6345_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx6345_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx6345_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx6345_get_chip_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx6345_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx6345_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @anx6345_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @anx6345_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @anx6345_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @anx6345_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx6345_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 3208, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.anx6345, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @anx6345_i2c_probe.__key) #6
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %bridge = getelementptr inbounds %struct.anx6345, ptr %call.i, i32 0, i32 1
  %of_node3 = getelementptr inbounds %struct.anx6345, ptr %call.i, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %of_node3, align 4
  %client4 = getelementptr inbounds %struct.anx6345, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %client4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %client4, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %panel = getelementptr inbounds %struct.anx6345, ptr %call.i, i32 0, i32 5
  %call9 = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef %panel, ptr noundef null) #6
  %5 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call9, label %if.then13 [
    i32 -517, label %do.body.cleanup_crit_edge
    i32 0, label %do.body.if.end14_crit_edge
  ]

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.body.if.end14_crit_edge
  %call15 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #6
  %dvdd12 = getelementptr inbounds %struct.anx6345, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %dvdd12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %dvdd12, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end28

if.then18:                                        ; preds = %if.end14
  %cmp21.not = icmp eq ptr %call15, inttoptr (i32 -517 to ptr)
  br i1 %cmp21.not, label %if.then18.if.end25_crit_edge, label %if.then22

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %7) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then18.if.end25_crit_edge
  %8 = ptrtoint ptr %dvdd12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvdd12, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end14
  %call29 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #6
  %dvdd25 = getelementptr inbounds %struct.anx6345, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %dvdd25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call29, ptr %dvdd25, align 8
  %cmp.i155 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then32, label %if.end42

if.then32:                                        ; preds = %if.end28
  %cmp35.not = icmp eq ptr %call29, inttoptr (i32 -517 to ptr)
  br i1 %cmp35.not, label %if.then32.if.end39_crit_edge, label %if.then36

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call29 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %12) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32.if.end39_crit_edge
  %13 = ptrtoint ptr %dvdd25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dvdd25, align 8
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end28
  %call43 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 3) #6
  %gpiod_reset = getelementptr inbounds %struct.anx6345, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call43, ptr %gpiod_reset, align 4
  %cmp.i156 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then46, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end42
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 56, i16 %18)
  %cmp52.not = icmp eq i16 %18, 56
  br i1 %cmp52.not, label %for.cond.preheader.if.end63_crit_edge, label %if.then54

for.cond.preheader.if.end63_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #6
  %19 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpiod_reset, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

for.cond:                                         ; preds = %if.end73
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 57, i16 %23)
  %cmp52.not.1 = icmp eq i16 %23, 57
  br i1 %cmp52.not.1, label %for.cond.if.end63.1_crit_edge, label %if.then54.1

for.cond.if.end63.1_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.1

if.then54.1:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %call59.1 = tail call ptr @i2c_new_dummy_device(ptr noundef %25, i16 noundef zeroext 57) #6
  br label %if.end63.1

if.end63.1:                                       ; preds = %if.then54.1, %for.cond.if.end63.1_crit_edge
  %call59.1.sink = phi ptr [ %call59.1, %if.then54.1 ], [ %client, %for.cond.if.end63.1_crit_edge ]
  %26 = getelementptr %struct.anx6345, ptr %call.i, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call59.1.sink, ptr %26, align 4
  %cmp.i157.1 = icmp ugt ptr %call59.1.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157.1, label %if.end63.1.if.then67_crit_edge, label %if.end73.1

if.end63.1.if.then67_crit_edge:                   ; preds = %if.end63.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

if.end73.1:                                       ; preds = %if.end63.1
  %call76.1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call59.1.sink, ptr noundef nonnull @anx6345_regmap_config, ptr noundef nonnull @anx6345_i2c_probe._key, ptr noundef nonnull @.str.10) #6
  %arrayidx77.1 = getelementptr %struct.anx6345, ptr %call.i, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call76.1, ptr %arrayidx77.1, align 4
  %cmp.i158.1 = icmp ugt ptr %call76.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158.1, label %if.end73.1.if.then81_crit_edge, label %for.cond.1

if.end73.1.if.then81_crit_edge:                   ; preds = %if.end73.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then81

for.cond.1:                                       ; preds = %if.end73.1
  tail call fastcc void @anx6345_poweron(ptr noundef nonnull %call.i)
  %call88 = tail call fastcc zeroext i1 @anx6345_get_chip_id(ptr noundef nonnull %call.i)
  br i1 %call88, label %if.then89, label %if.else92

if.then54:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  %call59 = tail call ptr @i2c_new_dummy_device(ptr noundef %30, i16 noundef zeroext 56) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then54, %for.cond.preheader.if.end63_crit_edge
  %call59.sink = phi ptr [ %call59, %if.then54 ], [ %client, %for.cond.preheader.if.end63_crit_edge ]
  %31 = getelementptr %struct.anx6345, ptr %call.i, i32 0, i32 10, i32 0
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call59.sink, ptr %31, align 4
  %cmp.i157 = icmp ugt ptr %call59.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %if.end63.if.then67_crit_edge, label %if.end73

if.end63.if.then67_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

if.then67:                                        ; preds = %if.end63.if.then67_crit_edge, %if.end63.1.if.then67_crit_edge
  %.lcssa166 = phi ptr [ %call59.sink, %if.end63.if.then67_crit_edge ], [ %call59.1.sink, %if.end63.1.if.then67_crit_edge ]
  %.lcssa = phi i32 [ 112, %if.end63.if.then67_crit_edge ], [ 114, %if.end63.1.if.then67_crit_edge ]
  %33 = ptrtoint ptr %.lcssa166 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %.lcssa) #6
  br label %err_unregister_i2c

if.end73:                                         ; preds = %if.end63
  %call76 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call59.sink, ptr noundef nonnull @anx6345_regmap_config, ptr noundef nonnull @anx6345_i2c_probe._key, ptr noundef nonnull @.str.10) #6
  %arrayidx77 = getelementptr %struct.anx6345, ptr %call.i, i32 0, i32 11, i32 0
  %34 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call76, ptr %arrayidx77, align 4
  %cmp.i158 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.end73.if.then81_crit_edge, label %for.cond

if.end73.if.then81_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then81

if.then81:                                        ; preds = %if.end73.if.then81_crit_edge, %if.end73.1.if.then81_crit_edge
  %call76.lcssa = phi ptr [ %call76, %if.end73.if.then81_crit_edge ], [ %call76.1, %if.end73.1.if.then81_crit_edge ]
  %.lcssa164 = phi i32 [ 112, %if.end73.if.then81_crit_edge ], [ 114, %if.end73.1.if.then81_crit_edge ]
  %35 = ptrtoint ptr %call76.lcssa to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %.lcssa164) #6
  br label %err_unregister_i2c

if.then89:                                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  %funcs = getelementptr inbounds %struct.anx6345, ptr %call.i, i32 0, i32 1, i32 7
  %36 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @anx6345_bridge_funcs, ptr %funcs, align 4
  tail call void @drm_bridge_add(ptr noundef %bridge) #6
  br label %cleanup

if.else92:                                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @anx6345_poweroff(ptr noundef nonnull %call.i)
  br label %err_unregister_i2c

err_unregister_i2c:                               ; preds = %if.else92, %if.then81, %if.then67
  %err.0 = phi i32 [ %33, %if.then67 ], [ %35, %if.then81 ], [ -19, %if.else92 ]
  %arrayidx.i = getelementptr %struct.anx6345, ptr %call.i, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %err_unregister_i2c.cleanup_crit_edge, label %land.lhs.true.i

err_unregister_i2c.cleanup_crit_edge:             ; preds = %err_unregister_i2c
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %err_unregister_i2c
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr.i, align 2
  %41 = ptrtoint ptr %client4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client4, align 8
  %addr3.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %44)
  %cmp5.not.i = icmp eq i16 %40, %44
  br i1 %cmp5.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_unregister_device(ptr noundef nonnull %38) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %err_unregister_i2c.cleanup_crit_edge, %if.then89, %if.then46, %if.end39, %if.end25, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end25 ], [ %15, %if.end39 ], [ %21, %if.then46 ], [ 0, %if.then89 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %do.body.cleanup_crit_edge ], [ %err.0, %err_unregister_i2c.cleanup_crit_edge ], [ %err.0, %land.lhs.true.i.cleanup_crit_edge ], [ %err.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx6345_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.anx6345, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #6
  %arrayidx.i = getelementptr %struct.anx6345, ptr %1, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.unregister_i2c_dummy_clients.exit_crit_edge, label %land.lhs.true.i

entry.unregister_i2c_dummy_clients.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_i2c_dummy_clients.exit

land.lhs.true.i:                                  ; preds = %entry
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr.i, align 2
  %client.i = getelementptr inbounds %struct.anx6345, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 8
  %addr3.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %9)
  %cmp5.not.i = icmp eq i16 %5, %9
  br i1 %cmp5.not.i, label %land.lhs.true.i.unregister_i2c_dummy_clients.exit_crit_edge, label %if.then.i

land.lhs.true.i.unregister_i2c_dummy_clients.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_i2c_dummy_clients.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_unregister_device(ptr noundef nonnull %3) #6
  br label %unregister_i2c_dummy_clients.exit

unregister_i2c_dummy_clients.exit:                ; preds = %if.then.i, %land.lhs.true.i.unregister_i2c_dummy_clients.exit_crit_edge, %entry.unregister_i2c_dummy_clients.exit_crit_edge
  %edid = getelementptr inbounds %struct.anx6345, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edid, align 4
  tail call void @kfree(ptr noundef %11) #6
  %lock = getelementptr inbounds %struct.anx6345, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @anx6345_poweron(ptr nocapture noundef %anx6345) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_reset = getelementptr inbounds %struct.anx6345, ptr %anx6345, i32 0, i32 8
  %0 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %dvdd12 = getelementptr inbounds %struct.anx6345, ptr %anx6345, i32 0, i32 6
  %2 = ptrtoint ptr %dvdd12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvdd12, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %dvdd25 = getelementptr inbounds %struct.anx6345, ptr %anx6345, i32 0, i32 7
  %4 = ptrtoint ptr %dvdd25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvdd25, align 8
  %call1 = tail call i32 @regulator_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %call1) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 5000, i32 noundef 2) #6
  %6 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #6
  %arrayidx = getelementptr %struct.anx6345, ptr %anx6345, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 5, i32 noundef 60, i32 noundef 60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call.i.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 5, i32 noundef 130, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %panel = getelementptr inbounds %struct.anx6345, ptr %anx6345, i32 0, i32 5
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel, align 8
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end4.if.end14_crit_edge, label %if.then11

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @drm_panel_prepare(ptr noundef nonnull %13) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end4.if.end14_crit_edge
  %powered = getelementptr inbounds %struct.anx6345, ptr %anx6345, i32 0, i32 14
  %14 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %powered, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @anx6345_get_chip_id(ptr nocapture noundef %anx6345) unnamed_addr #2 align 64 {
entry:
  %idl = alloca i32, align 4
  %idh = alloca i32, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idl) #6
  %0 = ptrtoint ptr %idl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idl, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idh) #6
  %1 = ptrtoint ptr %idh to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %idh, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #6
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %version, align 4, !annotation !123
  %arrayidx = getelementptr %struct.anx6345, ptr %anx6345, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 2, ptr noundef nonnull %idl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 3, ptr noundef nonnull %idh) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %idl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idl, align 4
  %conv7 = and i32 %8, 255
  %9 = ptrtoint ptr %idh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idh, align 4
  %conv9 = shl i32 %10, 8
  %or = or i32 %conv9, %conv7
  %conv10 = trunc i32 %or to i16
  %chipid = getelementptr inbounds %struct.anx6345, ptr %anx6345, i32 0, i32 12
  %11 = ptrtoint ptr %chipid to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv10, ptr %chipid, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call13 = call i32 @regmap_read(ptr noundef %13, i32 noundef 4, ptr noundef nonnull %version) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.body, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %chipid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 25413, i16 %15)
  %cmp22 = icmp eq i16 %15, 25413
  br i1 %cmp22, label %do.end, label %for.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version, align 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 25413, i32 noundef %17) #9
  br label %cleanup

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv30 = zext i16 %15 to i32
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %conv30, i32 noundef %19) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end ], [ false, %for.end ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idh) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idl) #6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @anx6345_poweroff(ptr nocapture noundef %anx6345) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_reset = getelementptr inbounds %struct.anx6345, ptr %anx6345, i32 0, i32 8
  %0 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %panel = getelementptr inbounds %struct.anx6345, ptr %anx6345, i32 0, i32 5
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @drm_panel_unprepare(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dvdd25 = getelementptr inbounds %struct.anx6345, ptr %anx6345, i32 0, i32 7
  %4 = ptrtoint ptr %dvdd25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvdd25, align 8
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40, i32 noundef %call2) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #6
  %dvdd12 = getelementptr inbounds %struct.anx6345, ptr %anx6345, i32 0, i32 6
  %6 = ptrtoint ptr %dvdd12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvdd12, align 4
  %call6 = tail call i32 @regulator_disable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41, i32 noundef %call6) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %powered = getelementptr inbounds %struct.anx6345, ptr %anx6345, i32 0, i32 14
  %8 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %powered, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx6345_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1736
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.20, ptr %add.ptr.i, align 8
  %client = getelementptr i8, ptr %bridge, i32 280
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %dev5 = getelementptr i8, ptr %bridge, i32 -368
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev5, align 8
  %dev6 = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  %drm_dev = getelementptr i8, ptr %bridge, i32 -364
  %8 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %drm_dev, align 4
  %transfer = getelementptr i8, ptr %bridge, i32 -216
  %9 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @anx6345_aux_transfer, ptr %transfer, align 8
  %call10 = tail call i32 @drm_dp_aux_register(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %call10) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev6, align 4
  %connector = getelementptr i8, ptr %bridge, i32 288
  %call14 = tail call i32 @drm_connector_init(ptr noundef %11, ptr noundef %connector, ptr noundef nonnull @anx6345_connector_funcs, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %call14) #6
  br label %aux_unregister

if.end17:                                         ; preds = %if.end12
  %helper_private.i = getelementptr i8, ptr %bridge, i32 996
  %12 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @anx6345_connector_helper_funcs, ptr %helper_private.i, align 4
  %polled = getelementptr i8, ptr %bridge, i32 988
  %13 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %polled, align 4
  %14 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %encoder, align 4
  %call22 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %call22) #6
  br label %connector_cleanup

if.end25:                                         ; preds = %if.end17
  %call27 = tail call i32 @drm_connector_register(ptr noundef %connector) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.then29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %call27) #6
  br label %connector_cleanup

connector_cleanup:                                ; preds = %if.then29, %if.then24
  %err.0 = phi i32 [ %call22, %if.then24 ], [ %call27, %if.then29 ]
  tail call void @drm_connector_cleanup(ptr noundef %connector) #6
  br label %aux_unregister

aux_unregister:                                   ; preds = %connector_cleanup, %if.then16
  %err.1 = phi i32 [ %call14, %if.then16 ], [ %err.0, %connector_cleanup ]
  tail call void @drm_dp_aux_unregister(ptr noundef %add.ptr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %aux_unregister, %if.end25.cleanup_crit_edge, %if.then11, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call10, %if.then11 ], [ %err.1, %aux_unregister ], [ -19, %if.then2 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx6345_bridge_detach(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1736
  tail call void @drm_dp_aux_unregister(ptr noundef %add.ptr.i) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @anx6345_bridge_mode_valid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 154000, i32 %3)
  %cmp = icmp sgt i32 %3, 154000
  %. = select i1 %cmp, i32 15, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 7, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx6345_bridge_disable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1736
  %arrayidx = getelementptr i8, ptr %bridge, i32 1448
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 5, i32 noundef 60, i32 noundef 60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %panel = getelementptr i8, ptr %bridge, i32 1328
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @drm_panel_disable(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %powered = getelementptr i8, ptr %bridge, i32 1469
  %4 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %powered, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @anx6345_poweroff(ptr noundef %add.ptr.i)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx6345_bridge_enable(ptr noundef %bridge) #2 align 64 {
entry:
  %value.addr.i262.i.i = alloca i8, align 1
  %value.addr.i260.i.i = alloca i8, align 1
  %value.addr.i.i.i = alloca i8, align 1
  %value.i.i = alloca i32, align 4
  %dp_bw.i.i = alloca i8, align 1
  %dpcd.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1736
  %panel = getelementptr i8, ptr %bridge, i32 1328
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @drm_panel_enable(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %powered.i = getelementptr i8, ptr %bridge, i32 1469
  %2 = ptrtoint ptr %powered.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powered.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @anx6345_poweron(ptr noundef %add.ptr.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %arrayidx.i = getelementptr i8, ptr %bridge, i32 1448
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 5, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %map.i.i = getelementptr i8, ptr %bridge, i32 1444
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 9, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.end.i.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i.i, align 4
  %call3.i.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 199, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i.if.then3.i_crit_edge

if.end.i.i.if.then3.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %call9.i.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 220, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end6.i.i.if.then3.i_crit_edge

if.end6.i.i.if.then3.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.end12.i.i:                                     ; preds = %if.end6.i.i
  %12 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i.i, align 4
  %call15.i.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 184, i32 noundef 48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end12.i.i.if.then3.i_crit_edge

if.end12.i.i.if.then3.i_crit_edge:                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.end18.i.i:                                     ; preds = %if.end12.i.i
  %14 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i.i, align 4
  %call21.i.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 200, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %if.end18.i.i.if.then3.i_crit_edge

if.end18.i.i.if.then3.i_crit_edge:                ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.end24.i.i:                                     ; preds = %if.end18.i.i
  %16 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 130, i32 noundef 48, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %for.body.preheader.i.i, label %if.end24.i.i.if.then3.i_crit_edge

if.end24.i.i.if.then3.i_crit_edge:                ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

for.body.preheader.i.i:                           ; preds = %if.end24.i.i
  %18 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map.i.i, align 4
  %call33.i.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 163, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %for.cond.i.i, label %for.body.preheader.i.i.if.then3.i_crit_edge

for.body.preheader.i.i.if.then3.i_crit_edge:      ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

for.cond.i.i:                                     ; preds = %for.body.preheader.i.i
  %20 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i.i, align 4
  %call33.1.i.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 164, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.1.i.i)
  %tobool34.not.1.i.i = icmp eq i32 %call33.1.i.i, 0
  br i1 %tobool34.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.if.then3.i_crit_edge

for.cond.i.i.if.then3.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %22 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i.i, align 4
  %call33.2.i.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 165, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.2.i.i)
  %tobool34.not.2.i.i = icmp eq i32 %call33.2.i.i, 0
  br i1 %tobool34.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.if.then3.i_crit_edge

for.cond.1.i.i.if.then3.i_crit_edge:              ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %24 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map.i.i, align 4
  %call33.3.i.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 166, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.3.i.i)
  %tobool34.not.3.i.i = icmp eq i32 %call33.3.i.i, 0
  br i1 %tobool34.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.if.then3.i_crit_edge

for.cond.2.i.i.if.then3.i_crit_edge:              ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i72.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 7, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72.i.i)
  %tobool40.not.i.i = icmp eq i32 %call.i.i72.i.i, 0
  br i1 %tobool40.not.i.i, label %anx6345_tx_initialization.exit.i, label %for.cond.3.i.i.if.then3.i_crit_edge

for.cond.3.i.i.if.then3.i_crit_edge:              ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

anx6345_tx_initialization.exit.i:                 ; preds = %for.cond.3.i.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i73.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 7, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i73.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %anx6345_tx_initialization.exit.i.if.then3.i_crit_edge

anx6345_tx_initialization.exit.i.if.then3.i_crit_edge: ; preds = %anx6345_tx_initialization.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.then3.i:                                       ; preds = %anx6345_tx_initialization.exit.i.if.then3.i_crit_edge, %for.cond.3.i.i.if.then3.i_crit_edge, %for.cond.2.i.i.if.then3.i_crit_edge, %for.cond.1.i.i.if.then3.i_crit_edge, %for.cond.i.i.if.then3.i_crit_edge, %for.body.preheader.i.i.if.then3.i_crit_edge, %if.end24.i.i.if.then3.i_crit_edge, %if.end18.i.i.if.then3.i_crit_edge, %if.end12.i.i.if.then3.i_crit_edge, %if.end6.i.i.if.then3.i_crit_edge, %if.end.i.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %retval.0.i30.i = phi i32 [ %call.i.i73.i.i, %anx6345_tx_initialization.exit.i.if.then3.i_crit_edge ], [ %call33.3.i.i, %for.cond.2.i.i.if.then3.i_crit_edge ], [ %call33.2.i.i, %for.cond.1.i.i.if.then3.i_crit_edge ], [ %call33.1.i.i, %for.cond.i.i.if.then3.i_crit_edge ], [ %call33.i.i, %for.body.preheader.i.i.if.then3.i_crit_edge ], [ %call.i.i72.i.i, %for.cond.3.i.i.if.then3.i_crit_edge ], [ %call.i.i.i.i, %if.end24.i.i.if.then3.i_crit_edge ], [ %call21.i.i, %if.end18.i.i.if.then3.i_crit_edge ], [ %call15.i.i, %if.end12.i.i.if.then3.i_crit_edge ], [ %call9.i.i, %if.end6.i.i.if.then3.i_crit_edge ], [ %call3.i.i, %if.end.i.i.if.then3.i_crit_edge ], [ %call.i.i, %if.end.i.if.then3.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %retval.0.i30.i) #6
  tail call fastcc void @anx6345_poweroff(ptr noundef %add.ptr.i) #6
  br label %if.then5

if.end4.i:                                        ; preds = %anx6345_tx_initialization.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #6
  %30 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %value.i.i, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dp_bw.i.i) #6
  %31 = ptrtoint ptr %dp_bw.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %dp_bw.i.i, align 1, !annotation !123
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dpcd.i.i) #6
  %32 = ptrtoint ptr %dpcd.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %dpcd.i.i, align 1, !annotation !123
  %33 = getelementptr inbounds [2 x i8], ptr %dpcd.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %33, align 1, !annotation !123
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i22.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 5, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i22.i)
  %tobool.not.i23.i = icmp eq i32 %call.i.i.i22.i, 0
  br i1 %tobool.not.i23.i, label %if.end.i25.i, label %if.end4.i.if.then7.i_crit_edge

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end.i25.i:                                     ; preds = %if.end4.i
  %call.i.i24.i = call i32 @drm_dp_dpcd_read(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef nonnull %dp_bw.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %cmp.i.i = icmp slt i32 %call.i.i24.i, 0
  br i1 %cmp.i.i, label %if.end.i25.i.if.then7.i_crit_edge, label %if.end3.i.i

if.end.i25.i.if.then7.i_crit_edge:                ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end3.i.i:                                      ; preds = %if.end.i25.i
  %37 = ptrtoint ptr %dp_bw.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dp_bw.i.i, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %38, label %sw.default.i.i [
    i8 6, label %if.end3.i.i.sw.epilog.i.i_crit_edge
    i8 10, label %if.end3.i.i.sw.epilog.i.i_crit_edge29
  ]

if.end3.i.i.sw.epilog.i.i_crit_edge29:            ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

if.end3.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i8 %38 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %conv.i.i) #6
  br label %if.then7.i

sw.epilog.i.i:                                    ; preds = %if.end3.i.i.sw.epilog.i.i_crit_edge, %if.end3.i.i.sw.epilog.i.i_crit_edge29
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i255.i.i = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 8, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i255.i.i)
  %tobool8.not.i.i = icmp eq i32 %call.i.i255.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %sw.epilog.i.i.if.then7.i_crit_edge

sw.epilog.i.i.if.then7.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end10.i.i:                                     ; preds = %sw.epilog.i.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i256.i.i = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 8, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i256.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i.i256.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %if.end10.i.i.if.then7.i_crit_edge

if.end10.i.i.if.then7.i_crit_edge:                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end16.i.i:                                     ; preds = %if.end10.i.i
  %dpcd18.i.i = getelementptr i8, ptr %bridge, i32 1454
  %call19.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef %dpcd18.i.i, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %cmp20.i.i = icmp slt i32 %call19.i.i, 0
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.end23.i.i

if.then22.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call19.i.i) #6
  br label %if.then7.i

if.end23.i.i:                                     ; preds = %if.end16.i.i
  %44 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map.i.i, align 4
  %call.i.i257.i.i = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 200, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i257.i.i)
  %tobool27.not.i.i = icmp eq i32 %call.i.i257.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end29.i.i, label %if.end23.i.i.if.then7.i_crit_edge

if.end23.i.i.if.then7.i_crit_edge:                ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end29.i.i:                                     ; preds = %if.end23.i.i
  %46 = ptrtoint ptr %dpcd18.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dpcd18.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %47)
  %cmp33.i.i = icmp ugt i8 %47, 16
  br i1 %cmp33.i.i, label %if.then35.i.i, label %if.end29.i.i.if.end56.i.i_crit_edge

if.end29.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i.i

if.then35.i.i:                                    ; preds = %if.end29.i.i
  %call.i258.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %add.ptr.i, i32 noundef 1536, ptr noundef nonnull %dpcd.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258.i.i)
  %cmp39.i.i = icmp slt i32 %call.i258.i.i, 0
  br i1 %cmp39.i.i, label %if.then41.i.i, label %if.end42.i26.i

if.then41.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36, i32 noundef %call.i258.i.i) #6
  br label %if.then7.i

if.end42.i26.i:                                   ; preds = %if.then35.i.i
  %48 = ptrtoint ptr %dpcd.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dpcd.i.i, align 1
  %50 = and i8 %49, -4
  %51 = or i8 %50, 1
  store i8 %51, ptr %dpcd.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i) #6
  %52 = ptrtoint ptr %value.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %value.addr.i.i.i, align 1
  %call.i259.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %add.ptr.i, i32 noundef 1536, ptr noundef nonnull %value.addr.i.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.i.i)
  %cmp52.i.i = icmp slt i32 %call.i259.i.i, 0
  br i1 %cmp52.i.i, label %if.then54.i.i, label %if.end55.i.i

if.then54.i.i:                                    ; preds = %if.end42.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, i32 noundef %call.i259.i.i) #6
  br label %if.then7.i

if.end55.i.i:                                     ; preds = %if.end42.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.end55.i.i, %if.end29.i.i.if.end56.i.i_crit_edge
  %53 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map.i.i, align 4
  %call59.i.i = call i32 @regmap_write(ptr noundef %54, i32 noundef 208, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool60.not.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool60.not.i.i, label %if.end62.i.i, label %if.end56.i.i.if.then7.i_crit_edge

if.end56.i.i.if.then7.i_crit_edge:                ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end62.i.i:                                     ; preds = %if.end56.i.i
  %arrayidx64.i.i = getelementptr i8, ptr %bridge, i32 1457
  %55 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx64.i.i, align 1
  %57 = and i8 %56, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool67.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool67.not.i.i, label %if.else.i.i, label %if.then68.i.i

if.then68.i.i:                                    ; preds = %if.end62.i.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.38) #6
  %58 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map.i.i, align 4
  %call71.i.i = call i32 @regmap_write(ptr noundef %59, i32 noundef 208, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i)
  %tobool72.not.i.i = icmp eq i32 %call71.i.i, 0
  br i1 %tobool72.not.i.i, label %if.end74.i.i, label %if.then68.i.i.if.then7.i_crit_edge

if.then68.i.i.if.then7.i_crit_edge:               ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end74.i.i:                                     ; preds = %if.then68.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i260.i.i) #6
  %60 = ptrtoint ptr %value.addr.i260.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 16, ptr %value.addr.i260.i.i, align 1
  %call.i261.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %add.ptr.i, i32 noundef 263, ptr noundef nonnull %value.addr.i260.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i260.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261.i.i)
  %cmp77.i.i = icmp slt i32 %call.i261.i.i, 0
  br i1 %cmp77.i.i, label %if.end74.i.i.if.then7.i_crit_edge, label %if.end74.i.i.if.end87.i.i_crit_edge

if.end74.i.i.if.end87.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.i.i

if.end74.i.i.if.then7.i_crit_edge:                ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.else.i.i:                                      ; preds = %if.end62.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i262.i.i) #6
  %61 = ptrtoint ptr %value.addr.i262.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %value.addr.i262.i.i, align 1
  %call.i263.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %add.ptr.i, i32 noundef 263, ptr noundef nonnull %value.addr.i262.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i262.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263.i.i)
  %cmp83.i.i = icmp slt i32 %call.i263.i.i, 0
  br i1 %cmp83.i.i, label %if.else.i.i.if.then7.i_crit_edge, label %if.else.i.i.if.end87.i.i_crit_edge

if.else.i.i.if.end87.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.i.i

if.else.i.i.if.then7.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end87.i.i:                                     ; preds = %if.else.i.i.if.end87.i.i_crit_edge, %if.end74.i.i.if.end87.i.i_crit_edge
  %62 = ptrtoint ptr %dpcd18.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %dpcd18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %63)
  %cmp.i.i.i = icmp ugt i8 %63, 16
  br i1 %cmp.i.i.i, label %drm_dp_enhanced_frame_cap.exit.i.i, label %if.end87.i.i.if.else94.i.i_crit_edge

if.end87.i.i.if.else94.i.i_crit_edge:             ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else94.i.i

drm_dp_enhanced_frame_cap.exit.i.i:               ; preds = %if.end87.i.i
  %arrayidx2.i.i.i = getelementptr i8, ptr %bridge, i32 1456
  %64 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.i.i.i = icmp slt i8 %65, 0
  br i1 %tobool.i.i.i, label %drm_dp_enhanced_frame_cap.exit.i.i.if.end98.i.i_crit_edge, label %drm_dp_enhanced_frame_cap.exit.i.i.if.else94.i.i_crit_edge

drm_dp_enhanced_frame_cap.exit.i.i.if.else94.i.i_crit_edge: ; preds = %drm_dp_enhanced_frame_cap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else94.i.i

drm_dp_enhanced_frame_cap.exit.i.i.if.end98.i.i_crit_edge: ; preds = %drm_dp_enhanced_frame_cap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98.i.i

if.else94.i.i:                                    ; preds = %drm_dp_enhanced_frame_cap.exit.i.i.if.else94.i.i_crit_edge, %if.end87.i.i.if.else94.i.i_crit_edge
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %if.else94.i.i, %drm_dp_enhanced_frame_cap.exit.i.i.if.end98.i.i_crit_edge
  %.sink285.i.i = phi i32 [ 0, %if.else94.i.i ], [ 8, %drm_dp_enhanced_frame_cap.exit.i.i.if.end98.i.i_crit_edge ]
  %66 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map.i.i, align 4
  %call.i.i265.i.i = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 131, i32 noundef 8, i32 noundef %.sink285.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i265.i.i)
  %tobool99.not.i.i = icmp eq i32 %call.i.i265.i.i, 0
  br i1 %tobool99.not.i.i, label %if.end101.i.i, label %if.end98.i.i.if.then7.i_crit_edge

if.end98.i.i.if.then7.i_crit_edge:                ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end101.i.i:                                    ; preds = %if.end98.i.i
  %68 = ptrtoint ptr %dp_bw.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dp_bw.i.i, align 1
  %70 = ptrtoint ptr %dpcd.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %dpcd.i.i, align 1
  %71 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %map.i.i, align 4
  %conv106.i.i = zext i8 %69 to i32
  %call107.i.i = call i32 @regmap_write(ptr noundef %72, i32 noundef 160, i32 noundef %conv106.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i.i)
  %tobool108.not.i.i = icmp eq i32 %call107.i.i, 0
  br i1 %tobool108.not.i.i, label %if.end110.i.i, label %if.end101.i.i.if.then7.i_crit_edge

if.end101.i.i.if.then7.i_crit_edge:               ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end110.i.i:                                    ; preds = %if.end101.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %bridge, i32 1456
  %73 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i.i, align 1
  %75 = and i8 %74, 31
  %76 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %33, align 1
  %77 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map.i.i, align 4
  %conv118.i.i = zext i8 %75 to i32
  %call119.i.i = call i32 @regmap_write(ptr noundef %78, i32 noundef 161, i32 noundef %conv118.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i.i)
  %tobool120.not.i.i = icmp eq i32 %call119.i.i, 0
  br i1 %tobool120.not.i.i, label %if.end122.i.i, label %if.end110.i.i.if.then7.i_crit_edge

if.end110.i.i.if.then7.i_crit_edge:               ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end122.i.i:                                    ; preds = %if.end110.i.i
  %79 = ptrtoint ptr %dpcd18.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %dpcd18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %80)
  %cmp.i266.i.i = icmp ugt i8 %80, 16
  br i1 %cmp.i266.i.i, label %drm_dp_enhanced_frame_cap.exit270.i.i, label %if.end122.i.i.if.end131.i.i_crit_edge

if.end122.i.i.if.end131.i.i_crit_edge:            ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131.i.i

drm_dp_enhanced_frame_cap.exit270.i.i:            ; preds = %if.end122.i.i
  %81 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.i268.i.i = icmp slt i8 %82, 0
  br i1 %tobool.i268.i.i, label %if.then126.i.i, label %drm_dp_enhanced_frame_cap.exit270.i.i.if.end131.i.i_crit_edge

drm_dp_enhanced_frame_cap.exit270.i.i.if.end131.i.i_crit_edge: ; preds = %drm_dp_enhanced_frame_cap.exit270.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131.i.i

if.then126.i.i:                                   ; preds = %drm_dp_enhanced_frame_cap.exit270.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %33, align 1
  %85 = or i8 %84, -128
  store i8 %85, ptr %33, align 1
  br label %if.end131.i.i

if.end131.i.i:                                    ; preds = %if.then126.i.i, %drm_dp_enhanced_frame_cap.exit270.i.i.if.end131.i.i_crit_edge, %if.end122.i.i.if.end131.i.i_crit_edge
  %call134.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %add.ptr.i, i32 noundef 256, ptr noundef nonnull %dpcd.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i.i)
  %cmp135.i.i = icmp slt i32 %call134.i.i, 0
  br i1 %cmp135.i.i, label %if.then137.i.i, label %if.end138.i.i

if.then137.i.i:                                   ; preds = %if.end131.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %call134.i.i) #6
  br label %if.then7.i

if.end138.i.i:                                    ; preds = %if.end131.i.i
  %86 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %map.i.i, align 4
  %call141.i.i = call i32 @regmap_write(ptr noundef %87, i32 noundef 168, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i.i)
  %tobool142.not.i.i = icmp eq i32 %call141.i.i, 0
  br i1 %tobool142.not.i.i, label %if.end144.i.i, label %if.end138.i.i.if.then7.i_crit_edge

if.end138.i.i.if.then7.i_crit_edge:               ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end144.i.i:                                    ; preds = %if.end138.i.i
  %call145.i.i = call i64 @ktime_get() #6
  %add.i.i.i = add i64 %call145.i.i, 5000000000
  call void @__might_sleep(ptr noundef nonnull @.str.16, i32 noundef 246) #6
  %88 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %map.i.i, align 4
  %call159283.i.i = call i32 @regmap_read(ptr noundef %89, i32 noundef 168, ptr noundef nonnull %value.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159283.i.i)
  %tobool160.not284.i.i = icmp eq i32 %call159283.i.i, 0
  br i1 %tobool160.not284.i.i, label %if.end144.i.i.lor.lhs.false.i.i_crit_edge, label %if.end144.i.i.if.then7.i_crit_edge

if.end144.i.i.if.then7.i_crit_edge:               ; preds = %if.end144.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end144.i.i.lor.lhs.false.i.i_crit_edge:        ; preds = %if.end144.i.i
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.then176.i.i.lor.lhs.false.i.i_crit_edge, %if.end144.i.i.lor.lhs.false.i.i_crit_edge
  %90 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %value.i.i, align 4
  %and161.i.i = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i.i)
  %tobool162.not.i.i = icmp eq i32 %and161.i.i, 0
  br i1 %tobool162.not.i.i, label %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.lor.rhs.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call166.i.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call166.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call166.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then176.i.i

if.then176.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #6
  %92 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %map.i.i, align 4
  %call159.i.i = call i32 @regmap_read(ptr noundef %93, i32 noundef 168, ptr noundef nonnull %value.i.i) #6
  %tobool160.not.i.i = icmp eq i32 %call159.i.i, 0
  br i1 %tobool160.not.i.i, label %if.then176.i.i.lor.lhs.false.i.i_crit_edge, label %if.then176.i.i.if.then7.i_crit_edge

if.then176.i.i.if.then7.i_crit_edge:              ; preds = %if.then176.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.then176.i.i.lor.lhs.false.i.i_crit_edge:       ; preds = %if.then176.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %94 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %map.i.i, align 4
  %call173.i.i = call i32 @regmap_read(ptr noundef %95, i32 noundef 168, ptr noundef nonnull %value.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173.i.i)
  %tobool178.not.i.i = icmp eq i32 %call173.i.i, 0
  br i1 %tobool178.not.i.i, label %for.end.i.i.lor.rhs.i.i_crit_edge, label %for.end.i.i.if.then7.i_crit_edge

for.end.i.i.if.then7.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

for.end.i.i.lor.rhs.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %for.end.i.i.lor.rhs.i.i_crit_edge, %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge
  %96 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %value.i.i, align 4
  %and179.i.i = and i32 %97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179.i.i)
  %tobool180.not.i.i = icmp eq i32 %and179.i.i, 0
  br i1 %tobool180.not.i.i, label %if.end6, label %lor.rhs.i.i.if.then7.i_crit_edge

lor.rhs.i.i.if.then7.i_crit_edge:                 ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.rhs.i.i.if.then7.i_crit_edge, %for.end.i.i.if.then7.i_crit_edge, %if.then176.i.i.if.then7.i_crit_edge, %if.end144.i.i.if.then7.i_crit_edge, %if.end138.i.i.if.then7.i_crit_edge, %if.then137.i.i, %if.end110.i.i.if.then7.i_crit_edge, %if.end101.i.i.if.then7.i_crit_edge, %if.end98.i.i.if.then7.i_crit_edge, %if.else.i.i.if.then7.i_crit_edge, %if.end74.i.i.if.then7.i_crit_edge, %if.then68.i.i.if.then7.i_crit_edge, %if.end56.i.i.if.then7.i_crit_edge, %if.then54.i.i, %if.then41.i.i, %if.end23.i.i.if.then7.i_crit_edge, %if.then22.i.i, %if.end10.i.i.if.then7.i_crit_edge, %sw.epilog.i.i.if.then7.i_crit_edge, %sw.default.i.i, %if.end.i25.i.if.then7.i_crit_edge, %if.end4.i.if.then7.i_crit_edge
  %retval.0.i27.ph.i = phi i32 [ %call159283.i.i, %if.end144.i.i.if.then7.i_crit_edge ], [ -110, %lor.rhs.i.i.if.then7.i_crit_edge ], [ %call173.i.i, %for.end.i.i.if.then7.i_crit_edge ], [ %call141.i.i, %if.end138.i.i.if.then7.i_crit_edge ], [ %call119.i.i, %if.end110.i.i.if.then7.i_crit_edge ], [ %call107.i.i, %if.end101.i.i.if.then7.i_crit_edge ], [ %call.i.i265.i.i, %if.end98.i.i.if.then7.i_crit_edge ], [ %call.i263.i.i, %if.else.i.i.if.then7.i_crit_edge ], [ %call.i261.i.i, %if.end74.i.i.if.then7.i_crit_edge ], [ %call71.i.i, %if.then68.i.i.if.then7.i_crit_edge ], [ %call59.i.i, %if.end56.i.i.if.then7.i_crit_edge ], [ %call.i.i257.i.i, %if.end23.i.i.if.then7.i_crit_edge ], [ %call.i.i256.i.i, %if.end10.i.i.if.then7.i_crit_edge ], [ %call.i.i255.i.i, %sw.epilog.i.i.if.then7.i_crit_edge ], [ %call.i.i24.i, %if.end.i25.i.if.then7.i_crit_edge ], [ %call.i.i.i22.i, %if.end4.i.if.then7.i_crit_edge ], [ %call134.i.i, %if.then137.i.i ], [ %call.i259.i.i, %if.then54.i.i ], [ %call.i258.i.i, %if.then41.i.i ], [ %call19.i.i, %if.then22.i.i ], [ -22, %sw.default.i.i ], [ %call159.i.i, %if.then176.i.i.if.then7.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dpcd.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dp_bw.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %retval.0.i27.ph.i) #6
  call fastcc void @anx6345_poweroff(ptr noundef %add.ptr.i) #6
  br label %if.then5

if.then5:                                         ; preds = %if.then7.i, %if.then3.i
  %retval.0.i.ph = phi i32 [ %retval.0.i27.ph.i, %if.then7.i ], [ %retval.0.i30.i, %if.then3.i ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %retval.0.i.ph) #6
  br label %cleanup

if.end6:                                          ; preds = %lor.rhs.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dpcd.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dp_bw.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #6
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i19 = call i32 @regmap_update_bits_base(ptr noundef %99, i32 noundef 8, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i19)
  %tobool.not.i20 = icmp eq i32 %call.i.i.i19, 0
  br i1 %tobool.not.i20, label %if.end.i21, label %if.end6.if.then9_crit_edge

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end.i21:                                       ; preds = %if.end6
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i15.i = call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef 8, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15.i)
  %tobool4.not.i = icmp eq i32 %call.i.i15.i, 0
  br i1 %tobool4.not.i, label %anx6345_config_dp_output.exit, label %if.end.i21.if.then9_crit_edge

if.end.i21.if.then9_crit_edge:                    ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

anx6345_config_dp_output.exit:                    ; preds = %if.end.i21
  %102 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %map.i.i, align 4
  %call.i.i16.i = call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 130, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16.i)
  %tobool8.not = icmp eq i32 %call.i.i16.i, 0
  br i1 %tobool8.not, label %anx6345_config_dp_output.exit.cleanup_crit_edge, label %anx6345_config_dp_output.exit.if.then9_crit_edge

anx6345_config_dp_output.exit.if.then9_crit_edge: ; preds = %anx6345_config_dp_output.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

anx6345_config_dp_output.exit.cleanup_crit_edge:  ; preds = %anx6345_config_dp_output.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %anx6345_config_dp_output.exit.if.then9_crit_edge, %if.end.i21.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %retval.0.i2228 = phi i32 [ %call.i.i16.i, %anx6345_config_dp_output.exit.if.then9_crit_edge ], [ %call.i.i15.i, %if.end.i21.if.then9_crit_edge ], [ %call.i.i.i19, %if.end6.if.then9_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %retval.0.i2228) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %anx6345_config_dp_output.exit.cleanup_crit_edge, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx6345_aux_transfer(ptr nocapture noundef readonly %aux, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.anx6345, ptr %aux, i32 0, i32 11
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call i32 @anx_dp_aux_transfer(ptr noundef %1, ptr noundef %msg) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anx_dp_aux_transfer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx6345_connector_destroy(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_cleanup(ptr noundef %connector) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx6345_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %connector, i32 -2024
  %lock = getelementptr i8, ptr %connector, i32 1056
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %edid = getelementptr i8, ptr %connector, i32 -4
  %0 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end18.thread

if.end18.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid, align 4
  %call2067 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %3) #6
  %bpc68 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %4 = ptrtoint ptr %bpc68 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %bpc68, align 8
  br label %if.end23

if.then:                                          ; preds = %entry
  %powered = getelementptr i8, ptr %connector, i32 1181
  %5 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %powered, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @anx6345_poweron(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %value.i, align 1, !annotation !123
  %call.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %add.ptr.i, i32 noundef 512, ptr noundef nonnull %value.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %call.i.i) #6
  br label %if.then5

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %value.i, align 1
  %conv.i = zext i8 %9 to i32
  %and.i = lshr i32 %conv.i, 1
  %10 = and i32 %and.i, 64
  %and2.i = and i32 %conv.i, 63
  %or.i = or i32 %10, %and2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end6

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #6
  br label %if.then5

if.then5:                                         ; preds = %if.then3.i, %if.then.i
  %retval.0.i.ph = phi i32 [ -5, %if.then3.i ], [ %call.i.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %retval.0.i.ph) #6
  br i1 %tobool1.not, label %if.then5.if.then22_crit_edge, label %if.then5.if.end23.thread_crit_edge

if.then5.if.end23.thread_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.thread

if.then5.if.then22_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.end6:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %ddc = getelementptr i8, ptr %connector, i32 -2016
  %call7 = call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %ddc) #6
  %11 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %edid, align 4
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %if.then11, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end6.if.end12_crit_edge
  %12 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edid, align 4
  %call14 = call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %unlock

if.end18:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edid, align 4
  %call20 = call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %15) #6
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %bpc, align 8
  br i1 %tobool1.not, label %if.end18.if.then22_crit_edge, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end18.if.then22_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

unlock:                                           ; preds = %if.end12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %call14) #6
  br i1 %tobool1.not, label %unlock.if.then22_crit_edge, label %unlock.if.end23.thread_crit_edge

unlock.if.end23.thread_crit_edge:                 ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.thread

unlock.if.then22_crit_edge:                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.then22:                                        ; preds = %unlock.if.then22_crit_edge, %if.end18.if.then22_crit_edge, %if.then5.if.then22_crit_edge
  %num_modes.063 = phi i32 [ %call20, %if.end18.if.then22_crit_edge ], [ 0, %unlock.if.then22_crit_edge ], [ 0, %if.then5.if.then22_crit_edge ]
  call fastcc void @anx6345_poweroff(ptr noundef %add.ptr.i)
  br label %if.end23

if.end23.thread:                                  ; preds = %unlock.if.end23.thread_crit_edge, %if.then5.if.end23.thread_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %land.lhs.true

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge, %if.end18.thread
  %num_modes.062 = phi i32 [ %call20, %if.end18.if.end23_crit_edge ], [ %num_modes.063, %if.then22 ], [ %call2067, %if.end18.thread ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_modes.062)
  %tobool25.not = icmp eq i32 %num_modes.062, 0
  br i1 %tobool25.not, label %if.end23.land.lhs.true_crit_edge, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end23.land.lhs.true_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end23.land.lhs.true_crit_edge, %if.end23.thread
  %panel = getelementptr i8, ptr %connector, i32 1040
  %17 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %panel, align 8
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %land.lhs.true.if.end31_crit_edge, label %if.then27

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = call i32 @drm_panel_get_modes(ptr noundef nonnull %18, ptr noundef %connector) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %land.lhs.true.if.end31_crit_edge, %if.end23.if.end31_crit_edge
  %num_modes.1 = phi i32 [ %num_modes.062, %if.end23.if.end31_crit_edge ], [ %call29, %if.then27 ], [ 0, %land.lhs.true.if.end31_crit_edge ]
  ret i32 %num_modes.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_analogix_anx6345__307_826_anx6345_driver_init6, !1, !"__initcall__kmod_analogix_anx6345__307_826_anx6345_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 826, i32 1}
!2 = !{ptr @__exitcall_anx6345_driver_exit, !1, !"__exitcall_anx6345_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description308, !4, !"__UNIQUE_ID_description308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 828, i32 1}
!5 = !{ptr @__UNIQUE_ID_author309, !6, !"__UNIQUE_ID_author309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 829, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 830, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 819, i32 14}
!12 = !{ptr @anx6345_driver, !13, !"anx6345_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 817, i32 26}
!14 = !{ptr @anx6345_i2c_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 706, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 721, i32 3}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 724, i32 44}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 727, i32 4}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 733, i32 44}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 736, i32 4}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 742, i32 45}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 744, i32 3}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 758, i32 4}
!33 = !{ptr @anx6345_i2c_probe._key, !34, !"_key", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 763, i32 21}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 767, i32 4}
!38 = distinct !{null, !39, !"anx6345_i2c_addresses", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 41, i32 17}
!40 = !{ptr @anx6345_regmap_config, !41, !"anx6345_regmap_config", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 654, i32 35}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 314, i32 3}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 324, i32 3}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 683, i32 4}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @anx6345_get_chip_id._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @anx6345_get_chip_id._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 689, i32 2}
!54 = distinct !{null, !55, !"anx6345_chipid_list", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 661, i32 18}
!56 = !{ptr @anx6345_bridge_funcs, !57, !"anx6345_bridge_funcs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 636, i32 38}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 528, i32 3}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 533, i32 3}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 538, i32 22}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 545, i32 3}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 553, i32 3}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 565, i32 3}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 571, i32 3}
!72 = !{ptr @anx6345_connector_funcs, !73, !"anx6345_connector_funcs", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 513, i32 41}
!74 = !{ptr @anx6345_connector_helper_funcs, !75, !"anx6345_connector_helper_funcs", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 503, i32 48}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 470, i32 4}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 476, i32 4}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 481, i32 4}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 442, i32 3}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 447, i32 3}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 627, i32 3}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 633, i32 3}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 393, i32 3}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 400, i32 3}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 119, i32 3}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 137, i32 3}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 154, i32 4}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 164, i32 4}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 184, i32 3}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 233, i32 3}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 360, i32 3}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 369, i32 3}
!110 = !{ptr @anx6345_match_table, !111, !"anx6345_match_table", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 811, i32 34}
!112 = !{ptr @anx6345_id, !113, !"anx6345_id", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx6345.c", i32 805, i32 35}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"auto-init"}
!124 = !{i8 0, i8 2}
