; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/lp855x_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/lp855x_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lp855x_device_config = type { ptr, i8, i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lp855x = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lp855x_platform_data = type { ptr, i8, i8, i32, i32, ptr }
%struct.lp855x_rom_data = type { i8, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_lp855x_bl__301_599_lp855x_driver_init6 = internal global ptr @lp855x_driver_init, section ".initcall6.init", align 4
@lp855x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp855x_probe, ptr @lp855x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lp855x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp855x_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp855x_driver_exit = internal global ptr @lp855x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [64 x i8] c"lp855x_bl.description=Texas Instruments LP855x Backlight driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [44 x i8] c"lp855x_bl.author=Milo Kim <milo.kim@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [49 x i8] c"lp855x_bl.file=drivers/video/backlight/lp855x_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [22 x i8] c"lp855x_bl.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp855x\00", [25 x i8] zeroinitializer }, align 32
@lp855x_dt_ids = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8550\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8551\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8552\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8553\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8555\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8556\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8557\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@lp855x_ids = internal constant { [8 x %struct.i2c_device_id], [32 x i8] } { [8 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp8550\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lp8551\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"lp8552\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"lp8553\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"lp8555\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"lp8556\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"lp8557\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@lp855x_dev_cfg = internal global { %struct.lp855x_device_config, [20 x i8] } { %struct.lp855x_device_config { ptr null, i8 0, i8 1, ptr null }, [20 x i8] zeroinitializer }, align 32
@lp8557_dev_cfg = internal global { %struct.lp855x_device_config, [20 x i8] } { %struct.lp855x_device_config { ptr @lp8557_bl_off, i8 4, i8 16, ptr @lp8557_bl_on }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"getting enable regulator\0A\00", [38 x i8] zeroinitializer }, align 32
@lp855x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 487, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable supply: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp855x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/backlight/lp855x_bl.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp855x_probe._entry_ptr = internal global ptr @lp855x_probe._entry, section ".printk_index", align 4
@lp855x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 495, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable vddio: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@lp855x_probe._entry_ptr.11 = internal global ptr @lp855x_probe._entry.9, section ".printk_index", align 4
@lp855x_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 510, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device config err: %d\00", [42 x i8] zeroinitializer }, align 32
@lp855x_probe._entry_ptr.14 = internal global ptr @lp855x_probe._entry.12, section ".printk_index", align 4
@lp855x_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 516, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register backlight. err: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@lp855x_probe._entry_ptr.17 = internal global ptr @lp855x_probe._entry.15, section ".printk_index", align 4
@lp855x_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lp855x_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lp855x_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 522, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register sysfs. err: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@lp855x_probe._entry_ptr.20 = internal global ptr @lp855x_probe._entry.18, section ".printk_index", align 4
@lp855x_update_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 90, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to read 0x%.2x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lp855x_update_bit\00", [46 x i8] zeroinitializer }, align 32
@lp855x_update_bit._entry_ptr = internal global ptr @lp855x_update_bit._entry, section ".printk_index", align 4
@lp855x_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 338, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lp855x_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@lp855x_parse_dt._entry_ptr = internal global ptr @lp855x_parse_dt._entry, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bl-name\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev-ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init-brt\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm-period\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rom-addr\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rom-val\00", [24 x i8] zeroinitializer }, align 32
@lp855x_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 177, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pre init device err: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp855x_configure\00", [47 x i8] zeroinitializer }, align 32
@lp855x_configure._entry_ptr = internal global ptr @lp855x_configure._entry, section ".printk_index", align 4
@lp855x_configure._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.6, i32 208, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"post init device err: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@lp855x_configure._entry_ptr.35 = internal global ptr @lp855x_configure._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lcd-backlight\00", [18 x i8] zeroinitializer }, align 32
@lp855x_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @lp855x_bl_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@lp855x_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_chip_id, ptr @dev_attr_bl_ctl_mode, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_chip_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lp855x_get_chip_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bl_ctl_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lp855x_get_bl_ctl_mode, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chip_id\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bl_ctl_mode\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm based\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register based\00", [17 x i8] zeroinitializer }, align 32
@switch.table.lp855x_probe = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @lp855x_dev_cfg, ptr @lp855x_dev_cfg, ptr @lp855x_dev_cfg, ptr @lp855x_dev_cfg, ptr @lp8557_dev_cfg, ptr @lp855x_dev_cfg, ptr @lp8557_dev_cfg], [36 x i8] zeroinitializer }, align 32
@switch.table.lp855x_probe.42 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 160, i32 160, i32 160, i32 160, i32 16, i32 160, i32 16], [36 x i8] zeroinitializer }, align 32
@switch.table.lp855x_probe.43 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 167, i32 167, i32 167, i32 167, i32 122, i32 175, i32 30], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"lp855x_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 588, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 590, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"lp855x_dt_ids\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 555, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"lp855x_ids\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 567, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"lp855x_dev_cfg\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 146, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"lp8557_dev_cfg\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 151, i32 36 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 467, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 474, i32 48 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 480, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 487, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 495, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 510, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 516, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"lp855x_attr_group\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 325, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 522, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 90, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 338, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 342, i32 32 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 343, i32 28 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 344, i32 28 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 345, i32 29 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 359, i32 31 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 360, i32 31 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 177, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 208, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 273, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant [14 x i8] c"lp855x_bl_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 263, i32 35 }
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"lp855x_attributes\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 319, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"dev_attr_chip_id\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [21 x i8] c"dev_attr_bl_ctl_mode\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 316, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 299, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 317, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 309, i32 13 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [39 x i8] c"../drivers/video/backlight/lp855x_bl.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 311, i32 13 }
@___asan_gen_.197 = private unnamed_addr constant [26 x i8] c"switch.table.lp855x_probe\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [29 x i8] c"switch.table.lp855x_probe.42\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [29 x i8] c"switch.table.lp855x_probe.43\00", align 1
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_lp855x_driver_exit, ptr @__initcall__kmod_lp855x_bl__301_599_lp855x_driver_init6, ptr @lp855x_configure._entry, ptr @lp855x_configure._entry.33, ptr @lp855x_configure._entry_ptr, ptr @lp855x_configure._entry_ptr.35, ptr @lp855x_driver_exit, ptr @lp855x_parse_dt._entry, ptr @lp855x_parse_dt._entry_ptr, ptr @lp855x_probe._entry, ptr @lp855x_probe._entry.12, ptr @lp855x_probe._entry.15, ptr @lp855x_probe._entry.18, ptr @lp855x_probe._entry.9, ptr @lp855x_probe._entry_ptr, ptr @lp855x_probe._entry_ptr.11, ptr @lp855x_probe._entry_ptr.14, ptr @lp855x_probe._entry_ptr.17, ptr @lp855x_probe._entry_ptr.20, ptr @lp855x_update_bit._entry, ptr @lp855x_update_bit._entry_ptr, ptr @lp855x_driver, ptr @.str, ptr @lp855x_dt_ids, ptr @lp855x_ids, ptr @lp855x_dev_cfg, ptr @lp8557_dev_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @lp855x_attr_group, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @lp855x_bl_ops, ptr @lp855x_attributes, ptr @dev_attr_chip_id, ptr @dev_attr_bl_ctl_mode, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @switch.table.lp855x_probe, ptr @switch.table.lp855x_probe.42, ptr @switch.table.lp855x_probe.43], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_dt_ids to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_ids to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_dev_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8557_dev_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_update_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_configure._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp855x_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chip_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bl_ctl_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp855x_probe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp855x_probe.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp855x_probe.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp855x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp855x_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp855x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @lp855x_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp855x_probe(ptr noundef %cl, ptr noundef %id) #2 align 64 {
entry:
  %props.i = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 3
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 201326592
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %client = getelementptr inbounds %struct.lp855x, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cl, ptr %client, align 4
  %dev6 = getelementptr inbounds %struct.lp855x, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %dev6, align 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 7
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.lp855x, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pdata, align 4
  %tobool8.not = icmp eq ptr %id, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.then9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %id, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data, align 4
  %chip_id = getelementptr inbounds %struct.lp855x, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %15 = icmp ult i32 %13, 7
  br i1 %15, label %switch.lookup, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.then9
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.lp855x_probe, i32 0, i32 %13
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %cfg22 = getelementptr inbounds %struct.lp855x, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %cfg22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %switch.load, ptr %cfg22, align 4
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 4
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %if.then25, label %switch.lookup.if.end43_crit_edge

switch.lookup.if.end43_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then25:                                        ; preds = %switch.lookup
  %call.i212 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #5
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i212, ptr %pdata, align 4
  %tobool29.not = icmp eq ptr %call.i212, null
  br i1 %tobool29.not, label %if.then25.cleanup_crit_edge, label %if.then33.critedge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then33.critedge:                               ; preds = %if.then25
  %21 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev6, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then33.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then33.critedge
  %call.i213 = tail call i32 @of_property_read_string(ptr noundef nonnull %24, ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i212) #5
  %device_control.i = getelementptr inbounds %struct.lp855x_platform_data, ptr %call.i212, i32 0, i32 1
  %call.i.i.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %24, ptr noundef nonnull @.str.26, ptr noundef %device_control.i, i32 noundef 1, i32 noundef 0) #5
  %initial_brightness.i = getelementptr inbounds %struct.lp855x_platform_data, ptr %call.i212, i32 0, i32 2
  %call.i.i51.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %24, ptr noundef nonnull @.str.27, ptr noundef %initial_brightness.i, i32 noundef 1, i32 noundef 0) #5
  %period_ns.i = getelementptr inbounds %struct.lp855x_platform_data, ptr %call.i212, i32 0, i32 3
  %call.i.i52.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %24, ptr noundef nonnull @.str.28, ptr noundef %period_ns.i, i32 noundef 1, i32 noundef 0) #5
  %call.i.i214 = tail call ptr @of_get_next_child(ptr noundef nonnull %24, ptr noundef null) #5
  %cmp.not5.i.i = icmp eq ptr %call.i.i214, null
  br i1 %cmp.not5.i.i, label %if.end.i.if.end43_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.if.end43_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i214, %if.end.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %24, ptr noundef nonnull %child.06.i.i) #5
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %num.07.i.i)
  %cmp.i215 = icmp ult i32 %num.07.i.i, 2147483647
  br i1 %cmp.i215, label %devm_kcalloc.exit.i, label %of_get_child_count.exit.i.if.end43_crit_edge

of_get_child_count.exit.i.if.end43_crit_edge:     ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

devm_kcalloc.exit.i:                              ; preds = %of_get_child_count.exit.i
  %25 = shl nuw i32 %inc.i.i, 1
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef %25, i32 noundef 3520) #5
  %tobool9.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool9.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end11.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11.i:                                       ; preds = %devm_kcalloc.exit.i
  %call12.i = tail call ptr @of_get_next_child(ptr noundef nonnull %24, ptr noundef null) #5
  %cmp13.not59.i = icmp eq ptr %call12.i, null
  br i1 %cmp13.not59.i, label %if.end11.i.for.end.i_crit_edge, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  br label %for.body.i

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end11.i.for.body.i_crit_edge
  %i.061.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end11.i.for.body.i_crit_edge ]
  %child.060.i = phi ptr [ %call17.i, %for.body.i.for.body.i_crit_edge ], [ %call12.i, %if.end11.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.lp855x_rom_data, ptr %call5.i.i.i, i32 %i.061.i
  %call.i.i53.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %child.060.i, ptr noundef nonnull @.str.29, ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef 0) #5
  %val.i = getelementptr %struct.lp855x_rom_data, ptr %call5.i.i.i, i32 %i.061.i, i32 1
  %call.i.i54.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %child.060.i, ptr noundef nonnull @.str.30, ptr noundef %val.i, i32 noundef 1, i32 noundef 0) #5
  %inc.i = add i32 %i.061.i, 1
  %call17.i = tail call ptr @of_get_next_child(ptr noundef nonnull %24, ptr noundef nonnull %child.060.i) #5
  %cmp13.not.i = icmp eq ptr %call17.i, null
  br i1 %cmp13.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end11.i.for.end.i_crit_edge
  %size_program.i = getelementptr inbounds %struct.lp855x_platform_data, ptr %call.i212, i32 0, i32 4
  %26 = ptrtoint ptr %size_program.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc.i.i, ptr %size_program.i, align 4
  %rom_data.i = getelementptr inbounds %struct.lp855x_platform_data, ptr %call.i212, i32 0, i32 5
  %27 = ptrtoint ptr %rom_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i.i, ptr %rom_data.i, align 4
  br label %if.end43

if.end43:                                         ; preds = %for.end.i, %of_get_child_count.exit.i.if.end43_crit_edge, %if.end.i.if.end43_crit_edge, %switch.lookup.if.end43_crit_edge
  %28 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata, align 4
  %period_ns = getelementptr inbounds %struct.lp855x_platform_data, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %period_ns to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %period_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp45.not = icmp eq i32 %31, 0
  %spec.select = select i1 %cmp45.not, i32 2, i32 1
  %32 = getelementptr inbounds %struct.lp855x, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select, ptr %32, align 4
  %call50 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %supply = getelementptr inbounds %struct.lp855x, ptr %call.i, i32 0, i32 9
  %34 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call50, ptr %supply, align 4
  %cmp.i216 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %if.then53, label %if.end43.if.end60_crit_edge

if.end43.if.end60_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then53:                                        ; preds = %if.end43
  %cmp56 = icmp eq ptr %call50, inttoptr (i32 -517 to ptr)
  br i1 %cmp56, label %if.then53.cleanup_crit_edge, label %if.end58

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end58:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %supply, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end58, %if.end43.if.end60_crit_edge
  %call61 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  %enable = getelementptr inbounds %struct.lp855x, ptr %call.i, i32 0, i32 10
  %36 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call61, ptr %enable, align 4
  %cmp.i217 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then64, label %if.end60.if.end73_crit_edge

if.end60.if.end73_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then64:                                        ; preds = %if.end60
  %cmp67 = icmp eq ptr %call61, inttoptr (i32 -19 to ptr)
  br i1 %cmp67, label %if.then68, label %if.else70

if.then68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %enable, align 4
  br label %if.end73

if.else70:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %call61 to i32
  %call71 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %38, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end73:                                         ; preds = %if.then68, %if.end60.if.end73_crit_edge
  %39 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %supply, align 4
  %tobool75.not = icmp eq ptr %40, null
  br i1 %tobool75.not, label %if.end73.if.end82_crit_edge, label %if.then76

if.end73.if.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then76:                                        ; preds = %if.end73
  %call78 = tail call i32 @regulator_enable(ptr noundef nonnull %40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.end, label %if.then76.if.end82_crit_edge

if.then76.if.end82_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.end:                                           ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call78) #8
  br label %cleanup

if.end82:                                         ; preds = %if.then76.if.end82_crit_edge, %if.end73.if.end82_crit_edge
  %41 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %enable, align 4
  %tobool84.not = icmp eq ptr %42, null
  br i1 %tobool84.not, label %if.end82.if.end94_crit_edge, label %if.then85

if.end82.if.end94_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then85:                                        ; preds = %if.end82
  %call87 = tail call i32 @regulator_enable(ptr noundef nonnull %42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %do.end92, label %if.end93

do.end92:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call87) #8
  br label %disable_supply

if.end93:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end82.if.end94_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %44 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdata, align 4
  %cfg.i = getelementptr inbounds %struct.lp855x, ptr %call.i, i32 0, i32 3
  %46 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool.not.i218 = icmp eq ptr %49, null
  br i1 %tobool.not.i218, label %if.end94.if.end5.i_crit_edge, label %if.then.i

if.end94.if.end5.i_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end94
  %call.i219 = tail call i32 %49(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool3.not.i = icmp eq i32 %call.i219, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end5.i_crit_edge, label %do.end.i220

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

do.end.i220:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.31, i32 noundef %call.i219) #8
  br label %do.end100

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end94.if.end5.i_crit_edge
  %initial_brightness.i221 = getelementptr inbounds %struct.lp855x_platform_data, ptr %45, i32 0, i32 2
  %52 = ptrtoint ptr %initial_brightness.i221 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %initial_brightness.i221, align 1
  %54 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i, align 4
  %reg_brightness.i = getelementptr inbounds %struct.lp855x_device_config, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %reg_brightness.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %reg_brightness.i, align 4
  %58 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %client, align 4
  %call.i.i222 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext %57, i8 noundef zeroext %53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i222)
  %tobool8.not.i = icmp eq i32 %call.i.i222, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.do.end100_crit_edge

if.end5.i.do.end100_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end100

if.end10.i:                                       ; preds = %if.end5.i
  %device_control.i223 = getelementptr inbounds %struct.lp855x_platform_data, ptr %45, i32 0, i32 1
  %60 = ptrtoint ptr %device_control.i223 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %device_control.i223, align 4
  %62 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg.i, align 4
  %reg_devicectrl.i = getelementptr inbounds %struct.lp855x_device_config, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %reg_devicectrl.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %reg_devicectrl.i, align 1
  %66 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %client, align 4
  %call.i83.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext %65, i8 noundef zeroext %61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool13.not.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.do.end100_crit_edge

if.end10.i.do.end100_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end100

if.end15.i:                                       ; preds = %if.end10.i
  %size_program.i224 = getelementptr inbounds %struct.lp855x_platform_data, ptr %45, i32 0, i32 4
  %68 = ptrtoint ptr %size_program.i224 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size_program.i224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i225 = icmp sgt i32 %69, 0
  br i1 %cmp.i225, label %for.body.lr.ph.i, label %if.end15.i.if.end30.i_crit_edge

if.end15.i.if.end30.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

for.body.lr.ph.i:                                 ; preds = %if.end15.i
  %rom_data.i226 = getelementptr inbounds %struct.lp855x_platform_data, ptr %45, i32 0, i32 5
  br label %for.body.i228

for.body.i228:                                    ; preds = %for.inc.i.for.body.i228_crit_edge, %for.body.lr.ph.i
  %i.088.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i230, %for.inc.i.for.body.i228_crit_edge ]
  %70 = ptrtoint ptr %rom_data.i226 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rom_data.i226, align 4
  %arrayidx.i227 = getelementptr %struct.lp855x_rom_data, ptr %71, i32 %i.088.i
  %72 = ptrtoint ptr %arrayidx.i227 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i227, align 1
  %val22.i = getelementptr %struct.lp855x_rom_data, ptr %71, i32 %i.088.i, i32 1
  %74 = ptrtoint ptr %val22.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %val22.i, align 1
  %76 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %77)
  %78 = icmp ult i32 %77, 7
  br i1 %78, label %switch.lookup247, label %for.body.i228.for.inc.i_crit_edge

for.body.i228.for.inc.i_crit_edge:                ; preds = %for.body.i228
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

switch.lookup247:                                 ; preds = %for.body.i228
  %switch.gep248 = getelementptr inbounds [7 x i32], ptr @switch.table.lp855x_probe.42, i32 0, i32 %77
  %79 = ptrtoint ptr %switch.gep248 to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load249 = load i32, ptr %switch.gep248, align 4
  %switch.gep250 = getelementptr inbounds [7 x i32], ptr @switch.table.lp855x_probe.43, i32 0, i32 %77
  %80 = ptrtoint ptr %switch.gep250 to i32
  call void @__asan_load4_noabort(i32 %80)
  %switch.load251 = load i32, ptr %switch.gep250, align 4
  %conv.i.i = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load249, i32 %conv.i.i)
  %cmp.not.i.i229 = icmp ule i32 %switch.load249, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load251, i32 %conv.i.i)
  %cmp8.i.i = icmp uge i32 %switch.load251, %conv.i.i
  %81 = and i1 %cmp.not.i.i229, %cmp8.i.i
  br i1 %81, label %if.end25.i, label %switch.lookup247.for.inc.i_crit_edge

switch.lookup247.for.inc.i_crit_edge:             ; preds = %switch.lookup247
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end25.i:                                       ; preds = %switch.lookup247
  %82 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %client, align 4
  %call.i85.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %83, i8 noundef zeroext %73, i8 noundef zeroext %75) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %tobool27.not.i = icmp eq i32 %call.i85.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.for.inc.i_crit_edge, label %if.end25.i.do.end100_crit_edge

if.end25.i.do.end100_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end100

if.end25.i.for.inc.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end25.i.for.inc.i_crit_edge, %switch.lookup247.for.inc.i_crit_edge, %for.body.i228.for.inc.i_crit_edge
  %inc.i230 = add nuw nsw i32 %i.088.i, 1
  %84 = ptrtoint ptr %size_program.i224 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size_program.i224, align 4
  %cmp18.i = icmp slt i32 %inc.i230, %85
  br i1 %cmp18.i, label %for.inc.i.for.body.i228_crit_edge, label %for.inc.i.if.end30.i_crit_edge

for.inc.i.if.end30.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

for.inc.i.for.body.i228_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i228

if.end30.i:                                       ; preds = %for.inc.i.if.end30.i_crit_edge, %if.end15.i.if.end30.i_crit_edge
  %86 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i, align 4
  %post_init_device.i = getelementptr inbounds %struct.lp855x_device_config, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %post_init_device.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %post_init_device.i, align 4
  %tobool32.not.i = icmp eq ptr %89, null
  br i1 %tobool32.not.i, label %if.end30.i.if.end101_crit_edge, label %if.then33.i

if.end30.i.if.end101_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then33.i:                                      ; preds = %if.end30.i
  %call36.i = tail call i32 %89(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then33.i.if.end101_crit_edge, label %do.end41.i

if.then33.i.if.end101_crit_edge:                  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

do.end41.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.34, i32 noundef %call36.i) #8
  br label %do.end100

do.end100:                                        ; preds = %do.end41.i, %if.end25.i.do.end100_crit_edge, %if.end10.i.do.end100_crit_edge, %if.end5.i.do.end100_crit_edge, %do.end.i220
  %retval.0.i.ph = phi i32 [ %call36.i, %do.end41.i ], [ %call.i83.i, %if.end10.i.do.end100_crit_edge ], [ %call.i.i222, %if.end5.i.do.end100_crit_edge ], [ %call.i219, %do.end.i220 ], [ %call.i85.i, %if.end25.i.do.end100_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i.ph) #8
  br label %disable_vddio

if.end101:                                        ; preds = %if.then33.i.if.end101_crit_edge, %if.end30.i.if.end101_crit_edge
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #5
  %92 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 1
  %93 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 4
  %94 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdata, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %98 = getelementptr inbounds i8, ptr %props.i, i32 8
  %99 = call ptr @memset(ptr %98, i32 0, i32 20)
  %100 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %93, align 4
  %101 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 255, ptr %92, align 4
  %initial_brightness.i231 = getelementptr inbounds %struct.lp855x_platform_data, ptr %95, i32 0, i32 2
  %tobool.not.i232 = icmp eq ptr %97, null
  %..str.36.i = select i1 %tobool.not.i232, ptr @.str.36, ptr %97
  %102 = ptrtoint ptr %initial_brightness.i231 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %initial_brightness.i231, align 1
  %conv9.i = zext i8 %103 to i32
  %104 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv9.i, ptr %props.i, align 4
  %105 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev6, align 4
  %call.i234 = call ptr @devm_backlight_device_register(ptr noundef %106, ptr noundef %..str.36.i, ptr noundef %106, ptr noundef nonnull %call.i, ptr noundef nonnull @lp855x_bl_ops, ptr noundef nonnull %props.i) #5
  %cmp.i.i = icmp ugt ptr %call.i234, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lp855x_backlight_register.exit, label %lp855x_backlight_register.exit.thread

lp855x_backlight_register.exit.thread:            ; preds = %if.end101
  %bl15.i = getelementptr inbounds %struct.lp855x, ptr %call.i, i32 0, i32 5
  %107 = ptrtoint ptr %bl15.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i234, ptr %bl15.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #5
  %call109 = call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @lp855x_attr_group) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end115, label %do.end114

lp855x_backlight_register.exit:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #5
  %108 = ptrtoint ptr %call.i234 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %108) #8
  br label %disable_vddio

do.end114:                                        ; preds = %lp855x_backlight_register.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call109) #8
  br label %disable_vddio

if.end115:                                        ; preds = %lp855x_backlight_register.exit.thread
  %109 = ptrtoint ptr %bl15.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bl15.i, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %110, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i, align 4
  %tobool.not.i236 = icmp eq ptr %112, null
  br i1 %tobool.not.i236, label %if.end115.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end115.backlight_update_status.exit_crit_edge: ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end115
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %114, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i238

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit

if.then.i238:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i237 = call i32 %114(ptr noundef %110) #5
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i238, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end115.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #5
  br label %cleanup

disable_vddio:                                    ; preds = %do.end114, %lp855x_backlight_register.exit, %do.end100
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end100 ], [ %108, %lp855x_backlight_register.exit ], [ %call109, %do.end114 ]
  %115 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %enable, align 4
  %tobool118.not = icmp eq ptr %116, null
  br i1 %tobool118.not, label %disable_vddio.disable_supply_crit_edge, label %if.then119

disable_vddio.disable_supply_crit_edge:           ; preds = %disable_vddio
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_supply

if.then119:                                       ; preds = %disable_vddio
  call void @__sanitizer_cov_trace_pc() #7
  %call121 = call i32 @regulator_disable(ptr noundef nonnull %116) #5
  br label %disable_supply

disable_supply:                                   ; preds = %if.then119, %disable_vddio.disable_supply_crit_edge, %do.end92
  %ret.1 = phi i32 [ %call87, %do.end92 ], [ %ret.0, %if.then119 ], [ %ret.0, %disable_vddio.disable_supply_crit_edge ]
  %117 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %supply, align 4
  %tobool124.not = icmp eq ptr %118, null
  br i1 %tobool124.not, label %disable_supply.cleanup_crit_edge, label %if.then125

disable_supply.cleanup_crit_edge:                 ; preds = %disable_supply
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then125:                                       ; preds = %disable_supply
  call void @__sanitizer_cov_trace_pc() #7
  %call127 = call i32 @regulator_disable(ptr noundef nonnull %118) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then125, %disable_supply.cleanup_crit_edge, %backlight_update_status.exit, %do.end, %if.else70, %if.then53.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %do.end.i, %if.then25.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call78, %do.end ], [ 0, %backlight_update_status.exit ], [ %call71, %if.else70 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ], [ -12, %if.then25.cleanup_crit_edge ], [ -517, %if.then53.cleanup_crit_edge ], [ %ret.1, %if.then125 ], [ %ret.1, %disable_supply.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ -22, %do.end.i ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp855x_remove(ptr nocapture noundef readonly %cl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bl = getelementptr inbounds %struct.lp855x, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 8
  %5 = load ptr, ptr %bl, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

entry.backlight_update_status.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %entry
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %9(ptr noundef %5) #5
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %entry.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #5
  %enable = getelementptr inbounds %struct.lp855x, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %backlight_update_status.exit.if.end_crit_edge, label %if.then

backlight_update_status.exit.if.end_crit_edge:    ; preds = %backlight_update_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %backlight_update_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @regulator_disable(ptr noundef nonnull %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %backlight_update_status.exit.if.end_crit_edge
  %supply = getelementptr inbounds %struct.lp855x, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %supply, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %dev = getelementptr inbounds %struct.lp855x, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @sysfs_remove_group(ptr noundef %15, ptr noundef nonnull @lp855x_attr_group) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8557_bl_off(ptr nocapture noundef readonly %lp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client.i = getelementptr inbounds %struct.lp855x, ptr %lp, i32 0, i32 4
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.lp855x, ptr %lp, i32 0, i32 6
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef 0) #8
  br label %lp855x_update_bit.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = trunc i32 %call.i to i8
  %5 = and i8 %4, -2
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext %5) #5
  br label %lp855x_update_bit.exit

lp855x_update_bit.exit:                           ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call.i.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8557_bl_on(ptr nocapture noundef readonly %lp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client.i = getelementptr inbounds %struct.lp855x, ptr %lp, i32 0, i32 4
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.lp855x, ptr %lp, i32 0, i32 6
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef 0) #8
  br label %lp855x_update_bit.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = trunc i32 %call.i to i8
  %conv9.i = or i8 %4, 1
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext %conv9.i) #5
  br label %lp855x_update_bit.exit

lp855x_update_bit.exit:                           ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call.i.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp855x_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %state.i34.i = alloca %struct.pwm_state, align 8
  %state.i29.i = alloca %struct.pwm_state, align 8
  %state.i27.i = alloca %struct.pwm_state, align 8
  %state.i.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bl, align 8
  %state = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 %3, i32 0
  %mode = getelementptr inbounds %struct.lp855x, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.if.end10_crit_edge [
    i32 1, label %if.then3
    i32 2, label %if.then7
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then3:                                         ; preds = %entry
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 1
  %9 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_brightness, align 4
  %pdata.i = getelementptr inbounds %struct.lp855x, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 4
  %period_ns.i = getelementptr inbounds %struct.lp855x_platform_data, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %period_ns.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %period_ns.i, align 4
  %mul.i = mul i32 %14, %spec.store.select
  %div.i = udiv i32 %mul.i, %10
  %pwm1.i = getelementptr inbounds %struct.lp855x, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %pwm1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pwm1.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then3.if.end5.i_crit_edge

if.then3.if.end5.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then3
  %dev.i = getelementptr inbounds %struct.lp855x, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @devm_pwm_get(ptr noundef %18, ptr noundef %20) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.if.end10_crit_edge, label %if.end.i

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %pwm1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %pwm1.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i.i) #5
  %args.i.i = getelementptr inbounds %struct.pwm_device, ptr %call.i, i32 0, i32 6
  %polarity.i.i = getelementptr inbounds %struct.pwm_device, ptr %call.i, i32 0, i32 6, i32 1
  %22 = getelementptr inbounds i8, ptr %state.i.i, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 16)
  %24 = ptrtoint ptr %polarity.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %polarity.i.i, align 8
  %polarity1.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %polarity1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %polarity1.i.i, align 8
  %27 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %args.i.i, align 8
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %state.i.i, align 8
  %call.i.i = call i32 @pwm_apply_state(ptr noundef %call.i, ptr noundef nonnull %state.i.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i.i) #5
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.then3.if.end5.i_crit_edge
  %30 = ptrtoint ptr %pwm1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pwm1.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i27.i) #5
  %tobool.not.i.i = icmp ne ptr %31, null
  %32 = or i32 %div.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i = icmp sgt i32 %32, -1
  %or.cond.i.i = and i1 %.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.end3.i.i, label %if.end5.i.pwm_config.exit.i_crit_edge

if.end5.i.pwm_config.exit.i_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_config.exit.i

if.end3.i.i:                                      ; preds = %if.end5.i
  %state1.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %31, i32 0, i32 7
  %33 = call ptr @memcpy(ptr %state.i27.i, ptr %state1.i.i.i, i32 24)
  %duty_cycle.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i27.i, i32 0, i32 1
  %34 = ptrtoint ptr %duty_cycle.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %duty_cycle.i.i, align 8
  %conv1.i.i = zext i32 %div.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %conv1.i.i)
  %cmp4.i.i = icmp eq i64 %35, %conv1.i.i
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %if.end3.if.end10_crit_edge.i.i

if.end3.if.end10_crit_edge.i.i:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %.pre.i.i = zext i32 %14 to i64
  br label %if.end10.i.i

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %36 = ptrtoint ptr %state.i27.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %state.i27.i, align 8
  %conv62.i.i = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %conv62.i.i)
  %cmp7.i.i = icmp eq i64 %37, %conv62.i.i
  br i1 %cmp7.i.i, label %land.lhs.true.i.i.pwm_config.exit.i_crit_edge, label %land.lhs.true.i.i.if.end10.i.i_crit_edge

land.lhs.true.i.i.if.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i.i

land.lhs.true.i.i.pwm_config.exit.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_config.exit.i

if.end10.i.i:                                     ; preds = %land.lhs.true.i.i.if.end10.i.i_crit_edge, %if.end3.if.end10_crit_edge.i.i
  %conv133.pre-phi.i.i = phi i64 [ %.pre.i.i, %if.end3.if.end10_crit_edge.i.i ], [ %conv62.i.i, %land.lhs.true.i.i.if.end10.i.i_crit_edge ]
  %38 = ptrtoint ptr %duty_cycle.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv1.i.i, ptr %duty_cycle.i.i, align 8
  %39 = ptrtoint ptr %state.i27.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv133.pre-phi.i.i, ptr %state.i27.i, align 8
  %call.i28.i = call i32 @pwm_apply_state(ptr noundef nonnull %31, ptr noundef nonnull %state.i27.i) #5
  br label %pwm_config.exit.i

pwm_config.exit.i:                                ; preds = %if.end10.i.i, %land.lhs.true.i.i.pwm_config.exit.i_crit_edge, %if.end5.i.pwm_config.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i27.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %10)
  %tobool8.not.i = icmp ult i32 %mul.i, %10
  %40 = ptrtoint ptr %pwm1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pwm1.i, align 4
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %pwm_config.exit.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i29.i) #5
  %tobool.not.i30.i = icmp eq ptr %41, null
  br i1 %tobool.not.i30.i, label %if.then9.i.pwm_enable.exit.i_crit_edge, label %if.end.i.i

if.then9.i.pwm_enable.exit.i_crit_edge:           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_enable.exit.i

if.end.i.i:                                       ; preds = %if.then9.i
  %state1.i.i31.i = getelementptr inbounds %struct.pwm_device, ptr %41, i32 0, i32 7
  %42 = call ptr @memcpy(ptr %state.i29.i, ptr %state1.i.i31.i, i32 24)
  %enabled.i.i = getelementptr inbounds %struct.pwm_state, ptr %state.i29.i, i32 0, i32 3
  %43 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enabled.i.i, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool1.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool1.not.i.i, label %if.end3.i33.i, label %if.end.i.i.pwm_enable.exit.i_crit_edge

if.end.i.i.pwm_enable.exit.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_enable.exit.i

if.end3.i33.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %enabled.i.i, align 4
  %call.i32.i = call i32 @pwm_apply_state(ptr noundef nonnull %41, ptr noundef nonnull %state.i29.i) #5
  br label %pwm_enable.exit.i

pwm_enable.exit.i:                                ; preds = %if.end3.i33.i, %if.end.i.i.pwm_enable.exit.i_crit_edge, %if.then9.i.pwm_enable.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i29.i) #5
  br label %if.end10

if.else.i:                                        ; preds = %pwm_config.exit.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i34.i) #5
  %tobool.not.i35.i = icmp eq ptr %41, null
  br i1 %tobool.not.i35.i, label %if.else.i.pwm_disable.exit.i_crit_edge, label %if.end.i39.i

if.else.i.pwm_disable.exit.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit.i

if.end.i39.i:                                     ; preds = %if.else.i
  %state1.i.i36.i = getelementptr inbounds %struct.pwm_device, ptr %41, i32 0, i32 7
  %46 = call ptr @memcpy(ptr %state.i34.i, ptr %state1.i.i36.i, i32 24)
  %enabled.i37.i = getelementptr inbounds %struct.pwm_state, ptr %state.i34.i, i32 0, i32 3
  %47 = ptrtoint ptr %enabled.i37.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %enabled.i37.i, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool1.not.i38.i = icmp eq i8 %48, 0
  br i1 %tobool1.not.i38.i, label %if.end.i39.i.pwm_disable.exit.i_crit_edge, label %if.end3.i41.i

if.end.i39.i.pwm_disable.exit.i_crit_edge:        ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit.i

if.end3.i41.i:                                    ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %enabled.i37.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %enabled.i37.i, align 4
  %call.i40.i = call i32 @pwm_apply_state(ptr noundef nonnull %41, ptr noundef nonnull %state.i34.i) #5
  br label %pwm_disable.exit.i

pwm_disable.exit.i:                               ; preds = %if.end3.i41.i, %if.end.i39.i.pwm_disable.exit.i_crit_edge, %if.else.i.pwm_disable.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i34.i) #5
  br label %if.end10

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cfg = getelementptr inbounds %struct.lp855x, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg, align 4
  %reg_brightness = getelementptr inbounds %struct.lp855x_device_config, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %reg_brightness to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %reg_brightness, align 4
  %conv = trunc i32 %spec.store.select to i8
  %client.i = getelementptr inbounds %struct.lp855x, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client.i, align 4
  %call.i19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %55, i8 noundef zeroext %53, i8 noundef zeroext %conv) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %pwm_disable.exit.i, %pwm_enable.exit.i, %if.then.i.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp855x_get_chip_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.38, ptr noundef %3) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp855x_get_bl_ctl_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.lp855x, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.41, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp7 = icmp eq i32 %3, 1
  %switch.select8 = select i1 %switch.selectcmp7, ptr @.str.40, ptr %switch.select
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.38, ptr noundef %switch.select8) #5
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !90, !92, !94, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_lp855x_bl__301_599_lp855x_driver_init6, !1, !"__initcall__kmod_lp855x_bl__301_599_lp855x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 599, i32 1}
!2 = !{ptr @__exitcall_lp855x_driver_exit, !1, !"__exitcall_lp855x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 601, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 602, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 603, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 590, i32 14}
!12 = !{ptr @lp855x_driver, !13, !"lp855x_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 588, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 467, i32 39}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 474, i32 48}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 480, i32 35}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 487, i32 4}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lp855x_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @lp855x_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 495, i32 4}
!30 = !{ptr @lp855x_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lp855x_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 510, i32 3}
!34 = !{ptr @lp855x_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lp855x_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 516, i32 3}
!38 = !{ptr @lp855x_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @lp855x_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 522, i32 3}
!42 = !{ptr @lp855x_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @lp855x_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @lp855x_dev_cfg, !45, !"lp855x_dev_cfg", i1 false, i1 false}
!45 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 146, i32 36}
!46 = !{ptr @lp8557_dev_cfg, !47, !"lp8557_dev_cfg", i1 false, i1 false}
!47 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 151, i32 36}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 90, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @lp855x_update_bit._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @lp855x_update_bit._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 338, i32 3}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @lp855x_parse_dt._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @lp855x_parse_dt._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 342, i32 32}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 343, i32 28}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 344, i32 28}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 345, i32 29}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 359, i32 31}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 360, i32 31}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 177, i32 4}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @lp855x_configure._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @lp855x_configure._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 208, i32 4}
!77 = !{ptr @lp855x_configure._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @lp855x_configure._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 273, i32 37}
!81 = !{ptr @lp855x_bl_ops, !82, !"lp855x_bl_ops", i1 false, i1 false}
!82 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 263, i32 35}
!83 = !{ptr @lp855x_attr_group, !84, !"lp855x_attr_group", i1 false, i1 false}
!84 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 325, i32 37}
!85 = !{ptr @lp855x_attributes, !86, !"lp855x_attributes", i1 false, i1 false}
!86 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 319, i32 26}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 316, i32 8}
!89 = !{ptr @dev_attr_chip_id, !88, !"dev_attr_chip_id", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 299, i32 35}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 317, i32 8}
!94 = !{ptr @dev_attr_bl_ctl_mode, !93, !"dev_attr_bl_ctl_mode", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 309, i32 13}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 311, i32 13}
!99 = !{ptr @lp855x_dt_ids, !100, !"lp855x_dt_ids", i1 false, i1 false}
!100 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 555, i32 34}
!101 = !{ptr @lp855x_ids, !102, !"lp855x_ids", i1 false, i1 false}
!102 = !{!"../drivers/video/backlight/lp855x_bl.c", i32 567, i32 35}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i8 0, i8 2}
