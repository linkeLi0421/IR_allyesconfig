; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adv7511_link_config = type { i32, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
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
%struct.adv7511 = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, %struct.drm_display_mode, i32, i32, i32, i32, [256 x i8], i8, %struct.wait_queue_head, %struct.work_struct, %struct.drm_bridge, %struct.drm_connector, i8, i32, i32, i8, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [3 x i8], i8, i8, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.adv7511_video_config = type { i8, i32, ptr, i8, %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_adv7511__308_1375_adv7511_init6 = internal global ptr @adv7511_init, section ".initcall6.init", align 4
@adv7511_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adv7511_probe, ptr @adv7511_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adv7511_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adv7511_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@adv7533_dsi_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str.42, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_adv7511_exit = internal global ptr @adv7511_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [52 x i8] c"adv7511.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [52 x i8] c"adv7511.description=ADV7511 HDMI transmitter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [52 x i8] c"adv7511.file=drivers/gpu/drm/bridge/adv7511/adv7511\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [20 x i8] c"adv7511.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv7511\00", [24 x i8] zeroinitializer }, align 32
@adv7511_of_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7511w\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7513\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7533\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7535\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@adv7511_i2c_ids = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7511\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adv7511w\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adv7513\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adv7533\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"adv7535\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adv7511_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init regulators\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7511_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/bridge/adv7511/adv7511_drv.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adv7511_probe._entry_ptr = internal global ptr @adv7511_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pd\00", [29 x i8] zeroinitializer }, align 32
@adv7511_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adv7511_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @adv7511_register_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr @adv7511_register_defaults, i32 256, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"adv7511_drv:1206:(&adv7511_regmap_config)->lock\00", [48 x i8] zeroinitializer }, align 32
@adv7511_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Rev. %d\0A\00", [23 x i8] zeroinitializer }, align 32
@adv7511_fixed_registers = internal constant { [9 x %struct.reg_sequence], [52 x i8] } { [9 x %struct.reg_sequence] [%struct.reg_sequence { i32 152, i32 3, i32 0 }, %struct.reg_sequence { i32 154, i32 224, i32 0 }, %struct.reg_sequence { i32 156, i32 48, i32 0 }, %struct.reg_sequence { i32 157, i32 97, i32 0 }, %struct.reg_sequence { i32 162, i32 164, i32 0 }, %struct.reg_sequence { i32 163, i32 164, i32 0 }, %struct.reg_sequence { i32 224, i32 208, i32 0 }, %struct.reg_sequence { i32 249, i32 0, i32 0 }, %struct.reg_sequence { i32 85, i32 2, i32 0 }], [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edid\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"packet\00", [25 x i8] zeroinitializer }, align 32
@adv7511_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&adv7511->hpd_work)\00", [58 x i8] zeroinitializer }, align 32
@adv7511_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&adv7511->wq\00", [19 x i8] zeroinitializer }, align 32
@adv7511_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @adv7511_bridge_attach, ptr null, ptr null, ptr null, ptr @adv7511_bridge_disable, ptr null, ptr @adv7511_bridge_mode_set, ptr null, ptr @adv7511_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv7511_bridge_detect, ptr null, ptr @adv7511_bridge_get_edid, ptr @adv7511_bridge_hpd_notify, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,input-depth\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adi,input-colorspace\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rgb\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"yuv422\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"yuv444\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,input-clock\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1x\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2x\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddr\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,input-style\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adi,input-justification\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"left\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"evenly\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"right\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,clock-delay\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adi,embedded-sync\00", [46 x i8] zeroinitializer }, align 32
@adv7511_supply_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [44 x i8] zeroinitializer }, align 32
@adv7533_supply_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.37], [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pvdd\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bgvdd\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvdd-3v\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a2vdd\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v3p3\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v1p2\00", [27 x i8] zeroinitializer }, align 32
@adv7511_register_defaults = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\12\00\00\00\00\00\00\00\00\00\01\0E\BC\18\01\13%7\00\00\00\00\00\00Fb\04\A8\00\00\1C\84\1C\BF\04\A8\1Ep\02\1E\00\00\04\A8\08\12\1B\AC\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\B0\00P\90~yp\00\00\00\A8\80\00\00\00\00\00\00\00\02\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C0\00\00\00\0B\02\00\18Z`\00\00\00\00\80\80\08\04\00\00\00\00\00@\00\00@\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\02\00\01\040\FF\80\80\80\00\00\00\00\00\00\00\00\00\10\01\80u\00\00`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00u\11\00\00|\00\00\00\00\00\00", [64 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cec\00", [28 x i8] zeroinitializer }, align 32
@adv7511_init_cec_regmap._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adv7511_cec_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @adv7511_cec_register_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"adv7511_drv:1051:(&adv7511_cec_regmap_config)->lock\00", [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@adv7511_set_link_config.input_styles = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 2, i32 1, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Parent encoder object not found\00", [32 x i8] zeroinitializer }, align 32
@adv7511_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @adv7511_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialize connector with drm\0A\00", [55 x i8] zeroinitializer }, align 32
@adv7511_connector_helper_funcs = internal global { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @adv7511_connector_get_modes, ptr null, ptr @adv7511_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adv7511_csc_ycbcr_to_rgb = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 1844, i16 1197, i16 0, i16 7195, i16 7644, i16 1197, i16 7972, i16 309, i16 0, i16 1197, i16 2172, i16 7031], [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv7533\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [35 x i64] [i64 33, i64 32, i64 0, i64 4, i64 5, i64 6, i64 61, i64 62, i64 63, i64 66, i64 76, i64 150, i64 151, i64 158, i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183, i64 184, i64 190, i64 192, i64 193, i64 194, i64 195, i64 196, i64 200, i64 201, i64 202, i64 203, i64 245, i64 246]
@__sancov_gen_cov_switch_values.45 = internal global [21 x i64] [i64 19, i64 32, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 74]
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"adv7511_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1358, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"adv7533_dsi_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1354, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1360, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"adv7511_of_ids\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1344, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"adv7511_i2c_ids\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1334, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1187, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1195, i32 50 }
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"adv7511_regmap_config\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 119, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1206, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1215, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"adv7511_fixed_registers\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 26, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1228, i32 52 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1238, i32 54 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1255, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1258, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"adv7511_bridge_funcs\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 944, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1075, i32 27 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1080, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1084, i32 19 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1086, i32 24 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1088, i32 24 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1093, i32 36 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1097, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1099, i32 24 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1101, i32 24 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1108, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1116, i32 37 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1121, i32 20 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1124, i32 25 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1127, i32 25 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1138, i32 27 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1142, i32 52 }
@___asan_gen_.166 = private unnamed_addr constant [21 x i8] c"adv7511_supply_names\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 958, i32 27 }
@___asan_gen_.169 = private unnamed_addr constant [21 x i8] c"adv7533_supply_names\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 966, i32 27 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 959, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 960, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 961, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 962, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 963, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 970, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 971, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 972, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [26 x i8] c"adv7511_register_defaults\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 42, i32 22 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1044, i32 57 }
@___asan_gen_.202 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [26 x i8] c"adv7511_cec_regmap_config\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1031, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1050, i32 20 }
@___asan_gen_.211 = private unnamed_addr constant [13 x i8] c"input_styles\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 289, i32 28 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 845, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [24 x i8] c"adv7511_connector_funcs\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 830, i32 41 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 859, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [31 x i8] c"adv7511_connector_helper_funcs\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 817, i32 42 }
@___asan_gen_.226 = private unnamed_addr constant [25 x i8] c"adv7511_csc_ycbcr_to_rgb\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 197, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.230 = private constant [48 x i8] c"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1355, i32 17 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_adv7511_exit, ptr @__initcall__kmod_adv7511__308_1375_adv7511_init6, ptr @adv7511_exit, ptr @adv7511_probe._entry, ptr @adv7511_probe._entry_ptr, ptr @adv7511_driver, ptr @adv7533_dsi_driver, ptr @.str, ptr @adv7511_of_ids, ptr @adv7511_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @adv7511_probe._key, ptr @adv7511_regmap_config, ptr @.str.7, ptr @.str.8, ptr @adv7511_fixed_registers, ptr @.str.9, ptr @.str.10, ptr @adv7511_probe.__key, ptr @.str.11, ptr @adv7511_probe.__key.12, ptr @.str.13, ptr @adv7511_bridge_funcs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @adv7511_supply_names, ptr @adv7533_supply_names, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @adv7511_register_defaults, ptr @.str.38, ptr @adv7511_init_cec_regmap._key, ptr @adv7511_cec_regmap_config, ptr @.str.39, ptr @adv7511_set_link_config.input_styles, ptr @.str.40, ptr @adv7511_connector_funcs, ptr @.str.41, ptr @adv7511_connector_helper_funcs, ptr @adv7511_csc_ycbcr_to_rgb, ptr @.str.42], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7533_dsi_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_of_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_i2c_ids to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_fixed_registers to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_supply_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7533_supply_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_register_defaults to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_init_cec_regmap._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_cec_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_set_link_config.input_styles to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7511_csc_ycbcr_to_rgb to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @adv7533_dsi_driver, ptr noundef null) #10
  %call1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adv7511_driver) #10
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv7511_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @adv7511_driver) #10
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @adv7533_dsi_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %str.i = alloca ptr, align 4
  %link_config = alloca %struct.adv7511_link_config, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %link_config) #10
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !137
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1912, i32 noundef 3520) #10
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call.i, align 8
  %powered = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %powered, align 4
  %status = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %status, align 8
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %8 = ptrtoint ptr %call8 to i32
  br label %if.end10

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %.sink = phi i32 [ %10, %if.else ], [ %8, %if.then7 ]
  %11 = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 30
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %11, align 8
  %13 = call ptr @memset(ptr %link_config, i32 0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink)
  %cmp = icmp eq i32 %.sink, 0
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  br i1 %cmp, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str.i) #10
  %16 = ptrtoint ptr %str.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %str.i, align 4, !annotation !137
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef nonnull %link_config, i32 noundef 1, i32 noundef 0) #10
  %17 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %link_config, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.then12.adv7511_parse_dt.exit_crit_edge [
    i32 8, label %if.then12.if.end.i_crit_edge
    i32 10, label %if.then12.if.end.i_crit_edge278
    i32 12, label %if.then12.if.end.i_crit_edge279
  ]

if.then12.if.end.i_crit_edge279:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then12.if.end.i_crit_edge278:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then12.adv7511_parse_dt.exit_crit_edge:        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_parse_dt.exit

if.end.i:                                         ; preds = %if.then12.if.end.i_crit_edge, %if.then12.if.end.i_crit_edge278, %if.then12.if.end.i_crit_edge279
  %call7.i = call i32 @of_property_read_string(ptr noundef %15, ptr noundef nonnull @.str.15, ptr noundef nonnull %str.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i.adv7511_parse_dt.exit_crit_edge, label %if.end10.i

if.end.i.adv7511_parse_dt.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_parse_dt.exit

if.end10.i:                                       ; preds = %if.end.i
  %20 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %str.i, align 4
  %call11.i = call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(4) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end10.i.if.end25.i_crit_edge, label %if.else.i

if.end10.i.if.end25.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end10.i
  %call13.i = call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(7) @.str.17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.else.i.if.end25.i_crit_edge, label %if.else17.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.else17.i:                                      ; preds = %if.else.i
  %call18.i = call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(7) @.str.18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.else17.i.if.end25.i_crit_edge, label %if.else17.i.adv7511_parse_dt.exit_crit_edge

if.else17.i.adv7511_parse_dt.exit_crit_edge:      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_parse_dt.exit

if.else17.i.if.end25.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else17.i.if.end25.i_crit_edge, %if.else.i.if.end25.i_crit_edge, %if.end10.i.if.end25.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.end10.i.if.end25.i_crit_edge ], [ 1, %if.else.i.if.end25.i_crit_edge ], [ 2, %if.else17.i.if.end25.i_crit_edge ]
  %input_colorspace16.i = getelementptr inbounds %struct.adv7511_link_config, ptr %link_config, i32 0, i32 1
  %22 = ptrtoint ptr %input_colorspace16.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i, ptr %input_colorspace16.i, align 4
  %call26.i = call i32 @of_property_read_string(ptr noundef %15, ptr noundef nonnull @.str.19, ptr noundef nonnull %str.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %if.end25.i.adv7511_parse_dt.exit_crit_edge, label %if.end29.i

if.end25.i.adv7511_parse_dt.exit_crit_edge:       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_parse_dt.exit

if.end29.i:                                       ; preds = %if.end25.i
  %23 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %str.i, align 4
  %call30.i = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(3) @.str.20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end46.i.thread, label %if.else33.i

if.else33.i:                                      ; preds = %if.end29.i
  %call34.i = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(3) @.str.21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.else33.i.if.end46.i_crit_edge, label %if.else38.i

if.else33.i.if.end46.i_crit_edge:                 ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.else38.i:                                      ; preds = %if.else33.i
  %call39.i = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(4) @.str.22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.else38.i.if.end46.i_crit_edge, label %if.else38.i.adv7511_parse_dt.exit_crit_edge

if.else38.i.adv7511_parse_dt.exit_crit_edge:      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_parse_dt.exit

if.else38.i.if.end46.i_crit_edge:                 ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else38.i.if.end46.i_crit_edge, %if.else33.i.if.end46.i_crit_edge
  %.sink142.i = phi i32 [ 1, %if.else33.i.if.end46.i_crit_edge ], [ 2, %if.else38.i.if.end46.i_crit_edge ]
  %input_clock37.i = getelementptr inbounds %struct.adv7511_link_config, ptr %link_config, i32 0, i32 2
  %25 = ptrtoint ptr %input_clock37.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink142.i, ptr %input_clock37.i, align 4
  br label %if.then51.i

if.end46.i.thread:                                ; preds = %if.end29.i
  %input_clock37.i269 = getelementptr inbounds %struct.adv7511_link_config, ptr %link_config, i32 0, i32 2
  %26 = ptrtoint ptr %input_clock37.i269 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %input_clock37.i269, align 4
  %27 = ptrtoint ptr %input_colorspace16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %input_colorspace16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp48.i270 = icmp eq i32 %28, 1
  br i1 %cmp48.i270, label %if.end46.i.thread.if.then51.i_crit_edge, label %if.else84.i

if.end46.i.thread.if.then51.i_crit_edge:          ; preds = %if.end46.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51.i

if.then51.i:                                      ; preds = %if.end46.i.thread.if.then51.i_crit_edge, %if.end46.i
  %input_style.i = getelementptr inbounds %struct.adv7511_link_config, ptr %link_config, i32 0, i32 3
  %call.i.i140.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.23, ptr noundef %input_style.i, i32 noundef 1, i32 noundef 0) #10
  %29 = call i32 @llvm.smin.i32(i32 %call.i.i140.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i140.i)
  %tobool53.not.i = icmp sgt i32 %call.i.i140.i, -1
  br i1 %tobool53.not.i, label %if.end55.i, label %if.then51.i.adv7511_parse_dt.exit_crit_edge

if.then51.i.adv7511_parse_dt.exit_crit_edge:      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_parse_dt.exit

if.end55.i:                                       ; preds = %if.then51.i
  %30 = ptrtoint ptr %input_style.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %input_style.i, align 4
  %32 = add i32 %31, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %32)
  %33 = icmp ult i32 %32, -3
  br i1 %33, label %if.end55.i.adv7511_parse_dt.exit_crit_edge, label %if.end62.i

if.end55.i.adv7511_parse_dt.exit_crit_edge:       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_parse_dt.exit

if.end62.i:                                       ; preds = %if.end55.i
  %call63.i = call i32 @of_property_read_string(ptr noundef %15, ptr noundef nonnull @.str.24, ptr noundef nonnull %str.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %cmp64.i = icmp slt i32 %call63.i, 0
  br i1 %cmp64.i, label %if.end62.i.adv7511_parse_dt.exit_crit_edge, label %if.end66.i

if.end62.i.adv7511_parse_dt.exit_crit_edge:       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_parse_dt.exit

if.end66.i:                                       ; preds = %if.end62.i
  %34 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %str.i, align 4
  %call67.i = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(5) @.str.25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end66.i.if.end87.i_crit_edge, label %if.else70.i

if.end66.i.if.end87.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.else70.i:                                      ; preds = %if.end66.i
  %call71.i = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(7) @.str.26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.else70.i.if.end87.i_crit_edge, label %if.else75.i

if.else70.i.if.end87.i_crit_edge:                 ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.else75.i:                                      ; preds = %if.else70.i
  %call76.i = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(6) @.str.27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.else75.i.if.end87.i_crit_edge, label %if.else75.i.adv7511_parse_dt.exit_crit_edge

if.else75.i.adv7511_parse_dt.exit_crit_edge:      ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_parse_dt.exit

if.else75.i.if.end87.i_crit_edge:                 ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.else84.i:                                      ; preds = %if.end46.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  %input_style85.i = getelementptr inbounds %struct.adv7511_link_config, ptr %link_config, i32 0, i32 3
  %36 = ptrtoint ptr %input_style85.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %input_style85.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.else84.i, %if.else75.i.if.end87.i_crit_edge, %if.else70.i.if.end87.i_crit_edge, %if.end66.i.if.end87.i_crit_edge
  %.sink143.i = phi i32 [ 2, %if.else84.i ], [ 2, %if.end66.i.if.end87.i_crit_edge ], [ 0, %if.else70.i.if.end87.i_crit_edge ], [ 1, %if.else75.i.if.end87.i_crit_edge ]
  %input_justification.i = getelementptr inbounds %struct.adv7511_link_config, ptr %link_config, i32 0, i32 4
  %37 = ptrtoint ptr %input_justification.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink143.i, ptr %input_justification.i, align 4
  %clock_delay.i = getelementptr inbounds %struct.adv7511_link_config, ptr %link_config, i32 0, i32 5
  %call.i.i141.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.28, ptr noundef %clock_delay.i, i32 noundef 1, i32 noundef 0) #10
  %38 = ptrtoint ptr %clock_delay.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %clock_delay.i, align 4
  %40 = add i32 %39, -1601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2801, i32 %40)
  %41 = icmp ult i32 %40, -2801
  br i1 %41, label %if.end87.i.adv7511_parse_dt.exit_crit_edge, label %if.end95.i

if.end87.i.adv7511_parse_dt.exit_crit_edge:       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_parse_dt.exit

if.end95.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.29, ptr noundef null) #10
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %embedded_sync.i = getelementptr inbounds %struct.adv7511_link_config, ptr %link_config, i32 0, i32 6
  %frombool.i = zext i1 %tobool.i.i to i8
  %42 = ptrtoint ptr %embedded_sync.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool.i, ptr %embedded_sync.i, align 4
  %sync_pulse.i = getelementptr inbounds %struct.adv7511_link_config, ptr %link_config, i32 0, i32 7
  %43 = ptrtoint ptr %sync_pulse.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %sync_pulse.i, align 4
  %vsync_polarity.i = getelementptr inbounds %struct.adv7511_link_config, ptr %link_config, i32 0, i32 8
  %44 = ptrtoint ptr %vsync_polarity.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %vsync_polarity.i, align 4
  %hsync_polarity.i = getelementptr inbounds %struct.adv7511_link_config, ptr %link_config, i32 0, i32 9
  %45 = ptrtoint ptr %hsync_polarity.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %hsync_polarity.i, align 4
  br label %adv7511_parse_dt.exit

adv7511_parse_dt.exit:                            ; preds = %if.end95.i, %if.end87.i.adv7511_parse_dt.exit_crit_edge, %if.else75.i.adv7511_parse_dt.exit_crit_edge, %if.end62.i.adv7511_parse_dt.exit_crit_edge, %if.end55.i.adv7511_parse_dt.exit_crit_edge, %if.then51.i.adv7511_parse_dt.exit_crit_edge, %if.else38.i.adv7511_parse_dt.exit_crit_edge, %if.end25.i.adv7511_parse_dt.exit_crit_edge, %if.else17.i.adv7511_parse_dt.exit_crit_edge, %if.end.i.adv7511_parse_dt.exit_crit_edge, %if.then12.adv7511_parse_dt.exit_crit_edge
  %retval.0.i253 = phi i32 [ 0, %if.end95.i ], [ -22, %if.then12.adv7511_parse_dt.exit_crit_edge ], [ %call7.i, %if.end.i.adv7511_parse_dt.exit_crit_edge ], [ -22, %if.else17.i.adv7511_parse_dt.exit_crit_edge ], [ %call26.i, %if.end25.i.adv7511_parse_dt.exit_crit_edge ], [ -22, %if.else38.i.adv7511_parse_dt.exit_crit_edge ], [ %29, %if.then51.i.adv7511_parse_dt.exit_crit_edge ], [ -22, %if.end55.i.adv7511_parse_dt.exit_crit_edge ], [ %call63.i, %if.end62.i.adv7511_parse_dt.exit_crit_edge ], [ -22, %if.else75.i.adv7511_parse_dt.exit_crit_edge ], [ -22, %if.end87.i.adv7511_parse_dt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str.i) #10
  br label %if.end18

if.else15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 @adv7533_parse_dt(ptr noundef %15, ptr noundef nonnull %call.i) #10
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %adv7511_parse_dt.exit
  %ret.0 = phi i32 [ %retval.0.i253, %adv7511_parse_dt.exit ], [ %call17, %if.else15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool19.not = icmp eq i32 %ret.0, 0
  br i1 %tobool19.not, label %if.end21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i = icmp eq i32 %49, 0
  %spec.select.i = select i1 %cmp.i, i32 5, i32 6
  %spec.select47.i = select i1 %cmp.i, ptr @adv7511_supply_names, ptr @adv7533_supply_names
  %50 = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 25
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select.i, ptr %50, align 8
  %52 = mul nuw nsw i32 %spec.select.i, 12
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef %52, i32 noundef 3520) #10
  %supplies.i = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 24
  %53 = ptrtoint ptr %supplies.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call5.i.i.i, ptr %supplies.i, align 4
  %tobool.not.i254 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i254, label %if.end21.do.end_crit_edge, label %for.cond.preheader.i

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.preheader.i:                             ; preds = %if.end21
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp843.not.i = icmp eq i32 %55, 0
  br i1 %cmp843.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %spec.select47.i, i32 %i.044.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %58 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %supplies.i, align 4
  %arrayidx10.i = getelementptr %struct.regulator_bulk_data, ptr %59, i32 %i.044.i
  %60 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %arrayidx10.i, align 4
  %inc.i = add nuw i32 %i.044.i, 1
  %61 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %50, align 8
  %cmp8.i255 = icmp ult i32 %inc.i, %62
  br i1 %cmp8.i255, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %62, %for.body.i.for.end.i_crit_edge ]
  %63 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %supplies.i, align 4
  %call13.i256 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1.i, i32 noundef %.lcssa.i, ptr noundef %64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i256)
  %tobool14.not.i257 = icmp eq i32 %call13.i256, 0
  br i1 %tobool14.not.i257, label %adv7511_init_regulators.exit, label %for.end.i.do.end_crit_edge

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

adv7511_init_regulators.exit:                     ; preds = %for.end.i
  %65 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %50, align 8
  %67 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %supplies.i, align 4
  %call19.i = call i32 @regulator_bulk_enable(i32 noundef %66, ptr noundef %68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool23.not = icmp eq i32 %call19.i, 0
  br i1 %tobool23.not, label %if.end25, label %adv7511_init_regulators.exit.do.end_crit_edge

adv7511_init_regulators.exit.do.end_crit_edge:    ; preds = %adv7511_init_regulators.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %adv7511_init_regulators.exit.do.end_crit_edge, %for.end.i.do.end_crit_edge, %if.end21.do.end_crit_edge
  %retval.0.i258276 = phi i32 [ %call19.i, %adv7511_init_regulators.exit.do.end_crit_edge ], [ %call13.i256, %for.end.i.do.end_crit_edge ], [ -12, %if.end21.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end25:                                         ; preds = %adv7511_init_regulators.exit
  %call26 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 7) #10
  %gpio_pd = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 23
  %69 = ptrtoint ptr %gpio_pd to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call26, ptr %gpio_pd, align 8
  %cmp.i259 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i259, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %call26 to i32
  br label %uninit_regulators

if.end32:                                         ; preds = %if.end25
  %tobool34.not = icmp eq ptr %call26, null
  br i1 %tobool34.not, label %if.end32.if.end37_crit_edge, label %if.then35

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #10
  %71 = ptrtoint ptr %gpio_pd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gpio_pd, align 8
  call void @gpiod_set_value_cansleep(ptr noundef %72, i32 noundef 0) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  %call38 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @adv7511_regmap_config, ptr noundef nonnull @adv7511_probe._key, ptr noundef nonnull @.str.7) #10
  %regmap = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 4
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call38, ptr %regmap, align 8
  %cmp.i260 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i260, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %call38 to i32
  br label %uninit_regulators

if.end44:                                         ; preds = %if.end37
  %call46 = call i32 @regmap_read(ptr noundef %call38, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body50, label %if.end44.uninit_regulators_crit_edge

if.end44.uninit_regulators_crit_edge:             ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %uninit_regulators

do.body50:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv7511_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv7511_probe, %if.then56)) #10
          to label %do.end59 [label %if.then56], !srcloc !138

if.then56:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adv7511_probe.__UNIQUE_ID_ddebug307, ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %76) #10
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %do.body50
  %77 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp61 = icmp eq i32 %78, 0
  br i1 %cmp61, label %if.then62, label %if.else65

if.then62:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap, align 8
  %call64 = call i32 @regmap_register_patch(ptr noundef %80, ptr noundef nonnull @adv7511_fixed_registers, i32 noundef 9) #10
  br label %if.end67

if.else65:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = call i32 @adv7533_patch_registers(ptr noundef nonnull %call.i) #10
  br label %if.end67

if.end67:                                         ; preds = %if.else65, %if.then62
  %ret.1 = phi i32 [ %call64, %if.then62 ], [ %call66, %if.else65 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool68.not = icmp eq i32 %ret.1, 0
  br i1 %tobool68.not, label %if.end70, label %if.end67.uninit_regulators_crit_edge

if.end67.uninit_regulators_crit_edge:             ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %uninit_regulators

if.end70:                                         ; preds = %if.end67
  call fastcc void @adv7511_packet_disable(ptr noundef nonnull %call.i, i32 noundef 65535)
  %call72 = call ptr @i2c_new_ancillary_device(ptr noundef %i2c, ptr noundef nonnull @.str.9, i16 noundef zeroext 63) #10
  %i2c_edid = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 1
  %81 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call72, ptr %i2c_edid, align 4
  %cmp.i261 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i261, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %call72 to i32
  br label %uninit_regulators

if.end78:                                         ; preds = %if.end70
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %call72, i32 0, i32 1
  %85 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %addr, align 2
  %conv = zext i16 %86 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %call81 = call i32 @regmap_write(ptr noundef %84, i32 noundef 67, i32 noundef %shl) #10
  %call82 = call ptr @i2c_new_ancillary_device(ptr noundef %i2c, ptr noundef nonnull @.str.10, i16 noundef zeroext 56) #10
  %i2c_packet = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 2
  %87 = ptrtoint ptr %i2c_packet to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call82, ptr %i2c_packet, align 8
  %cmp.i262 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i262, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %call82 to i32
  br label %err_i2c_unregister_edid

if.end88:                                         ; preds = %if.end78
  %89 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap, align 8
  %addr91 = getelementptr inbounds %struct.i2c_client, ptr %call82, i32 0, i32 1
  %91 = ptrtoint ptr %addr91 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %addr91, align 2
  %conv92 = zext i16 %92 to i32
  %shl93 = shl nuw nsw i32 %conv92, 1
  %call94 = call i32 @regmap_write(ptr noundef %90, i32 noundef 69, i32 noundef %shl93) #10
  %call95 = call fastcc i32 @adv7511_init_cec_regmap(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end88.err_i2c_unregister_packet_crit_edge

if.end88.err_i2c_unregister_packet_crit_edge:     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_i2c_unregister_packet

if.end98:                                         ; preds = %if.end88
  %93 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap, align 8
  %i2c_cec = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 3
  %95 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i2c_cec, align 4
  %addr100 = getelementptr inbounds %struct.i2c_client, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %addr100 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %addr100, align 2
  %conv101 = zext i16 %98 to i32
  %shl102 = shl nuw nsw i32 %conv101, 1
  %call103 = call i32 @regmap_write(ptr noundef %94, i32 noundef 225, i32 noundef %shl102) #10
  %hpd_work = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 16
  call void @__init_work(ptr noundef %hpd_work, i32 noundef 0) #10
  %99 = ptrtoint ptr %hpd_work to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -64, ptr %hpd_work, align 8
  %lockdep_map = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 16, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @adv7511_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry108 = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 16, i32 1
  %100 = ptrtoint ptr %entry108 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %entry108, ptr %entry108, align 4
  %prev.i = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 16, i32 1, i32 1
  %101 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %entry108, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 16, i32 2
  %102 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @adv7511_hpd_work, ptr %func, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %103 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool112.not = icmp eq i32 %104, 0
  br i1 %tobool112.not, label %if.end98.if.end123_crit_edge, label %do.body114

if.end98.if.end123_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

do.body114:                                       ; preds = %if.end98
  %wq = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 15
  call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.13, ptr noundef nonnull @adv7511_probe.__key.12) #10
  %105 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 3
  %107 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i263 = icmp eq ptr %108, null
  br i1 %tobool.not.i263, label %if.end.i264, label %do.body114.dev_name.exit_crit_edge

do.body114.dev_name.exit_crit_edge:               ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i264:                                      ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i264, %do.body114.dev_name.exit_crit_edge
  %retval.0.i265 = phi ptr [ %110, %if.end.i264 ], [ %108, %do.body114.dev_name.exit_crit_edge ]
  %call119 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %106, ptr noundef null, ptr noundef nonnull @adv7511_irq_handler, i32 noundef 8192, ptr noundef %retval.0.i265, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %dev_name.exit.if.end123_crit_edge, label %dev_name.exit.err_unregister_cec_crit_edge

dev_name.exit.err_unregister_cec_crit_edge:       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unregister_cec

dev_name.exit.if.end123_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.end123:                                        ; preds = %dev_name.exit.if.end123_crit_edge, %if.end98.if.end123_crit_edge
  call fastcc void @adv7511_power_off(ptr noundef nonnull %call.i)
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %111 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %112 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp125 = icmp eq i32 %113, 0
  br i1 %cmp125, label %if.then127, label %if.end123.if.end128_crit_edge

if.end123.if.end128_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @adv7511_set_link_config(ptr noundef nonnull %call.i, ptr noundef nonnull %link_config)
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end123.if.end128_crit_edge
  %call129 = call i32 @adv7511_cec_init(ptr noundef %dev1, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.end128.err_unregister_cec_crit_edge

if.end128.err_unregister_cec_crit_edge:           ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unregister_cec

if.end132:                                        ; preds = %if.end128
  %bridge = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 17
  %funcs = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 17, i32 7
  %114 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @adv7511_bridge_funcs, ptr %funcs, align 4
  %ops = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 17, i32 9
  %115 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 7, ptr %ops, align 4
  %116 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %of_node, align 8
  %of_node136 = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 17, i32 4
  %118 = ptrtoint ptr %of_node136 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %of_node136, align 4
  %type138 = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 17, i32 10
  %119 = ptrtoint ptr %type138 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 11, ptr %type138, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #10
  %call140 = call i32 @adv7511_audio_init(ptr noundef %dev1, ptr noundef nonnull %call.i) #10
  %120 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %11, align 8
  %.off = add i32 %121, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then147, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then147:                                       ; preds = %if.end132
  %call148 = call i32 @adv7533_attach_dsi(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then147.cleanup_crit_edge, label %err_unregister_audio

if.then147.cleanup_crit_edge:                     ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_unregister_audio:                             ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #12
  call void @adv7511_audio_exit(ptr noundef nonnull %call.i) #10
  call void @drm_bridge_remove(ptr noundef %bridge) #10
  br label %err_unregister_cec

err_unregister_cec:                               ; preds = %err_unregister_audio, %if.end128.err_unregister_cec_crit_edge, %dev_name.exit.err_unregister_cec_crit_edge
  %ret.2 = phi i32 [ %call119, %dev_name.exit.err_unregister_cec_crit_edge ], [ %call129, %if.end128.err_unregister_cec_crit_edge ], [ %call148, %err_unregister_audio ]
  %122 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %i2c_cec, align 4
  call void @i2c_unregister_device(ptr noundef %123) #10
  %cec_clk = getelementptr inbounds %struct.adv7511, ptr %call.i, i32 0, i32 36
  %124 = ptrtoint ptr %cec_clk to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cec_clk, align 4
  call void @clk_disable(ptr noundef %125) #10
  call void @clk_unprepare(ptr noundef %125) #10
  br label %err_i2c_unregister_packet

err_i2c_unregister_packet:                        ; preds = %err_unregister_cec, %if.end88.err_i2c_unregister_packet_crit_edge
  %ret.3 = phi i32 [ %call95, %if.end88.err_i2c_unregister_packet_crit_edge ], [ %ret.2, %err_unregister_cec ]
  %126 = ptrtoint ptr %i2c_packet to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i2c_packet, align 8
  call void @i2c_unregister_device(ptr noundef %127) #10
  br label %err_i2c_unregister_edid

err_i2c_unregister_edid:                          ; preds = %err_i2c_unregister_packet, %if.then85
  %ret.4 = phi i32 [ %88, %if.then85 ], [ %ret.3, %err_i2c_unregister_packet ]
  %128 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i2c_edid, align 4
  call void @i2c_unregister_device(ptr noundef %129) #10
  br label %uninit_regulators

uninit_regulators:                                ; preds = %err_i2c_unregister_edid, %if.then75, %if.end67.uninit_regulators_crit_edge, %if.end44.uninit_regulators_crit_edge, %if.then41, %if.then29
  %ret.5 = phi i32 [ %70, %if.then29 ], [ %74, %if.then41 ], [ %call46, %if.end44.uninit_regulators_crit_edge ], [ %ret.1, %if.end67.uninit_regulators_crit_edge ], [ %82, %if.then75 ], [ %ret.4, %err_i2c_unregister_edid ]
  %130 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %50, align 8
  %132 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %supplies.i, align 4
  %call.i267 = call i32 @regulator_bulk_disable(i32 noundef %131, ptr noundef %133) #10
  br label %cleanup

cleanup:                                          ; preds = %uninit_regulators, %if.then147.cleanup_crit_edge, %if.end132.cleanup_crit_edge, %do.end, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i258276, %do.end ], [ %ret.5, %uninit_regulators ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.0, %if.end18.cleanup_crit_edge ], [ 0, %if.end132.cleanup_crit_edge ], [ 0, %if.then147.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %link_config) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_remove(ptr nocapture noundef readonly %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_cec = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_cec, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #10
  %cec_clk = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %cec_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cec_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %num_supplies.i = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_supplies.i, align 8
  %supplies.i = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %supplies.i, align 4
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef %7, ptr noundef %9) #10
  %bridge = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 17
  tail call void @drm_bridge_remove(ptr noundef %bridge) #10
  tail call void @adv7511_audio_exit(ptr noundef %1) #10
  %cec_adap = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cec_adap, align 8
  tail call void @cec_unregister_adapter(ptr noundef %11) #10
  %i2c_packet = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %i2c_packet to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_packet, align 8
  tail call void @i2c_unregister_device(ptr noundef %13) #10
  %i2c_edid = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_edid, align 4
  tail call void @i2c_unregister_device(ptr noundef %15) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7533_parse_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7533_patch_registers(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7511_packet_disable(ptr nocapture noundef readonly %adv7511, i32 noundef %packet) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %packet, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 64, i32 noundef %packet, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %packet, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %packet, 8
  %regmap4 = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %2 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap4, align 8
  %call.i1 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 68, i32 noundef %shr, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_ancillary_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7511_init_cec_regmap(ptr noundef %adv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adv, align 8
  %call = tail call ptr @i2c_new_ancillary_device(ptr noundef %1, ptr noundef nonnull @.str.38, i16 noundef zeroext 60) #10
  %i2c_cec = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %i2c_cec, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %call, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %adv, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_cec, align 4
  %call7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %6, ptr noundef nonnull @adv7511_cec_regmap_config, ptr noundef nonnull @adv7511_init_cec_regmap._key, ptr noundef nonnull @.str.39) #10
  %regmap_cec = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 5
  %7 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %regmap_cec, align 4
  %cmp.i36 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call7 to i32
  br label %err

if.end13:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.adv7511, ptr %adv, i32 0, i32 30
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  %.off = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i32 @adv7533_patch_cec_registers(ptr noundef %adv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.then16.cleanup_crit_edge, label %if.then16.err_crit_edge

if.then16.err_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %if.then16.err_crit_edge, %if.then10
  %ret.0 = phi i32 [ %8, %if.then10 ], [ %call17, %if.then16.err_crit_edge ]
  %11 = ptrtoint ptr %i2c_cec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_cec, align 4
  tail call void @i2c_unregister_device(ptr noundef %12) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %ret.0, %err ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adv7511_hpd_work(ptr noundef %work) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -472
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !137
  %regmap = getelementptr i8, ptr %work, i32 -456
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 66, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.if.end11_crit_edge, label %if.end3

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end3:                                          ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3.if.end11_crit_edge, label %land.lhs.true

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end3
  %status5 = getelementptr i8, ptr %work, i32 504
  %5 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp6 = icmp eq i32 %6, 2
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true7:                                   ; preds = %land.lhs.true
  %powered = getelementptr i8, ptr %work, i32 -444
  %7 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %powered, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %land.lhs.true7.if.end11_crit_edge, label %if.then9

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 8
  call void @regcache_mark_dirty(ptr noundef %10) #10
  call fastcc void @__adv7511_power_on(ptr noundef %add.ptr) #10
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 8
  %call.i = call i32 @regcache_sync(ptr noundef %12) #10
  %type.i = getelementptr i8, ptr %work, i32 1408
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 8
  %.off.i = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.i, label %if.then9.adv7511_power_on.exit_crit_edge

if.then9.adv7511_power_on.exit_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_power_on.exit

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  call void @adv7533_dsi_power_on(ptr noundef %add.ptr) #10
  br label %adv7511_power_on.exit

adv7511_power_on.exit:                            ; preds = %if.then.i, %if.then9.adv7511_power_on.exit_crit_edge
  %15 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %powered, align 4
  br label %if.end11

if.end11:                                         ; preds = %adv7511_power_on.exit, %land.lhs.true7.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end3.if.end11_crit_edge, %entry.if.end11_crit_edge
  %status.049 = phi i32 [ 1, %adv7511_power_on.exit ], [ 1, %land.lhs.true7.if.end11_crit_edge ], [ 1, %land.lhs.true.if.end11_crit_edge ], [ 2, %if.end3.if.end11_crit_edge ], [ 2, %entry.if.end11_crit_edge ]
  %cmp2148 = phi i1 [ false, %adv7511_power_on.exit ], [ false, %land.lhs.true7.if.end11_crit_edge ], [ false, %land.lhs.true.if.end11_crit_edge ], [ true, %if.end3.if.end11_crit_edge ], [ true, %entry.if.end11_crit_edge ]
  %connector12 = getelementptr i8, ptr %work, i32 328
  %status13 = getelementptr i8, ptr %work, i32 504
  %16 = ptrtoint ptr %status13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %status.049)
  %cmp14.not = icmp eq i32 %17, %status.049
  br i1 %cmp14.not, label %if.end11.if.end28_crit_edge, label %if.then15

if.end11.if.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then15:                                        ; preds = %if.end11
  %18 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %status.049, ptr %status13, align 8
  %19 = ptrtoint ptr %connector12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %connector12, align 8
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %if.else26, label %if.then20

if.then20:                                        ; preds = %if.then15
  br i1 %cmp2148, label %if.then22, label %if.then20.if.end23_crit_edge

if.then20.if.end23_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %cec_adap = getelementptr i8, ptr %work, i32 1416
  %21 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cec_adap, align 8
  call void @cec_s_phys_addr(ptr noundef %22, i16 noundef zeroext -1, i1 noundef zeroext false) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then20.if.end23_crit_edge
  %23 = ptrtoint ptr %connector12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %connector12, align 8
  call void @drm_kms_helper_hotplug_event(ptr noundef %24) #10
  br label %if.end28

if.else26:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %bridge = getelementptr i8, ptr %work, i32 44
  call void @drm_bridge_hpd_notify(ptr noundef %bridge, i32 noundef %status.049) #10
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.end23, %if.end11.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_irq_handler(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @adv7511_irq_process(ptr noundef %devid, i1 noundef zeroext true)
  %0 = xor i32 %call, -1
  %call.lobit.not = lshr i32 %0, 31
  ret i32 %call.lobit.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7511_power_off(ptr noundef %adv7511) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 65, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 8
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 149, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  tail call void @regcache_mark_dirty(ptr noundef %5) #10
  %type = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 30
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  %.off = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @adv7533_dsi_power_off(ptr noundef %adv7511) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %powered = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 7
  %8 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %powered, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv7511_set_link_config(ptr nocapture noundef %adv7511, ptr nocapture noundef readonly %config) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_delay1 = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 5
  %0 = ptrtoint ptr %clock_delay1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock_delay1, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config, align 4
  %input_colorspace = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 1
  %4 = ptrtoint ptr %input_colorspace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input_colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp5.not = icmp eq i32 %5, 1
  %input_clock8 = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %input_clock8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input_clock8, align 4
  br i1 %cmp5.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp6 = icmp eq i32 %7, 2
  %cond7 = select i1 %cmp6, i32 5, i32 0
  br label %if.end24

if.else:                                          ; preds = %entry
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %7, label %if.else19 [
    i32 2, label %if.then10
    i32 1, label %if.then15
  ]

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %embedded_sync = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 6
  %9 = ptrtoint ptr %embedded_sync to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %embedded_sync, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %cond11 = select i1 %tobool.not, i32 7, i32 8
  br label %if.end24

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %embedded_sync16 = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 6
  %11 = ptrtoint ptr %embedded_sync16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %embedded_sync16, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  %cond18 = select i1 %tobool17.not, i32 3, i32 4
  br label %if.end24

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %embedded_sync20 = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 6
  %13 = ptrtoint ptr %embedded_sync20 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %embedded_sync20, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  %cond22 = select i1 %tobool21.not, i32 1, i32 2
  br label %if.end24

if.end24:                                         ; preds = %if.else19, %if.then15, %if.then10, %if.then
  %input_id.0 = phi i32 [ %cond7, %if.then ], [ %cond11, %if.then10 ], [ %cond18, %if.then15 ], [ %cond22, %if.else19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp3 = icmp eq i32 %3, 10
  %cond = select i1 %cmp3, i32 16, i32 32
  %cond4 = select i1 %cmp, i32 48, i32 %cond
  %add = add i32 %1, 1200
  %div = sdiv i32 %add, 400
  %regmap = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 21, i32 noundef 15, i32 noundef %input_id.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 8
  %input_style = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 3
  %19 = ptrtoint ptr %input_style to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %input_style, align 4
  %arrayidx = getelementptr [4 x i32], ptr @adv7511_set_link_config.input_styles, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %shl26 = shl i32 %22, 2
  %or = or i32 %shl26, %cond4
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 22, i32 noundef 126, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 8
  %input_justification = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 4
  %25 = ptrtoint ptr %input_justification to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %input_justification, align 4
  %shl29 = shl i32 %26, 3
  %call30 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 72, i32 noundef %shl29) #10
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 8
  %sync_pulse = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 7
  %29 = ptrtoint ptr %sync_pulse to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sync_pulse, align 4
  %shl32 = shl i32 %30, 2
  %call33 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 208, i32 noundef %shl32) #10
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 8
  %shl35 = shl nsw i32 %div, 5
  %call36 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 186, i32 noundef %shl35) #10
  %embedded_sync37 = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 6
  %33 = ptrtoint ptr %embedded_sync37 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %embedded_sync37, align 4, !range !139
  %embedded_sync39 = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 19
  %35 = ptrtoint ptr %embedded_sync39 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %embedded_sync39, align 8
  %hsync_polarity = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 9
  %36 = ptrtoint ptr %hsync_polarity to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hsync_polarity, align 4
  %hsync_polarity40 = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 21
  %38 = ptrtoint ptr %hsync_polarity40 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %hsync_polarity40, align 8
  %vsync_polarity = getelementptr inbounds %struct.adv7511_link_config, ptr %config, i32 0, i32 8
  %39 = ptrtoint ptr %vsync_polarity to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vsync_polarity, align 4
  %vsync_polarity41 = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 20
  %41 = ptrtoint ptr %vsync_polarity41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %vsync_polarity41, align 4
  %42 = ptrtoint ptr %input_colorspace to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %input_colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp43 = icmp eq i32 %43, 0
  %rgb = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 22
  %frombool44 = zext i1 %cmp43 to i8
  %44 = ptrtoint ptr %rgb to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool44, ptr %rgb, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7511_cec_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7511_audio_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7533_attach_dsi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv7511_audio_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @adv7511_register_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %reg, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 4, label %entry.return_crit_edge1
    i32 5, label %entry.return_crit_edge2
    i32 6, label %entry.return_crit_edge3
    i32 62, label %entry.return_crit_edge4
    i32 61, label %entry.return_crit_edge5
    i32 63, label %entry.return_crit_edge6
    i32 66, label %entry.return_crit_edge7
    i32 76, label %entry.return_crit_edge8
    i32 150, label %entry.return_crit_edge9
    i32 151, label %entry.return_crit_edge10
    i32 158, label %entry.return_crit_edge11
    i32 176, label %entry.return_crit_edge12
    i32 177, label %entry.return_crit_edge13
    i32 178, label %entry.return_crit_edge14
    i32 179, label %entry.return_crit_edge15
    i32 180, label %entry.return_crit_edge16
    i32 181, label %entry.return_crit_edge17
    i32 182, label %entry.return_crit_edge18
    i32 183, label %entry.return_crit_edge19
    i32 184, label %entry.return_crit_edge20
    i32 190, label %entry.return_crit_edge21
    i32 192, label %entry.return_crit_edge22
    i32 193, label %entry.return_crit_edge23
    i32 194, label %entry.return_crit_edge24
    i32 195, label %entry.return_crit_edge25
    i32 196, label %entry.return_crit_edge26
    i32 200, label %entry.return_crit_edge27
    i32 201, label %entry.return_crit_edge28
    i32 202, label %entry.return_crit_edge29
    i32 203, label %entry.return_crit_edge30
    i32 245, label %entry.return_crit_edge31
    i32 246, label %entry.return_crit_edge32
  ]

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv7533_patch_cec_registers(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @adv7511_cec_register_volatile(ptr nocapture noundef readonly %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %sub = add i32 %reg, -112
  %spec.select = select i1 %switch, i32 %sub, i32 %reg
  %4 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %spec.select, label %sw.epilog [
    i32 21, label %entry.cleanup_crit_edge
    i32 37, label %entry.cleanup_crit_edge8
    i32 74, label %entry.cleanup_crit_edge9
    i32 20, label %entry.cleanup_crit_edge10
    i32 22, label %entry.cleanup_crit_edge11
    i32 23, label %entry.cleanup_crit_edge12
    i32 24, label %entry.cleanup_crit_edge13
    i32 25, label %entry.cleanup_crit_edge14
    i32 26, label %entry.cleanup_crit_edge15
    i32 27, label %entry.cleanup_crit_edge16
    i32 28, label %entry.cleanup_crit_edge17
    i32 29, label %entry.cleanup_crit_edge18
    i32 30, label %entry.cleanup_crit_edge19
    i32 31, label %entry.cleanup_crit_edge20
    i32 32, label %entry.cleanup_crit_edge21
    i32 33, label %entry.cleanup_crit_edge22
    i32 34, label %entry.cleanup_crit_edge23
    i32 35, label %entry.cleanup_crit_edge24
    i32 36, label %entry.cleanup_crit_edge25
  ]

entry.cleanup_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge22:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge20:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge15:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge8, %entry.cleanup_crit_edge9, %entry.cleanup_crit_edge10, %entry.cleanup_crit_edge11, %entry.cleanup_crit_edge12, %entry.cleanup_crit_edge13, %entry.cleanup_crit_edge14, %entry.cleanup_crit_edge15, %entry.cleanup_crit_edge16, %entry.cleanup_crit_edge17, %entry.cleanup_crit_edge18, %entry.cleanup_crit_edge19, %entry.cleanup_crit_edge20, %entry.cleanup_crit_edge21, %entry.cleanup_crit_edge22, %entry.cleanup_crit_edge23, %entry.cleanup_crit_edge24, %entry.cleanup_crit_edge25
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge8 ], [ true, %entry.cleanup_crit_edge9 ], [ true, %entry.cleanup_crit_edge10 ], [ true, %entry.cleanup_crit_edge11 ], [ true, %entry.cleanup_crit_edge12 ], [ true, %entry.cleanup_crit_edge13 ], [ true, %entry.cleanup_crit_edge14 ], [ true, %entry.cleanup_crit_edge15 ], [ true, %entry.cleanup_crit_edge16 ], [ true, %entry.cleanup_crit_edge17 ], [ true, %entry.cleanup_crit_edge18 ], [ true, %entry.cleanup_crit_edge19 ], [ true, %entry.cleanup_crit_edge20 ], [ true, %entry.cleanup_crit_edge21 ], [ true, %entry.cleanup_crit_edge22 ], [ true, %entry.cleanup_crit_edge23 ], [ true, %entry.cleanup_crit_edge24 ], [ true, %entry.cleanup_crit_edge25 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__adv7511_power_on(ptr nocapture noundef %adv7511) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_edid_segment = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 12
  %0 = ptrtoint ptr %current_edid_segment to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %current_edid_segment, align 4
  %regmap = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 65, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %3 = ptrtoint ptr %adv7511 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adv7511, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 8
  %call2 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 148, i32 noundef 132) #10
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 8
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 149, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 8
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 214, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv7533_dsi_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7511_irq_process(ptr noundef %adv7511, i1 noundef zeroext %process_hpd) unnamed_addr #2 align 64 {
entry:
  %irq0 = alloca i32, align 4
  %irq1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq0) #10
  %0 = ptrtoint ptr %irq0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %irq0, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq1) #10
  %1 = ptrtoint ptr %irq1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %irq1, align 4, !annotation !137
  %regmap = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 150, ptr noundef nonnull %irq0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 151, ptr noundef nonnull %irq1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %8 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq0, align 4
  %call7 = call i32 @regmap_write(ptr noundef %7, i32 noundef 150, i32 noundef %9) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %12 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq1, align 4
  %call9 = call i32 @regmap_write(ptr noundef %11, i32 noundef 151, i32 noundef %13) #10
  br i1 %process_hpd, label %land.lhs.true, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq0, align 4
  %and = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true11

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %encoder = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 17, i32 2
  %16 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %encoder, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then13

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  %hpd_work = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %hpd_work) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %19 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq0, align 4
  %and16 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end15.if.then20_crit_edge

if.end15.if.then20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end15
  %21 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq1, align 4
  %and18 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end15.if.then20_crit_edge
  %edid_read = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 14
  %23 = ptrtoint ptr %edid_read to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %edid_read, align 8
  %24 = ptrtoint ptr %adv7511 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adv7511, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool21.not = icmp eq i32 %27, 0
  br i1 %tobool21.not, label %if.then20.if.end24_crit_edge, label %if.then22

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %wq = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then20.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge
  %28 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq1, align 4
  call void @adv7511_cec_irq_process(ptr noundef %adv7511, i32 noundef %29) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq0) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv7511_cec_irq_process(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv7533_dsi_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -516
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %encoder.i = getelementptr i8, ptr %bridge, i32 128
  %0 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  %spec.select.i = select i1 %tobool2.not.i, i8 6, i8 1
  %6 = getelementptr i8, ptr %bridge, i32 984
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select.i, ptr %6, align 4
  %dev.i = getelementptr i8, ptr %bridge, i32 124
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %connector7.i = getelementptr i8, ptr %bridge, i32 284
  %call.i = tail call i32 @drm_connector_init(ptr noundef %9, ptr noundef %connector7.i, ptr noundef nonnull @adv7511_connector_funcs, i32 noundef 11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then8.i, label %adv7511_connector_init.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41) #10
  br label %cleanup

adv7511_connector_init.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %helper_private.i.i = getelementptr i8, ptr %bridge, i32 992
  %10 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @adv7511_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %11 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %encoder.i, align 4
  %call13.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector7.i, ptr noundef %12) #10
  br label %if.end3

if.end3:                                          ; preds = %adv7511_connector_init.exit, %entry.if.end3_crit_edge
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not = icmp eq i32 %16, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %regmap = getelementptr i8, ptr %bridge, i32 -500
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 8
  %call6 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 148, i32 noundef 128) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %if.then8.i, %if.then.i
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.end3.cleanup_crit_edge ], [ -19, %if.then.i ], [ %call.i, %if.then8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adv7511_bridge_disable(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i.i = getelementptr i8, ptr %bridge, i32 -500
  %0 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i.i, align 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 65, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %2 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i.i, align 8
  %call.i6.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 149, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 8
  tail call void @regcache_mark_dirty(ptr noundef %5) #10
  %type.i = getelementptr i8, ptr %bridge, i32 1364
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 8
  %.off.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.i, label %entry.adv7511_power_off.exit_crit_edge

entry.adv7511_power_off.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_power_off.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -516
  tail call void @adv7533_dsi_power_off(ptr noundef %add.ptr.i) #10
  br label %adv7511_power_off.exit

adv7511_power_off.exit:                           ; preds = %if.then.i, %entry.adv7511_power_off.exit_crit_edge
  %powered.i = getelementptr i8, ptr %bridge, i32 -488
  %8 = ptrtoint ptr %powered.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %powered.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adv7511_bridge_mode_set(ptr noundef %bridge, ptr noundef %mode, ptr noundef %adj_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -516
  %embedded_sync.i = getelementptr i8, ptr %bridge, i32 1324
  %0 = ptrtoint ptr %embedded_sync.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %embedded_sync.i, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 16
  %2 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv.i = zext i16 %3 to i32
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 13
  %4 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv1.i = zext i16 %5 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 23
  %6 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv2.i = zext i16 %7 to i32
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 20
  %8 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv3.i = zext i16 %9 to i32
  %sub4.i = sub nsw i32 %conv2.i, %conv3.i
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 17
  %10 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %crtc_hsync_end.i, align 4
  %conv5.i = zext i16 %11 to i32
  %sub8.i = sub nsw i32 %conv5.i, %conv.i
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 24
  %12 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv9.i = zext i16 %13 to i32
  %sub12.i = sub nsw i32 %conv9.i, %conv2.i
  %add.i = add nsw i32 %sub4.i, 1
  %regmap.i = getelementptr i8, ptr %bridge, i32 -500
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 8
  %16 = lshr i32 %sub.i, 5
  %shl.i = and i32 %16, 224
  %call.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 250, i32 noundef %shl.i) #10
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 8
  %shr14.i = lshr i32 %sub.i, 2
  %and15.i = and i32 %shr14.i, 255
  %call16.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 48, i32 noundef %and15.i) #10
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 8
  %and18.i = shl nsw i32 %sub.i, 6
  %shl19.i = and i32 %and18.i, 192
  %shr20.i = lshr i32 %sub8.i, 4
  %and21.i = and i32 %shr20.i, 63
  %or.i = or i32 %and21.i, %shl19.i
  %call22.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 49, i32 noundef %or.i) #10
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 8
  %and24.i = shl nsw i32 %sub8.i, 4
  %shl25.i = and i32 %and24.i, 240
  %shr26.i = lshr i32 %add.i, 6
  %and27.i = and i32 %shr26.i, 15
  %or28.i = or i32 %shl25.i, %and27.i
  %call29.i = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 50, i32 noundef %or28.i) #10
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 8
  %and31.i = shl nsw i32 %add.i, 2
  %shl32.i = and i32 %and31.i, 252
  %shr33.i = lshr i32 %sub12.i, 8
  %and34.i = and i32 %shr33.i, 3
  %or35.i = or i32 %and34.i, %shl32.i
  %call36.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 51, i32 noundef %or35.i) #10
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 8
  %and38.i = and i32 %sub12.i, 255
  %call39.i = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 52, i32 noundef %and38.i) #10
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 11
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %and40.i = and i32 %28, 1
  %29 = xor i32 %and40.i, 1
  %and43.i = lshr i32 %28, 2
  %and43.lobit.i = and i32 %and43.i, 1
  %30 = xor i32 %and43.lobit.i, 1
  br label %if.end74.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags47.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 11
  %31 = ptrtoint ptr %flags47.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags47.i, align 4
  %and48.i = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  %..i = select i1 %tobool49.not.i, i32 2, i32 1
  %and53.i = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  %mode_vsync_polarity.0.i = select i1 %tobool54.not.i, i32 2, i32 1
  %hsync_polarity58.i = getelementptr i8, ptr %bridge, i32 1332
  %33 = ptrtoint ptr %hsync_polarity58.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hsync_polarity58.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %..i)
  %cmp.not.i = icmp ne i32 %34, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp61.not.i = icmp ne i32 %34, 0
  %not.or.cond.i = and i1 %cmp61.not.i, %cmp.not.i
  %hsync_polarity.0.i = zext i1 %not.or.cond.i to i32
  %vsync_polarity65.i = getelementptr i8, ptr %bridge, i32 1328
  %35 = ptrtoint ptr %vsync_polarity65.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vsync_polarity65.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %mode_vsync_polarity.0.i)
  %cmp66.not.i = icmp ne i32 %36, %mode_vsync_polarity.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp70.not.i = icmp ne i32 %36, 0
  %not.or.cond149.i = and i1 %cmp70.not.i, %cmp66.not.i
  %vsync_polarity.0.i = zext i1 %not.or.cond149.i to i32
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else.i, %if.then.i
  %vsync_polarity.1.i = phi i32 [ %30, %if.then.i ], [ %vsync_polarity.0.i, %if.else.i ]
  %hsync_polarity.1.i = phi i32 [ %29, %if.then.i ], [ %hsync_polarity.0.i, %if.else.i ]
  %call75.i = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call75.i)
  %cmp76.i = icmp slt i32 %call75.i, 25
  br i1 %cmp76.i, label %if.end74.i.if.end92.i_crit_edge, label %if.else79.i

if.end74.i.if.end92.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

if.else79.i:                                      ; preds = %if.end74.i
  %call80.i = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %call80.i)
  %cmp81.i = icmp slt i32 %call80.i, 26
  br i1 %cmp81.i, label %if.else79.i.if.end92.i_crit_edge, label %if.else84.i

if.else79.i.if.end92.i_crit_edge:                 ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

if.else84.i:                                      ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #12
  %call85.i = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call85.i)
  %cmp86.i = icmp slt i32 %call85.i, 31
  %.150.i = select i1 %cmp86.i, i32 6, i32 0
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else84.i, %if.else79.i.if.end92.i_crit_edge, %if.end74.i.if.end92.i_crit_edge
  %low_refresh_rate.0.i = phi i32 [ 2, %if.end74.i.if.end92.i_crit_edge ], [ 4, %if.else79.i.if.end92.i_crit_edge ], [ %.150.i, %if.else84.i ]
  %regmap93.i = getelementptr i8, ptr %bridge, i32 -500
  %37 = ptrtoint ptr %regmap93.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap93.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 251, i32 noundef 6, i32 noundef %low_refresh_rate.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %39 = ptrtoint ptr %regmap93.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap93.i, align 8
  %shl97.i = shl nsw i32 %vsync_polarity.1.i, 6
  %shl98.i = shl nsw i32 %hsync_polarity.1.i, 5
  %or99.i = or i32 %shl98.i, %shl97.i
  %call.i151.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 23, i32 noundef 96, i32 noundef %or99.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %type.i = getelementptr i8, ptr %bridge, i32 1364
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type.i, align 8
  %.off.i = add i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then106.i, label %if.end92.i.adv7511_mode_set.exit_crit_edge

if.end92.i.adv7511_mode_set.exit_crit_edge:       ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_mode_set.exit

if.then106.i:                                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @adv7533_mode_set(ptr noundef %add.ptr.i, ptr noundef %adj_mode) #10
  br label %adv7511_mode_set.exit

adv7511_mode_set.exit:                            ; preds = %if.then106.i, %if.end92.i.adv7511_mode_set.exit_crit_edge
  %curr_mode.i = getelementptr i8, ptr %bridge, i32 -484
  tail call void @drm_mode_copy(ptr noundef %curr_mode.i, ptr noundef %adj_mode) #10
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mode, align 4
  %f_tmds.i = getelementptr i8, ptr %bridge, i32 -372
  %45 = ptrtoint ptr %f_tmds.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %f_tmds.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adv7511_bridge_enable(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -516
  tail call fastcc void @__adv7511_power_on(ptr noundef %add.ptr.i) #10
  %regmap.i = getelementptr i8, ptr %bridge, i32 -500
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call i32 @regcache_sync(ptr noundef %1) #10
  %type.i = getelementptr i8, ptr %bridge, i32 1364
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 8
  %.off.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.i, label %entry.adv7511_power_on.exit_crit_edge

entry.adv7511_power_on.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_power_on.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @adv7533_dsi_power_on(ptr noundef %add.ptr.i) #10
  br label %adv7511_power_on.exit

adv7511_power_on.exit:                            ; preds = %if.then.i, %entry.adv7511_power_on.exit_crit_edge
  %powered.i = getelementptr i8, ptr %bridge, i32 -488
  %4 = ptrtoint ptr %powered.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %powered.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_bridge_detect(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -516
  %call1 = tail call fastcc i32 @adv7511_detect(ptr noundef %add.ptr.i, ptr noundef null)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @adv7511_bridge_get_edid(ptr noundef %bridge, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -516
  %call1 = tail call fastcc ptr @adv7511_get_edid(ptr noundef %add.ptr.i, ptr noundef %connector)
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adv7511_bridge_hpd_notify(ptr nocapture noundef readonly %bridge, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %status)
  %cmp = icmp eq i32 %status, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cec_adap = getelementptr i8, ptr %bridge, i32 1372
  %0 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cec_adap, align 8
  tail call void @cec_s_phys_addr(ptr noundef %1, i16 noundef zeroext -1, i1 noundef zeroext false) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_connector_detect(ptr noundef %connector, i1 noundef zeroext %force) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %connector, i32 -800
  %call1 = tail call fastcc i32 @adv7511_detect(ptr noundef %add.ptr.i, ptr noundef %connector)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7511_detect(ptr noundef %adv7511, ptr noundef %connector) unnamed_addr #2 align 64 {
entry:
  %irq0.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !137
  %regmap = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 66, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq0.i) #10
  %5 = ptrtoint ptr %irq0.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %irq0.i, align 4, !annotation !137
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 150, ptr noundef nonnull %irq0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.adv7511_hpd.exit.thread_crit_edge, label %if.end.i

if.end.adv7511_hpd.exit.thread_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_hpd.exit.thread

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %irq0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq0.i, align 4
  %and.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.adv7511_hpd.exit.thread_crit_edge, label %adv7511_hpd.exit

if.end.i.adv7511_hpd.exit.thread_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_hpd.exit.thread

adv7511_hpd.exit.thread:                          ; preds = %if.end.i.adv7511_hpd.exit.thread_crit_edge, %if.end.adv7511_hpd.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq0.i) #10
  br label %if.else18

adv7511_hpd.exit:                                 ; preds = %if.end.i
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %call3.i = call i32 @regmap_write(ptr noundef %11, i32 noundef 150, i32 noundef 128) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq0.i) #10
  br i1 %tobool.not, label %adv7511_hpd.exit.if.else18_crit_edge, label %land.lhs.true6

adv7511_hpd.exit.if.else18_crit_edge:             ; preds = %adv7511_hpd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else18

land.lhs.true6:                                   ; preds = %adv7511_hpd.exit
  %powered = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 7
  %12 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %powered, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.else18_crit_edge, label %if.then8

land.lhs.true6.if.else18_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else18

if.then8:                                         ; preds = %land.lhs.true6
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 8
  call void @regcache_mark_dirty(ptr noundef %15) #10
  call fastcc void @__adv7511_power_on(ptr noundef %adv7511) #10
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 8
  %call.i38 = call i32 @regcache_sync(ptr noundef %17) #10
  %type.i = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 30
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 8
  %.off.i = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.i, label %if.then8.adv7511_power_on.exit_crit_edge

if.then8.adv7511_power_on.exit_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_power_on.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  call void @adv7533_dsi_power_on(ptr noundef %adv7511) #10
  br label %adv7511_power_on.exit

adv7511_power_on.exit:                            ; preds = %if.then.i, %if.then8.adv7511_power_on.exit_crit_edge
  %20 = ptrtoint ptr %powered to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %powered, align 4
  %tobool10.not = icmp eq ptr %connector, null
  br i1 %tobool10.not, label %adv7511_power_on.exit.if.end13_crit_edge, label %if.then11

adv7511_power_on.exit.if.end13_crit_edge:         ; preds = %adv7511_power_on.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %adv7511_power_on.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i40 = call fastcc ptr @adv7511_get_edid(ptr noundef %adv7511, ptr noundef nonnull %connector) #10
  %call1.i = call i32 @drm_connector_update_edid_property(ptr noundef nonnull %connector, ptr noundef %call.i40) #10
  %call2.i = call i32 @drm_add_edid_modes(ptr noundef nonnull %connector, ptr noundef %call.i40) #10
  call void @kfree(ptr noundef %call.i40) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %adv7511_power_on.exit.if.end13_crit_edge
  %status14 = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 6
  %21 = ptrtoint ptr %status14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp15 = icmp eq i32 %22, 1
  %spec.select = select i1 %cmp15, i32 2, i32 1
  br label %if.end21

if.else18:                                        ; preds = %land.lhs.true6.if.else18_crit_edge, %adv7511_hpd.exit.if.else18_crit_edge, %adv7511_hpd.exit.thread
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 8
  %call.i41 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 214, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.end13
  %status.1 = phi i32 [ %., %if.else18 ], [ %spec.select, %if.end13 ]
  %status22 = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 6
  %25 = ptrtoint ptr %status22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %status.1, ptr %status22, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %if.end21 ], [ 2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @adv7511_get_edid(ptr noundef %adv7511, ptr noundef %connector) unnamed_addr #2 align 64 {
entry:
  %config.i = alloca %struct.adv7511_video_config, align 4
  %infoframe.i = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %powered = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 7
  %0 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powered, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i2c_edid = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_edid, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %conv = zext i16 %5 to i32
  %shl = shl nuw nsw i32 %conv, 1
  tail call fastcc void @__adv7511_power_on(ptr noundef %adv7511)
  %regmap = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %call = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 67, i32 noundef %shl) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call ptr @drm_do_get_edid(ptr noundef %connector, ptr noundef nonnull @adv7511_get_edid_block, ptr noundef %adv7511) #10
  %8 = ptrtoint ptr %powered to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %powered, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %regmap.i = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 65, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 8
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 149, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 8
  tail call void @regcache_mark_dirty(ptr noundef %15) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %rgb = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 22
  %16 = ptrtoint ptr %rgb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rgb, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  %call7 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %call1) #10
  %frombool1.i = zext i1 %call7 to i8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %config.i) #10
  %18 = call ptr @memset(ptr %config.i, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %infoframe.i) #10
  %hdmi_mode2.i = getelementptr inbounds %struct.adv7511_video_config, ptr %config.i, i32 0, i32 3
  %19 = call ptr @memset(ptr %infoframe.i, i32 255, i32 17)
  %20 = ptrtoint ptr %hdmi_mode2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool1.i, ptr %hdmi_mode2.i, align 4
  %avi_infoframe.i = getelementptr inbounds %struct.adv7511_video_config, ptr %config.i, i32 0, i32 4
  call void @hdmi_avi_infoframe_init(ptr noundef %avi_infoframe.i) #10
  %scan_mode.i = getelementptr inbounds %struct.adv7511_video_config, ptr %config.i, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %scan_mode.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %scan_mode.i, align 4
  br i1 %tobool6.not, label %if.else.i, label %if.end5.if.end18.i_crit_edge

if.end5.if.end18.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end5
  %csc_scaling_factor.i = getelementptr inbounds %struct.adv7511_video_config, ptr %config.i, i32 0, i32 1
  %22 = ptrtoint ptr %csc_scaling_factor.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %csc_scaling_factor.i, align 4
  %csc_coefficents.i = getelementptr inbounds %struct.adv7511_video_config, ptr %config.i, i32 0, i32 2
  %23 = ptrtoint ptr %csc_coefficents.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @adv7511_csc_ycbcr_to_rgb, ptr %csc_coefficents.i, align 4
  %color_formats.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 5
  %24 = ptrtoint ptr %color_formats.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %color_formats.i, align 4
  %and.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.else.i.if.end18.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %26 = ptrtoint ptr %hdmi_mode2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hdmi_mode2.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool9.not.i = icmp eq i8 %27, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %sw.bb24.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %land.lhs.true.i.if.end18.i_crit_edge, %if.else.i.if.end18.i_crit_edge, %if.end5.if.end18.i_crit_edge
  %storemerge = phi i8 [ 0, %if.end5.if.end18.i_crit_edge ], [ 1, %land.lhs.true.i.if.end18.i_crit_edge ], [ 1, %if.else.i.if.end18.i_crit_edge ]
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %storemerge, ptr %config.i, align 4
  %29 = ptrtoint ptr %hdmi_mode2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr = load i8, ptr %hdmi_mode2.i, align 4
  %colorspace13.i = getelementptr inbounds %struct.adv7511_video_config, ptr %config.i, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %colorspace13.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %colorspace13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool20.not.i = icmp eq i8 %.pr, 0
  %spec.select = select i1 %tobool20.not.i, i32 0, i32 2
  br label %if.end26.i

sw.bb24.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %config.i, align 4
  %colorspace13.i22 = getelementptr inbounds %struct.adv7511_video_config, ptr %config.i, i32 0, i32 4, i32 3
  %32 = ptrtoint ptr %colorspace13.i22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %colorspace13.i22, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %sw.bb24.i, %if.end18.i
  %output_format_422.0.off0.i = phi i32 [ 128, %sw.bb24.i ], [ 0, %if.end18.i ]
  %output_format_ycbcr.0.off0.i = phi i32 [ 1, %sw.bb24.i ], [ 0, %if.end18.i ]
  %mode.0.i = phi i32 [ 2, %sw.bb24.i ], [ %spec.select, %if.end18.i ]
  %regmap4.i.i = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 4
  %33 = ptrtoint ptr %regmap4.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap4.i.i, align 8
  %call.i1.i.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 68, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %35 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %config.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool28.not.i = icmp eq i8 %36, 0
  %csc_coefficents29.i = getelementptr inbounds %struct.adv7511_video_config, ptr %config.i, i32 0, i32 2
  %37 = ptrtoint ptr %csc_coefficents29.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %csc_coefficents29.i, align 4
  %csc_scaling_factor30.i = getelementptr inbounds %struct.adv7511_video_config, ptr %config.i, i32 0, i32 1
  %39 = ptrtoint ptr %csc_scaling_factor30.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %csc_scaling_factor30.i, align 4
  %41 = ptrtoint ptr %regmap4.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap4.i.i, align 8
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 26, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br i1 %tobool28.not.i, label %if.else.i.i, label %if.end26.i.for.body.i.i_crit_edge

if.end26.i.for.body.i.i_crit_edge:                ; preds = %if.end26.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end26.i.for.body.i.i_crit_edge
  %i.034.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end26.i.for.body.i.i_crit_edge ]
  %43 = ptrtoint ptr %regmap4.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap4.i.i, align 8
  %mul.i.i = shl nuw nsw i32 %i.034.i.i, 1
  %add.i.i = add nuw nsw i32 %mul.i.i, 24
  %arrayidx.i.i = getelementptr i16, ptr %38, i32 %i.034.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i.i, align 2
  %47 = lshr i16 %46, 8
  %48 = zext i16 %47 to i32
  %call.i30.i.i = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef %add.i.i, i32 noundef 31, i32 noundef %48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %49 = ptrtoint ptr %regmap4.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap4.i.i, align 8
  %add5.i.i = add nuw nsw i32 %mul.i.i, 25
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.i.i, align 2
  %53 = and i16 %52, 255
  %and.i.i = zext i16 %53 to i32
  %call8.i.i = call i32 @regmap_write(ptr noundef %50, i32 noundef %add5.i.i, i32 noundef %and.i.i) #10
  %inc.i.i = add nuw nsw i32 %i.034.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 12
  br i1 %exitcond.not.i.i, label %if.then10.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.then10.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %regmap4.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap4.i.i, align 8
  %shl.i.i = shl i32 %40, 5
  %or.i.i = or i32 %shl.i.i, 128
  %call.i31.i.i = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 24, i32 noundef 224, i32 noundef %or.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %adv7511_set_config_csc.exit

if.else.i.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %regmap4.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap4.i.i, align 8
  %call.i32.i.i = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 24, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %adv7511_set_config_csc.exit

adv7511_set_config_csc.exit:                      ; preds = %if.else.i.i, %if.then10.i.i
  %58 = getelementptr inbounds [17 x i8], ptr %infoframe.i, i32 0, i32 1
  %59 = ptrtoint ptr %regmap4.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap4.i.i, align 8
  %call.i33.i.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 26, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %61 = ptrtoint ptr %regmap4.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap4.i.i, align 8
  %or.i = or i32 %output_format_ycbcr.0.off0.i, %output_format_422.0.off0.i
  %call.i.i20 = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 22, i32 noundef 129, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %63 = ptrtoint ptr %regmap4.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap4.i.i, align 8
  %call.i48.i = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 175, i32 noundef 2, i32 noundef %mode.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call38.i = call i32 @hdmi_avi_infoframe_pack(ptr noundef %avi_infoframe.i, ptr noundef nonnull %infoframe.i, i32 noundef 17) #10
  %65 = ptrtoint ptr %regmap4.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap4.i.i, align 8
  %call41.i = call i32 @regmap_bulk_write(ptr noundef %66, i32 noundef 82, ptr noundef %58, i32 noundef 16) #10
  %67 = ptrtoint ptr %regmap4.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap4.i.i, align 8
  %call.i.i50.i = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 68, i32 noundef 16, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %infoframe.i) #10
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %config.i) #10
  %cec_adap = getelementptr inbounds %struct.adv7511, ptr %adv7511, i32 0, i32 32
  %69 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cec_adap, align 8
  call void @cec_s_phys_addr_from_edid(ptr noundef %70, ptr noundef %call1) #10
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_get_edid_block(ptr noundef %data, ptr nocapture noundef writeonly %buf, i32 noundef %block, i32 noundef %len) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %xfer = alloca [2 x %struct.i2c_msg], align 4
  %offset = alloca i8, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer) #10
  %0 = getelementptr inbounds i8, ptr %xfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp = icmp ugt i32 %len, 128
  br i1 %cmp, label %entry.cleanup57_crit_edge, label %if.end

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.end:                                           ; preds = %entry
  %current_edid_segment = getelementptr inbounds %struct.adv7511, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %current_edid_segment to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_edid_segment, align 4
  %div86 = lshr i32 %block, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div86)
  %cmp1.not = icmp eq i32 %3, %div86
  br i1 %cmp1.not, label %if.end.if.end46_crit_edge, label %if.then2

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4, !annotation !137
  %regmap = getelementptr inbounds %struct.adv7511, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 200, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then2.cleanup.thread_crit_edge, label %if.end5

if.then2.cleanup.thread_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end5:                                          ; preds = %if.then2
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp6.not = icmp eq i32 %8, 2
  br i1 %cmp6.not, label %if.end5.if.end14_crit_edge, label %if.then7

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then7:                                         ; preds = %if.end5
  %edid_read = getelementptr inbounds %struct.adv7511, ptr %data, i32 0, i32 14
  %9 = ptrtoint ptr %edid_read to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %edid_read, align 8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %call9 = call i32 @regmap_write(ptr noundef %11, i32 noundef 196, i32 noundef %block) #10
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 8
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %for.cond42.preheader.i, label %if.then.i

for.cond42.preheader.i:                           ; preds = %if.then7
  %call43.i = call fastcc i32 @adv7511_irq_process(ptr noundef %data, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.i = icmp slt i32 %call43.i, 0
  br i1 %cmp44.i, label %for.cond42.preheader.i.adv7511_wait_for_edid.exit_crit_edge, label %if.end46.i

for.cond42.preheader.i.adv7511_wait_for_edid.exit_crit_edge: ; preds = %for.cond42.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_wait_for_edid.exit

if.then.i:                                        ; preds = %if.then7
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 509) #10
  %16 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %edid_read, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not.i = icmp eq i8 %17, 0
  br i1 %tobool4.not.i, label %if.then11.i, label %if.then.i.if.end14_crit_edge

if.then.i.if.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11.i:                                      ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %18 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %wq.i = getelementptr inbounds %struct.adv7511, ptr %data, i32 0, i32 15
  %call147.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %19 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %edid_read, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not8.not.i = icmp eq i8 %20, 0
  br i1 %tobool17.not8.not.i, label %if.then11.i.if.end33.i_crit_edge, label %if.then11.i.for.end.i_crit_edge

if.then11.i.for.end.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then11.i.if.end33.i_crit_edge:                 ; preds = %if.then11.i
  br label %if.end33.i

if.end33.i:                                       ; preds = %cleanup.i.if.end33.i_crit_edge, %if.then11.i.if.end33.i_crit_edge
  %__ret12.111.i = phi i32 [ %__ret12.1.i, %cleanup.i.if.end33.i_crit_edge ], [ 20, %if.then11.i.if.end33.i_crit_edge ]
  %call1410.i = phi i32 [ %call14.i, %cleanup.i.if.end33.i_crit_edge ], [ %call147.i, %if.then11.i.if.end33.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1410.i)
  %tobool34.not.i = icmp eq i32 %call1410.i, 0
  br i1 %tobool34.not.i, label %cleanup.i, label %if.end33.i.__out.i_crit_edge

if.end33.i.__out.i_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out.i

cleanup.i:                                        ; preds = %if.end33.i
  %call37.i = call i32 @schedule_timeout(i32 noundef %__ret12.111.i) #10
  %call14.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %21 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %edid_read, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not.i = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool21.not.i = icmp eq i32 %call37.i, 0
  %spec.store.select56.i = select i1 %tobool21.not.i, i32 1, i32 %call37.i
  %__ret12.1.i = select i1 %tobool17.not.i, i32 %call37.i, i32 %spec.store.select56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1.i)
  %tobool27.not.i = icmp eq i32 %__ret12.1.i, 0
  %not.tobool17.not.i = xor i1 %tobool17.not.i, true
  %23 = select i1 %not.tobool17.not.i, i1 true, i1 %tobool27.not.i
  br i1 %23, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end33.i_crit_edge

cleanup.i.if.end33.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then11.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i) #10
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end33.i.__out.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %adv7511_wait_for_edid.exit

if.end46.i:                                       ; preds = %for.cond42.preheader.i
  %24 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %edid_read, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool48.not.i = icmp eq i8 %25, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.end46.i.if.end14_crit_edge

if.end46.i.if.end14_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end50.i:                                       ; preds = %if.end46.i
  call void @msleep(i32 noundef 25) #10
  %call43.1.i = call fastcc i32 @adv7511_irq_process(ptr noundef %data, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.1.i)
  %cmp44.1.i = icmp slt i32 %call43.1.i, 0
  br i1 %cmp44.1.i, label %if.end50.i.adv7511_wait_for_edid.exit_crit_edge, label %if.end46.1.i

if.end50.i.adv7511_wait_for_edid.exit_crit_edge:  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_wait_for_edid.exit

if.end46.1.i:                                     ; preds = %if.end50.i
  %26 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %edid_read, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool48.not.1.i = icmp eq i8 %27, 0
  br i1 %tobool48.not.1.i, label %if.end50.1.i, label %if.end46.1.i.if.end14_crit_edge

if.end46.1.i.if.end14_crit_edge:                  ; preds = %if.end46.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end50.1.i:                                     ; preds = %if.end46.1.i
  call void @msleep(i32 noundef 25) #10
  %call43.2.i = call fastcc i32 @adv7511_irq_process(ptr noundef %data, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.2.i)
  %cmp44.2.i = icmp slt i32 %call43.2.i, 0
  br i1 %cmp44.2.i, label %if.end50.1.i.adv7511_wait_for_edid.exit_crit_edge, label %if.end46.2.i

if.end50.1.i.adv7511_wait_for_edid.exit_crit_edge: ; preds = %if.end50.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_wait_for_edid.exit

if.end46.2.i:                                     ; preds = %if.end50.1.i
  %28 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %edid_read, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool48.not.2.i = icmp eq i8 %29, 0
  br i1 %tobool48.not.2.i, label %if.end50.2.i, label %if.end46.2.i.if.end14_crit_edge

if.end46.2.i.if.end14_crit_edge:                  ; preds = %if.end46.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end50.2.i:                                     ; preds = %if.end46.2.i
  call void @msleep(i32 noundef 25) #10
  %call43.3.i = call fastcc i32 @adv7511_irq_process(ptr noundef %data, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.3.i)
  %cmp44.3.i = icmp slt i32 %call43.3.i, 0
  br i1 %cmp44.3.i, label %if.end50.2.i.adv7511_wait_for_edid.exit_crit_edge, label %if.end46.3.i

if.end50.2.i.adv7511_wait_for_edid.exit_crit_edge: ; preds = %if.end50.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_wait_for_edid.exit

if.end46.3.i:                                     ; preds = %if.end50.2.i
  %30 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %edid_read, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool48.not.3.i = icmp eq i8 %31, 0
  br i1 %tobool48.not.3.i, label %if.end50.3.i, label %if.end46.3.i.if.end14_crit_edge

if.end46.3.i.if.end14_crit_edge:                  ; preds = %if.end46.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end50.3.i:                                     ; preds = %if.end46.3.i
  call void @msleep(i32 noundef 25) #10
  %call43.4.i = call fastcc i32 @adv7511_irq_process(ptr noundef %data, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.4.i)
  %cmp44.4.i = icmp slt i32 %call43.4.i, 0
  br i1 %cmp44.4.i, label %if.end50.3.i.adv7511_wait_for_edid.exit_crit_edge, label %if.end46.4.i

if.end50.3.i.adv7511_wait_for_edid.exit_crit_edge: ; preds = %if.end50.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_wait_for_edid.exit

if.end46.4.i:                                     ; preds = %if.end50.3.i
  %32 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %edid_read, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool48.not.4.i = icmp eq i8 %33, 0
  br i1 %tobool48.not.4.i, label %if.end50.4.i, label %if.end46.4.i.if.end14_crit_edge

if.end46.4.i.if.end14_crit_edge:                  ; preds = %if.end46.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end50.4.i:                                     ; preds = %if.end46.4.i
  call void @msleep(i32 noundef 25) #10
  %call43.5.i = call fastcc i32 @adv7511_irq_process(ptr noundef %data, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.5.i)
  %cmp44.5.i = icmp slt i32 %call43.5.i, 0
  br i1 %cmp44.5.i, label %if.end50.4.i.adv7511_wait_for_edid.exit_crit_edge, label %if.end46.5.i

if.end50.4.i.adv7511_wait_for_edid.exit_crit_edge: ; preds = %if.end50.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_wait_for_edid.exit

if.end46.5.i:                                     ; preds = %if.end50.4.i
  %34 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %edid_read, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool48.not.5.i = icmp eq i8 %35, 0
  br i1 %tobool48.not.5.i, label %if.end50.5.i, label %if.end46.5.i.if.end14_crit_edge

if.end46.5.i.if.end14_crit_edge:                  ; preds = %if.end46.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end50.5.i:                                     ; preds = %if.end46.5.i
  call void @msleep(i32 noundef 25) #10
  %call43.6.i = call fastcc i32 @adv7511_irq_process(ptr noundef %data, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.6.i)
  %cmp44.6.i = icmp slt i32 %call43.6.i, 0
  br i1 %cmp44.6.i, label %if.end50.5.i.adv7511_wait_for_edid.exit_crit_edge, label %if.end46.6.i

if.end50.5.i.adv7511_wait_for_edid.exit_crit_edge: ; preds = %if.end50.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_wait_for_edid.exit

if.end46.6.i:                                     ; preds = %if.end50.5.i
  %36 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %edid_read, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool48.not.6.i = icmp eq i8 %37, 0
  br i1 %tobool48.not.6.i, label %if.end50.6.i, label %if.end46.6.i.if.end14_crit_edge

if.end46.6.i.if.end14_crit_edge:                  ; preds = %if.end46.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end50.6.i:                                     ; preds = %if.end46.6.i
  call void @msleep(i32 noundef 25) #10
  %call43.7.i = call fastcc i32 @adv7511_irq_process(ptr noundef %data, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.7.i)
  %cmp44.7.i = icmp slt i32 %call43.7.i, 0
  br i1 %cmp44.7.i, label %if.end50.6.i.adv7511_wait_for_edid.exit_crit_edge, label %if.end46.7.i

if.end50.6.i.adv7511_wait_for_edid.exit_crit_edge: ; preds = %if.end50.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %adv7511_wait_for_edid.exit

if.end46.7.i:                                     ; preds = %if.end50.6.i
  %38 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %edid_read, align 8, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool48.not.7.i = icmp eq i8 %39, 0
  br i1 %tobool48.not.7.i, label %if.end50.7.i, label %if.end46.7.i.if.end14_crit_edge

if.end46.7.i.if.end14_crit_edge:                  ; preds = %if.end46.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end50.7.i:                                     ; preds = %if.end46.7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 25) #10
  br label %adv7511_wait_for_edid.exit

adv7511_wait_for_edid.exit:                       ; preds = %if.end50.7.i, %if.end50.6.i.adv7511_wait_for_edid.exit_crit_edge, %if.end50.5.i.adv7511_wait_for_edid.exit_crit_edge, %if.end50.4.i.adv7511_wait_for_edid.exit_crit_edge, %if.end50.3.i.adv7511_wait_for_edid.exit_crit_edge, %if.end50.2.i.adv7511_wait_for_edid.exit_crit_edge, %if.end50.1.i.adv7511_wait_for_edid.exit_crit_edge, %if.end50.i.adv7511_wait_for_edid.exit_crit_edge, %__out.i, %for.cond42.preheader.i.adv7511_wait_for_edid.exit_crit_edge
  %40 = ptrtoint ptr %edid_read to i32
  call void @__asan_load1_noabort(i32 %40)
  %.pr = load i8, ptr %edid_read, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool54.not.i = icmp eq i8 %.pr, 0
  br i1 %tobool54.not.i, label %adv7511_wait_for_edid.exit.cleanup.thread_crit_edge, label %adv7511_wait_for_edid.exit.if.end14_crit_edge

adv7511_wait_for_edid.exit.if.end14_crit_edge:    ; preds = %adv7511_wait_for_edid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

adv7511_wait_for_edid.exit.cleanup.thread_crit_edge: ; preds = %adv7511_wait_for_edid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end14:                                         ; preds = %adv7511_wait_for_edid.exit.if.end14_crit_edge, %if.end46.7.i.if.end14_crit_edge, %if.end46.6.i.if.end14_crit_edge, %if.end46.5.i.if.end14_crit_edge, %if.end46.4.i.if.end14_crit_edge, %if.end46.3.i.if.end14_crit_edge, %if.end46.2.i.if.end14_crit_edge, %if.end46.1.i.if.end14_crit_edge, %if.end46.i.if.end14_crit_edge, %if.then.i.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %i2c_edid = getelementptr inbounds %struct.adv7511, ptr %data, i32 0, i32 1
  %41 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_edid, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr, align 2
  %45 = ptrtoint ptr %xfer to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %xfer, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 1
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags, align 2
  %len18 = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 2
  %47 = ptrtoint ptr %len18 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %len18, align 4
  %buf20 = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 3
  %48 = ptrtoint ptr %buf20 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %offset, ptr %buf20, align 4
  %49 = load i16, ptr %addr, align 2
  %arrayidx23 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %arrayidx23, align 4
  %flags26 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %flags26 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %flags26, align 2
  %len28 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %len28 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 64, ptr %len28, align 4
  %edid_buf = getelementptr inbounds %struct.adv7511, ptr %data, i32 0, i32 13
  %buf30 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %buf30 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %edid_buf, ptr %buf30, align 4
  %54 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %offset, align 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 3
  %55 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter, align 8
  %call34 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %xfer, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end14.cleanup.thread_crit_edge, label %if.else

if.end14.cleanup.thread_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call34)
  %cmp37.not = icmp eq i32 %call34, 2
  br i1 %cmp37.not, label %if.end40, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end40:                                         ; preds = %if.else
  %57 = ptrtoint ptr %buf30 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf30, align 4
  %add.ptr = getelementptr i8, ptr %58, i32 64
  store ptr %add.ptr, ptr %buf30, align 4
  %59 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %offset, align 1
  %add = add i8 %60, 64
  store i8 %add, ptr %offset, align 1
  %61 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c_edid, align 4
  %adapter.1 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %adapter.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter.1, align 8
  %call34.1 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %xfer, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.1)
  %cmp35.1 = icmp slt i32 %call34.1, 0
  br i1 %cmp35.1, label %if.end40.cleanup.thread_crit_edge, label %if.else.1

if.end40.cleanup.thread_crit_edge:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.else.1:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call34.1)
  %cmp37.not.1 = icmp eq i32 %call34.1, 2
  br i1 %cmp37.not.1, label %if.end40.1, label %if.else.1.cleanup.thread_crit_edge

if.else.1.cleanup.thread_crit_edge:               ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end40.1:                                       ; preds = %if.else.1
  %65 = ptrtoint ptr %buf30 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buf30, align 4
  %add.ptr.1 = getelementptr i8, ptr %66, i32 64
  store ptr %add.ptr.1, ptr %buf30, align 4
  %67 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %offset, align 1
  %add.1 = add i8 %68, 64
  store i8 %add.1, ptr %offset, align 1
  %69 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c_edid, align 4
  %adapter.2 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %adapter.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter.2, align 8
  %call34.2 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %xfer, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.2)
  %cmp35.2 = icmp slt i32 %call34.2, 0
  br i1 %cmp35.2, label %if.end40.1.cleanup.thread_crit_edge, label %if.else.2

if.end40.1.cleanup.thread_crit_edge:              ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.else.2:                                        ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call34.2)
  %cmp37.not.2 = icmp eq i32 %call34.2, 2
  br i1 %cmp37.not.2, label %if.end40.2, label %if.else.2.cleanup.thread_crit_edge

if.else.2.cleanup.thread_crit_edge:               ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end40.2:                                       ; preds = %if.else.2
  %73 = ptrtoint ptr %buf30 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buf30, align 4
  %add.ptr.2 = getelementptr i8, ptr %74, i32 64
  store ptr %add.ptr.2, ptr %buf30, align 4
  %75 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %offset, align 1
  %add.2 = add i8 %76, 64
  store i8 %add.2, ptr %offset, align 1
  %77 = ptrtoint ptr %i2c_edid to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c_edid, align 4
  %adapter.3 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %adapter.3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adapter.3, align 8
  %call34.3 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %xfer, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.3)
  %cmp35.3 = icmp slt i32 %call34.3, 0
  br i1 %cmp35.3, label %if.end40.2.cleanup.thread_crit_edge, label %if.else.3

if.end40.2.cleanup.thread_crit_edge:              ; preds = %if.end40.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.else.3:                                        ; preds = %if.end40.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call34.3)
  %cmp37.not.3 = icmp eq i32 %call34.3, 2
  br i1 %cmp37.not.3, label %if.end40.3, label %if.else.3.cleanup.thread_crit_edge

if.else.3.cleanup.thread_crit_edge:               ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end40.3:                                       ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %current_edid_segment to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div86, ptr %current_edid_segment, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  br label %if.end46

cleanup.thread:                                   ; preds = %if.else.3.cleanup.thread_crit_edge, %if.end40.2.cleanup.thread_crit_edge, %if.else.2.cleanup.thread_crit_edge, %if.end40.1.cleanup.thread_crit_edge, %if.else.1.cleanup.thread_crit_edge, %if.end40.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge, %if.end14.cleanup.thread_crit_edge, %adv7511_wait_for_edid.exit.cleanup.thread_crit_edge, %if.then2.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -5, %adv7511_wait_for_edid.exit.cleanup.thread_crit_edge ], [ %call, %if.then2.cleanup.thread_crit_edge ], [ -5, %if.else.cleanup.thread_crit_edge ], [ %call34, %if.end14.cleanup.thread_crit_edge ], [ %call34.1, %if.end40.cleanup.thread_crit_edge ], [ -5, %if.else.1.cleanup.thread_crit_edge ], [ %call34.2, %if.end40.1.cleanup.thread_crit_edge ], [ -5, %if.else.2.cleanup.thread_crit_edge ], [ %call34.3, %if.end40.2.cleanup.thread_crit_edge ], [ -5, %if.else.3.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  br label %cleanup57

if.end46:                                         ; preds = %if.end40.3, %if.end.if.end46_crit_edge
  %rem = and i32 %block, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp47 = icmp eq i32 %rem, 0
  br i1 %cmp47, label %if.then49, label %if.else52

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %edid_buf50 = getelementptr inbounds %struct.adv7511, ptr %data, i32 0, i32 13
  %82 = call ptr @memcpy(ptr %buf, ptr %edid_buf50, i32 %len)
  br label %cleanup57

if.else52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr55 = getelementptr %struct.adv7511, ptr %data, i32 0, i32 13, i32 128
  %83 = call ptr @memcpy(ptr %buf, ptr %add.ptr55, i32 %len)
  br label %cleanup57

cleanup57:                                        ; preds = %if.else52, %if.then49, %cleanup.thread, %entry.cleanup57_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup57_crit_edge ], [ 0, %if.else52 ], [ 0, %if.then49 ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_avi_infoframe_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7511_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %connector, i32 -800
  %call.i = tail call fastcc ptr @adv7511_get_edid(ptr noundef %add.ptr.i, ptr noundef %connector) #10
  %call1.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %call.i) #10
  %call2.i = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %call.i) #10
  tail call void @kfree(ptr noundef %call.i) #10
  ret i32 %call2.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adv7511_connector_mode_valid(ptr nocapture noundef readnone %connector, ptr nocapture noundef readonly %mode) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %1)
  %cmp.i = icmp sgt i32 %1, 165000
  %..i = select i1 %cmp.i, i32 15, i32 0
  ret i32 %..i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv7533_mode_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !30, !31, !33, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_adv7511__308_1375_adv7511_init6, !1, !"__initcall__kmod_adv7511__308_1375_adv7511_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1375, i32 1}
!2 = !{ptr @__exitcall_adv7511_exit, !3, !"__exitcall_adv7511_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1384, i32 1}
!4 = !{ptr @__UNIQUE_ID_author309, !5, !"__UNIQUE_ID_author309", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1386, i32 1}
!6 = !{ptr @__UNIQUE_ID_description310, !7, !"__UNIQUE_ID_description310", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1387, i32 1}
!8 = !{ptr @__UNIQUE_ID_file311, !9, !"__UNIQUE_ID_file311", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1388, i32 1}
!10 = !{ptr @__UNIQUE_ID_license312, !9, !"__UNIQUE_ID_license312", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1360, i32 11}
!13 = !{ptr @adv7511_driver, !14, !"adv7511_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1358, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1187, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @adv7511_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @adv7511_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1195, i32 50}
!25 = !{ptr @adv7511_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1206, i32 20}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1215, i32 2}
!30 = !{ptr @adv7511_probe.__UNIQUE_ID_ddebug307, !29, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1228, i32 52}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1238, i32 54}
!35 = !{ptr @adv7511_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1255, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @adv7511_probe.__key.12, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1258, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1075, i32 27}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1080, i32 36}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1084, i32 19}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1086, i32 24}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1088, i32 24}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1093, i32 36}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1097, i32 19}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1099, i32 24}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1101, i32 24}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1108, i32 34}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1116, i32 37}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1121, i32 20}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1124, i32 25}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1127, i32 25}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1138, i32 27}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1142, i32 52}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 959, i32 2}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 960, i32 2}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 961, i32 2}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 962, i32 2}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 963, i32 2}
!83 = !{ptr @adv7511_supply_names, !84, !"adv7511_supply_names", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 958, i32 27}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 970, i32 2}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 971, i32 2}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 972, i32 2}
!91 = !{ptr @adv7533_supply_names, !92, !"adv7533_supply_names", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 966, i32 27}
!93 = !{ptr @adv7511_regmap_config, !94, !"adv7511_regmap_config", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 119, i32 35}
!95 = !{ptr @adv7511_register_defaults, !96, !"adv7511_register_defaults", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 42, i32 22}
!97 = !{ptr @adv7511_fixed_registers, !98, !"adv7511_fixed_registers", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 26, i32 34}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1044, i32 57}
!101 = !{ptr @adv7511_init_cec_regmap._key, !102, !"_key", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1050, i32 20}
!103 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @adv7511_cec_regmap_config, !105, !"adv7511_cec_regmap_config", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1031, i32 35}
!106 = !{ptr @adv7511_set_link_config.input_styles, !107, !"input_styles", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 289, i32 28}
!108 = !{ptr @adv7511_bridge_funcs, !109, !"adv7511_bridge_funcs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 944, i32 38}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 845, i32 3}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 859, i32 3}
!114 = !{ptr @adv7511_connector_funcs, !115, !"adv7511_connector_funcs", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 830, i32 41}
!116 = !{ptr @adv7511_csc_ycbcr_to_rgb, !117, !"adv7511_csc_ycbcr_to_rgb", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 197, i32 23}
!118 = !{ptr @adv7511_connector_helper_funcs, !119, !"adv7511_connector_helper_funcs", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 817, i32 42}
!120 = !{ptr @adv7511_of_ids, !121, !"adv7511_of_ids", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1344, i32 34}
!122 = !{ptr @adv7511_i2c_ids, !123, !"adv7511_i2c_ids", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1334, i32 35}
!124 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1355, i32 17}
!126 = !{ptr @adv7533_dsi_driver, !127, !"adv7533_dsi_driver", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/bridge/adv7511/adv7511_drv.c", i32 1354, i32 31}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"auto-init"}
!138 = !{i64 2148757424, i64 2148757429, i64 2148757442, i64 2148757486, i64 2148757520, i64 2148757541}
!139 = !{i8 0, i8 2}
