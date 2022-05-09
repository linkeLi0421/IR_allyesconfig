; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/cap11xx.c_pt.bc'
source_filename = "../drivers/input/keyboard/cap11xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cap11xx_hw_model = type { i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
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
%struct.cap11xx_priv = type { ptr, ptr, ptr, i32, [0 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.cap11xx_led = type { ptr, %struct.led_classdev, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_cap11xx__288_509_cap11xx_i2c_driver_init6 = internal global ptr @cap11xx_i2c_driver_init, section ".initcall6.init", align 4
@cap11xx_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cap11xx_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cap11xx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cap11xx_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cap11xx_i2c_driver_exit = internal global ptr @cap11xx_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [45 x i8] c"cap11xx.description=Microchip CAP11XX driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [46 x i8] c"cap11xx.author=Daniel Mack <linux@zonque.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [44 x i8] c"cap11xx.file=drivers/input/keyboard/cap11xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"cap11xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cap11xx\00", [24 x i8] zeroinitializer }, align 32
@cap11xx_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,cap1106\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,cap1126\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,cap1188\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,cap1206\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@cap11xx_i2c_ids = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cap1106\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"cap1126\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"cap1188\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"cap1206\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid device ID %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cap11xx_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/input/keyboard/cap11xx.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry_ptr = internal global ptr @cap11xx_i2c_probe._entry, section ".printk_index", align 4
@cap11xx_devices = internal constant { [4 x %struct.cap11xx_hw_model], [32 x i8] } { [4 x %struct.cap11xx_hw_model] [%struct.cap11xx_hw_model { i8 85, i32 6, i32 0, i8 0 }, %struct.cap11xx_hw_model { i8 83, i32 6, i32 2, i8 0 }, %struct.cap11xx_hw_model { i8 80, i32 8, i32 8, i8 0 }, %struct.cap11xx_hw_model { i8 103, i32 6, i32 0, i8 1 }], [32 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid device configuration\0A\00", [34 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry_ptr.8 = internal global ptr @cap11xx_i2c_probe._entry.6, section ".printk_index", align 4
@cap11xx_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cap11xx_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @cap11xx_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cap11xx_reg_defaults, i32 32, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cap11xx:352:(&cap11xx_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Product ID: Got 0x%02x, expected 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry_ptr.12 = internal global ptr @cap11xx_i2c_probe._entry.10, section ".printk_index", align 4
@cap11xx_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 372, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Manufacturer ID: Got 0x%02x, expected 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry_ptr.15 = internal global ptr @cap11xx_i2c_probe._entry.13, section ".printk_index", align 4
@cap11xx_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 380, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CAP11XX detected, revision 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry_ptr.19 = internal global ptr @cap11xx_i2c_probe._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"microchip,sensor-gain\00", [42 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 386, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"This version doesn't support sensor gain\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry_ptr.24 = internal global ptr @cap11xx_i2c_probe._entry.21, section ".printk_index", align 4
@cap11xx_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid sensor-gain value %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry_ptr.27 = internal global ptr @cap11xx_i2c_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"microchip,irq-active-high\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux,keycodes\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CAP11XX capacitive touch sensor\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autorepeat\00", [21 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to parse or map IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@cap11xx_i2c_probe._entry_ptr.34 = internal global ptr @cap11xx_i2c_probe._entry.32, section ".printk_index", align 4
@cap11xx_reg_defaults = internal constant { [32 x %struct.reg_default], [64 x i8] } { [32 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 31, i32 47 }, %struct.reg_default { i32 32, i32 32 }, %struct.reg_default { i32 33, i32 63 }, %struct.reg_default { i32 34, i32 164 }, %struct.reg_default { i32 35, i32 7 }, %struct.reg_default { i32 36, i32 57 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 63 }, %struct.reg_default { i32 40, i32 63 }, %struct.reg_default { i32 42, i32 128 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 45, i32 63 }, %struct.reg_default { i32 47, i32 138 }, %struct.reg_default { i32 48, i32 64 }, %struct.reg_default { i32 49, i32 64 }, %struct.reg_default { i32 50, i32 64 }, %struct.reg_default { i32 51, i32 64 }, %struct.reg_default { i32 52, i32 64 }, %struct.reg_default { i32 53, i32 64 }, %struct.reg_default { i32 56, i32 1 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 57 }, %struct.reg_default { i32 66, i32 2 }, %struct.reg_default { i32 67, i32 64 }, %struct.reg_default { i32 68, i32 64 }, %struct.reg_default { i32 115, i32 0 }, %struct.reg_default { i32 185, i32 0 }, %struct.reg_default { i32 186, i32 0 }], [64 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"linux,default-trigger\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 3, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 253, i64 254, i64 255]
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"cap11xx_i2c_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 500, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 502, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"cap11xx_dt_ids\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 482, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"cap11xx_i2c_ids\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 491, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 336, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"cap11xx_devices\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 104, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 342, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"cap11xx_regmap_config\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 166, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 352, i32 17 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 361, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 371, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 380, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 383, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 385, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 390, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 394, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 408, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 429, i32 21 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 433, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 470, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [21 x i8] c"cap11xx_reg_defaults\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 111, i32 33 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 287, i32 27 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 289, i32 27 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [36 x i8] c"../drivers/input/keyboard/cap11xx.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 295, i32 39 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_cap11xx_i2c_driver_exit, ptr @__initcall__kmod_cap11xx__288_509_cap11xx_i2c_driver_init6, ptr @cap11xx_i2c_driver_exit, ptr @cap11xx_i2c_probe._entry, ptr @cap11xx_i2c_probe._entry.10, ptr @cap11xx_i2c_probe._entry.13, ptr @cap11xx_i2c_probe._entry.16, ptr @cap11xx_i2c_probe._entry.21, ptr @cap11xx_i2c_probe._entry.25, ptr @cap11xx_i2c_probe._entry.32, ptr @cap11xx_i2c_probe._entry.6, ptr @cap11xx_i2c_probe._entry_ptr, ptr @cap11xx_i2c_probe._entry_ptr.12, ptr @cap11xx_i2c_probe._entry_ptr.15, ptr @cap11xx_i2c_probe._entry_ptr.19, ptr @cap11xx_i2c_probe._entry_ptr.24, ptr @cap11xx_i2c_probe._entry_ptr.27, ptr @cap11xx_i2c_probe._entry_ptr.34, ptr @cap11xx_i2c_probe._entry_ptr.8, ptr @cap11xx_i2c_driver, ptr @.str, ptr @cap11xx_dt_ids, ptr @cap11xx_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cap11xx_devices, ptr @.str.7, ptr @cap11xx_i2c_probe._key, ptr @cap11xx_regmap_config, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @cap11xx_reg_defaults, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_i2c_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_devices to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cap11xx_reg_defaults to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cap11xx_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cap11xx_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cap11xx_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @cap11xx_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cap11xx_i2c_probe(ptr noundef %i2c_client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %rev = alloca i32, align 4
  %gain32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev) #7
  %1 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rev, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gain32) #7
  %2 = ptrtoint ptr %gain32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %gain32, align 4, !annotation !90
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x %struct.cap11xx_hw_model], ptr @cap11xx_devices, i32 0, i32 %4
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %do.end8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %num_channels = getelementptr [4 x %struct.cap11xx_hw_model], ptr @cap11xx_devices, i32 0, i32 %4, i32 1
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_channels, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #7
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %9, i32 16) #7
  %retval.0.i = select i1 %8, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #7
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %call15 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c_client, ptr noundef nonnull @cap11xx_regmap_config, ptr noundef nonnull @cap11xx_i2c_probe._key, ptr noundef nonnull @.str.9) #7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call15, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call23 = call i32 @regmap_read(ptr noundef %call15, i32 noundef 253, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp27.not = icmp eq i32 %13, %conv
  br i1 %cmp27.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %13, i32 noundef %conv) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call37 = call i32 @regmap_read(ptr noundef %17, i32 noundef 254, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 93, i32 %19)
  %cmp41.not = icmp eq i32 %19, 93
  br i1 %cmp41.not, label %if.end47, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %19, i32 noundef 93) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %call49 = call i32 @regmap_read(ptr noundef %21, i32 noundef 255, ptr noundef nonnull %rev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end47.cleanup_crit_edge, label %do.end56

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end56:                                         ; preds = %if.end47
  %22 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %23) #10
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 27
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.20, ptr noundef nonnull %gain32, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool58.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool58.not, label %if.then59, label %do.end56.if.end84_crit_edge

do.end56.if.end84_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then59:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %tobool60.not.not = icmp eq i32 %4, 3
  br i1 %tobool60.not.not, label %do.end64, label %if.else

do.end64:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  br label %if.end84

if.else:                                          ; preds = %if.then59
  %26 = ptrtoint ptr %gain32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gain32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i, label %if.else.do.end81_crit_edge, label %is_power_of_2.exit

if.else.do.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end81

is_power_of_2.exit:                               ; preds = %if.else
  %28 = call i32 @llvm.ctpop.i32(i32 %27) #7, !range !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp1.i = icmp ult i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %27)
  %cmp67 = icmp ult i32 %27, 9
  %or.cond = and i1 %cmp67, %cmp1.i
  br i1 %or.cond, label %cond.false74, label %is_power_of_2.exit.do.end81_crit_edge

is_power_of_2.exit.do.end81_crit_edge:            ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end81

cond.false74:                                     ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = call i32 @llvm.ctlz.i32(i32 %27, i1 true) #7, !range !91
  %sub.i.op.i = shl nuw nsw i32 %29, 6
  %phi.bo = xor i32 %sub.i.op.i, 1984
  br label %if.end84

do.end81:                                         ; preds = %is_power_of_2.exit.do.end81_crit_edge, %if.else.do.end81_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %27) #10
  br label %if.end84

if.end84:                                         ; preds = %do.end81, %cond.false74, %do.end64, %do.end56.if.end84_crit_edge
  %gain.0 = phi i32 [ 0, %do.end56.if.end84_crit_edge ], [ 0, %do.end64 ], [ 0, %do.end81 ], [ %phi.bo, %cond.false74 ]
  %30 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp86.not = icmp eq i32 %31, 3
  br i1 %cmp86.not, label %if.end84.for.body.preheader_crit_edge, label %if.then88

if.end84.for.body.preheader_crit_edge:            ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then88:                                        ; preds = %if.end84
  %call.i298 = call ptr @of_find_property(ptr noundef %25, ptr noundef nonnull @.str.28, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i298, null
  br i1 %tobool.i.not, label %if.then88.for.body.preheader_crit_edge, label %if.then90

if.then88.for.body.preheader_crit_edge:           ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then90:                                        ; preds = %if.then88
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %call.i299 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 68, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i299)
  %tobool93.not = icmp eq i32 %call.i299, 0
  br i1 %tobool93.not, label %if.then90.for.body.preheader_crit_edge, label %if.then90.cleanup_crit_edge

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then90.for.body.preheader_crit_edge:           ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then90.for.body.preheader_crit_edge, %if.then88.for.body.preheader_crit_edge, %if.end84.for.body.preheader_crit_edge
  %umax = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0308 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add = add i32 %i.0308, 30
  %arrayidx101 = getelementptr %struct.cap11xx_priv, ptr %call.i, i32 0, i32 4, i32 %i.0308
  %34 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %arrayidx101, align 4
  %inc = add nuw i32 %i.0308, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %keycodes102 = getelementptr inbounds %struct.cap11xx_priv, ptr %call.i, i32 0, i32 4
  %call.i300 = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.29, ptr noundef %keycodes102, i32 noundef %6, i32 noundef 0) #7
  %35 = and i32 %4, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %tobool106.not.not = icmp eq i32 %35, 3
  br i1 %tobool106.not.not, label %for.end.if.end113_crit_edge, label %if.then107

for.end.if.end113_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then107:                                       ; preds = %for.end
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %call.i301 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 0, i32 noundef 192, i32 noundef %gain.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301)
  %tobool110.not = icmp eq i32 %call.i301, 0
  br i1 %tobool110.not, label %if.then107.if.end113_crit_edge, label %if.then107.cleanup_crit_edge

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then107.if.end113_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.end113:                                        ; preds = %if.then107.if.end113_crit_edge, %for.end.if.end113_crit_edge
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %call115 = call i32 @regmap_write(ptr noundef %39, i32 noundef 40, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end118:                                        ; preds = %if.end113
  %call119 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #7
  %idev = getelementptr inbounds %struct.cap11xx_priv, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %idev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call119, ptr %idev, align 4
  %tobool121.not = icmp eq ptr %call119, null
  br i1 %tobool121.not, label %if.end118.cleanup_crit_edge, label %if.end123

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end123:                                        ; preds = %if.end118
  %41 = ptrtoint ptr %call119 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.30, ptr %call119, align 8
  %42 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %idev, align 4
  %id126 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %id126 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 24, ptr %id126, align 4
  %45 = load ptr, ptr %idev, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %evbit, align 8
  %call.i302 = call ptr @of_find_property(ptr noundef %25, ptr noundef nonnull @.str.31, ptr noundef null) #7
  %tobool.i303.not = icmp eq ptr %call.i302, null
  br i1 %tobool.i303.not, label %if.end123.for.body139.preheader_crit_edge, label %if.then130

if.end123.for.body139.preheader_crit_edge:        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body139.preheader

if.then130:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %idev, align 4
  %evbit132 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %evbit132 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %evbit132, align 4
  %or.i = or i32 %50, 1048576
  store i32 %or.i, ptr %evbit132, align 4
  br label %for.body139.preheader

for.body139.preheader:                            ; preds = %if.then130, %if.end123.for.body139.preheader_crit_edge
  %umax311 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %for.body139

for.body139:                                      ; preds = %for.body139.for.body139_crit_edge, %for.body139.preheader
  %i.1310 = phi i32 [ %inc145, %for.body139.for.body139_crit_edge ], [ 0, %for.body139.preheader ]
  %arrayidx141 = getelementptr %struct.cap11xx_priv, ptr %call.i, i32 0, i32 4, i32 %i.1310
  %51 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx141, align 4
  %53 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %idev, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 6
  %rem.i = and i32 %52, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %52, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i, align 4
  %or.i297 = or i32 %56, %shl.i
  store i32 %or.i297, ptr %add.ptr.i, align 4
  %inc145 = add nuw i32 %i.1310, 1
  %exitcond312.not = icmp eq i32 %inc145, %umax311
  br i1 %exitcond312.not, label %for.end146, label %for.body139.for.body139_crit_edge

for.body139.for.body139_crit_edge:                ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body139

for.end146:                                       ; preds = %for.body139
  %57 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %idev, align 4
  %keybit148 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %keybit148 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %keybit148, align 4
  %and.i = and i32 %60, -2
  store i32 %and.i, ptr %keybit148, align 4
  %61 = load ptr, ptr %idev, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 17
  %62 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %keycodes102, ptr %keycode, align 4
  %63 = load ptr, ptr %idev, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %keycodesize, align 8
  %65 = load ptr, ptr %idev, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %6, ptr %keycodemax, align 4
  %67 = load ptr, ptr %idev, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 93, ptr %vendor, align 2
  %conv159 = zext i8 %15 to i16
  %69 = load ptr, ptr %idev, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %69, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv159, ptr %product, align 4
  %71 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rev, align 4
  %conv162 = trunc i32 %72 to i16
  %73 = load ptr, ptr %idev, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %73, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv162, ptr %version, align 2
  %75 = load ptr, ptr %idev, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %75, i32 0, i32 31
  %76 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @cap11xx_input_open, ptr %open, align 8
  %77 = load ptr, ptr %idev, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %77, i32 0, i32 32
  %78 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @cap11xx_input_close, ptr %close, align 4
  %num_leds = getelementptr [4 x %struct.cap11xx_hw_model], ptr @cap11xx_devices, i32 0, i32 %4, i32 2
  %79 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_leds, align 4
  %call167 = call fastcc i32 @cap11xx_init_leds(ptr noundef %dev1, ptr noundef nonnull %call.i, i32 noundef %80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end170, label %for.end146.cleanup_crit_edge

for.end146.cleanup_crit_edge:                     ; preds = %for.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end170:                                        ; preds = %for.end146
  %81 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %idev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %82, i32 0, i32 40, i32 8
  %83 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call172 = call fastcc i32 @cap11xx_set_sleep(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  %84 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %idev, align 4
  %call174 = call i32 @input_register_device(ptr noundef %85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end177, label %if.end170.cleanup_crit_edge

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end177:                                        ; preds = %if.end170
  %call178 = call i32 @irq_of_parse_and_map(ptr noundef %25, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %do.end183, label %if.end184

do.end183:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end184:                                        ; preds = %if.end177
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 3
  %86 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %87, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end184.dev_name.exit_crit_edge

if.end184.dev_name.exit_crit_edge:                ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end184.dev_name.exit_crit_edge
  %retval.0.i304 = phi ptr [ %89, %if.end.i ], [ %87, %if.end184.dev_name.exit_crit_edge ]
  %call186 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call178, ptr noundef null, ptr noundef nonnull @cap11xx_thread_func, i32 noundef 8192, ptr noundef %retval.0.i304, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %do.end183, %if.end170.cleanup_crit_edge, %for.end146.cleanup_crit_edge, %if.end118.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %if.then107.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %do.end46, %if.end35.cleanup_crit_edge, %do.end32, %if.end21.cleanup_crit_edge, %if.then18, %do.end8, %lor.lhs.false.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %11, %if.then18 ], [ -6, %do.end32 ], [ -6, %do.end46 ], [ -6, %do.end183 ], [ -22, %do.end8 ], [ -12, %lor.lhs.false.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ], [ %call37, %if.end35.cleanup_crit_edge ], [ %call49, %if.end47.cleanup_crit_edge ], [ %call.i299, %if.then90.cleanup_crit_edge ], [ %call.i301, %if.then107.cleanup_crit_edge ], [ %call115, %if.end113.cleanup_crit_edge ], [ -12, %if.end118.cleanup_crit_edge ], [ %call167, %for.end146.cleanup_crit_edge ], [ %call174, %if.end170.cleanup_crit_edge ], [ %call186, %dev_name.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gain32) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cap11xx_input_open(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_leds.i = getelementptr inbounds %struct.cap11xx_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cap11xx_set_sleep.exit_crit_edge

entry.cap11xx_set_sleep.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cap11xx_set_sleep.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cap11xx_set_sleep.exit

cap11xx_set_sleep.exit:                           ; preds = %if.end.i, %entry.cap11xx_set_sleep.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i ], [ 0, %entry.cap11xx_set_sleep.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cap11xx_input_close(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_leds.i = getelementptr inbounds %struct.cap11xx_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cap11xx_set_sleep.exit_crit_edge

entry.cap11xx_set_sleep.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cap11xx_set_sleep.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cap11xx_set_sleep.exit

cap11xx_set_sleep.exit:                           ; preds = %if.end.i, %entry.cap11xx_set_sleep.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cap11xx_init_leds(ptr noundef %dev, ptr noundef %priv, i32 noundef %num_leds) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %entry.cleanup43_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_leds)
  %tobool.not = icmp eq i32 %num_leds, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool1.not = icmp eq i32 %inc.i, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %of_get_child_count.exit.cleanup43_crit_edge, label %if.end

of_get_child_count.exit.cleanup43_crit_edge:      ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end:                                           ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %num_leds)
  %cmp = icmp sgt i32 %inc.i, %num_leds
  br i1 %cmp, label %if.end.cleanup43_crit_edge, label %if.end3

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end3:                                          ; preds = %if.end
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 408) #7
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.end3.cleanup43_crit_edge, label %devm_kcalloc.exit, !prof !92

if.end3.cleanup43_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

devm_kcalloc.exit:                                ; preds = %if.end3
  %4 = extractvalue { i32, i1 } %2, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %4, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool5.not, label %devm_kcalloc.exit.cleanup43_crit_edge, label %if.end7

devm_kcalloc.exit.cleanup43_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end7:                                          ; preds = %devm_kcalloc.exit
  %leds = getelementptr inbounds %struct.cap11xx_priv, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %leds to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %leds, align 4
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %call.i85 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 116, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool9.not = icmp eq i32 %call.i85, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup43_crit_edge

if.end7.cleanup43_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end11:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %call.i86 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 147, i32 noundef 240, i32 noundef 240, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool14.not = icmp eq i32 %call.i86, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup43_crit_edge

if.end11.cleanup43_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end16:                                         ; preds = %if.end11
  %call17 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %cmp18.not99 = icmp eq ptr %call17, null
  br i1 %cmp18.not99, label %if.end16.cleanup43_crit_edge, label %for.body.lr.ph

if.end16.cleanup43_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

for.body.lr.ph:                                   ; preds = %if.end16
  %num_leds41 = getelementptr inbounds %struct.cap11xx_priv, ptr %priv, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %led.0101 = phi ptr [ %call5.i.i, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %child.0100 = phi ptr [ %call17, %for.body.lr.ph ], [ %call42, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %reg, align 4, !annotation !90
  %call19 = call ptr @of_get_property(ptr noundef nonnull %child.0100, ptr noundef nonnull @.str.35, ptr noundef null) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %cond.false, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %child.0100 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %child.0100, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond = phi ptr [ %12, %cond.false ], [ %call19, %for.body.cond.end_crit_edge ]
  %cdev = getelementptr inbounds %struct.cap11xx_led, ptr %led.0101, i32 0, i32 1
  %13 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond, ptr %cdev, align 4
  %call22 = call ptr @of_get_property(ptr noundef nonnull %child.0100, ptr noundef nonnull @.str.36, ptr noundef null) #7
  %default_trigger = getelementptr inbounds %struct.cap11xx_led, ptr %led.0101, i32 0, i32 1, i32 14
  %14 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call22, ptr %default_trigger, align 4
  %flags = getelementptr inbounds %struct.cap11xx_led, ptr %led.0101, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.cap11xx_led, ptr %led.0101, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cap11xx_led_set, ptr %brightness_set_blocking, align 4
  %max_brightness = getelementptr inbounds %struct.cap11xx_led, ptr %led.0101, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %max_brightness, align 4
  %brightness = getelementptr inbounds %struct.cap11xx_led, ptr %led.0101, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %brightness, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0100, ptr noundef nonnull @.str.37, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp29.not = icmp sgt i32 %call.i.i, -1
  br i1 %cmp29.not, label %lor.lhs.false30, label %cond.end.cleanup.thread_crit_edge

cond.end.cleanup.thread_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

lor.lhs.false30:                                  ; preds = %cond.end
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %num_leds)
  %cmp31.not = icmp ult i32 %20, %num_leds
  br i1 %cmp31.not, label %if.end33, label %lor.lhs.false30.cleanup.thread_crit_edge

lor.lhs.false30.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end33:                                         ; preds = %lor.lhs.false30
  %reg34 = getelementptr inbounds %struct.cap11xx_led, ptr %led.0101, i32 0, i32 2
  %21 = ptrtoint ptr %reg34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %reg34, align 4
  %22 = ptrtoint ptr %led.0101 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %priv, ptr %led.0101, align 4
  %call.i87 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %cdev, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool38.not = icmp eq i32 %call.i87, 0
  br i1 %tobool38.not, label %for.inc, label %if.end33.cleanup.thread_crit_edge

if.end33.cleanup.thread_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end33.cleanup.thread_crit_edge, %lor.lhs.false30.cleanup.thread_crit_edge, %cond.end.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ -22, %lor.lhs.false30.cleanup.thread_crit_edge ], [ -22, %cond.end.cleanup.thread_crit_edge ], [ %call.i87, %if.end33.cleanup.thread_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0100) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  br label %cleanup43

for.inc:                                          ; preds = %if.end33
  %23 = ptrtoint ptr %num_leds41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_leds41, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %num_leds41, align 4
  %incdec.ptr = getelementptr %struct.cap11xx_led, ptr %led.0101, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  %call42 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.0100) #7
  %cmp18.not = icmp eq ptr %call42, null
  br i1 %cmp18.not, label %for.inc.cleanup43_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup43_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

cleanup43:                                        ; preds = %for.inc.cleanup43_crit_edge, %cleanup.thread, %if.end16.cleanup43_crit_edge, %if.end11.cleanup43_crit_edge, %if.end7.cleanup43_crit_edge, %devm_kcalloc.exit.cleanup43_crit_edge, %if.end3.cleanup43_crit_edge, %if.end.cleanup43_crit_edge, %of_get_child_count.exit.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.2 = phi i32 [ 0, %of_get_child_count.exit.cleanup43_crit_edge ], [ -22, %if.end.cleanup43_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup43_crit_edge ], [ %call.i85, %if.end7.cleanup43_crit_edge ], [ %call.i86, %if.end11.cleanup43_crit_edge ], [ %retval.1.ph, %cleanup.thread ], [ 0, %entry.cleanup43_crit_edge ], [ -12, %if.end3.cleanup43_crit_edge ], [ 0, %if.end16.cleanup43_crit_edge ], [ 0, %for.inc.cleanup43_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cap11xx_set_sleep(ptr nocapture noundef readonly %priv, i1 noundef zeroext %sleep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_leds = getelementptr inbounds %struct.cap11xx_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_leds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %cond = select i1 %sleep, i32 16, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 16, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cap11xx_thread_func(i32 noundef %irq_num, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !90
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef 3, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.out_crit_edge, label %for.cond.preheader

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.preheader:                               ; preds = %if.end
  %idev = getelementptr inbounds %struct.cap11xx_priv, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idev, align 4
  %keycodemax18 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %keycodemax18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %keycodemax18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp619.not = icmp eq i32 %8, 0
  br i1 %cmp619.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %9 = phi ptr [ %17, %for.body.for.body_crit_edge ], [ %6, %for.cond.preheader.for.body_crit_edge ]
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cap11xx_priv, ptr %data, i32 0, i32 4, i32 %i.020
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %14 = lshr i32 %13, %i.020
  %15 = and i32 %14, 1
  call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef %11, i32 noundef %15) #7
  %inc = add nuw i32 %i.020, 1
  %16 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %idev, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %keycodemax to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %keycodemax, align 4
  %cmp6 = icmp ult i32 %inc, %19
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %6, %for.cond.preheader.for.end_crit_edge ], [ %17, %for.body.for.end_crit_edge ]
  call void @input_event(ptr noundef %.lcssa, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %out

out:                                              ; preds = %for.end, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cap11xx_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 3, label %entry.return_crit_edge1
    i32 16, label %entry.return_crit_edge2
    i32 17, label %entry.return_crit_edge3
    i32 18, label %entry.return_crit_edge4
    i32 19, label %entry.return_crit_edge5
    i32 20, label %entry.return_crit_edge6
    i32 21, label %entry.return_crit_edge7
    i32 253, label %entry.return_crit_edge8
    i32 254, label %entry.return_crit_edge9
    i32 255, label %entry.return_crit_edge10
  ]

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cap11xx_led_set(ptr nocapture noundef readonly %cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %reg = getelementptr i8, ptr %cdev, i32 400
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %shl = shl nuw i32 1, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 116, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_cap11xx__288_509_cap11xx_i2c_driver_init6, !1, !"__initcall__kmod_cap11xx__288_509_cap11xx_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/cap11xx.c", i32 509, i32 1}
!2 = !{ptr @__exitcall_cap11xx_i2c_driver_exit, !1, !"__exitcall_cap11xx_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/cap11xx.c", i32 511, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/cap11xx.c", i32 512, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/cap11xx.c", i32 513, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/cap11xx.c", i32 502, i32 11}
!12 = !{ptr @cap11xx_i2c_driver, !13, !"cap11xx_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/cap11xx.c", i32 500, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/cap11xx.c", i32 336, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cap11xx_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cap11xx_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/cap11xx.c", i32 342, i32 3}
!24 = !{ptr @cap11xx_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cap11xx_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @cap11xx_i2c_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/cap11xx.c", i32 352, i32 17}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/keyboard/cap11xx.c", i32 361, i32 3}
!31 = !{ptr @cap11xx_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cap11xx_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/keyboard/cap11xx.c", i32 371, i32 3}
!35 = !{ptr @cap11xx_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cap11xx_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/keyboard/cap11xx.c", i32 380, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cap11xx_i2c_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @cap11xx_i2c_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/keyboard/cap11xx.c", i32 383, i32 34}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/keyboard/cap11xx.c", i32 385, i32 4}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cap11xx_i2c_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @cap11xx_i2c_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/keyboard/cap11xx.c", i32 390, i32 4}
!51 = !{ptr @cap11xx_i2c_probe._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cap11xx_i2c_probe._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/keyboard/cap11xx.c", i32 394, i32 35}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/cap11xx.c", i32 408, i32 35}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/keyboard/cap11xx.c", i32 429, i32 21}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/keyboard/cap11xx.c", i32 433, i32 34}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/keyboard/cap11xx.c", i32 470, i32 3}
!63 = !{ptr @cap11xx_i2c_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cap11xx_i2c_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @cap11xx_devices, !66, !"cap11xx_devices", i1 false, i1 false}
!66 = !{!"../drivers/input/keyboard/cap11xx.c", i32 104, i32 38}
!67 = !{ptr @cap11xx_regmap_config, !68, !"cap11xx_regmap_config", i1 false, i1 false}
!68 = !{!"../drivers/input/keyboard/cap11xx.c", i32 166, i32 35}
!69 = !{ptr @cap11xx_reg_defaults, !70, !"cap11xx_reg_defaults", i1 false, i1 false}
!70 = !{!"../drivers/input/keyboard/cap11xx.c", i32 111, i32 33}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/keyboard/cap11xx.c", i32 287, i32 27}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/keyboard/cap11xx.c", i32 289, i32 27}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/keyboard/cap11xx.c", i32 295, i32 39}
!77 = !{ptr @cap11xx_dt_ids, !78, !"cap11xx_dt_ids", i1 false, i1 false}
!78 = !{!"../drivers/input/keyboard/cap11xx.c", i32 482, i32 34}
!79 = !{ptr @cap11xx_i2c_ids, !80, !"cap11xx_i2c_ids", i1 false, i1 false}
!80 = !{!"../drivers/input/keyboard/cap11xx.c", i32 491, i32 35}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{i32 0, i32 33}
!92 = !{!"branch_weights", i32 1, i32 2000}
