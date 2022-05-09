; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.anx78xx = type { %struct.drm_dp_aux, %struct.drm_bridge, ptr, ptr, %struct.drm_connector, %struct.anx78xx_platform_data, %struct.mutex, [5 x ptr], [5 x ptr], i16, [15 x i8], i8 }
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
%struct.anx78xx_platform_data = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }

@__initcall__kmod_analogix_anx78xx__307_1399_anx78xx_driver_init6 = internal global ptr @anx78xx_driver_init, section ".initcall6.init", align 4
@anx78xx_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @anx78xx_i2c_probe, ptr @anx78xx_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @anx78xx_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @anx78xx_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_anx78xx_driver_exit = internal global ptr @anx78xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description308 = internal constant [65 x i8] c"analogix_anx78xx.description=ANX78xx SlimPort Transmitter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [78 x i8] c"analogix_anx78xx.author=Enric Balletbo i Serra <enric.balletbo@collabora.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [71 x i8] c"analogix_anx78xx.file=drivers/gpu/drm/bridge/analogix/analogix-anx78xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [32 x i8] c"analogix_anx78xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"anx7814\00", [24 x i8] zeroinitializer }, align 32
@anx78xx_match_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"analogix,anx7808\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @anx7808_i2c_addresses }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"analogix,anx7812\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @anx781x_i2c_addresses }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"analogix,anx7814\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @anx781x_i2c_addresses }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"analogix,anx7818\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @anx781x_i2c_addresses }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@anx78xx_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"anx7814\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@anx78xx_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&anx78xx->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize pdata: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get HPD IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get CABLE_DET and INTP IRQ\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to reserve I2C bus %02x: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@anx78xx_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@anx78xx_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"analogix_anx78xx:1278:(&anx78xx_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed regmap initialization %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@anx78xx_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016[drm] Found ANX%x (ver. %d) SlimPort Transmitter\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"anx78xx_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c\00", [45 x i8] zeroinitializer }, align 32
@anx78xx_i2c_probe._entry_ptr = internal global ptr @anx78xx_i2c_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ANX%x (ver. %d) not supported by this driver\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"anx78xx-hpd\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to request CABLE_DET threaded IRQ: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"anx78xx-intp\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to request INTP threaded IRQ: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@anx78xx_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @anx78xx_bridge_attach, ptr @anx78xx_bridge_detach, ptr @anx78xx_bridge_mode_valid, ptr null, ptr @anx78xx_bridge_disable, ptr null, ptr @anx78xx_bridge_mode_set, ptr null, ptr @anx78xx_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dvdd10\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DVDD10 regulator not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hpd\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pd\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable DVDD10 regulator: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable interrupts: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read DP interrupt 1 status: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to read common interrupt 4 status: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read HDMI int 1 status: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Handle DP interrupt 1: %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IRQ: hardware link training finished\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Handle common interrupt 4: %02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to write SP_COMMON_INT_STATUS4 %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"IRQ: Hot plug detect - cable is pulled out\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IRQ: Hot plug detect - cable plug\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Handle HDMI interrupt 1: %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Write HDMI int 1 failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IRQ: HDMI input detected\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Read system status reg failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IRQ: *** Waiting for HDMI clock ***\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IRQ: *** Waiting for HDMI signal ***\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to start link training: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DP bandwidth (%#02x) not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read DPCD: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read DP_SET_POWER register: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to power up DisplayPort link: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enable downspread on the sink\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to configure link: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Fix bridge driver to make connector optional!\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Parent encoder object not found\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DP-AUX\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register aux channel: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@anx78xx_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @anx78xx_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to initialize connector: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@anx78xx_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @anx78xx_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to link up connector to encoder: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register connector: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get downstream info: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to read EDID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to update EDID property: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Get sink count failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Downstream disconnected\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to setup AVI infoframe: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to send AVI infoframe: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to pack AVI infoframe: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to initialize: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to set HPD: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed receiver initialization: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed transmitter initialization: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed SlimPort transmitter initialization: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@tmds_phy_initialization = internal constant { [7 x %struct.reg_sequence], [44 x i8] } { [7 x %struct.reg_sequence] [%struct.reg_sequence { i32 80, i32 144, i32 0 }, %struct.reg_sequence { i32 81, i32 169, i32 0 }, %struct.reg_sequence { i32 85, i32 146, i32 0 }, %struct.reg_sequence { i32 86, i32 128, i32 0 }, %struct.reg_sequence { i32 99, i32 242, i32 0 }, %struct.reg_sequence { i32 101, i32 196, i32 0 }, %struct.reg_sequence { i32 102, i32 24, i32 0 }], [44 x i8] zeroinitializer }, align 32
@otp_key_protect = internal constant { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 96, i32 162, i32 0 }, %struct.reg_sequence { i32 97, i32 126, i32 0 }, %struct.reg_sequence { i32 98, i32 198, i32 0 }], [60 x i8] zeroinitializer }, align 32
@dp_tx_output_precise_tune_bits = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01\03\07\7Fqk\7Fs\7F\7F\00\00\00\00\0CB\1E>r~", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to disable DVDD10 regulator: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@anx7808_i2c_addresses = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xzr~\80", [27 x i8] zeroinitializer }, align 32
@anx781x_i2c_addresses = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pzr~\80", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 10, i64 20]
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"anx78xx_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1390, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1392, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"anx78xx_match_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1380, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"anx78xx_id\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1373, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1233, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1245, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1252, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1258, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1271, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"anx78xx_regmap_config\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1205, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1277, i32 21 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1281, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1309, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1317, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1326, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1328, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1336, i32 6 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1338, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"anx78xx_bridge_funcs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1025, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 580, i32 42 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 583, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 589, i32 41 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 594, i32 40 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 599, i32 43 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 478, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1049, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1156, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1166, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1181, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1060, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1068, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1080, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1085, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1090, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1097, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1109, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1114, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1119, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1124, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1129, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1134, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1140, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 631, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 649, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 666, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 676, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 696, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 739, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 896, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 901, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 906, i32 22 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 913, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [24 x i8] c"anx78xx_connector_funcs\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 880, i32 41 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 921, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [31 x i8] c"anx78xx_connector_helper_funcs\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 865, i32 48 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 933, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 939, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 840, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 846, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 853, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 813, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 818, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 997, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1003, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 778, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1016, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1022, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 549, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 555, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 568, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [24 x i8] c"tmds_phy_initialization\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 149, i32 34 }
@___asan_gen_.296 = private unnamed_addr constant [16 x i8] c"otp_key_protect\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 321, i32 34 }
@___asan_gen_.299 = private unnamed_addr constant [31 x i8] c"dp_tx_output_precise_tune_bits\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 234, i32 17 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 520, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant [22 x i8] c"anx7808_i2c_addresses\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 40, i32 17 }
@___asan_gen_.308 = private unnamed_addr constant [22 x i8] c"anx781x_i2c_addresses\00", align 1
@___asan_gen_.309 = private constant [54 x i8] c"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 48, i32 17 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_anx78xx_driver_exit, ptr @__initcall__kmod_analogix_anx78xx__307_1399_anx78xx_driver_init6, ptr @anx78xx_driver_exit, ptr @anx78xx_i2c_probe._entry, ptr @anx78xx_i2c_probe._entry_ptr, ptr @anx78xx_driver, ptr @.str, ptr @anx78xx_match_table, ptr @anx78xx_id, ptr @anx78xx_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @anx78xx_i2c_probe._key, ptr @anx78xx_regmap_config, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @anx78xx_bridge_funcs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @anx78xx_connector_funcs, ptr @.str.49, ptr @anx78xx_connector_helper_funcs, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @tmds_phy_initialization, ptr @otp_key_protect, ptr @dp_tx_output_precise_tune_bits, ptr @.str.65, ptr @anx7808_i2c_addresses, ptr @anx781x_i2c_addresses], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx78xx_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx78xx_match_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx78xx_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx78xx_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx78xx_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx78xx_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx78xx_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx78xx_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx78xx_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx78xx_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmds_phy_initialization to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otp_key_protect to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_tx_output_precise_tune_bits to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx7808_i2c_addresses to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx781x_i2c_addresses to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @anx78xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @anx78xx_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @anx78xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @anx78xx_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx78xx_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %idl = alloca i32, align 4
  %idh = alloca i32, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idl) #7
  %0 = ptrtoint ptr %idl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idl, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idh) #7
  %1 = ptrtoint ptr %idh to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %idh, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #7
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %version, align 4, !annotation !179
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3240, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup118_crit_edge, label %if.end

entry.cleanup118_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @anx78xx_i2c_probe.__key) #7
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %bridge = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 1
  %of_node3 = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %of_node3, align 4
  %client4 = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %client4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %client4, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %pdata1.i = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 5
  %call.i197 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  %8 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i197, ptr %pdata1.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i197, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end10.i

if.then.i:                                        ; preds = %if.end
  %cmp.not.i = icmp eq ptr %call.i197, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %9 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata1.i, align 4
  br label %anx78xx_init_pdata.exit

if.end10.i:                                       ; preds = %if.end
  %call11.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef 1) #7
  %gpiod_hpd.i = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %gpiod_hpd.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11.i, ptr %gpiod_hpd.i, align 4
  %cmp.i44.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i, label %if.end10.i.anx78xx_init_pdata.exit_crit_edge, label %if.end17.i

if.end10.i.anx78xx_init_pdata.exit_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_init_pdata.exit

if.end17.i:                                       ; preds = %if.end10.i
  %call18.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef 7) #7
  %gpiod_pd.i = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %gpiod_pd.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18.i, ptr %gpiod_pd.i, align 4
  %cmp.i45.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45.i, label %if.end17.i.anx78xx_init_pdata.exit_crit_edge, label %if.end24.i

if.end17.i.anx78xx_init_pdata.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_init_pdata.exit

if.end24.i:                                       ; preds = %if.end17.i
  %call25.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef 3) #7
  %gpiod_reset.i = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %gpiod_reset.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call25.i, ptr %gpiod_reset.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end24.i.anx78xx_init_pdata.exit_crit_edge, label %if.end24.i.if.end10_crit_edge

if.end24.i.if.end10_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end24.i.anx78xx_init_pdata.exit_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_init_pdata.exit

anx78xx_init_pdata.exit:                          ; preds = %if.end24.i.anx78xx_init_pdata.exit_crit_edge, %if.end17.i.anx78xx_init_pdata.exit_crit_edge, %if.end10.i.anx78xx_init_pdata.exit_crit_edge, %if.end.i
  %retval.0.i.in = phi ptr [ %10, %if.end.i ], [ %call25.i, %if.end24.i.anx78xx_init_pdata.exit_crit_edge ], [ %call11.i, %if.end10.i.anx78xx_init_pdata.exit_crit_edge ], [ %call18.i, %if.end17.i.anx78xx_init_pdata.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %14 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %if.then8 [
    i32 0, label %anx78xx_init_pdata.exit.if.end10_crit_edge
    i32 -517, label %anx78xx_init_pdata.exit.cleanup118_crit_edge
  ]

anx78xx_init_pdata.exit.cleanup118_crit_edge:     ; preds = %anx78xx_init_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

anx78xx_init_pdata.exit.if.end10_crit_edge:       ; preds = %anx78xx_init_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %anx78xx_init_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %retval.0.i) #7
  br label %cleanup118

if.end10:                                         ; preds = %anx78xx_init_pdata.exit.if.end10_crit_edge, %if.end24.i.if.end10_crit_edge
  %gpiod_hpd = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %gpiod_hpd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpiod_hpd, align 4
  %call11 = tail call i32 @gpiod_to_irq(ptr noundef %16) #7
  %hpd_irq = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call11, ptr %hpd_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13 = icmp slt i32 %call11, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %call11) #7
  br label %cleanup118

if.end16:                                         ; preds = %if.end10
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %intp_irq = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 5, i32 5
  %20 = ptrtoint ptr %intp_irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %intp_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  br label %cleanup118

if.end20:                                         ; preds = %if.end16
  %call22 = tail call ptr @device_get_match_data(ptr noundef %dev) #7
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %23 = ptrtoint ptr %call22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call22, align 1
  %25 = lshr i8 %24, 1
  %conv24 = zext i8 %25 to i16
  %call25 = tail call ptr @i2c_new_dummy_device(ptr noundef %22, i16 noundef zeroext %conv24) #7
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end20.if.then27_crit_edge, label %if.end31

if.end20.if.then27_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.then27:                                        ; preds = %for.inc.3.if.then27_crit_edge, %for.inc.2.if.then27_crit_edge, %for.inc.1.if.then27_crit_edge, %for.inc.if.then27_crit_edge, %if.end20.if.then27_crit_edge
  %i.0206.lcssa = phi i32 [ 0, %if.end20.if.then27_crit_edge ], [ 1, %for.inc.if.then27_crit_edge ], [ 2, %for.inc.1.if.then27_crit_edge ], [ 3, %for.inc.2.if.then27_crit_edge ], [ 4, %for.inc.3.if.then27_crit_edge ]
  %call25.lcssa = phi ptr [ %call25, %if.end20.if.then27_crit_edge ], [ %call25.1, %for.inc.if.then27_crit_edge ], [ %call25.2, %for.inc.1.if.then27_crit_edge ], [ %call25.3, %for.inc.2.if.then27_crit_edge ], [ %call25.4, %for.inc.3.if.then27_crit_edge ]
  %arrayidx.le204 = getelementptr i8, ptr %call22, i32 %i.0206.lcssa
  %26 = ptrtoint ptr %call25.lcssa to i32
  %27 = ptrtoint ptr %arrayidx.le204 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.le204, align 1
  %conv30 = zext i8 %28 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %conv30, i32 noundef %26) #7
  br label %err_unregister_i2c

if.end31:                                         ; preds = %if.end20
  %arrayidx33 = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 7, i32 0
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call25, ptr %arrayidx33, align 4
  %call36 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call25, ptr noundef nonnull @anx78xx_regmap_config, ptr noundef nonnull @anx78xx_i2c_probe._key, ptr noundef nonnull @.str.6) #7
  %arrayidx37 = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 8, i32 0
  %30 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call36, ptr %arrayidx37, align 4
  %cmp.i198 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %if.end31.if.then41_crit_edge, label %for.inc

if.end31.if.then41_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.then41:                                        ; preds = %if.end31.4.if.then41_crit_edge, %if.end31.3.if.then41_crit_edge, %if.end31.2.if.then41_crit_edge, %if.end31.1.if.then41_crit_edge, %if.end31.if.then41_crit_edge
  %call36.lcssa = phi ptr [ %call36, %if.end31.if.then41_crit_edge ], [ %call36.1, %if.end31.1.if.then41_crit_edge ], [ %call36.2, %if.end31.2.if.then41_crit_edge ], [ %call36.3, %if.end31.3.if.then41_crit_edge ], [ %call36.4, %if.end31.4.if.then41_crit_edge ]
  %i.0206.lcssa210 = phi i32 [ 0, %if.end31.if.then41_crit_edge ], [ 1, %if.end31.1.if.then41_crit_edge ], [ 2, %if.end31.2.if.then41_crit_edge ], [ 3, %if.end31.3.if.then41_crit_edge ], [ 4, %if.end31.4.if.then41_crit_edge ]
  %arrayidx.le = getelementptr i8, ptr %call22, i32 %i.0206.lcssa210
  %31 = ptrtoint ptr %call36.lcssa to i32
  %32 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.le, align 1
  %conv46 = zext i8 %33 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %conv46) #7
  br label %err_unregister_i2c

for.inc:                                          ; preds = %if.end31
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 8
  %arrayidx.1 = getelementptr i8, ptr %call22, i32 1
  %36 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.1, align 1
  %38 = lshr i8 %37, 1
  %conv24.1 = zext i8 %38 to i16
  %call25.1 = tail call ptr @i2c_new_dummy_device(ptr noundef %35, i16 noundef zeroext %conv24.1) #7
  %cmp.i.1 = icmp ugt ptr %call25.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.if.then27_crit_edge, label %if.end31.1

for.inc.if.then27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.end31.1:                                       ; preds = %for.inc
  %arrayidx33.1 = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call25.1, ptr %arrayidx33.1, align 4
  %call36.1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call25.1, ptr noundef nonnull @anx78xx_regmap_config, ptr noundef nonnull @anx78xx_i2c_probe._key, ptr noundef nonnull @.str.6) #7
  %arrayidx37.1 = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call36.1, ptr %arrayidx37.1, align 4
  %cmp.i198.1 = icmp ugt ptr %call36.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198.1, label %if.end31.1.if.then41_crit_edge, label %for.inc.1

if.end31.1.if.then41_crit_edge:                   ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

for.inc.1:                                        ; preds = %if.end31.1
  %41 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter, align 8
  %arrayidx.2 = getelementptr i8, ptr %call22, i32 2
  %43 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.2, align 1
  %45 = lshr i8 %44, 1
  %conv24.2 = zext i8 %45 to i16
  %call25.2 = tail call ptr @i2c_new_dummy_device(ptr noundef %42, i16 noundef zeroext %conv24.2) #7
  %cmp.i.2 = icmp ugt ptr %call25.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.if.then27_crit_edge, label %if.end31.2

for.inc.1.if.then27_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.end31.2:                                       ; preds = %for.inc.1
  %arrayidx33.2 = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call25.2, ptr %arrayidx33.2, align 4
  %call36.2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call25.2, ptr noundef nonnull @anx78xx_regmap_config, ptr noundef nonnull @anx78xx_i2c_probe._key, ptr noundef nonnull @.str.6) #7
  %arrayidx37.2 = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call36.2, ptr %arrayidx37.2, align 4
  %cmp.i198.2 = icmp ugt ptr %call36.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198.2, label %if.end31.2.if.then41_crit_edge, label %for.inc.2

if.end31.2.if.then41_crit_edge:                   ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

for.inc.2:                                        ; preds = %if.end31.2
  %48 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter, align 8
  %arrayidx.3 = getelementptr i8, ptr %call22, i32 3
  %50 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.3, align 1
  %52 = lshr i8 %51, 1
  %conv24.3 = zext i8 %52 to i16
  %call25.3 = tail call ptr @i2c_new_dummy_device(ptr noundef %49, i16 noundef zeroext %conv24.3) #7
  %cmp.i.3 = icmp ugt ptr %call25.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.inc.2.if.then27_crit_edge, label %if.end31.3

for.inc.2.if.then27_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.end31.3:                                       ; preds = %for.inc.2
  %arrayidx33.3 = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 7, i32 3
  %53 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call25.3, ptr %arrayidx33.3, align 4
  %call36.3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call25.3, ptr noundef nonnull @anx78xx_regmap_config, ptr noundef nonnull @anx78xx_i2c_probe._key, ptr noundef nonnull @.str.6) #7
  %arrayidx37.3 = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 8, i32 3
  %54 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call36.3, ptr %arrayidx37.3, align 4
  %cmp.i198.3 = icmp ugt ptr %call36.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198.3, label %if.end31.3.if.then41_crit_edge, label %for.inc.3

if.end31.3.if.then41_crit_edge:                   ; preds = %if.end31.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

for.inc.3:                                        ; preds = %if.end31.3
  %55 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter, align 8
  %arrayidx.4 = getelementptr i8, ptr %call22, i32 4
  %57 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.4, align 1
  %59 = lshr i8 %58, 1
  %conv24.4 = zext i8 %59 to i16
  %call25.4 = tail call ptr @i2c_new_dummy_device(ptr noundef %56, i16 noundef zeroext %conv24.4) #7
  %cmp.i.4 = icmp ugt ptr %call25.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %for.inc.3.if.then27_crit_edge, label %if.end31.4

for.inc.3.if.then27_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.end31.4:                                       ; preds = %for.inc.3
  %arrayidx33.4 = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 7, i32 4
  %60 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call25.4, ptr %arrayidx33.4, align 4
  %call36.4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call25.4, ptr noundef nonnull @anx78xx_regmap_config, ptr noundef nonnull @anx78xx_i2c_probe._key, ptr noundef nonnull @.str.6) #7
  %arrayidx37.4 = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 8, i32 4
  %61 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call36.4, ptr %arrayidx37.4, align 4
  %cmp.i198.4 = icmp ugt ptr %call36.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198.4, label %if.end31.4.if.then41_crit_edge, label %for.inc.4

if.end31.4.if.then41_crit_edge:                   ; preds = %if.end31.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

for.inc.4:                                        ; preds = %if.end31.4
  tail call fastcc void @anx78xx_poweron(ptr noundef nonnull %call.i)
  %62 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx37.2, align 8
  %call50 = call i32 @regmap_read(ptr noundef %63, i32 noundef 2, ptr noundef nonnull %idl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %for.inc.4.err_poweroff_crit_edge

for.inc.4.err_poweroff_crit_edge:                 ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_poweroff

if.end53:                                         ; preds = %for.inc.4
  %64 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx37.2, align 8
  %call56 = call i32 @regmap_read(ptr noundef %65, i32 noundef 3, ptr noundef nonnull %idh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end53.err_poweroff_crit_edge

if.end53.err_poweroff_crit_edge:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_poweroff

if.end59:                                         ; preds = %if.end53
  %66 = ptrtoint ptr %idl to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %idl, align 4
  %conv61 = and i32 %67, 255
  %68 = ptrtoint ptr %idh to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %idh, align 4
  %conv63 = shl i32 %69, 8
  %or = or i32 %conv63, %conv61
  %conv64 = trunc i32 %or to i16
  %chipid = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 9
  %70 = ptrtoint ptr %chipid to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv64, ptr %chipid, align 4
  %71 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx37.2, align 8
  %call67 = call i32 @regmap_read(ptr noundef %72, i32 noundef 4, ptr noundef nonnull %version) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %for.cond71.preheader, label %if.end59.err_poweroff_crit_edge

if.end59.err_poweroff_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_poweroff

for.cond71.preheader:                             ; preds = %if.end59
  %73 = ptrtoint ptr %chipid to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %chipid, align 4
  %75 = add i16 %74, -30728
  %76 = call i16 @llvm.fshl.i16(i16 %75, i16 %75, i16 15)
  %77 = zext i16 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %76, label %for.cond71.3 [
    i16 0, label %for.cond71.preheader.do.end84_crit_edge
    i16 5, label %for.cond71.preheader.do.end84_crit_edge213
    i16 6, label %for.cond71.preheader.do.end84_crit_edge214
    i16 8, label %for.cond71.preheader.do.end84_crit_edge215
  ]

for.cond71.preheader.do.end84_crit_edge215:       ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84

for.cond71.preheader.do.end84_crit_edge214:       ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84

for.cond71.preheader.do.end84_crit_edge213:       ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84

for.cond71.preheader.do.end84_crit_edge:          ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84

for.cond71.3:                                     ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %chipid to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %chipid, align 4
  %conv96 = zext i16 %79 to i32
  %80 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %version, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %conv96, i32 noundef %81) #7
  br label %err_poweroff

do.end84:                                         ; preds = %for.cond71.preheader.do.end84_crit_edge, %for.cond71.preheader.do.end84_crit_edge213, %for.cond71.preheader.do.end84_crit_edge214, %for.cond71.preheader.do.end84_crit_edge215
  %conv76 = zext i16 %74 to i32
  %82 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %version, align 4
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv76, i32 noundef %83) #10
  %84 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hpd_irq, align 4
  %call100 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %85, ptr noundef null, ptr noundef nonnull @anx78xx_hpd_threaded_handler, i32 noundef 8193, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.then102

if.then102:                                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %call100) #7
  br label %err_poweroff

if.end103:                                        ; preds = %do.end84
  %86 = ptrtoint ptr %intp_irq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %intp_irq, align 4
  %call106 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %87, ptr noundef null, ptr noundef nonnull @anx78xx_intp_threaded_handler, i32 noundef 8193, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.then108

if.then108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %call106) #7
  br label %err_poweroff

if.end109:                                        ; preds = %if.end103
  %funcs = getelementptr inbounds %struct.anx78xx, ptr %call.i, i32 0, i32 1, i32 7
  %88 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @anx78xx_bridge_funcs, ptr %funcs, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #7
  %89 = ptrtoint ptr %gpiod_hpd to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %gpiod_hpd, align 4
  %call114 = call i32 @gpiod_get_value(ptr noundef %90) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then116, label %if.end109.cleanup118_crit_edge

if.end109.cleanup118_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

if.then116:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @anx78xx_poweroff(ptr noundef nonnull %call.i)
  br label %cleanup118

err_poweroff:                                     ; preds = %if.then108, %if.then102, %for.cond71.3, %if.end59.err_poweroff_crit_edge, %if.end53.err_poweroff_crit_edge, %for.inc.4.err_poweroff_crit_edge
  %err.2 = phi i32 [ %call50, %for.inc.4.err_poweroff_crit_edge ], [ %call56, %if.end53.err_poweroff_crit_edge ], [ %call67, %if.end59.err_poweroff_crit_edge ], [ %call100, %if.then102 ], [ %call106, %if.then108 ], [ -19, %for.cond71.3 ]
  call fastcc void @anx78xx_poweroff(ptr noundef nonnull %call.i)
  br label %err_unregister_i2c

err_unregister_i2c:                               ; preds = %err_poweroff, %if.then41, %if.then27
  %err.3 = phi i32 [ %err.2, %err_poweroff ], [ %31, %if.then41 ], [ %26, %if.then27 ]
  %arrayidx.i = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 7, i32 0
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i, align 4
  call void @i2c_unregister_device(ptr noundef %92) #7
  %arrayidx.1.i = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 7, i32 1
  %93 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.1.i, align 4
  call void @i2c_unregister_device(ptr noundef %94) #7
  %arrayidx.2.i = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 7, i32 2
  %95 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.2.i, align 4
  call void @i2c_unregister_device(ptr noundef %96) #7
  %arrayidx.3.i = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 7, i32 3
  %97 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.3.i, align 4
  call void @i2c_unregister_device(ptr noundef %98) #7
  %arrayidx.4.i = getelementptr %struct.anx78xx, ptr %call.i, i32 0, i32 7, i32 4
  %99 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.4.i, align 4
  call void @i2c_unregister_device(ptr noundef %100) #7
  br label %cleanup118

cleanup118:                                       ; preds = %err_unregister_i2c, %if.then116, %if.end109.cleanup118_crit_edge, %if.then19, %if.then14, %if.then8, %anx78xx_init_pdata.exit.cleanup118_crit_edge, %entry.cleanup118_crit_edge
  %retval.0 = phi i32 [ -19, %if.then14 ], [ %err.3, %err_unregister_i2c ], [ -19, %if.then19 ], [ -12, %entry.cleanup118_crit_edge ], [ %retval.0.i, %anx78xx_init_pdata.exit.cleanup118_crit_edge ], [ %retval.0.i, %if.then8 ], [ 0, %if.then116 ], [ 0, %if.end109.cleanup118_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idh) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idl) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx78xx_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.anx78xx, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #7
  %arrayidx.i = getelementptr %struct.anx78xx, ptr %1, i32 0, i32 7, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #7
  %arrayidx.1.i = getelementptr %struct.anx78xx, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %5) #7
  %arrayidx.2.i = getelementptr %struct.anx78xx, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %7) #7
  %arrayidx.3.i = getelementptr %struct.anx78xx, ptr %1, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #7
  %arrayidx.4.i = getelementptr %struct.anx78xx, ptr %1, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %11) #7
  %edid = getelementptr inbounds %struct.anx78xx, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edid, align 4
  tail call void @kfree(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @anx78xx_poweron(ptr nocapture noundef %anx78xx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %powered = getelementptr inbounds %struct.anx78xx, ptr %anx78xx, i32 0, i32 11
  %0 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !181

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 472, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %pdata1 = getelementptr inbounds %struct.anx78xx, ptr %anx78xx, i32 0, i32 5
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %if.end23.if.end30_crit_edge, label %if.then25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  %call = tail call i32 @regulator_enable(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool27.not = icmp eq i32 %call, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %call) #7
  br label %cleanup

if.end29:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end23.if.end30_crit_edge
  %gpiod_reset = getelementptr inbounds %struct.anx78xx, ptr %anx78xx, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpiod_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %gpiod_pd = getelementptr inbounds %struct.anx78xx, ptr %anx78xx, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %gpiod_pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_pd, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %8 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpiod_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.anx78xx, ptr %anx78xx, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 5, i32 noundef 60, i32 noundef 60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 8
  %call.i.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 5, i32 noundef 130, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %14 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %powered, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx78xx_hpd_threaded_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %powered = getelementptr inbounds %struct.anx78xx, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.anx78xx, ptr %data, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  tail call fastcc void @anx78xx_poweron(ptr noundef %data)
  %arrayidx.i = getelementptr %struct.anx78xx, ptr %data, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 255, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  %call3.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 251, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.if.then2_crit_edge

if.end.i.if.then2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.end6.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %call9.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 254, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %anx78xx_enable_interrupts.exit, label %if.end6.i.if.then2_crit_edge

if.end6.i.if.then2_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

anx78xx_enable_interrupts.exit:                   ; preds = %if.end6.i
  %arrayidx14.i = getelementptr %struct.anx78xx, ptr %data, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14.i, align 4
  %call15.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 65, i32 noundef 96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool1.not = icmp eq i32 %call15.i, 0
  br i1 %tobool1.not, label %anx78xx_enable_interrupts.exit.if.end3_crit_edge, label %anx78xx_enable_interrupts.exit.if.then2_crit_edge

anx78xx_enable_interrupts.exit.if.then2_crit_edge: ; preds = %anx78xx_enable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

anx78xx_enable_interrupts.exit.if.end3_crit_edge: ; preds = %anx78xx_enable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %anx78xx_enable_interrupts.exit.if.then2_crit_edge, %if.end6.i.if.then2_crit_edge, %if.end.i.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %retval.0.i13 = phi i32 [ %call15.i, %anx78xx_enable_interrupts.exit.if.then2_crit_edge ], [ %call9.i, %if.end6.i.if.then2_crit_edge ], [ %call3.i, %if.end.i.if.then2_crit_edge ], [ %call.i, %if.end.if.then2_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %retval.0.i13) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %anx78xx_enable_interrupts.exit.if.end3_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx78xx_intp_threaded_handler(i32 noundef %unused, ptr noundef %data) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  %irq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq) #7
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %irq, align 4, !annotation !179
  %lock = getelementptr inbounds %struct.anx78xx, ptr %data, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.anx78xx, ptr %data, i32 0, i32 8, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 247, ptr noundef nonnull %irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %call) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %if.end33

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %conv.i = and i32 %4, 255
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %conv.i) #7
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  %call.i = call i32 @regmap_write(ptr noundef %6, i32 noundef 247, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %and.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %tobool3.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then2.if.end4_crit_edge, label %if.then4.i

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then4.i:                                       ; preds = %if.then2
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.27) #7
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %call.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 8, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then4.i.if.end4_crit_edge

if.then4.i.if.end4_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %call.i.i11.i.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 8, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end.i.i, %if.then4.i.if.end4_crit_edge, %if.then2.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 8
  %call7 = call i32 @regmap_read(ptr noundef %12, i32 noundef 244, ptr noundef nonnull %irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %call7) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %if.end33

if.end10:                                         ; preds = %if.end4
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  %conv.i55 = and i32 %14, 255
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.28, i32 noundef %conv.i55) #7
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 8
  %call.i57 = call i32 @regmap_write(ptr noundef %16, i32 noundef 244, i32 noundef %conv.i55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, i32 noundef %call.i57) #7
  br label %if.end15

if.end.i:                                         ; preds = %if.then12
  %and.i59 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool4.not.i = icmp eq i32 %and.i59, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.30) #7
  call fastcc void @anx78xx_poweroff(ptr noundef %data) #7
  %edid.i = getelementptr inbounds %struct.anx78xx, ptr %data, i32 0, i32 3
  %17 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %edid.i, align 4
  call void @kfree(ptr noundef %18) #7
  %19 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %edid.i, align 4
  br label %if.end15

if.else.i:                                        ; preds = %if.end.i
  %and8.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else.i.if.end15_crit_edge, label %if.then10.i

if.else.i.if.end15_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.31) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then10.i, %if.else.i.if.end15_crit_edge, %if.then5.i, %if.then.i, %if.end10.if.end15_crit_edge
  %event.0.off0 = phi i1 [ false, %if.end10.if.end15_crit_edge ], [ false, %if.then.i ], [ true, %if.then5.i ], [ true, %if.then10.i ], [ false, %if.else.i.if.end15_crit_edge ]
  %powered = getelementptr inbounds %struct.anx78xx, ptr %data, i32 0, i32 11
  %20 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %powered, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool16.not = icmp eq i8 %21, 0
  br i1 %tobool16.not, label %if.end15.unlock_crit_edge, label %if.end18

if.end15.unlock_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end18:                                         ; preds = %if.end15
  %arrayidx20 = getelementptr %struct.anx78xx, ptr %data, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx20, align 4
  %call21 = call i32 @regmap_read(ptr noundef %23, i32 noundef 49, ptr noundef nonnull %irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %call21) #7
  br label %unlock

if.end24:                                         ; preds = %if.end18
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool25.not = icmp eq i32 %25, 0
  br i1 %tobool25.not, label %if.end24.unlock_crit_edge, label %if.then26

if.end24.unlock_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %26 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %value.i, align 4, !annotation !179
  %conv.i60 = and i32 %25, 255
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %conv.i60) #7
  %27 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx20, align 4
  %call.i62 = call i32 @regmap_write(ptr noundef %28, i32 noundef 49, i32 noundef %conv.i60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.end.i65, label %if.then.i64

if.then.i64:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %call.i62) #7
  br label %anx78xx_handle_hdmi_int_1.exit

if.end.i65:                                       ; preds = %if.then26
  %29 = and i32 %25, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %if.end.i65.anx78xx_handle_hdmi_int_1.exit_crit_edge, label %if.then7.i

if.end.i65.anx78xx_handle_hdmi_int_1.exit_crit_edge: ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_handle_hdmi_int_1.exit

if.then7.i:                                       ; preds = %if.end.i65
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.34) #7
  %31 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx20, align 4
  %call10.i = call i32 @regmap_read(ptr noundef %32, i32 noundef 20, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call10.i) #7
  br label %anx78xx_handle_hdmi_int_1.exit

if.end13.i:                                       ; preds = %if.then7.i
  %33 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value.i, align 4
  %and14.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.36) #7
  br label %anx78xx_handle_hdmi_int_1.exit

if.end17.i:                                       ; preds = %if.end13.i
  %and18.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end21.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.37) #7
  br label %anx78xx_handle_hdmi_int_1.exit

if.end21.i:                                       ; preds = %if.end17.i
  %call22.i = call fastcc i32 @anx78xx_dp_link_training(ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.anx78xx_handle_hdmi_int_1.exit_crit_edge, label %if.then24.i

if.end21.i.anx78xx_handle_hdmi_int_1.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_handle_hdmi_int_1.exit

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %call22.i) #7
  br label %anx78xx_handle_hdmi_int_1.exit

anx78xx_handle_hdmi_int_1.exit:                   ; preds = %if.then24.i, %if.end21.i.anx78xx_handle_hdmi_int_1.exit_crit_edge, %if.then20.i, %if.then16.i, %if.then12.i, %if.end.i65.anx78xx_handle_hdmi_int_1.exit_crit_edge, %if.then.i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  br label %unlock

unlock:                                           ; preds = %anx78xx_handle_hdmi_int_1.exit, %if.end24.unlock_crit_edge, %if.then23, %if.end15.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  br i1 %event.0.off0, label %if.then31, label %unlock.if.end33_crit_edge

unlock.if.end33_crit_edge:                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then31:                                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #9
  %connector = getelementptr inbounds %struct.anx78xx, ptr %data, i32 0, i32 4
  %35 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %connector, align 8
  %call32 = call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %36) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %unlock.if.end33_crit_edge, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @anx78xx_poweroff(ptr nocapture noundef %anx78xx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %powered = getelementptr inbounds %struct.anx78xx, ptr %anx78xx, i32 0, i32 11
  %0 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !182

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 508, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  %pdata1 = getelementptr inbounds %struct.anx78xx, ptr %anx78xx, i32 0, i32 5
  %gpiod_reset = getelementptr inbounds %struct.anx78xx, ptr %anx78xx, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %gpiod_pd = getelementptr inbounds %struct.anx78xx, ptr %anx78xx, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %gpiod_pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpiod_pd, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %6 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata1, align 4
  %tobool25.not = icmp eq ptr %7, null
  br i1 %tobool25.not, label %if.end24.if.end31_crit_edge, label %if.then26

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then26:                                        ; preds = %if.end24
  %call = tail call i32 @regulator_disable(ptr noundef nonnull %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.65, i32 noundef %call) #7
  br label %cleanup

if.end30:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end24.if.end31_crit_edge
  %8 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %powered, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then29, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anx78xx_dp_link_training(ptr noundef %anx78xx) unnamed_addr #2 align 64 {
entry:
  %value.addr.i213 = alloca i8, align 1
  %value.addr.i211 = alloca i8, align 1
  %value.addr.i = alloca i8, align 1
  %dp_bw = alloca i8, align 1
  %dpcd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dp_bw) #7
  %0 = ptrtoint ptr %dp_bw to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %dp_bw, align 1, !annotation !179
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dpcd) #7
  %1 = ptrtoint ptr %dpcd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dpcd, align 1, !annotation !179
  %2 = getelementptr inbounds [2 x i8], ptr %dpcd, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !179
  %map = getelementptr inbounds %struct.anx78xx, ptr %anx78xx, i32 0, i32 8
  %arrayidx = getelementptr %struct.anx78xx, ptr %anx78xx, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 22, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.anx78xx, ptr %anx78xx, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 5, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %anx78xx, i32 noundef 1, ptr noundef nonnull %dp_bw, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %8 = ptrtoint ptr %dp_bw to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_bw, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %9, label %sw.default [
    i8 6, label %if.end9.sw.epilog_crit_edge
    i8 10, label %if.end9.sw.epilog_crit_edge223
    i8 20, label %if.end9.sw.epilog_crit_edge224
  ]

if.end9.sw.epilog_crit_edge224:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end9.sw.epilog_crit_edge223:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %9 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.39, i32 noundef %conv) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end9.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge223, %if.end9.sw.epilog_crit_edge224
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx2, align 8
  %call.i.i206 = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 8, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i206)
  %tobool14.not = icmp eq i32 %call.i.i206, 0
  br i1 %tobool14.not, label %if.end16, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx2, align 8
  %call.i.i207 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 8, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i207)
  %tobool20.not = icmp eq i32 %call.i.i207, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %dpcd24 = getelementptr inbounds %struct.anx78xx, ptr %anx78xx, i32 0, i32 10
  %call25 = call i32 @drm_dp_dpcd_read(ptr noundef %anx78xx, i32 noundef 0, ptr noundef %dpcd24, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40, i32 noundef %call25) #7
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 8
  %call.i.i208 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 200, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i208)
  %tobool33.not = icmp eq i32 %call.i.i208, 0
  br i1 %tobool33.not, label %if.end35, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %17 = ptrtoint ptr %dpcd24 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dpcd24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %18)
  %cmp39 = icmp ugt i8 %18, 16
  br i1 %cmp39, label %if.then41, label %if.end35.if.end62_crit_edge

if.end35.if.end62_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then41:                                        ; preds = %if.end35
  %call.i209 = call i32 @drm_dp_dpcd_read(ptr noundef %anx78xx, i32 noundef 1536, ptr noundef nonnull %dpcd, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %cmp45 = icmp slt i32 %call.i209, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41, i32 noundef %call.i209) #7
  br label %cleanup

if.end48:                                         ; preds = %if.then41
  %19 = ptrtoint ptr %dpcd to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dpcd, align 1
  %21 = and i8 %20, -4
  %22 = or i8 %21, 1
  store i8 %22, ptr %dpcd, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %23 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %value.addr.i, align 1
  %call.i210 = call i32 @drm_dp_dpcd_write(ptr noundef %anx78xx, i32 noundef 1536, ptr noundef nonnull %value.addr.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %cmp58 = icmp slt i32 %call.i210, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42, i32 noundef %call.i210) #7
  br label %cleanup

if.end61:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end35.if.end62_crit_edge
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 8
  %call65 = call i32 @regmap_write(ptr noundef %25, i32 noundef 208, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68:                                         ; preds = %if.end62
  %arrayidx70 = getelementptr %struct.anx78xx, ptr %anx78xx, i32 0, i32 10, i32 3
  %26 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx70, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool73.not = icmp eq i8 %28, 0
  br i1 %tobool73.not, label %if.else, label %if.then74

if.then74:                                        ; preds = %if.end68
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.43) #7
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 8
  %call77 = call i32 @regmap_write(ptr noundef %30, i32 noundef 208, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.then74.cleanup_crit_edge

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end80:                                         ; preds = %if.then74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i211)
  %31 = ptrtoint ptr %value.addr.i211 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 16, ptr %value.addr.i211, align 1
  %call.i212 = call i32 @drm_dp_dpcd_write(ptr noundef %anx78xx, i32 noundef 263, ptr noundef nonnull %value.addr.i211, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i211)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %cmp83 = icmp slt i32 %call.i212, 0
  br i1 %cmp83, label %if.end80.cleanup_crit_edge, label %if.end80.if.end93_crit_edge

if.end80.if.end93_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i213)
  %32 = ptrtoint ptr %value.addr.i213 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %value.addr.i213, align 1
  %call.i214 = call i32 @drm_dp_dpcd_write(ptr noundef %anx78xx, i32 noundef 263, ptr noundef nonnull %value.addr.i213, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i213)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %cmp89 = icmp slt i32 %call.i214, 0
  br i1 %cmp89, label %if.else.cleanup_crit_edge, label %if.else.if.end93_crit_edge

if.else.if.end93_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %if.else.if.end93_crit_edge, %if.end80.if.end93_crit_edge
  %33 = ptrtoint ptr %dpcd24 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dpcd24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %34)
  %cmp.i = icmp ugt i8 %34, 16
  br i1 %cmp.i, label %drm_dp_enhanced_frame_cap.exit, label %if.end93.if.else100_crit_edge

if.end93.if.else100_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else100

drm_dp_enhanced_frame_cap.exit:                   ; preds = %if.end93
  %arrayidx2.i = getelementptr %struct.anx78xx, ptr %anx78xx, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.i = icmp slt i8 %36, 0
  br i1 %tobool.i, label %drm_dp_enhanced_frame_cap.exit.if.end104_crit_edge, label %drm_dp_enhanced_frame_cap.exit.if.else100_crit_edge

drm_dp_enhanced_frame_cap.exit.if.else100_crit_edge: ; preds = %drm_dp_enhanced_frame_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else100

drm_dp_enhanced_frame_cap.exit.if.end104_crit_edge: ; preds = %drm_dp_enhanced_frame_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.else100:                                       ; preds = %drm_dp_enhanced_frame_cap.exit.if.else100_crit_edge, %if.end93.if.else100_crit_edge
  br label %if.end104

if.end104:                                        ; preds = %if.else100, %drm_dp_enhanced_frame_cap.exit.if.end104_crit_edge
  %.sink222 = phi i32 [ 0, %if.else100 ], [ 8, %drm_dp_enhanced_frame_cap.exit.if.end104_crit_edge ]
  %37 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map, align 8
  %call.i.i216 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 131, i32 noundef 8, i32 noundef %.sink222, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i216)
  %tobool105.not = icmp eq i32 %call.i.i216, 0
  br i1 %tobool105.not, label %if.end107, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end107:                                        ; preds = %if.end104
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 8
  %arrayidx111 = getelementptr %struct.anx78xx, ptr %anx78xx, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %42 to i32
  %call113 = call i32 @regmap_write(ptr noundef %40, i32 noundef 160, i32 noundef %conv112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end116:                                        ; preds = %if.end107
  %arrayidx.i = getelementptr %struct.anx78xx, ptr %anx78xx, i32 0, i32 10, i32 2
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i, align 1
  %45 = and i8 %44, 31
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %2, align 1
  %47 = ptrtoint ptr %dpcd24 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dpcd24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %48)
  %cmp.i217 = icmp ugt i8 %48, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.i219 = icmp slt i8 %44, 0
  %or.cond = select i1 %cmp.i217, i1 %tobool.i219, i1 false
  br i1 %or.cond, label %if.then124, label %if.end116.if.end129_crit_edge

if.end116.if.end129_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

if.then124:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  %49 = or i8 %45, -128
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %2, align 1
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.end116.if.end129_crit_edge
  %call132 = call i32 @drm_dp_dpcd_write(ptr noundef %anx78xx, i32 noundef 256, ptr noundef nonnull %dpcd, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %call132) #7
  br label %cleanup

if.end136:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map, align 8
  %call139 = call i32 @regmap_write(ptr noundef %52, i32 noundef 168, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end136, %if.then135, %if.end107.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.then74.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.then60, %if.then47, %if.end29.cleanup_crit_edge, %if.then28, %if.end16.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call25, %if.then28 ], [ %call.i209, %if.then47 ], [ %call.i210, %if.then60 ], [ %call132, %if.then135 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ %call.i, %if.end6.cleanup_crit_edge ], [ %call.i.i206, %sw.epilog.cleanup_crit_edge ], [ %call.i.i207, %if.end16.cleanup_crit_edge ], [ %call.i.i208, %if.end29.cleanup_crit_edge ], [ %call65, %if.end62.cleanup_crit_edge ], [ %call77, %if.then74.cleanup_crit_edge ], [ %call.i212, %if.end80.cleanup_crit_edge ], [ %call.i214, %if.else.cleanup_crit_edge ], [ %call.i.i216, %if.end104.cleanup_crit_edge ], [ %call113, %if.end107.cleanup_crit_edge ], [ %call139, %if.end136 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dpcd) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dp_bw) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx78xx_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1736
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.47, ptr %add.ptr.i, align 8
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
  store ptr @anx78xx_aux_transfer, ptr %transfer, align 8
  %call10 = tail call i32 @drm_dp_aux_register(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48, i32 noundef %call10) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev6, align 4
  %connector = getelementptr i8, ptr %bridge, i32 288
  %call14 = tail call i32 @drm_connector_init(ptr noundef %11, ptr noundef %connector, ptr noundef nonnull @anx78xx_connector_funcs, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49, i32 noundef %call14) #7
  br label %aux_unregister

if.end17:                                         ; preds = %if.end12
  %helper_private.i = getelementptr i8, ptr %bridge, i32 996
  %12 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @anx78xx_connector_helper_funcs, ptr %helper_private.i, align 4
  %polled = getelementptr i8, ptr %bridge, i32 988
  %13 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %polled, align 4
  %14 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %encoder, align 4
  %call22 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.50, i32 noundef %call22) #7
  br label %connector_cleanup

if.end25:                                         ; preds = %if.end17
  %call27 = tail call i32 @drm_connector_register(ptr noundef %connector) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.then29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i32 noundef %call27) #7
  br label %connector_cleanup

connector_cleanup:                                ; preds = %if.then29, %if.then24
  %err.0 = phi i32 [ %call22, %if.then24 ], [ %call27, %if.then29 ]
  tail call void @drm_connector_cleanup(ptr noundef %connector) #7
  br label %aux_unregister

aux_unregister:                                   ; preds = %connector_cleanup, %if.then16
  %err.1 = phi i32 [ %call14, %if.then16 ], [ %err.0, %connector_cleanup ]
  tail call void @drm_dp_aux_unregister(ptr noundef %add.ptr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %aux_unregister, %if.end25.cleanup_crit_edge, %if.then11, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call10, %if.then11 ], [ %err.1, %aux_unregister ], [ -19, %if.then2 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx78xx_bridge_detach(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1736
  tail call void @drm_dp_aux_unregister(ptr noundef %add.ptr.i) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @anx78xx_bridge_mode_valid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
define internal void @anx78xx_bridge_disable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %bridge, i32 1472
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 5, i32 noundef 60, i32 noundef 60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx78xx_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #2 align 64 {
entry:
  %buffer.i = alloca [17 x i8], align 1
  %frame = alloca %struct.hdmi_avi_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame) #7
  %0 = call ptr @memset(ptr %frame, i32 255, i32 68)
  %powered = getelementptr i8, ptr %bridge, i32 1501
  %1 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %powered, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !182

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 988, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %lock = getelementptr i8, ptr %bridge, i32 1352
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %connector = getelementptr i8, ptr %bridge, i32 288
  %call24 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame, ptr noundef %connector, ptr noundef %adjusted_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.57, i32 noundef %call24) #7
  br label %unlock

if.end27:                                         ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer.i) #7
  %3 = call ptr @memset(ptr %buffer.i, i32 255, i32 17)
  %call.i = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %frame, ptr noundef nonnull %buffer.i, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %call.i) #7
  br label %anx78xx_send_video_infoframe.exit.thread

if.end.i:                                         ; preds = %if.end27
  %map.i = getelementptr i8, ptr %bridge, i32 1464
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 144, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.anx78xx_send_video_infoframe.exit.thread_crit_edge

if.end.i.anx78xx_send_video_infoframe.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_send_video_infoframe.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %arrayidx5.i = getelementptr i8, ptr %bridge, i32 1472
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5.i, align 8
  %length.i = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %frame, i32 0, i32 2
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %length.i, align 1
  %conv.i = zext i8 %9 to i32
  %call7.i = call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef 112, ptr noundef nonnull %buffer.i, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end3.i.anx78xx_send_video_infoframe.exit.thread_crit_edge

if.end3.i.anx78xx_send_video_infoframe.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_send_video_infoframe.exit.thread

if.end10.i:                                       ; preds = %if.end3.i
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 8
  %call.i.i38.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 144, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38.i)
  %tobool14.not.i = icmp eq i32 %call.i.i38.i, 0
  br i1 %tobool14.not.i, label %anx78xx_send_video_infoframe.exit, label %if.end10.i.anx78xx_send_video_infoframe.exit.thread_crit_edge

if.end10.i.anx78xx_send_video_infoframe.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_send_video_infoframe.exit.thread

anx78xx_send_video_infoframe.exit.thread:         ; preds = %if.end10.i.anx78xx_send_video_infoframe.exit.thread_crit_edge, %if.end3.i.anx78xx_send_video_infoframe.exit.thread_crit_edge, %if.end.i.anx78xx_send_video_infoframe.exit.thread_crit_edge, %if.then.i
  %retval.0.i.ph = phi i32 [ %call.i.i38.i, %if.end10.i.anx78xx_send_video_infoframe.exit.thread_crit_edge ], [ %call7.i, %if.end3.i.anx78xx_send_video_infoframe.exit.thread_crit_edge ], [ %call.i.i.i, %if.end.i.anx78xx_send_video_infoframe.exit.thread_crit_edge ], [ %call.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i) #7
  br label %if.then30

anx78xx_send_video_infoframe.exit:                ; preds = %if.end10.i
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i, align 8
  %call.i.i39.i = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 144, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39.i)
  %tobool29.not = icmp eq i32 %call.i.i39.i, 0
  br i1 %tobool29.not, label %anx78xx_send_video_infoframe.exit.unlock_crit_edge, label %anx78xx_send_video_infoframe.exit.if.then30_crit_edge

anx78xx_send_video_infoframe.exit.if.then30_crit_edge: ; preds = %anx78xx_send_video_infoframe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

anx78xx_send_video_infoframe.exit.unlock_crit_edge: ; preds = %anx78xx_send_video_infoframe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then30:                                        ; preds = %anx78xx_send_video_infoframe.exit.if.then30_crit_edge, %anx78xx_send_video_infoframe.exit.thread
  %retval.0.i45 = phi i32 [ %retval.0.i.ph, %anx78xx_send_video_infoframe.exit.thread ], [ %call.i.i39.i, %anx78xx_send_video_infoframe.exit.if.then30_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef %retval.0.i45) #7
  br label %unlock

unlock:                                           ; preds = %if.then30, %anx78xx_send_video_infoframe.exit.unlock_crit_edge, %if.then26
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %do.end
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx78xx_bridge_enable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1736
  %arrayidx.i = getelementptr i8, ptr %bridge, i32 1472
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 5, i32 noundef 60, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %call.i.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 255, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  %call3.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 251, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %call9.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 254, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %anx78xx_enable_interrupts.exit.i, label %if.end6.i.i.if.then.i_crit_edge

if.end6.i.i.if.then.i_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

anx78xx_enable_interrupts.exit.i:                 ; preds = %if.end6.i.i
  %arrayidx14.i.i = getelementptr i8, ptr %bridge, i32 1476
  %8 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14.i.i, align 4
  %call15.i.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 65, i32 noundef 96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool.not.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %anx78xx_enable_interrupts.exit.i.if.then.i_crit_edge

anx78xx_enable_interrupts.exit.i.if.then.i_crit_edge: ; preds = %anx78xx_enable_interrupts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %anx78xx_enable_interrupts.exit.i.if.then.i_crit_edge, %if.end6.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %retval.0.i58.i = phi i32 [ %call15.i.i, %anx78xx_enable_interrupts.exit.i.if.then.i_crit_edge ], [ %call9.i.i, %if.end6.i.i.if.then.i_crit_edge ], [ %call3.i.i, %if.end.i.i.if.then.i_crit_edge ], [ %call.i.i, %entry.if.then.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %retval.0.i58.i) #7
  br label %if.then

if.end.i:                                         ; preds = %anx78xx_enable_interrupts.exit.i
  %map.i.i = getelementptr i8, ptr %bridge, i32 1464
  %10 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14.i.i, align 4
  %call.i22.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 22, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool.not.i23.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool.not.i23.i, label %if.end.i25.i, label %if.end.i.if.then4.i_crit_edge

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end.i25.i:                                     ; preds = %if.end.i
  %12 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 227, i32 noundef 13, i32 noundef 13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool4.not.i24.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool4.not.i24.i, label %if.end6.i27.i, label %if.end.i25.i.if.then4.i_crit_edge

if.end.i25.i.if.then4.i_crit_edge:                ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end6.i27.i:                                    ; preds = %if.end.i25.i
  %14 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx14.i.i, align 4
  %call.i.i99.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 17, i32 noundef 23, i32 noundef 23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99.i.i)
  %tobool10.not.i26.i = icmp eq i32 %call.i.i99.i.i, 0
  br i1 %tobool10.not.i26.i, label %if.end12.i28.i, label %if.end6.i27.i.if.then4.i_crit_edge

if.end6.i27.i.if.then4.i_crit_edge:               ; preds = %if.end6.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end12.i28.i:                                   ; preds = %if.end6.i27.i
  %16 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx14.i.i, align 4
  %call.i.i100.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 17, i32 noundef 23, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100.i.i)
  %tobool16.not.i.i = icmp eq i32 %call.i.i100.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end12.i28.i.if.then4.i_crit_edge

if.end12.i28.i.if.then4.i_crit_edge:              ; preds = %if.end12.i28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end18.i.i:                                     ; preds = %if.end12.i28.i
  %18 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx14.i.i, align 4
  %call.i.i101.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 36, i32 noundef 96, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.i.i)
  %tobool22.not.i.i = icmp eq i32 %call.i.i101.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %if.end18.i.i.if.then4.i_crit_edge

if.end18.i.i.if.then4.i_crit_edge:                ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end24.i.i:                                     ; preds = %if.end18.i.i
  %20 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx14.i.i, align 4
  %call.i.i102.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 38, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102.i.i)
  %tobool28.not.i.i = icmp eq i32 %call.i.i102.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end30.i.i, label %if.end24.i.i.if.then4.i_crit_edge

if.end24.i.i.if.then4.i_crit_edge:                ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end30.i.i:                                     ; preds = %if.end24.i.i
  %22 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx14.i.i, align 4
  %call.i.i103.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 32, i32 noundef 67, i32 noundef 67, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103.i.i)
  %tobool34.not.i.i = icmp eq i32 %call.i.i103.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end36.i.i, label %if.end30.i.i.if.then4.i_crit_edge

if.end30.i.i.if.then4.i_crit_edge:                ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end36.i.i:                                     ; preds = %if.end30.i.i
  %24 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx14.i.i, align 4
  %call.i.i104.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104.i.i)
  %tobool40.not.i.i = icmp eq i32 %call.i.i104.i.i, 0
  br i1 %tobool40.not.i.i, label %if.end42.i.i, label %if.end36.i.i.if.then4.i_crit_edge

if.end36.i.i.if.then4.i_crit_edge:                ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end42.i.i:                                     ; preds = %if.end36.i.i
  %26 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx14.i.i, align 4
  %call.i.i105.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 131, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105.i.i)
  %tobool46.not.i.i = icmp eq i32 %call.i.i105.i.i, 0
  br i1 %tobool46.not.i.i, label %if.end48.i.i, label %if.end42.i.i.if.then4.i_crit_edge

if.end42.i.i.if.then4.i_crit_edge:                ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end48.i.i:                                     ; preds = %if.end42.i.i
  %28 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map.i.i, align 8
  %call51.i.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 206, i32 noundef 80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %tobool52.not.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %tobool52.not.i.i, label %if.end54.i.i, label %if.end48.i.i.if.then4.i_crit_edge

if.end48.i.i.if.then4.i_crit_edge:                ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end54.i.i:                                     ; preds = %if.end48.i.i
  %30 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx14.i.i, align 4
  %call57.i.i = tail call i32 @regmap_multi_reg_write(ptr noundef %31, ptr noundef nonnull @tmds_phy_initialization, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %tobool58.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %tobool58.not.i.i, label %anx78xx_rx_initialization.exit.i, label %if.end54.i.i.if.then4.i_crit_edge

if.end54.i.i.if.then4.i_crit_edge:                ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

anx78xx_rx_initialization.exit.i:                 ; preds = %if.end54.i.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 8
  %call.i.i.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 10, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i28)
  %tobool.not.i29 = icmp eq i32 %call.i.i.i28, 0
  br i1 %tobool.not.i29, label %anx78xx_clear_hpd.exit, label %anx78xx_rx_initialization.exit.i.if.then4.i_crit_edge

anx78xx_rx_initialization.exit.i.if.then4.i_crit_edge: ; preds = %anx78xx_rx_initialization.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

anx78xx_clear_hpd.exit:                           ; preds = %anx78xx_rx_initialization.exit.i
  %34 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx14.i.i, align 4
  %call.i.i11.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 86, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i31)
  %tobool3.not.i = icmp eq i32 %call.i.i11.i31, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %anx78xx_clear_hpd.exit.if.then4.i_crit_edge

anx78xx_clear_hpd.exit.if.then4.i_crit_edge:      ; preds = %anx78xx_clear_hpd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.then4.i:                                       ; preds = %anx78xx_clear_hpd.exit.if.then4.i_crit_edge, %anx78xx_rx_initialization.exit.i.if.then4.i_crit_edge, %if.end54.i.i.if.then4.i_crit_edge, %if.end48.i.i.if.then4.i_crit_edge, %if.end42.i.i.if.then4.i_crit_edge, %if.end36.i.i.if.then4.i_crit_edge, %if.end30.i.i.if.then4.i_crit_edge, %if.end24.i.i.if.then4.i_crit_edge, %if.end18.i.i.if.then4.i_crit_edge, %if.end12.i28.i.if.then4.i_crit_edge, %if.end6.i27.i.if.then4.i_crit_edge, %if.end.i25.i.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  %retval.0.i2961.i = phi i32 [ %call.i.i11.i31, %anx78xx_clear_hpd.exit.if.then4.i_crit_edge ], [ %call57.i.i, %if.end54.i.i.if.then4.i_crit_edge ], [ %call51.i.i, %if.end48.i.i.if.then4.i_crit_edge ], [ %call.i.i105.i.i, %if.end42.i.i.if.then4.i_crit_edge ], [ %call.i.i104.i.i, %if.end36.i.i.if.then4.i_crit_edge ], [ %call.i.i103.i.i, %if.end30.i.i.if.then4.i_crit_edge ], [ %call.i.i102.i.i, %if.end24.i.i.if.then4.i_crit_edge ], [ %call.i.i101.i.i, %if.end18.i.i.if.then4.i_crit_edge ], [ %call.i.i100.i.i, %if.end12.i28.i.if.then4.i_crit_edge ], [ %call.i.i99.i.i, %if.end6.i27.i.if.then4.i_crit_edge ], [ %call.i.i.i.i, %if.end.i25.i.if.then4.i_crit_edge ], [ %call.i22.i, %if.end.i.if.then4.i_crit_edge ], [ %call.i.i.i28, %anx78xx_rx_initialization.exit.i.if.then4.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %retval.0.i2961.i) #7
  br label %if.then

if.end5.i:                                        ; preds = %anx78xx_clear_hpd.exit
  %36 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map.i.i, align 8
  %call.i31.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 233, i32 noundef 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool.not.i32.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool.not.i32.i, label %if.end.i35.i, label %if.end5.i.if.then8.i_crit_edge

if.end5.i.if.then8.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i35.i:                                     ; preds = %if.end5.i
  %38 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map.i.i, align 8
  %call.i.i.i33.i = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 233, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i33.i)
  %tobool4.not.i34.i = icmp eq i32 %call.i.i.i33.i, 0
  br i1 %tobool4.not.i34.i, label %if.end6.i37.i, label %if.end.i35.i.if.then8.i_crit_edge

if.end.i35.i.if.then8.i_crit_edge:                ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end6.i37.i:                                    ; preds = %if.end.i35.i
  %40 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map.i.i, align 8
  %call.i.i151.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 146, i32 noundef 160, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i151.i.i)
  %tobool10.not.i36.i = icmp eq i32 %call.i.i151.i.i, 0
  br i1 %tobool10.not.i36.i, label %if.end12.i40.i, label %if.end6.i37.i.if.then8.i_crit_edge

if.end6.i37.i.if.then8.i_crit_edge:               ; preds = %if.end6.i37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end12.i40.i:                                   ; preds = %if.end6.i37.i
  %42 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map.i.i, align 8
  %call15.i38.i = tail call i32 @regmap_multi_reg_write(ptr noundef %43, ptr noundef nonnull @otp_key_protect, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i38.i)
  %tobool16.not.i39.i = icmp eq i32 %call15.i38.i, 0
  br i1 %tobool16.not.i39.i, label %if.end18.i42.i, label %if.end12.i40.i.if.then8.i_crit_edge

if.end12.i40.i.if.then8.i_crit_edge:              ; preds = %if.end12.i40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end18.i42.i:                                   ; preds = %if.end12.i40.i
  %44 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map.i.i, align 8
  %call.i.i152.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 95, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i152.i.i)
  %tobool22.not.i41.i = icmp eq i32 %call.i.i152.i.i, 0
  br i1 %tobool22.not.i41.i, label %if.end24.i44.i, label %if.end18.i42.i.if.then8.i_crit_edge

if.end18.i42.i.if.then8.i_crit_edge:              ; preds = %if.end18.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end24.i44.i:                                   ; preds = %if.end18.i42.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 8
  %call27.i.i = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 15, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i43.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i43.i, label %if.end30.i46.i, label %if.end24.i44.i.if.then8.i_crit_edge

if.end24.i44.i.if.then8.i_crit_edge:              ; preds = %if.end24.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end30.i46.i:                                   ; preds = %if.end24.i44.i
  %48 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map.i.i, align 8
  %call33.i.i = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 81, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i45.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i45.i, label %if.end36.i48.i, label %if.end30.i46.i.if.then8.i_crit_edge

if.end30.i46.i.if.then8.i_crit_edge:              ; preds = %if.end30.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end36.i48.i:                                   ; preds = %if.end30.i46.i
  %50 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map.i.i, align 8
  %call.i.i153.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 146, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i153.i.i)
  %tobool40.not.i47.i = icmp eq i32 %call.i.i153.i.i, 0
  br i1 %tobool40.not.i47.i, label %if.end42.i50.i, label %if.end36.i48.i.if.then8.i_crit_edge

if.end36.i48.i.if.then8.i_crit_edge:              ; preds = %if.end36.i48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end42.i50.i:                                   ; preds = %if.end36.i48.i
  %52 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map.i.i, align 8
  %call.i.i154.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 184, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i154.i.i)
  %tobool46.not.i49.i = icmp eq i32 %call.i.i154.i.i, 0
  br i1 %tobool46.not.i49.i, label %if.end48.i52.i, label %if.end42.i50.i.if.then8.i_crit_edge

if.end42.i50.i.if.then8.i_crit_edge:              ; preds = %if.end42.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end48.i52.i:                                   ; preds = %if.end42.i50.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 8
  %call.i.i155.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 221, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i155.i.i)
  %tobool52.not.i51.i = icmp eq i32 %call.i.i155.i.i, 0
  br i1 %tobool52.not.i51.i, label %if.end54.i53.i, label %if.end48.i52.i.if.then8.i_crit_edge

if.end48.i52.i.if.then8.i_crit_edge:              ; preds = %if.end48.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end54.i53.i:                                   ; preds = %if.end48.i52.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %56 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %value.i, align 4, !annotation !179
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 8
  %call.i.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 221, i32 noundef 60, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %tobool.not.i23, label %if.end.i25, label %if.end54.i53.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge

if.end54.i53.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge: ; preds = %if.end54.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_xtal_clk_sel.exit.thread

if.end.i25:                                       ; preds = %if.end54.i53.i
  %59 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map.i.i, align 8
  %call3.i24 = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 236, i32 noundef 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i24)
  %tobool4.not.i = icmp eq i32 %call3.i24, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i25.anx78xx_xtal_clk_sel.exit.thread_crit_edge

if.end.i25.anx78xx_xtal_clk_sel.exit.thread_crit_edge: ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_xtal_clk_sel.exit.thread

if.end6.i:                                        ; preds = %if.end.i25
  %61 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map.i.i, align 8
  %call9.i = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 237, i32 noundef 91) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end6.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge

if.end6.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_xtal_clk_sel.exit.thread

if.end12.i:                                       ; preds = %if.end6.i
  %63 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map.i.i, align 8
  %call15.i = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 136, i32 noundef 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end12.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge

if.end12.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_xtal_clk_sel.exit.thread

if.end18.i:                                       ; preds = %if.end12.i
  %65 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map.i.i, align 8
  %call21.i = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 137, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end18.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge

if.end18.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_xtal_clk_sel.exit.thread

if.end24.i:                                       ; preds = %if.end18.i
  %67 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map.i.i, align 8
  %call27.i = tail call i32 @regmap_write(ptr noundef %68, i32 noundef 191, i32 noundef 26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end24.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge

if.end24.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_xtal_clk_sel.exit.thread

if.end30.i:                                       ; preds = %if.end24.i
  %69 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx14.i.i, align 4
  %call33.i = call i32 @regmap_read(ptr noundef %70, i32 noundef 73, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %anx78xx_xtal_clk_sel.exit, label %if.end30.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge

if.end30.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anx78xx_xtal_clk_sel.exit.thread

anx78xx_xtal_clk_sel.exit.thread:                 ; preds = %if.end30.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge, %if.end24.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge, %if.end18.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge, %if.end12.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge, %if.end6.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge, %if.end.i25.anx78xx_xtal_clk_sel.exit.thread_crit_edge, %if.end54.i53.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge
  %retval.0.i26.ph = phi i32 [ %call33.i, %if.end30.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge ], [ %call27.i, %if.end24.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge ], [ %call21.i, %if.end18.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge ], [ %call15.i, %if.end12.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge ], [ %call9.i, %if.end6.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge ], [ %call3.i24, %if.end.i25.anx78xx_xtal_clk_sel.exit.thread_crit_edge ], [ %call.i.i22, %if.end54.i53.i.anx78xx_xtal_clk_sel.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  br label %if.then8.i

anx78xx_xtal_clk_sel.exit:                        ; preds = %if.end30.i
  %71 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx14.i.i, align 4
  %73 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %value.i, align 4
  %and.i = and i32 %74, 7
  %or.i = or i32 %and.i, 88
  %call39.i = call i32 @regmap_write(ptr noundef %72, i32 noundef 73, i32 noundef %or.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool56.not.i.i = icmp eq i32 %call39.i, 0
  br i1 %tobool56.not.i.i, label %if.end58.i.i, label %anx78xx_xtal_clk_sel.exit.if.then8.i_crit_edge

anx78xx_xtal_clk_sel.exit.if.then8.i_crit_edge:   ; preds = %anx78xx_xtal_clk_sel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end58.i.i:                                     ; preds = %anx78xx_xtal_clk_sel.exit
  %75 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map.i.i, align 8
  %call61.i54.i = call i32 @regmap_write(ptr noundef %76, i32 noundef 226, i32 noundef 140) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i54.i)
  %tobool62.not.i.i = icmp eq i32 %call61.i54.i, 0
  br i1 %tobool62.not.i.i, label %if.end64.i.i, label %if.end58.i.i.if.then8.i_crit_edge

if.end58.i.i.if.then8.i_crit_edge:                ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end64.i.i:                                     ; preds = %if.end58.i.i
  %77 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map.i.i, align 8
  %call.i.i156.i.i = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 180, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i156.i.i)
  %tobool68.not.i.i = icmp eq i32 %call.i.i156.i.i, 0
  br i1 %tobool68.not.i.i, label %if.end70.i.i, label %if.end64.i.i.if.then8.i_crit_edge

if.end64.i.i.if.then8.i_crit_edge:                ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end70.i.i:                                     ; preds = %if.end64.i.i
  %79 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map.i.i, align 8
  %call73.i.i = call i32 @regmap_write(ptr noundef %80, i32 noundef 65, i32 noundef 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i.i)
  %tobool74.not.i.i = icmp eq i32 %call73.i.i, 0
  br i1 %tobool74.not.i.i, label %if.end76.i.i, label %if.end70.i.i.if.then8.i_crit_edge

if.end70.i.i.if.then8.i_crit_edge:                ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end76.i.i:                                     ; preds = %if.end70.i.i
  %81 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %map.i.i, align 8
  %call.i.i157.i.i = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 205, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i157.i.i)
  %tobool80.not.i.i = icmp eq i32 %call.i.i157.i.i, 0
  br i1 %tobool80.not.i.i, label %if.end82.i.i, label %if.end76.i.i.if.then8.i_crit_edge

if.end76.i.i.if.then8.i_crit_edge:                ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end82.i.i:                                     ; preds = %if.end76.i.i
  %83 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map.i.i, align 8
  %call.i.i158.i.i = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 200, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158.i.i)
  %tobool86.not.i.i = icmp eq i32 %call.i.i158.i.i, 0
  br i1 %tobool86.not.i.i, label %if.end88.i.i, label %if.end82.i.i.if.then8.i_crit_edge

if.end82.i.i.if.then8.i_crit_edge:                ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end88.i.i:                                     ; preds = %if.end82.i.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i, align 8
  %call.i = call i32 @regmap_write(ptr noundef %86, i32 noundef 225, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i17 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i17, label %anx78xx_link_phy_initialization.exit, label %if.end88.i.i.if.then8.i_crit_edge

if.end88.i.i.if.then8.i_crit_edge:                ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

anx78xx_link_phy_initialization.exit:             ; preds = %if.end88.i.i
  %arrayidx2.i18 = getelementptr i8, ptr %bridge, i32 1468
  %87 = ptrtoint ptr %arrayidx2.i18 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx2.i18, align 4
  %call3.i = call i32 @regmap_bulk_write(ptr noundef %88, i32 noundef 48, ptr noundef nonnull @dp_tx_output_precise_tune_bits, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool90.not.i.i = icmp eq i32 %call3.i, 0
  br i1 %tobool90.not.i.i, label %anx78xx_tx_initialization.exit.i, label %anx78xx_link_phy_initialization.exit.if.then8.i_crit_edge

anx78xx_link_phy_initialization.exit.if.then8.i_crit_edge: ; preds = %anx78xx_link_phy_initialization.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

anx78xx_tx_initialization.exit.i:                 ; preds = %anx78xx_link_phy_initialization.exit
  %89 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %map.i.i, align 8
  %call.i.i159.i.i = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 217, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i159.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i159.i.i, 0
  br i1 %tobool7.not.i, label %if.end, label %anx78xx_tx_initialization.exit.i.if.then8.i_crit_edge

anx78xx_tx_initialization.exit.i.if.then8.i_crit_edge: ; preds = %anx78xx_tx_initialization.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.then8.i:                                       ; preds = %anx78xx_tx_initialization.exit.i.if.then8.i_crit_edge, %anx78xx_link_phy_initialization.exit.if.then8.i_crit_edge, %if.end88.i.i.if.then8.i_crit_edge, %if.end82.i.i.if.then8.i_crit_edge, %if.end76.i.i.if.then8.i_crit_edge, %if.end70.i.i.if.then8.i_crit_edge, %if.end64.i.i.if.then8.i_crit_edge, %if.end58.i.i.if.then8.i_crit_edge, %anx78xx_xtal_clk_sel.exit.if.then8.i_crit_edge, %anx78xx_xtal_clk_sel.exit.thread, %if.end48.i52.i.if.then8.i_crit_edge, %if.end42.i50.i.if.then8.i_crit_edge, %if.end36.i48.i.if.then8.i_crit_edge, %if.end30.i46.i.if.then8.i_crit_edge, %if.end24.i44.i.if.then8.i_crit_edge, %if.end18.i42.i.if.then8.i_crit_edge, %if.end12.i40.i.if.then8.i_crit_edge, %if.end6.i37.i.if.then8.i_crit_edge, %if.end.i35.i.if.then8.i_crit_edge, %if.end5.i.if.then8.i_crit_edge
  %retval.0.i5564.i = phi i32 [ %call.i.i159.i.i, %anx78xx_tx_initialization.exit.i.if.then8.i_crit_edge ], [ %call3.i, %anx78xx_link_phy_initialization.exit.if.then8.i_crit_edge ], [ %call.i.i158.i.i, %if.end82.i.i.if.then8.i_crit_edge ], [ %call.i.i157.i.i, %if.end76.i.i.if.then8.i_crit_edge ], [ %call73.i.i, %if.end70.i.i.if.then8.i_crit_edge ], [ %call.i.i156.i.i, %if.end64.i.i.if.then8.i_crit_edge ], [ %call61.i54.i, %if.end58.i.i.if.then8.i_crit_edge ], [ %call39.i, %anx78xx_xtal_clk_sel.exit.if.then8.i_crit_edge ], [ %call.i.i155.i.i, %if.end48.i52.i.if.then8.i_crit_edge ], [ %call.i.i154.i.i, %if.end42.i50.i.if.then8.i_crit_edge ], [ %call.i.i153.i.i, %if.end36.i48.i.if.then8.i_crit_edge ], [ %call33.i.i, %if.end30.i46.i.if.then8.i_crit_edge ], [ %call27.i.i, %if.end24.i44.i.if.then8.i_crit_edge ], [ %call.i.i152.i.i, %if.end18.i42.i.if.then8.i_crit_edge ], [ %call15.i38.i, %if.end12.i40.i.if.then8.i_crit_edge ], [ %call.i.i151.i.i, %if.end6.i37.i.if.then8.i_crit_edge ], [ %call.i.i.i33.i, %if.end.i35.i.if.then8.i_crit_edge ], [ %call.i31.i, %if.end5.i.if.then8.i_crit_edge ], [ %retval.0.i26.ph, %anx78xx_xtal_clk_sel.exit.thread ], [ %call.i, %if.end88.i.i.if.then8.i_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.63, i32 noundef %retval.0.i5564.i) #7
  br label %if.then

if.then:                                          ; preds = %if.then8.i, %if.then4.i, %if.then.i
  %err.0.i = phi i32 [ %retval.0.i58.i, %if.then.i ], [ %retval.0.i2961.i, %if.then4.i ], [ %retval.0.i5564.i, %if.then8.i ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.64, i32 noundef %err.0.i) #7
  call fastcc void @anx78xx_poweroff(ptr noundef %add.ptr.i) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.60, i32 noundef %err.0.i) #7
  br label %cleanup

if.end:                                           ; preds = %anx78xx_tx_initialization.exit.i
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %91 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx14.i.i, align 4
  %call.i.i.i12 = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 86, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i12)
  %tobool.not.i13 = icmp eq i32 %call.i.i.i12, 0
  br i1 %tobool.not.i13, label %anx78xx_set_hpd.exit, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

anx78xx_set_hpd.exit:                             ; preds = %if.end
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i, align 8
  %call.i.i11.i = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 10, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %tobool3.not = icmp eq i32 %call.i.i11.i, 0
  br i1 %tobool3.not, label %anx78xx_set_hpd.exit.cleanup_crit_edge, label %anx78xx_set_hpd.exit.if.then4_crit_edge

anx78xx_set_hpd.exit.if.then4_crit_edge:          ; preds = %anx78xx_set_hpd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

anx78xx_set_hpd.exit.cleanup_crit_edge:           ; preds = %anx78xx_set_hpd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %anx78xx_set_hpd.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i1544 = phi i32 [ %call.i.i11.i, %anx78xx_set_hpd.exit.if.then4_crit_edge ], [ %call.i.i.i12, %if.end.if.then4_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.61, i32 noundef %retval.0.i1544) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %anx78xx_set_hpd.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx78xx_aux_transfer(ptr nocapture noundef readonly %aux, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.anx78xx, ptr %aux, i32 0, i32 8
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %call = tail call i32 @anx_dp_aux_transfer(ptr noundef %1, ptr noundef %msg) #7
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
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anx_dp_aux_transfer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx78xx_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_hpd = getelementptr i8, ptr %connector, i32 1044
  %0 = ptrtoint ptr %gpiod_hpd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_hpd, align 4
  %call1 = tail call i32 @gpiod_get_value(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx78xx_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %connector, i32 -2024
  %powered = getelementptr i8, ptr %connector, i32 1213
  %0 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !182

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 830, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %edid = getelementptr i8, ptr %connector, i32 -4
  %2 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid, align 4
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %3) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %lock = getelementptr i8, ptr %connector, i32 1064
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #7
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %value.i, align 1, !annotation !179
  %call.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %add.ptr.i, i32 noundef 512, ptr noundef nonnull %value.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55, i32 noundef %call.i.i) #7
  br label %if.then31

if.end.i:                                         ; preds = %if.end28
  %5 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value.i, align 1
  %conv.i = zext i8 %6 to i32
  %and.i = lshr i32 %conv.i, 1
  %7 = and i32 %and.i, 64
  %and2.i = and i32 %conv.i, 63
  %or.i = or i32 %7, %and2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end32

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.56) #7
  br label %if.then31

if.then31:                                        ; preds = %if.then3.i, %if.then.i
  %retval.0.i.ph = phi i32 [ -5, %if.then3.i ], [ %call.i.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.52, i32 noundef %retval.0.i.ph) #7
  br label %unlock

if.end32:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  %ddc = getelementptr i8, ptr %connector, i32 -2016
  %call33 = call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %ddc) #7
  %8 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call33, ptr %edid, align 4
  %tobool36.not = icmp eq ptr %call33, null
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.53) #7
  br label %unlock

if.end38:                                         ; preds = %if.end32
  %call40 = call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54, i32 noundef %call40) #7
  br label %unlock

if.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edid, align 4
  %call45 = call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %10) #7
  br label %unlock

unlock:                                           ; preds = %if.end43, %if.then42, %if.then37, %if.then31
  %num_modes.0 = phi i32 [ 0, %if.then31 ], [ 0, %if.then42 ], [ %call45, %if.end43 ], [ 0, %if.then37 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then25, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call27, %if.then25 ], [ %num_modes.0, %unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__initcall__kmod_analogix_anx78xx__307_1399_anx78xx_driver_init6, !1, !"__initcall__kmod_analogix_anx78xx__307_1399_anx78xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1399, i32 1}
!2 = !{ptr @__exitcall_anx78xx_driver_exit, !1, !"__exitcall_anx78xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description308, !4, !"__UNIQUE_ID_description308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1401, i32 1}
!5 = !{ptr @__UNIQUE_ID_author309, !6, !"__UNIQUE_ID_author309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1402, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1403, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1392, i32 14}
!12 = !{ptr @anx78xx_driver, !13, !"anx78xx_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1390, i32 26}
!14 = !{ptr @anx78xx_i2c_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1233, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1245, i32 4}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1252, i32 3}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1258, i32 3}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1271, i32 4}
!25 = !{ptr @anx78xx_i2c_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1277, i32 21}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1281, i32 4}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1309, i32 4}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @anx78xx_i2c_probe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @anx78xx_i2c_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1317, i32 3}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1326, i32 6}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1328, i32 3}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1336, i32 6}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1338, i32 3}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 580, i32 42}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 583, i32 4}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 589, i32 41}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 594, i32 40}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 599, i32 43}
!56 = !{ptr @anx78xx_regmap_config, !57, !"anx78xx_regmap_config", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1205, i32 35}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 478, i32 4}
!60 = distinct !{null, !61, !"anx78xx_chipid_list", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1210, i32 18}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1049, i32 3}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1156, i32 3}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1166, i32 3}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1181, i32 3}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1060, i32 2}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1068, i32 3}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1080, i32 2}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1085, i32 3}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1090, i32 3}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1097, i32 3}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1109, i32 2}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1114, i32 3}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1119, i32 3}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1124, i32 4}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1129, i32 4}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1134, i32 4}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1140, i32 4}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 631, i32 3}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 649, i32 3}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 666, i32 4}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 676, i32 4}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 696, i32 3}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 739, i32 3}
!108 = !{ptr @anx78xx_bridge_funcs, !109, !"anx78xx_bridge_funcs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1025, i32 38}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 896, i32 3}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 901, i32 3}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 906, i32 22}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 913, i32 3}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 921, i32 3}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 933, i32 3}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 939, i32 3}
!124 = !{ptr @anx78xx_connector_funcs, !125, !"anx78xx_connector_funcs", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 880, i32 41}
!126 = !{ptr @anx78xx_connector_helper_funcs, !127, !"anx78xx_connector_helper_funcs", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 865, i32 48}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 840, i32 3}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 846, i32 3}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 853, i32 3}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 813, i32 3}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 818, i32 3}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 997, i32 3}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1003, i32 3}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 778, i32 3}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1016, i32 3}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1022, i32 3}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 549, i32 3}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 555, i32 3}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 568, i32 2}
!154 = !{ptr @tmds_phy_initialization, !155, !"tmds_phy_initialization", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 149, i32 34}
!156 = !{ptr @otp_key_protect, !157, !"otp_key_protect", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 321, i32 34}
!158 = !{ptr @dp_tx_output_precise_tune_bits, !159, !"dp_tx_output_precise_tune_bits", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 234, i32 17}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 520, i32 4}
!162 = !{ptr @anx78xx_match_table, !163, !"anx78xx_match_table", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1380, i32 34}
!164 = !{ptr @anx7808_i2c_addresses, !165, !"anx7808_i2c_addresses", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 40, i32 17}
!166 = !{ptr @anx781x_i2c_addresses, !167, !"anx781x_i2c_addresses", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 48, i32 17}
!168 = !{ptr @anx78xx_id, !169, !"anx78xx_id", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c", i32 1373, i32 35}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{!"auto-init"}
!180 = !{i8 0, i8 2}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{!"branch_weights", i32 1, i32 2000}
