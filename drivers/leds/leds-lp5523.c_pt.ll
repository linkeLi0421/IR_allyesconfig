; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lp5523.c_pt.bc'
source_filename = "../drivers/leds/leds-lp5523.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lp55xx_device_config = type { %struct.lp55xx_reg, %struct.lp55xx_reg, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lp55xx_reg = type { i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.lp55xx_chip = type { ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, [3 x %struct.lp55xx_engine], ptr }
%struct.lp55xx_engine = type { i32, i16 }
%struct.lp55xx_platform_data = type { ptr, i8, ptr, i8, ptr, ptr, i32, i32 }
%struct.lp55xx_led = type { i32, %struct.led_classdev, %struct.led_classdev_mc, i8, i8, i8, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_classdev_mc = type { %struct.led_classdev, i32, ptr }
%struct.mc_subled = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.lp55xx_led_config = type { ptr, ptr, i8, i8, i8, i32, i32, [10 x i32], [10 x i32] }

@__initcall__kmod_leds_lp5523__292_990_lp5523_driver_init6 = internal global ptr @lp5523_driver_init, section ".initcall6.init", align 4
@lp5523_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp5523_probe, ptr @lp5523_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_lp5523_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp5523_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp5523_driver_exit = internal global ptr @lp5523_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [59 x i8] c"leds_lp5523.author=Mathias Nyman <mathias.nyman@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [46 x i8] c"leds_lp5523.author=Milo Kim <milo.kim@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [42 x i8] c"leds_lp5523.description=LP5523 LED engine\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [42 x i8] c"leds_lp5523.file=drivers/leds/leds-lp5523\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [24 x i8] c"leds_lp5523.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lp5523x\00", [24 x i8] zeroinitializer }, align 32
@of_lp5523_leds_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lp5523\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp55231\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lp5523_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp5523\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lp55231\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lp5523_cfg = internal global { %struct.lp55xx_device_config, [60 x i8] } { %struct.lp55xx_device_config { %struct.lp55xx_reg { i8 61, i8 -1 }, %struct.lp55xx_reg { i8 0, i8 64 }, i32 9, ptr @lp5523_post_init_device, ptr @lp5523_led_brightness, ptr @lp5523_multicolor_brightness, ptr @lp5523_set_led_current, ptr @lp5523_firmware_loaded, ptr @lp5523_run_engine, ptr @lp5523_group }, [60 x i8] zeroinitializer }, align 32
@lp5523_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 909, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp5523_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lp5523.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp5523_probe._entry_ptr = internal global ptr @lp5523_probe._entry, section ".printk_index", align 4
@lp5523_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@lp5523_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 930, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s Programmable led chip found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lp5523_probe._entry_ptr.10 = internal global ptr @lp5523_probe._entry.7, section ".printk_index", align 4
@lp5523_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 938, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"registering sysfs failed\0A\00", [38 x i8] zeroinitializer }, align 32
@lp5523_probe._entry_ptr.13 = internal global ptr @lp5523_probe._entry.11, section ".printk_index", align 4
@lp5523_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lp5523_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lp5523_init_program_engine.pattern = internal constant { [3 x <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }>], [32 x i8] } { [3 x <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }>] [<{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 -100, i8 48, i8 -100, i8 -80, i8 -99, i8 -128, i8 -40, [25 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 -100, i8 64, i8 -100, i8 -64, i8 -99, i8 -128, i8 -40, [25 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 -100, i8 80, i8 -100, i8 -48, i8 -99, i8 -128, i8 -40, [25 x i8] zeroinitializer }>], [32 x i8] zeroinitializer }, align 32
@lp5523_init_program_engine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"could not configure LED engine, status = 0x%.2x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lp5523_init_program_engine\00", [37 x i8] zeroinitializer }, align 32
@lp5523_init_program_engine._entry_ptr = internal global ptr @lp5523_init_program_engine._entry, section ".printk_index", align 4
@lp5523_load_engine_and_select_page.page_sel = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\00\01\02", [28 x i8] zeroinitializer }, align 32
@lp5523_load_engine.mask = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\000\0C\03", [28 x i8] zeroinitializer }, align 32
@lp5523_load_engine.val = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\10\04\01", [28 x i8] zeroinitializer }, align 32
@lp5523_firmware_loaded._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 374, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"firmware data size overflow: %zu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lp5523_firmware_loaded\00", [41 x i8] zeroinitializer }, align 32
@lp5523_firmware_loaded._entry_ptr = internal global ptr @lp5523_firmware_loaded._entry, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%2s%n \00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%2x\00", [28 x i8] zeroinitializer }, align 32
@lp5523_update_program_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wrong pattern format\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lp5523_update_program_memory\00", [35 x i8] zeroinitializer }, align 32
@lp5523_update_program_memory._entry_ptr = internal global ptr @lp5523_update_program_memory._entry, section ".printk_index", align 4
@lp5523_stop_engine.mask = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\000\0C\03", [28 x i8] zeroinitializer }, align 32
@lp5523_attributes = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @dev_attr_engine1_mode, ptr @dev_attr_engine2_mode, ptr @dev_attr_engine3_mode, ptr @dev_attr_engine1_load, ptr @dev_attr_engine2_load, ptr @dev_attr_engine3_load, ptr @dev_attr_engine1_leds, ptr @dev_attr_engine2_leds, ptr @dev_attr_engine3_leds, ptr @dev_attr_selftest, ptr @dev_attr_master_fader1, ptr @dev_attr_master_fader2, ptr @dev_attr_master_fader3, ptr @dev_attr_master_fader_leds, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_engine1_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_engine1_mode, ptr @store_engine1_mode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine2_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_engine2_mode, ptr @store_engine2_mode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine3_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_engine3_mode, ptr @store_engine3_mode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine1_load = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_engine1_load }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine2_load = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_engine2_load }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine3_load = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_engine3_load }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine1_leds = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_engine1_leds, ptr @store_engine1_leds }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine2_leds = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_engine2_leds, ptr @store_engine2_leds }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine3_leds = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_engine3_leds, ptr @store_engine3_leds }, [36 x i8] zeroinitializer }, align 32
@dev_attr_selftest = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lp5523_selftest, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_master_fader1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_master_fader1, ptr @store_master_fader1 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_master_fader2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_master_fader2, ptr @store_master_fader2 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_master_fader3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_master_fader3, ptr @store_master_fader3 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_master_fader_leds = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_master_fader_leds, ptr @store_master_fader_leds }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine1_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"run\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"load\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"run\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"load\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine2_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine3_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine1_load\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine2_load\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine3_load\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine1_leds\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@lp5523_load_mux.mux_page = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\03\04\05", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine2_leds\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine3_leds\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"selftest\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LED %d FAIL\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FAIL\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"master_fader1\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"master_fader2\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"master_fader3\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"master_fader_leds\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 8, i64 10, i64 48, i64 49]
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"lp5523_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 980, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 982, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"of_lp5523_leds_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 971, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"lp5523_id\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 962, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"lp5523_cfg\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 868, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 909, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 922, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 930, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 938, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"lp5523_group\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 863, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 272, i32 18 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 314, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [9 x i8] c"page_sel\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 178, i32 18 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 158, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 164, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 373, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 338, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 342, i32 19 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 364, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 198, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"lp5523_attributes\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 845, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant [22 x i8] c"dev_attr_engine1_mode\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [22 x i8] c"dev_attr_engine2_mode\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"dev_attr_engine3_mode\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [22 x i8] c"dev_attr_engine1_load\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [22 x i8] c"dev_attr_engine2_load\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [22 x i8] c"dev_attr_engine3_load\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [22 x i8] c"dev_attr_engine1_leds\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [22 x i8] c"dev_attr_engine2_leds\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [22 x i8] c"dev_attr_engine3_leds\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"dev_attr_selftest\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [23 x i8] c"dev_attr_master_fader1\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [23 x i8] c"dev_attr_master_fader2\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [23 x i8] c"dev_attr_master_fader3\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [27 x i8] c"dev_attr_master_fader_leds\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 826, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 398, i32 23 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 400, i32 23 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 403, i32 23 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 422, i32 20 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 425, i32 27 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 429, i32 27 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 827, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 828, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 832, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 833, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 834, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 829, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 488, i32 22 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 473, i32 31 }
@___asan_gen_.246 = private unnamed_addr constant [9 x i8] c"mux_page\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 498, i32 18 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 830, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 831, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 835, i32 8 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 643, i32 30 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 656, i32 21 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 836, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 694, i32 22 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 838, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 840, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.277 = private constant [30 x i8] c"../drivers/leds/leds-lp5523.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 842, i32 8 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_lp5523_driver_exit, ptr @__initcall__kmod_leds_lp5523__292_990_lp5523_driver_init6, ptr @lp5523_driver_exit, ptr @lp5523_firmware_loaded._entry, ptr @lp5523_firmware_loaded._entry_ptr, ptr @lp5523_init_program_engine._entry, ptr @lp5523_init_program_engine._entry_ptr, ptr @lp5523_probe._entry, ptr @lp5523_probe._entry.11, ptr @lp5523_probe._entry.7, ptr @lp5523_probe._entry_ptr, ptr @lp5523_probe._entry_ptr.10, ptr @lp5523_probe._entry_ptr.13, ptr @lp5523_update_program_memory._entry, ptr @lp5523_update_program_memory._entry_ptr, ptr @lp5523_driver, ptr @.str, ptr @of_lp5523_leds_match, ptr @lp5523_id, ptr @lp5523_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lp5523_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @lp5523_group, ptr @lp5523_init_program_engine.pattern, ptr @.str.14, ptr @.str.15, ptr @lp5523_load_engine_and_select_page.page_sel, ptr @lp5523_load_engine.mask, ptr @lp5523_load_engine.val, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @lp5523_stop_engine.mask, ptr @lp5523_attributes, ptr @dev_attr_engine1_mode, ptr @dev_attr_engine2_mode, ptr @dev_attr_engine3_mode, ptr @dev_attr_engine1_load, ptr @dev_attr_engine2_load, ptr @dev_attr_engine3_load, ptr @dev_attr_engine1_leds, ptr @dev_attr_engine2_leds, ptr @dev_attr_engine3_leds, ptr @dev_attr_selftest, ptr @dev_attr_master_fader1, ptr @dev_attr_master_fader2, ptr @dev_attr_master_fader3, ptr @dev_attr_master_fader_leds, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @lp5523_load_mux.mux_page, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lp5523_leds_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_init_program_engine.pattern to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_init_program_engine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_load_engine_and_select_page.page_sel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_load_engine.mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_load_engine.val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_firmware_loaded._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_update_program_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_stop_engine.mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_attributes to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine1_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine2_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine3_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine1_load to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine2_load to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine3_load to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine1_leds to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine2_leds to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine3_leds to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_selftest to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_master_fader1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_master_fader2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_master_fader3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_master_fader_leds to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5523_load_mux.mux_page to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5523_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp5523_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp5523_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @lp5523_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5523_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dev_of_node.exit.cleanup_crit_edge, label %if.end

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %dev_of_node.exit
  %cfg = getelementptr inbounds %struct.lp55xx_chip, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @lp5523_cfg, ptr %cfg, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.then6, label %if.end.devm_kcalloc.exit_crit_edge

if.end.devm_kcalloc.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %devm_kcalloc.exit

if.then6:                                         ; preds = %if.end
  %tobool7.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool7.not, label %do.end, label %if.then8

if.then8:                                         ; preds = %if.then6
  %call10 = tail call ptr @lp55xx_of_populate_pdata(ptr noundef %dev, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %call.i) #10
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.then8.devm_kcalloc.exit_crit_edge

if.then8.devm_kcalloc.exit_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %devm_kcalloc.exit

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then8.devm_kcalloc.exit_crit_edge, %if.end.devm_kcalloc.exit_crit_edge
  %pdata.0 = phi ptr [ %1, %if.end.devm_kcalloc.exit_crit_edge ], [ %call10, %if.then8.devm_kcalloc.exit_crit_edge ]
  %num_channels = getelementptr inbounds %struct.lp55xx_platform_data, ptr %pdata.0, i32 0, i32 1
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_channels, align 4
  %conv = zext i8 %7 to i32
  %8 = mul nuw nsw i32 %conv, 820
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3520) #10
  %tobool20.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool20.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end22

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %devm_kcalloc.exit
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %call.i, align 4
  %pdata23 = getelementptr inbounds %struct.lp55xx_chip, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdata23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdata.0, ptr %pdata23, align 4
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @lp5523_probe.__key) #10
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %driver_data.i.i, align 4
  %call27 = tail call i32 @lp55xx_init_device(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end33, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end33:                                         ; preds = %if.end22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %id) #13
  %call35 = tail call i32 @lp55xx_register_leds(ptr noundef nonnull %call5.i.i, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %do.end33.err_out_crit_edge

do.end33.err_out_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end38:                                         ; preds = %do.end33
  %call39 = tail call i32 @lp55xx_register_sysfs(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %do.end44

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  br label %err_out

err_out:                                          ; preds = %do.end44, %do.end33.err_out_crit_edge
  %ret.0 = phi i32 [ %call35, %do.end33.err_out_crit_edge ], [ %call39, %do.end44 ]
  tail call void @lp55xx_deinit_device(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end38.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %do.end, %if.then12, %dev_of_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then12 ], [ -22, %do.end ], [ -12, %dev_of_node.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ %call27, %if.end22.cleanup_crit_edge ], [ %ret.0, %err_out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5523_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %call.i = tail call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  tail call void @lp55xx_unregister_sysfs(ptr noundef %3) #10
  tail call void @lp55xx_deinit_device(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lp55xx_of_populate_pdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_init_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_register_leds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_register_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lp55xx_deinit_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5523_post_init_device(ptr noundef %chip) #2 align 64 {
entry:
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %call1 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 54, i8 noundef zeroext 126) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 4, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 5, i8 noundef zeroext -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #10
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status.i, align 1, !annotation !152
  %call.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 76, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.lp5523_init_program_engine.exit_crit_edge

if.end12.lp5523_init_program_engine.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %lp5523_init_program_engine.exit

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 77, i8 noundef zeroext 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.lp5523_init_program_engine.exit_crit_edge

if.end.i.lp5523_init_program_engine.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lp5523_init_program_engine.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 78, i8 noundef zeroext 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %for.cond.preheader.i, label %if.end4.i.lp5523_init_program_engine.exit_crit_edge

if.end4.i.lp5523_init_program_engine.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lp5523_init_program_engine.exit

for.cond.preheader.i:                             ; preds = %if.end4.i
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 6
  %1 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %engine_idx.i, align 4
  %call.i.i.i = tail call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 48, i8 noundef zeroext 16) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %call.i.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 79, i8 noundef zeroext 0) #10
  br label %for.body11.i

for.cond9.i:                                      ; preds = %for.body11.i
  %inc.i = add nuw nsw i32 %j.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc17.i, label %for.cond9.i.for.body11.i_crit_edge

for.cond9.i.for.body11.i_crit_edge:               ; preds = %for.cond9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.cond9.i.for.body11.i_crit_edge, %for.cond.preheader.i
  %j.059.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.cond9.i.for.body11.i_crit_edge ]
  %2 = trunc i32 %j.059.i to i8
  %conv.i = add i8 %2, 80
  %arrayidx12.i = getelementptr [3 x [32 x i8]], ptr @lp5523_init_program_engine.pattern, i32 0, i32 0, i32 %j.059.i
  %3 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx12.i, align 1
  %call13.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext %conv.i, i8 noundef zeroext %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %for.cond9.i, label %for.body11.i.out.i_crit_edge

for.body11.i.out.i_crit_edge:                     ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.inc17.i:                                      ; preds = %for.cond9.i
  %5 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %engine_idx.i, align 4
  %call.i.i.1.i = tail call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 12, i8 noundef zeroext 4) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %call.i.1.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 79, i8 noundef zeroext 1) #10
  br label %for.body11.1.i

for.body11.1.i:                                   ; preds = %for.cond9.1.i.for.body11.1.i_crit_edge, %for.inc17.i
  %j.059.1.i = phi i32 [ 0, %for.inc17.i ], [ %inc.1.i, %for.cond9.1.i.for.body11.1.i_crit_edge ]
  %6 = trunc i32 %j.059.1.i to i8
  %conv.1.i = add i8 %6, 80
  %arrayidx12.1.i = getelementptr [3 x [32 x i8]], ptr @lp5523_init_program_engine.pattern, i32 0, i32 1, i32 %j.059.1.i
  %7 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12.1.i, align 1
  %call13.1.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext %conv.1.i, i8 noundef zeroext %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1.i)
  %tobool14.not.1.i = icmp eq i32 %call13.1.i, 0
  br i1 %tobool14.not.1.i, label %for.cond9.1.i, label %for.body11.1.i.out.i_crit_edge

for.body11.1.i.out.i_crit_edge:                   ; preds = %for.body11.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.cond9.1.i:                                    ; preds = %for.body11.1.i
  %inc.1.i = add nuw nsw i32 %j.059.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 32
  br i1 %exitcond.1.not.i, label %for.inc17.1.i, label %for.cond9.1.i.for.body11.1.i_crit_edge

for.cond9.1.i.for.body11.1.i_crit_edge:           ; preds = %for.cond9.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.1.i

for.inc17.1.i:                                    ; preds = %for.cond9.1.i
  %9 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %engine_idx.i, align 4
  %call.i.i.2.i = tail call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 3, i8 noundef zeroext 1) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %call.i.2.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 79, i8 noundef zeroext 2) #10
  br label %for.body11.2.i

for.body11.2.i:                                   ; preds = %for.cond9.2.i.for.body11.2.i_crit_edge, %for.inc17.1.i
  %j.059.2.i = phi i32 [ 0, %for.inc17.1.i ], [ %inc.2.i, %for.cond9.2.i.for.body11.2.i_crit_edge ]
  %10 = trunc i32 %j.059.2.i to i8
  %conv.2.i = add i8 %10, 80
  %arrayidx12.2.i = getelementptr [3 x [32 x i8]], ptr @lp5523_init_program_engine.pattern, i32 0, i32 2, i32 %j.059.2.i
  %11 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12.2.i, align 1
  %call13.2.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext %conv.2.i, i8 noundef zeroext %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.2.i)
  %tobool14.not.2.i = icmp eq i32 %call13.2.i, 0
  br i1 %tobool14.not.2.i, label %for.cond9.2.i, label %for.body11.2.i.out.i_crit_edge

for.body11.2.i.out.i_crit_edge:                   ; preds = %for.body11.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.cond9.2.i:                                    ; preds = %for.body11.2.i
  %inc.2.i = add nuw nsw i32 %j.059.2.i, 1
  %exitcond.2.not.i = icmp eq i32 %inc.2.i, 32
  br i1 %exitcond.2.not.i, label %for.inc17.2.i, label %for.cond9.2.i.for.body11.2.i_crit_edge

for.cond9.2.i.for.body11.2.i_crit_edge:           ; preds = %for.cond9.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.2.i

for.inc17.2.i:                                    ; preds = %for.cond9.2.i
  tail call void @lp5523_run_engine(ptr noundef %chip, i1 noundef zeroext true) #10
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #10
  %call20.i = call i32 @lp55xx_read(ptr noundef %chip, i8 noundef zeroext 58, ptr noundef nonnull %status.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %for.inc17.2.i.out.i_crit_edge

for.inc17.2.i.out.i_crit_edge:                    ; preds = %for.inc17.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end23.i:                                       ; preds = %for.inc17.2.i
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status.i, align 1
  %15 = and i8 %14, 7
  store i8 %15, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp27.not.i = icmp eq i8 %15, 7
  br i1 %cmp27.not.i, label %if.end23.i.out.i_crit_edge, label %do.end.i

if.end23.i.out.i_crit_edge:                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.end.i:                                         ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %conv26.i) #13
  br label %out.i

out.i:                                            ; preds = %do.end.i, %if.end23.i.out.i_crit_edge, %for.inc17.2.i.out.i_crit_edge, %for.body11.2.i.out.i_crit_edge, %for.body11.1.i.out.i_crit_edge, %for.body11.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call20.i, %for.inc17.2.i.out.i_crit_edge ], [ -1, %do.end.i ], [ 0, %if.end23.i.out.i_crit_edge ], [ %call13.2.i, %for.body11.2.i.out.i_crit_edge ], [ %call13.1.i, %for.body11.1.i.out.i_crit_edge ], [ %call13.i, %for.body11.i.out.i_crit_edge ]
  %call.i58.i = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  br label %lp5523_init_program_engine.exit

lp5523_init_program_engine.exit:                  ; preds = %out.i, %if.end4.i.lp5523_init_program_engine.exit_crit_edge, %if.end.i.lp5523_init_program_engine.exit_crit_edge, %if.end12.lp5523_init_program_engine.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ %call.i, %if.end12.lp5523_init_program_engine.exit_crit_edge ], [ %call1.i, %if.end.i.lp5523_init_program_engine.exit_crit_edge ], [ %call5.i, %if.end4.i.lp5523_init_program_engine.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #10
  br label %cleanup

cleanup:                                          ; preds = %lp5523_init_program_engine.exit, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %lp5523_init_program_engine.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5523_led_brightness(ptr nocapture noundef readonly %led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 6
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led, align 4
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, 22
  %brightness = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 5
  %5 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %brightness, align 2
  %call = tail call i32 @lp55xx_write(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %6) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5523_multicolor_brightness(ptr nocapture noundef readonly %led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 6
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %subled_info = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 2, i32 2
  %num_colors = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_colors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.018, 1
  %4 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_colors, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %subled_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subled_info, align 4
  %channel = getelementptr %struct.mc_subled, ptr %7, i32 %i.018, i32 3
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %10 = trunc i32 %9 to i8
  %conv = add i8 %10, 22
  %brightness = getelementptr %struct.mc_subled, ptr %7, i32 %i.018, i32 1
  %11 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %brightness, align 4
  %conv6 = trunc i32 %12 to i8
  %call = tail call i32 @lp55xx_write(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ -1, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp5523_set_led_current(ptr nocapture noundef %led, i8 noundef zeroext %led_current) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %led_current1 = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 3
  %0 = ptrtoint ptr %led_current1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %led_current, ptr %led_current1, align 4
  %chip = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 6
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %led, align 4
  %5 = trunc i32 %4 to i8
  %conv = add i8 %5, 38
  %call = tail call i32 @lp55xx_write(ptr noundef %2, i8 noundef zeroext %conv, i8 noundef zeroext %led_current) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp5523_firmware_loaded(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp ugt i32 %3, 32
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %engine_idx.i, align 4
  %arrayidx.i.i = getelementptr [4 x i8], ptr @lp5523_load_engine.mask, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr [4 x i8], ptr @lp5523_load_engine.val, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i.i, align 1
  %call.i.i = tail call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext %9, i8 noundef zeroext %11) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %arrayidx.i = getelementptr [4 x i8], ptr @lp5523_load_engine_and_select_page.page_sel, i32 0, i32 %7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 79, i8 noundef zeroext %13) #10
  %data = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %call = tail call fastcc i32 @lp5523_update_program_memory(ptr noundef %chip, ptr noundef %15, i32 noundef %17)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp5523_run_engine(ptr noundef %chip, i1 noundef zeroext %start) #2 align 64 {
entry:
  %mode = alloca i8, align 1
  %exec = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #10
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mode, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exec) #10
  %1 = ptrtoint ptr %exec to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %exec, align 1, !annotation !152
  br i1 %start, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %engine_idx.i, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @lp5523_stop_engine.mask, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext %5, i8 noundef zeroext 0) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %call.i56 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 0) #10
  %call.1.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 23, i8 noundef zeroext 0) #10
  %call.2.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 24, i8 noundef zeroext 0) #10
  %call.3.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 25, i8 noundef zeroext 0) #10
  %call.4.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 26, i8 noundef zeroext 0) #10
  %call.5.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 27, i8 noundef zeroext 0) #10
  %call.6.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 28, i8 noundef zeroext 0) #10
  %call.7.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 29, i8 noundef zeroext 0) #10
  %call.8.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 30, i8 noundef zeroext 0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @lp55xx_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @lp55xx_read(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %exec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 1
  %8 = and i8 %7, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp = icmp eq i8 %8, 16
  br i1 %cmp, label %if.then9, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %and11 = and i8 %7, -49
  %or = or i8 %and11, 32
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %or, ptr %mode, align 1
  %10 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exec, align 1
  %12 = and i8 %11, -49
  %13 = or i8 %12, 32
  store i8 %13, ptr %exec, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.end7.if.end17_crit_edge
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mode, align 1
  %16 = and i8 %15, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp20 = icmp eq i8 %16, 4
  br i1 %cmp20, label %if.then22, label %if.end17.if.end31_crit_edge

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %and24 = and i8 %15, -13
  %or25 = or i8 %and24, 8
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or25, ptr %mode, align 1
  %18 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %exec, align 1
  %20 = and i8 %19, -13
  %21 = or i8 %20, 8
  store i8 %21, ptr %exec, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %if.end17.if.end31_crit_edge
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mode, align 1
  %24 = and i8 %23, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp34 = icmp eq i8 %24, 1
  br i1 %cmp34, label %if.then36, label %if.end31.if.end45_crit_edge

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %and38 = and i8 %23, -4
  %or39 = or i8 %and38, 2
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %or39, ptr %mode, align 1
  %26 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %exec, align 1
  %28 = and i8 %27, -4
  %29 = or i8 %28, 2
  store i8 %29, ptr %exec, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %if.end31.if.end45_crit_edge
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode, align 1
  %call46 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext %31) #10
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %32 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %exec, align 1
  %call47 = call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 63, i8 noundef zeroext %33) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exec) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_update_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lp5523_update_program_memory(ptr noundef %chip, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %pattern = alloca [32 x i8], align 1
  %cmd = alloca i32, align 4
  %c = alloca [3 x i8], align 1
  %nrchars = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pattern) #10
  %0 = call ptr @memset(ptr %pattern, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #10
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cmd, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %c) #10
  %2 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %c, align 1, !annotation !152
  %3 = getelementptr inbounds [3 x i8], ptr %c, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !152
  %5 = getelementptr inbounds [3 x i8], ptr %c, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrchars) #10
  %7 = ptrtoint ptr %nrchars to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %nrchars, align 4, !annotation !152
  %sub = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp40.not = icmp eq i32 %sub, 0
  br i1 %cmp40.not, label %entry.for.body.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %entry.while.body_crit_edge
  %i.042 = phi i32 [ %inc, %if.end7.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %offset.041 = phi i32 [ %add, %if.end7.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %data, i32 %offset.041
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr, ptr noundef nonnull @.str.18, ptr noundef nonnull %c, ptr noundef nonnull %nrchars)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2.not = icmp eq i32 %call, 1
  br i1 %cmp2.not, label %if.end, label %while.body.do.end_crit_edge

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %while.body
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %c, ptr noundef nonnull @.str.19, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 1
  br i1 %cmp5.not, label %if.end7, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 4
  %conv = trunc i32 %9 to i8
  %arrayidx = getelementptr [32 x i8], ptr %pattern, i32 0, i32 %i.042
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %nrchars to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nrchars, align 4
  %add = add i32 %12, %offset.041
  %inc = add nuw nsw i32 %i.042, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp = icmp ult i32 %add, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.042)
  %cmp1 = icmp ult i32 %i.042, 31
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.end7.while.body_crit_edge, label %while.end

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end7
  %phi.bo = and i32 %inc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br i1 %phi.cmp, label %while.end.for.body.preheader_crit_edge, label %while.end.do.end_crit_edge

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

while.end.for.body.preheader_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

for.body.preheader:                               ; preds = %while.end.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc19 = add nuw nsw i32 %i.143, 1
  %exitcond.not = icmp eq i32 %inc19, 32
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.143 = phi i32 [ %inc19, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %13 = trunc i32 %i.143 to i8
  %conv13 = add i8 %13, 80
  %arrayidx14 = getelementptr [32 x i8], ptr %pattern, i32 0, i32 %i.143
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 1
  %call15 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext %conv13, i8 noundef zeroext %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %while.end.do.end_crit_edge, %if.end.do.end_crit_edge, %while.body.do.end_crit_edge
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %size, %for.cond.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrchars) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %c) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pattern) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_engine1_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %arrayidx.i = getelementptr %struct.lp55xx_chip, ptr %3, i32 0, i32 7, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.23, i32 5)
  br label %show_engine_mode.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.24, i32 6)
  br label %show_engine_mode.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.25, i32 10)
  br label %show_engine_mode.exit

show_engine_mode.exit:                            ; preds = %sw.default.i, %sw.bb4.i, %sw.bb.i
  %retval.0.i = phi i32 [ 9, %sw.default.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine1_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_engine_mode(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i32 noundef 1)
  ret i32 %len
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @store_engine_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf, i32 noundef returned %len, i32 noundef %nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %sub = add i32 %nr, -1
  %arrayidx = getelementptr %struct.lp55xx_chip, ptr %3, i32 0, i32 7, i32 %sub
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %engine_idx = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %engine_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nr, ptr %engine_idx, align 4
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.26, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lp5523_run_engine(ptr noundef %3, i1 noundef zeroext true)
  br label %if.end13.sink.split

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.27, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [4 x i8], ptr @lp5523_stop_engine.mask, i32 0, i32 %nr
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %6, i8 noundef zeroext 0) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %7 = ptrtoint ptr %engine_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %engine_idx, align 4
  %arrayidx.i2 = getelementptr [4 x i8], ptr @lp5523_load_engine.mask, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i2, align 1
  %arrayidx1.i = getelementptr [4 x i8], ptr @lp5523_load_engine.val, i32 0, i32 %8
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i, align 1
  %call.i3 = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %10, i8 noundef zeroext %12) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  br label %if.end13.sink.split

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(9) @.str.28, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else7.if.end13_crit_edge

if.else7.if.end13_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i5 = getelementptr [4 x i8], ptr @lp5523_stop_engine.mask, i32 0, i32 %nr
  %13 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i5, align 1
  %call.i6 = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %14, i8 noundef zeroext 0) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.then10, %if.then5, %if.then
  %.sink = phi i32 [ 1, %if.then5 ], [ 0, %if.then10 ], [ 2, %if.then ]
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %arrayidx, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else7.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %len
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_engine2_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %arrayidx.i = getelementptr %struct.lp55xx_chip, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %5, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.23, i32 5)
  br label %show_engine_mode.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.24, i32 6)
  br label %show_engine_mode.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.25, i32 10)
  br label %show_engine_mode.exit

show_engine_mode.exit:                            ; preds = %sw.default.i, %sw.bb4.i, %sw.bb.i
  %retval.0.i = phi i32 [ 9, %sw.default.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine2_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_engine_mode(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i32 noundef 2)
  ret i32 %len
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_engine3_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %arrayidx.i = getelementptr %struct.lp55xx_chip, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %5, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.23, i32 5)
  br label %show_engine_mode.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.24, i32 6)
  br label %show_engine_mode.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.25, i32 10)
  br label %show_engine_mode.exit

show_engine_mode.exit:                            ; preds = %sw.default.i, %sw.bb4.i, %sw.bb.i
  %retval.0.i = phi i32 [ 9, %sw.default.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine3_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_engine_mode(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i32 noundef 3)
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine1_load(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %engine_idx.i, align 4
  %call.i.i.i = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 48, i8 noundef zeroext 16) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %call.i.i = tail call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 79, i8 noundef zeroext 0) #10
  %call2.i = tail call fastcc i32 @lp5523_update_program_memory(ptr noundef %3, ptr noundef %buf, i32 noundef %len) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine2_load(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %engine_idx.i, align 4
  %call.i.i.i = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 12, i8 noundef zeroext 4) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %call.i.i = tail call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 79, i8 noundef zeroext 1) #10
  %call2.i = tail call fastcc i32 @lp5523_update_program_memory(ptr noundef %3, ptr noundef %buf, i32 noundef %len) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine3_load(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %engine_idx.i, align 4
  %call.i.i.i = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 3, i8 noundef zeroext 1) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %call.i.i = tail call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 79, i8 noundef zeroext 2) #10
  %call2.i = tail call fastcc i32 @lp5523_update_program_memory(ptr noundef %3, ptr noundef %buf, i32 noundef %len) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  ret i32 %call2.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_engine1_leds(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @show_engine_leds(ptr noundef %dev, ptr noundef %buf, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine1_leds(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_engine_leds(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @show_engine_leds(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %buf, i32 noundef %nr) unnamed_addr #8 align 64 {
entry:
  %mux = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %mux) #10
  %sub = add i32 %nr, -1
  %led_mux = getelementptr %struct.lp55xx_chip, ptr %3, i32 0, i32 7, i32 %sub, i32 1
  %4 = call ptr @memset(ptr %mux, i32 255, i32 10)
  %5 = ptrtoint ptr %led_mux to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %led_mux, align 4
  %conv.i = zext i16 %6 to i32
  %7 = and i32 %conv.i, 1
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %mux, ptr noundef nonnull @.str.36, i32 noundef %7) #10
  %add.ptr.1.i = getelementptr i8, ptr %mux, i32 %call.i
  %8 = lshr i32 %conv.i, 1
  %9 = and i32 %8, 1
  %call.1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1.i, ptr noundef nonnull @.str.36, i32 noundef %9) #10
  %add.1.i = add i32 %call.1.i, %call.i
  %add.ptr.2.i = getelementptr i8, ptr %mux, i32 %add.1.i
  %10 = lshr i32 %conv.i, 2
  %11 = and i32 %10, 1
  %call.2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2.i, ptr noundef nonnull @.str.36, i32 noundef %11) #10
  %add.2.i = add i32 %call.2.i, %add.1.i
  %add.ptr.3.i = getelementptr i8, ptr %mux, i32 %add.2.i
  %12 = lshr i32 %conv.i, 3
  %13 = and i32 %12, 1
  %call.3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3.i, ptr noundef nonnull @.str.36, i32 noundef %13) #10
  %add.3.i = add i32 %call.3.i, %add.2.i
  %add.ptr.4.i = getelementptr i8, ptr %mux, i32 %add.3.i
  %14 = lshr i32 %conv.i, 4
  %15 = and i32 %14, 1
  %call.4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4.i, ptr noundef nonnull @.str.36, i32 noundef %15) #10
  %add.4.i = add i32 %call.4.i, %add.3.i
  %add.ptr.5.i = getelementptr i8, ptr %mux, i32 %add.4.i
  %16 = lshr i32 %conv.i, 5
  %17 = and i32 %16, 1
  %call.5.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5.i, ptr noundef nonnull @.str.36, i32 noundef %17) #10
  %add.5.i = add i32 %call.5.i, %add.4.i
  %add.ptr.6.i = getelementptr i8, ptr %mux, i32 %add.5.i
  %18 = lshr i32 %conv.i, 6
  %19 = and i32 %18, 1
  %call.6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.6.i, ptr noundef nonnull @.str.36, i32 noundef %19) #10
  %add.6.i = add i32 %call.6.i, %add.5.i
  %add.ptr.7.i = getelementptr i8, ptr %mux, i32 %add.6.i
  %20 = lshr i32 %conv.i, 7
  %21 = and i32 %20, 1
  %call.7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.7.i, ptr noundef nonnull @.str.36, i32 noundef %21) #10
  %add.7.i = add i32 %call.7.i, %add.6.i
  %add.ptr.8.i = getelementptr i8, ptr %mux, i32 %add.7.i
  %22 = lshr i32 %conv.i, 8
  %23 = and i32 %22, 1
  %call.8.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.8.i, ptr noundef nonnull @.str.36, i32 noundef %23) #10
  %add.8.i = add i32 %call.8.i, %add.7.i
  %arrayidx.i = getelementptr i8, ptr %mux, i32 %add.8.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx.i, align 1
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %mux)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %mux) #10
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @store_engine_leds(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf, i32 noundef %len, i32 noundef %nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %len, i32 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp115.not.i = icmp eq i32 %4, 0
  br i1 %cmp115.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %tmp_mux.016.i = phi i16 [ %tmp_mux.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.017.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %6, label %for.body.i.cleanup_crit_edge [
    i8 49, label %sw.bb.i
    i8 48, label %for.body.i.for.inc.i_crit_edge
    i8 10, label %sw.bb4.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw i32 1, %i.017.i
  %8 = trunc i32 %shl.i to i16
  %conv3.i = or i16 %tmp_mux.016.i, %8
  br label %for.inc.i

sw.bb4.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb4.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %tmp_mux.1.i = phi i16 [ %tmp_mux.016.i, %sw.bb4.i ], [ %tmp_mux.016.i, %for.body.i.for.inc.i_crit_edge ], [ %conv3.i, %sw.bb.i ]
  %i.1.i = phi i32 [ %4, %sw.bb4.i ], [ %i.017.i, %for.body.i.for.inc.i_crit_edge ], [ %i.017.i, %sw.bb.i ]
  %inc.i = add i32 %i.1.i, 1
  %cmp1.i = icmp ult i32 %inc.i, %4
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %mux.0.ph = phi i16 [ 0, %entry.if.end_crit_edge ], [ %tmp_mux.1.i, %for.inc.i.if.end_crit_edge ]
  %sub = add i32 %nr, -1
  %arrayidx = getelementptr %struct.lp55xx_chip, ptr %3, i32 0, i32 7, i32 %sub
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %engine_idx = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %engine_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %nr, ptr %engine_idx, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %if.end4, label %if.end.leave_crit_edge

if.end.leave_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end4:                                          ; preds = %if.end
  %arrayidx.i.i = getelementptr [4 x i8], ptr @lp5523_load_engine.mask, i32 0, i32 %nr
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr [4 x i8], ptr @lp5523_load_engine.val, i32 0, i32 %nr
  %14 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.i.i, align 1
  %call.i.i = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %13, i8 noundef zeroext %15) #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %arrayidx1.i = getelementptr [4 x i8], ptr @lp5523_load_mux.mux_page, i32 0, i32 %nr
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.i, align 1
  %call.i = tail call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 79, i8 noundef zeroext %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.leave_crit_edge

if.end4.leave_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end.i:                                         ; preds = %if.end4
  %18 = lshr i16 %mux.0.ph, 8
  %conv2.i = trunc i16 %18 to i8
  %call3.i = tail call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 80, i8 noundef zeroext %conv2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.leave_crit_edge

if.end.i.leave_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end6.i:                                        ; preds = %if.end.i
  %conv7.i = trunc i16 %mux.0.ph to i8
  %call8.i = tail call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 81, i8 noundef zeroext %conv7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %19, label %if.end6.i.leave_crit_edge

if.end6.i.leave_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

19:                                               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %led_mux.i = getelementptr %struct.lp55xx_chip, ptr %3, i32 0, i32 7, i32 %sub, i32 1
  %20 = ptrtoint ptr %led_mux.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %mux.0.ph, ptr %led_mux.i, align 4
  br label %leave

leave:                                            ; preds = %19, %if.end6.i.leave_crit_edge, %if.end.i.leave_crit_edge, %if.end4.leave_crit_edge, %if.end.leave_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.leave_crit_edge ], [ %len, %19 ], [ -22, %if.end4.leave_crit_edge ], [ -22, %if.end.i.leave_crit_edge ], [ -22, %if.end6.i.leave_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %leave, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %leave ], [ -22, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_engine2_leds(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @show_engine_leds(ptr noundef %dev, ptr noundef %buf, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine2_leds(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_engine_leds(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_engine3_leds(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @show_engine_leds(ptr noundef %dev, ptr noundef %buf, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine3_leds(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_engine_leds(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5523_selftest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %status = alloca i8, align 1
  %adc = alloca i8, align 1
  %vdd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %pdata2 = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #10
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %status, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %adc) #10
  %7 = ptrtoint ptr %adc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %adc, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vdd) #10
  %8 = ptrtoint ptr %vdd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %vdd, align 1, !annotation !152
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call3 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 58, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end:                                           ; preds = %entry
  %clock_mode = getelementptr inbounds %struct.lp55xx_platform_data, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %clock_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %clock_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp4 = icmp eq i8 %10, 2
  br i1 %cmp4, label %if.then6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status, align 1
  %13 = and i8 %12, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp8 = icmp eq i8 %13, 0
  br i1 %cmp8, label %if.then6.fail_crit_edge, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6.fail_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call13 = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 65, i8 noundef zeroext -112) #10
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #10
  %call14 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 58, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.fail_crit_edge, label %if.end18

if.end12.fail_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end18:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool.not = icmp sgt i8 %15, -1
  br i1 %tobool.not, label %if.then21, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %call23 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 66, ptr noundef nonnull %vdd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.fail_crit_edge, label %if.end27

if.end22.fail_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end27:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %vdd to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vdd, align 1
  %dec = add i8 %17, -1
  store i8 %dec, ptr %vdd, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end27
  %pos.0125 = phi i32 [ 0, %if.end27 ], [ %pos.2, %for.inc.for.body_crit_edge ]
  %i.0123 = phi i32 [ 0, %if.end27 ], [ %inc, %for.inc.for.body_crit_edge ]
  %led.0122 = phi ptr [ %1, %if.end27 ], [ %led.1, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %led_current = getelementptr %struct.lp55xx_led_config, ptr %19, i32 %i.0123, i32 3
  %20 = ptrtoint ptr %led_current to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %led_current, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp31 = icmp eq i8 %21, 0
  br i1 %cmp31, label %for.body.for.inc_crit_edge, label %if.end34

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end34:                                         ; preds = %for.body
  %22 = trunc i32 %i.0123 to i8
  %conv35 = add i8 %22, 38
  %call39 = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv35, i8 noundef zeroext %21) #10
  %conv41 = add i8 %22, 22
  %call42 = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv41, i8 noundef zeroext -1) #10
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #10
  %conv43 = or i8 %22, -128
  %call44 = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 65, i8 noundef zeroext %conv43) #10
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #10
  %call45 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 58, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end34.fail_crit_edge, label %if.end49

if.end34.fail_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end49:                                         ; preds = %if.end34
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool52.not = icmp sgt i8 %24, -1
  br i1 %tobool52.not, label %if.then53, label %if.end49.if.end54_crit_edge

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49.if.end54_crit_edge
  %call55 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 66, ptr noundef nonnull %adc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end54.fail_crit_edge, label %if.end59

if.end54.fail_crit_edge:                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end59:                                         ; preds = %if.end54
  %25 = ptrtoint ptr %adc to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %adc, align 1
  %27 = ptrtoint ptr %vdd to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vdd, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp62.not = icmp uge i8 %26, %28
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %26)
  %cmp65 = icmp ult i8 %26, 80
  %or.cond = or i1 %cmp65, %cmp62.not
  br i1 %or.cond, label %if.then67, label %if.end59.if.end71_crit_edge

if.end59.if.end71_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then67:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr68 = getelementptr i8, ptr %buf, i32 %pos.0125
  %call69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr68, ptr noundef nonnull @.str.40, i32 noundef %i.0123)
  %add70 = add i32 %call69, %pos.0125
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end59.if.end71_crit_edge
  %pos.1 = phi i32 [ %add70, %if.then67 ], [ %pos.0125, %if.end59.if.end71_crit_edge ]
  %call74 = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv41, i8 noundef zeroext 0) #10
  %led_current77 = getelementptr inbounds %struct.lp55xx_led, ptr %led.0122, i32 0, i32 3
  %29 = ptrtoint ptr %led_current77 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %led_current77, align 4
  %call78 = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv35, i8 noundef zeroext %30) #10
  %incdec.ptr = getelementptr %struct.lp55xx_led, ptr %led.0122, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.end71, %for.body.for.inc_crit_edge
  %led.1 = phi ptr [ %led.0122, %for.body.for.inc_crit_edge ], [ %incdec.ptr, %if.end71 ]
  %pos.2 = phi i32 [ %pos.0125, %for.body.for.inc_crit_edge ], [ %pos.1, %if.end71 ]
  %inc = add nuw nsw i32 %i.0123, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.2)
  %cmp79 = icmp eq i32 %pos.2, 0
  br i1 %cmp79, label %if.then81, label %for.end.release_lock_crit_edge

for.end.release_lock_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_lock

if.then81:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 1330317824, ptr %buf, align 1
  br label %release_lock

fail:                                             ; preds = %if.end54.fail_crit_edge, %if.end34.fail_crit_edge, %if.end22.fail_crit_edge, %if.end12.fail_crit_edge, %if.then6.fail_crit_edge, %entry.fail_crit_edge
  %32 = call ptr @memcpy(ptr %buf, ptr @.str.42, i32 6)
  br label %release_lock

release_lock:                                     ; preds = %fail, %if.then81, %for.end.release_lock_crit_edge
  %pos.3 = phi i32 [ 5, %fail ], [ 3, %if.then81 ], [ %pos.2, %for.end.release_lock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vdd) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %adc) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #10
  ret i32 %pos.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_master_fader1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val.i, align 1, !annotation !152
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %call2.i = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 72, ptr noundef nonnull %val.i) #10
  call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.show_master_fader.exit_crit_edge

entry.show_master_fader.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %show_master_fader.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %conv5.i = zext i8 %6 to i32
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %conv5.i) #10
  br label %show_master_fader.exit

show_master_fader.exit:                           ; preds = %if.then.i, %entry.show_master_fader.exit_crit_edge
  %ret.0.i = phi i32 [ %call6.i, %if.then.i ], [ %call2.i, %entry.show_master_fader.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_master_fader1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !152
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.store_master_fader.exit_crit_edge

entry.store_master_fader.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %store_master_fader.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %cmp.i = icmp ugt i32 %6, 255
  br i1 %cmp.i, label %if.end.i.store_master_fader.exit_crit_edge, label %if.end4.i

if.end.i.store_master_fader.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %store_master_fader.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %conv5.i = trunc i32 %8 to i8
  %call6.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 72, i8 noundef zeroext %conv5.i) #10
  call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp8.i = icmp eq i32 %call6.i, 0
  %spec.select.i = select i1 %cmp8.i, i32 %len, i32 %call6.i
  br label %store_master_fader.exit

store_master_fader.exit:                          ; preds = %if.end4.i, %if.end.i.store_master_fader.exit_crit_edge, %entry.store_master_fader.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end4.i ], [ -22, %entry.store_master_fader.exit_crit_edge ], [ -22, %if.end.i.store_master_fader.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_master_fader2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val.i, align 1, !annotation !152
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %call2.i = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 73, ptr noundef nonnull %val.i) #10
  call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.show_master_fader.exit_crit_edge

entry.show_master_fader.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %show_master_fader.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %conv5.i = zext i8 %6 to i32
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %conv5.i) #10
  br label %show_master_fader.exit

show_master_fader.exit:                           ; preds = %if.then.i, %entry.show_master_fader.exit_crit_edge
  %ret.0.i = phi i32 [ %call6.i, %if.then.i ], [ %call2.i, %entry.show_master_fader.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_master_fader2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !152
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.store_master_fader.exit_crit_edge

entry.store_master_fader.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %store_master_fader.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %cmp.i = icmp ugt i32 %6, 255
  br i1 %cmp.i, label %if.end.i.store_master_fader.exit_crit_edge, label %if.end4.i

if.end.i.store_master_fader.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %store_master_fader.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %conv5.i = trunc i32 %8 to i8
  %call6.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 73, i8 noundef zeroext %conv5.i) #10
  call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp8.i = icmp eq i32 %call6.i, 0
  %spec.select.i = select i1 %cmp8.i, i32 %len, i32 %call6.i
  br label %store_master_fader.exit

store_master_fader.exit:                          ; preds = %if.end4.i, %if.end.i.store_master_fader.exit_crit_edge, %entry.store_master_fader.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end4.i ], [ -22, %entry.store_master_fader.exit_crit_edge ], [ -22, %if.end.i.store_master_fader.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_master_fader3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val.i, align 1, !annotation !152
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %call2.i = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 74, ptr noundef nonnull %val.i) #10
  call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.show_master_fader.exit_crit_edge

entry.show_master_fader.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %show_master_fader.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %conv5.i = zext i8 %6 to i32
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %conv5.i) #10
  br label %show_master_fader.exit

show_master_fader.exit:                           ; preds = %if.then.i, %entry.show_master_fader.exit_crit_edge
  %ret.0.i = phi i32 [ %call6.i, %if.then.i ], [ %call2.i, %entry.show_master_fader.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_master_fader3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !152
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.store_master_fader.exit_crit_edge

entry.store_master_fader.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %store_master_fader.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %cmp.i = icmp ugt i32 %6, 255
  br i1 %cmp.i, label %if.end.i.store_master_fader.exit_crit_edge, label %if.end4.i

if.end.i.store_master_fader.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %store_master_fader.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %conv5.i = trunc i32 %8 to i8
  %call6.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 74, i8 noundef zeroext %conv5.i) #10
  call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp8.i = icmp eq i32 %call6.i, 0
  %spec.select.i = select i1 %cmp8.i, i32 %len, i32 %call6.i
  br label %store_master_fader.exit

store_master_fader.exit:                          ; preds = %if.end4.i, %if.end.i.store_master_fader.exit_crit_edge, %entry.store_master_fader.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end4.i ], [ -22, %entry.store_master_fader.exit_crit_edge ], [ -22, %if.end.i.store_master_fader.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_master_fader_leds(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !152
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call2 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 6, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.leave_crit_edge

entry.leave_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = lshr i8 %6, 6
  store i8 %7, ptr %val, align 1
  %8 = or i8 %7, 48
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %buf, align 1
  %call2.1 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 7, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.leave_crit_edge

if.end.leave_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end.1:                                         ; preds = %if.end
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %12 = lshr i8 %11, 6
  store i8 %12, ptr %val, align 1
  %13 = or i8 %12, 48
  %arrayidx.1 = getelementptr i8, ptr %buf, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx.1, align 1
  %call2.2 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 8, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.leave_crit_edge

if.end.1.leave_crit_edge:                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end.2:                                         ; preds = %if.end.1
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val, align 1
  %17 = lshr i8 %16, 6
  store i8 %17, ptr %val, align 1
  %18 = or i8 %17, 48
  %arrayidx.2 = getelementptr i8, ptr %buf, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx.2, align 1
  %call2.3 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 9, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %tobool.not.3 = icmp eq i32 %call2.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.leave_crit_edge

if.end.2.leave_crit_edge:                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end.3:                                         ; preds = %if.end.2
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  %22 = lshr i8 %21, 6
  store i8 %22, ptr %val, align 1
  %23 = or i8 %22, 48
  %arrayidx.3 = getelementptr i8, ptr %buf, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx.3, align 1
  %call2.4 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 10, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.4)
  %tobool.not.4 = icmp eq i32 %call2.4, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.leave_crit_edge

if.end.3.leave_crit_edge:                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end.4:                                         ; preds = %if.end.3
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val, align 1
  %27 = lshr i8 %26, 6
  store i8 %27, ptr %val, align 1
  %28 = or i8 %27, 48
  %arrayidx.4 = getelementptr i8, ptr %buf, i32 4
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx.4, align 1
  %call2.5 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 11, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.5)
  %tobool.not.5 = icmp eq i32 %call2.5, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.leave_crit_edge

if.end.4.leave_crit_edge:                         ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end.5:                                         ; preds = %if.end.4
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val, align 1
  %32 = lshr i8 %31, 6
  store i8 %32, ptr %val, align 1
  %33 = or i8 %32, 48
  %arrayidx.5 = getelementptr i8, ptr %buf, i32 5
  %34 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx.5, align 1
  %call2.6 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 12, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.6)
  %tobool.not.6 = icmp eq i32 %call2.6, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.leave_crit_edge

if.end.5.leave_crit_edge:                         ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end.6:                                         ; preds = %if.end.5
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val, align 1
  %37 = lshr i8 %36, 6
  store i8 %37, ptr %val, align 1
  %38 = or i8 %37, 48
  %arrayidx.6 = getelementptr i8, ptr %buf, i32 6
  %39 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx.6, align 1
  %call2.7 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 13, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.7)
  %tobool.not.7 = icmp eq i32 %call2.7, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.leave_crit_edge

if.end.6.leave_crit_edge:                         ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end.7:                                         ; preds = %if.end.6
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %val, align 1
  %42 = lshr i8 %41, 6
  store i8 %42, ptr %val, align 1
  %43 = or i8 %42, 48
  %arrayidx.7 = getelementptr i8, ptr %buf, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx.7, align 1
  %call2.8 = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 14, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.8)
  %tobool.not.8 = icmp eq i32 %call2.8, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.end.7.leave_crit_edge

if.end.7.leave_crit_edge:                         ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end.8:                                         ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val, align 1
  %47 = lshr i8 %46, 6
  store i8 %47, ptr %val, align 1
  %48 = or i8 %47, 48
  %arrayidx.8 = getelementptr i8, ptr %buf, i32 8
  %49 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx.8, align 1
  %arrayidx15 = getelementptr i8, ptr %buf, i32 9
  %50 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 10, ptr %arrayidx15, align 1
  br label %leave

leave:                                            ; preds = %if.end.8, %if.end.7.leave_crit_edge, %if.end.6.leave_crit_edge, %if.end.5.leave_crit_edge, %if.end.4.leave_crit_edge, %if.end.3.leave_crit_edge, %if.end.2.leave_crit_edge, %if.end.1.leave_crit_edge, %if.end.leave_crit_edge, %entry.leave_crit_edge
  %ret.0 = phi i32 [ 10, %if.end.8 ], [ %call2, %entry.leave_crit_edge ], [ %call2.1, %if.end.leave_crit_edge ], [ %call2.2, %if.end.1.leave_crit_edge ], [ %call2.3, %if.end.2.leave_crit_edge ], [ %call2.4, %if.end.3.leave_crit_edge ], [ %call2.5, %if.end.4.leave_crit_edge ], [ %call2.6, %if.end.5.leave_crit_edge ], [ %call2.7, %if.end.6.leave_crit_edge ], [ %call2.8, %if.end.7.leave_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_master_fader_leds(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp331 = icmp sgt i32 %len, 0
  br i1 %cmp331, label %for.body.preheader, label %entry.leave_crit_edge

entry.leave_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

for.body.preheader:                               ; preds = %entry
  %4 = tail call i32 @llvm.smin.i32(i32 %len, i32 9)
  br label %for.body

for.cond:                                         ; preds = %if.then
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.cond.leave_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.leave_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.032 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.032
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %7)
  %8 = icmp eq i8 %7, 48
  br i1 %8, label %if.then, label %for.body.leave_crit_edge

for.body.leave_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then:                                          ; preds = %for.body
  %sub = shl i8 %6, 6
  %9 = trunc i32 %i.032 to i8
  %conv13 = add i8 %9, 6
  %call14 = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext %conv13, i8 noundef zeroext -64, i8 noundef zeroext %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %for.cond, label %if.then.leave_crit_edge

if.then.leave_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

leave:                                            ; preds = %if.then.leave_crit_edge, %for.body.leave_crit_edge, %for.cond.leave_crit_edge, %entry.leave_crit_edge
  %ret.0 = phi i32 [ %len, %entry.leave_crit_edge ], [ %len, %for.cond.leave_crit_edge ], [ -22, %for.body.leave_crit_edge ], [ %call14, %if.then.leave_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lp55xx_unregister_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !112, !113, !115, !116, !118, !119, !121, !123, !125, !127, !128, !130, !132, !133, !135, !136, !138, !139, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_leds_lp5523__292_990_lp5523_driver_init6, !1, !"__initcall__kmod_leds_lp5523__292_990_lp5523_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lp5523.c", i32 990, i32 1}
!2 = !{ptr @__exitcall_lp5523_driver_exit, !1, !"__exitcall_lp5523_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lp5523.c", i32 992, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lp5523.c", i32 993, i32 1}
!7 = !{ptr @__UNIQUE_ID_description295, !8, !"__UNIQUE_ID_description295", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lp5523.c", i32 994, i32 1}
!9 = !{ptr @__UNIQUE_ID_file296, !10, !"__UNIQUE_ID_file296", i1 false, i1 false}
!10 = !{!"../drivers/leds/leds-lp5523.c", i32 995, i32 1}
!11 = !{ptr @__UNIQUE_ID_license297, !10, !"__UNIQUE_ID_license297", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lp5523.c", i32 982, i32 11}
!14 = !{ptr @lp5523_driver, !15, !"lp5523_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lp5523.c", i32 980, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-lp5523.c", i32 909, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lp5523_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lp5523_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lp5523_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-lp5523.c", i32 922, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-lp5523.c", i32 930, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @lp5523_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @lp5523_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-lp5523.c", i32 938, i32 3}
!34 = !{ptr @lp5523_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lp5523_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @lp5523_cfg, !37, !"lp5523_cfg", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-lp5523.c", i32 868, i32 36}
!38 = !{ptr @lp5523_init_program_engine.pattern, !39, !"pattern", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-lp5523.c", i32 272, i32 18}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-lp5523.c", i32 314, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @lp5523_init_program_engine._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @lp5523_init_program_engine._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @lp5523_load_engine_and_select_page.page_sel, !46, !"page_sel", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-lp5523.c", i32 178, i32 18}
!47 = !{ptr @lp5523_load_engine.mask, !48, !"mask", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-lp5523.c", i32 158, i32 18}
!49 = !{ptr @lp5523_load_engine.val, !50, !"val", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-lp5523.c", i32 164, i32 18}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/leds/leds-lp5523.c", i32 373, i32 3}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @lp5523_firmware_loaded._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @lp5523_firmware_loaded._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/leds/leds-lp5523.c", i32 338, i32 31}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-lp5523.c", i32 342, i32 19}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-lp5523.c", i32 364, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @lp5523_update_program_memory._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @lp5523_update_program_memory._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @lp5523_stop_engine.mask, !66, !"mask", i1 false, i1 false}
!66 = !{!"../drivers/leds/leds-lp5523.c", i32 198, i32 18}
!67 = !{ptr @lp5523_group, !68, !"lp5523_group", i1 false, i1 false}
!68 = !{!"../drivers/leds/leds-lp5523.c", i32 863, i32 37}
!69 = !{ptr @lp5523_attributes, !70, !"lp5523_attributes", i1 false, i1 false}
!70 = !{!"../drivers/leds/leds-lp5523.c", i32 845, i32 26}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/leds/leds-lp5523.c", i32 826, i32 8}
!73 = !{ptr @dev_attr_engine1_mode, !72, !"dev_attr_engine1_mode", i1 false, i1 false}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/leds/leds-lp5523.c", i32 398, i32 23}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/leds/leds-lp5523.c", i32 400, i32 23}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/leds/leds-lp5523.c", i32 403, i32 23}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/leds/leds-lp5523.c", i32 422, i32 20}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/leds/leds-lp5523.c", i32 425, i32 27}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/leds/leds-lp5523.c", i32 429, i32 27}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/leds/leds-lp5523.c", i32 827, i32 8}
!88 = !{ptr @dev_attr_engine2_mode, !87, !"dev_attr_engine2_mode", i1 false, i1 false}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/leds/leds-lp5523.c", i32 828, i32 8}
!91 = !{ptr @dev_attr_engine3_mode, !90, !"dev_attr_engine3_mode", i1 false, i1 false}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/leds/leds-lp5523.c", i32 832, i32 8}
!94 = !{ptr @dev_attr_engine1_load, !93, !"dev_attr_engine1_load", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/leds/leds-lp5523.c", i32 833, i32 8}
!97 = !{ptr @dev_attr_engine2_load, !96, !"dev_attr_engine2_load", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/leds/leds-lp5523.c", i32 834, i32 8}
!100 = !{ptr @dev_attr_engine3_load, !99, !"dev_attr_engine3_load", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/leds/leds-lp5523.c", i32 829, i32 8}
!103 = !{ptr @dev_attr_engine1_leds, !102, !"dev_attr_engine1_leds", i1 false, i1 false}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/leds/leds-lp5523.c", i32 488, i32 22}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/leds/leds-lp5523.c", i32 473, i32 31}
!108 = !{ptr @lp5523_load_mux.mux_page, !109, !"mux_page", i1 false, i1 false}
!109 = !{!"../drivers/leds/leds-lp5523.c", i32 498, i32 18}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/leds/leds-lp5523.c", i32 830, i32 8}
!112 = !{ptr @dev_attr_engine2_leds, !111, !"dev_attr_engine2_leds", i1 false, i1 false}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/leds/leds-lp5523.c", i32 831, i32 8}
!115 = !{ptr @dev_attr_engine3_leds, !114, !"dev_attr_engine3_leds", i1 false, i1 false}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/leds/leds-lp5523.c", i32 835, i32 8}
!118 = !{ptr @dev_attr_selftest, !117, !"dev_attr_selftest", i1 false, i1 false}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/leds/leds-lp5523.c", i32 643, i32 30}
!121 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/leds/leds-lp5523.c", i32 653, i32 22}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/leds/leds-lp5523.c", i32 656, i32 21}
!125 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/leds/leds-lp5523.c", i32 836, i32 8}
!127 = !{ptr @dev_attr_master_fader1, !126, !"dev_attr_master_fader1", i1 false, i1 false}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/leds/leds-lp5523.c", i32 694, i32 22}
!130 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/leds/leds-lp5523.c", i32 838, i32 8}
!132 = !{ptr @dev_attr_master_fader2, !131, !"dev_attr_master_fader2", i1 false, i1 false}
!133 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/leds/leds-lp5523.c", i32 840, i32 8}
!135 = !{ptr @dev_attr_master_fader3, !134, !"dev_attr_master_fader3", i1 false, i1 false}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/leds/leds-lp5523.c", i32 842, i32 8}
!138 = !{ptr @dev_attr_master_fader_leds, !137, !"dev_attr_master_fader_leds", i1 false, i1 false}
!139 = !{ptr @of_lp5523_leds_match, !140, !"of_lp5523_leds_match", i1 false, i1 false}
!140 = !{!"../drivers/leds/leds-lp5523.c", i32 971, i32 34}
!141 = !{ptr @lp5523_id, !142, !"lp5523_id", i1 false, i1 false}
!142 = !{!"../drivers/leds/leds-lp5523.c", i32 962, i32 35}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
