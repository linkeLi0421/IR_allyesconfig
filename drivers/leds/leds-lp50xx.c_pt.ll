; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lp50xx.c_pt.bc'
source_filename = "../drivers/leds/leds-lp50xx.c"
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
%struct.lp50xx_chip_info = type { ptr, i32, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.lp50xx = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, i32, [0 x %struct.lp50xx_led] }
%struct.lp50xx_led = type { %struct.led_classdev_mc, ptr, i32, i8, i32 }
%struct.led_classdev_mc = type { %struct.led_classdev, i32, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.mc_subled = type { i32, i32, i32, i32 }

@__initcall__kmod_leds_lp50xx__288_619_lp50xx_driver_init6 = internal global ptr @lp50xx_driver_init, section ".initcall6.init", align 4
@lp50xx_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @lp50xx_remove, ptr @lp50xx_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_lp50xx_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp50xx_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp50xx_driver_exit = internal global ptr @lp50xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [60 x i8] c"leds_lp50xx.description=Texas Instruments LP50XX LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [47 x i8] c"leds_lp50xx.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"leds_lp50xx.file=drivers/leds/leds-lp50xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"leds_lp50xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp50xx\00", [25 x i8] zeroinitializer }, align 32
@of_lp50xx_leds_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp5009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lp50xx_chip_info_tbl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp5012\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @lp50xx_chip_info_tbl, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp5018\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @lp50xx_chip_info_tbl, i64 32) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp5024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @lp50xx_chip_info_tbl, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp5030\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @lp50xx_chip_info_tbl, i64 64) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp5036\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @lp50xx_chip_info_tbl, i64 80) }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@lp50xx_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp5009\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @lp50xx_chip_info_tbl to i32) }, %struct.i2c_device_id { [20 x i8] c"lp5012\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @lp50xx_chip_info_tbl, i64 16) to i32) }, %struct.i2c_device_id { [20 x i8] c"lp5018\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @lp50xx_chip_info_tbl, i64 32) to i32) }, %struct.i2c_device_id { [20 x i8] c"lp5024\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @lp50xx_chip_info_tbl, i64 48) to i32) }, %struct.i2c_device_id { [20 x i8] c"lp5030\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @lp50xx_chip_info_tbl, i64 64) to i32) }, %struct.i2c_device_id { [20 x i8] c"lp5036\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @lp50xx_chip_info_tbl, i64 80) to i32) }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lp50xx_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to disable chip\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lp50xx_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lp50xx.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp50xx_remove._entry_ptr = internal global ptr @lp50xx_remove._entry, section ".printk_index", align 4
@lp50xx_remove._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to disable regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@lp50xx_remove._entry_ptr.8 = internal global ptr @lp50xx_remove._entry.6, section ".printk_index", align 4
@lp50xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"LEDs are not defined in device tree!\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp50xx_probe\00", [19 x i8] zeroinitializer }, align 32
@lp50xx_probe._entry_ptr = internal global ptr @lp50xx_probe._entry, section ".printk_index", align 4
@lp50xx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&led->lock\00", [21 x i8] zeroinitializer }, align 32
@lp50xx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"leds_lp50xx:547:(led->chip_info->lp50xx_regmap_config)->lock\00", [35 x i8] zeroinitializer }, align 32
@lp50xx_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lp50xx_probe._entry_ptr.15 = internal global ptr @lp50xx_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get enable GPIO\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vled\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@lp50xx_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 466, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg property is invalid\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lp50xx_probe_dt\00", [16 x i8] zeroinitializer }, align 32
@lp50xx_probe_dt._entry_ptr = internal global ptr @lp50xx_probe_dt._entry, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"color\00", [26 x i8] zeroinitializer }, align 32
@lp50xx_probe_dt._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.3, i32 493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot read color\0A\00", [45 x i8] zeroinitializer }, align 32
@lp50xx_probe_dt._entry_ptr.25 = internal global ptr @lp50xx_probe_dt._entry.23, section ".printk_index", align 4
@lp50xx_probe_dt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"led register err: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@lp50xx_probe_dt._entry_ptr.28 = internal global ptr @lp50xx_probe_dt._entry.26, section ".printk_index", align 4
@lp50xx_probe_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.29, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lp50xx_probe_leds\00", [46 x i8] zeroinitializer }, align 32
@lp50xx_probe_leds._entry_ptr = internal global ptr @lp50xx_probe_leds._entry, section ".printk_index", align 4
@lp50xx_probe_leds._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg property is missing\0A\00", [39 x i8] zeroinitializer }, align 32
@lp50xx_probe_leds._entry_ptr.32 = internal global ptr @lp50xx_probe_leds._entry.30, section ".printk_index", align 4
@lp50xx_probe_leds._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot setup banked LEDs\0A\00", [38 x i8] zeroinitializer }, align 32
@lp50xx_probe_leds._entry_ptr.35 = internal global ptr @lp50xx_probe_leds._entry.33, section ".printk_index", align 4
@lp50xx_probe_leds._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.3, i32 425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"led reg property missing\0A\00", [38 x i8] zeroinitializer }, align 32
@lp50xx_probe_leds._entry_ptr.38 = internal global ptr @lp50xx_probe_leds._entry.36, section ".printk_index", align 4
@lp50xx_probe_leds._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"led-sources property is invalid\0A\00", [63 x i8] zeroinitializer }, align 32
@lp50xx_probe_leds._entry_ptr.41 = internal global ptr @lp50xx_probe_leds._entry.39, section ".printk_index", align 4
@lp50xx_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot write brightness value %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lp50xx_brightness_set\00", [42 x i8] zeroinitializer }, align 32
@lp50xx_brightness_set._entry_ptr = internal global ptr @lp50xx_brightness_set._entry, section ".printk_index", align 4
@lp50xx_brightness_set._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot write intensity value %d\0A\00", [63 x i8] zeroinitializer }, align 32
@lp50xx_brightness_set._entry_ptr.46 = internal global ptr @lp50xx_brightness_set._entry.44, section ".printk_index", align 4
@lp50xx_chip_info_tbl = internal constant { [6 x %struct.lp50xx_chip_info], [32 x i8] } { [6 x %struct.lp50xx_chip_info] [%struct.lp50xx_chip_info { ptr @lp5012_regmap_config, i32 0, i8 2, i8 6, i8 7, i8 11, i8 3, i8 4, i8 23 }, %struct.lp50xx_chip_info { ptr @lp5012_regmap_config, i32 1, i8 4, i8 12, i8 7, i8 11, i8 3, i8 4, i8 23 }, %struct.lp50xx_chip_info { ptr @lp5024_regmap_config, i32 2, i8 6, i8 18, i8 7, i8 15, i8 3, i8 4, i8 39 }, %struct.lp50xx_chip_info { ptr @lp5024_regmap_config, i32 3, i8 8, i8 24, i8 7, i8 15, i8 3, i8 4, i8 39 }, %struct.lp50xx_chip_info { ptr @lp5036_regmap_config, i32 4, i8 10, i8 30, i8 8, i8 20, i8 4, i8 5, i8 56 }, %struct.lp50xx_chip_info { ptr @lp5036_regmap_config, i32 5, i8 12, i8 36, i8 8, i8 20, i8 4, i8 5, i8 56 }], [32 x i8] zeroinitializer }, align 32
@lp5012_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 23, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lp5012_reg_defs, i32 24, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@lp5024_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 39, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lp5024_reg_defs, i32 40, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@lp5036_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lp5036_reg_defs, i32 58, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@lp5012_reg_defs = internal constant { [24 x %struct.reg_default], [32 x i8] } { [24 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 60 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 255 }, %struct.reg_default { i32 4, i32 15 }, %struct.reg_default { i32 5, i32 15 }, %struct.reg_default { i32 6, i32 15 }, %struct.reg_default { i32 7, i32 15 }, %struct.reg_default { i32 8, i32 255 }, %struct.reg_default { i32 9, i32 255 }, %struct.reg_default { i32 10, i32 255 }, %struct.reg_default { i32 11, i32 15 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }], [32 x i8] zeroinitializer }, align 32
@lp5024_reg_defs = internal constant { [40 x %struct.reg_default], [64 x i8] } { [40 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 60 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 255 }, %struct.reg_default { i32 4, i32 15 }, %struct.reg_default { i32 5, i32 15 }, %struct.reg_default { i32 6, i32 15 }, %struct.reg_default { i32 7, i32 15 }, %struct.reg_default { i32 8, i32 255 }, %struct.reg_default { i32 9, i32 255 }, %struct.reg_default { i32 10, i32 255 }, %struct.reg_default { i32 11, i32 255 }, %struct.reg_default { i32 12, i32 255 }, %struct.reg_default { i32 13, i32 255 }, %struct.reg_default { i32 14, i32 255 }, %struct.reg_default { i32 15, i32 15 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }], [64 x i8] zeroinitializer }, align 32
@lp5036_reg_defs = internal constant { [58 x %struct.reg_default], [112 x i8] } { [58 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 60 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 255 }, %struct.reg_default { i32 5, i32 15 }, %struct.reg_default { i32 6, i32 15 }, %struct.reg_default { i32 7, i32 15 }, %struct.reg_default { i32 8, i32 15 }, %struct.reg_default { i32 8, i32 255 }, %struct.reg_default { i32 9, i32 255 }, %struct.reg_default { i32 10, i32 255 }, %struct.reg_default { i32 11, i32 255 }, %struct.reg_default { i32 12, i32 255 }, %struct.reg_default { i32 13, i32 255 }, %struct.reg_default { i32 14, i32 255 }, %struct.reg_default { i32 15, i32 255 }, %struct.reg_default { i32 16, i32 255 }, %struct.reg_default { i32 17, i32 255 }, %struct.reg_default { i32 18, i32 255 }, %struct.reg_default { i32 19, i32 255 }, %struct.reg_default { i32 20, i32 15 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }], [112 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"lp50xx_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 610, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 612, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"of_lp50xx_leds_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 599, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"lp50xx_id\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 588, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 573, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 580, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 532, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 541, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 546, i32 16 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 550, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 453, i32 57 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 456, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 458, i32 50 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 464, i32 42 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 466, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 489, i32 45 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 493, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 511, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 403, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 411, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 417, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 425, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 430, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 323, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 339, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [21 x i8] c"lp50xx_chip_info_tbl\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 196, i32 38 }
@___asan_gen_.194 = private unnamed_addr constant [21 x i8] c"lp5012_regmap_config\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 133, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant [21 x i8] c"lp5024_regmap_config\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 143, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant [21 x i8] c"lp5036_regmap_config\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 153, i32 35 }
@___asan_gen_.203 = private unnamed_addr constant [16 x i8] c"lp5012_reg_defs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 66, i32 33 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"lp5024_reg_defs\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 85, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant [16 x i8] c"lp5036_reg_defs\00", align 1
@___asan_gen_.210 = private constant [30 x i8] c"../drivers/leds/leds-lp50xx.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 107, i32 33 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lp50xx_driver_exit, ptr @__initcall__kmod_leds_lp50xx__288_619_lp50xx_driver_init6, ptr @lp50xx_brightness_set._entry, ptr @lp50xx_brightness_set._entry.44, ptr @lp50xx_brightness_set._entry_ptr, ptr @lp50xx_brightness_set._entry_ptr.46, ptr @lp50xx_driver_exit, ptr @lp50xx_probe._entry, ptr @lp50xx_probe._entry.13, ptr @lp50xx_probe._entry_ptr, ptr @lp50xx_probe._entry_ptr.15, ptr @lp50xx_probe_dt._entry, ptr @lp50xx_probe_dt._entry.23, ptr @lp50xx_probe_dt._entry.26, ptr @lp50xx_probe_dt._entry_ptr, ptr @lp50xx_probe_dt._entry_ptr.25, ptr @lp50xx_probe_dt._entry_ptr.28, ptr @lp50xx_probe_leds._entry, ptr @lp50xx_probe_leds._entry.30, ptr @lp50xx_probe_leds._entry.33, ptr @lp50xx_probe_leds._entry.36, ptr @lp50xx_probe_leds._entry.39, ptr @lp50xx_probe_leds._entry_ptr, ptr @lp50xx_probe_leds._entry_ptr.32, ptr @lp50xx_probe_leds._entry_ptr.35, ptr @lp50xx_probe_leds._entry_ptr.38, ptr @lp50xx_probe_leds._entry_ptr.41, ptr @lp50xx_remove._entry, ptr @lp50xx_remove._entry.6, ptr @lp50xx_remove._entry_ptr, ptr @lp50xx_remove._entry_ptr.8, ptr @lp50xx_driver, ptr @.str, ptr @of_lp50xx_leds_match, ptr @lp50xx_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @lp50xx_probe.__key, ptr @.str.11, ptr @lp50xx_probe._key, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @lp50xx_chip_info_tbl, ptr @lp5012_regmap_config, ptr @lp5024_regmap_config, ptr @lp5036_regmap_config, ptr @lp5012_reg_defs, ptr @lp5024_reg_defs, ptr @lp5036_reg_defs], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lp50xx_leds_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_remove._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe_dt._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe_dt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe_leds._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe_leds._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe_leds._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_probe_leds._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_brightness_set._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp50xx_chip_info_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5012_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5024_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5036_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5012_reg_defs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5024_reg_defs to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5036_reg_defs to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp50xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp50xx_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp50xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lp50xx_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp50xx_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lp50xx_enable_disable.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lp50xx_enable_disable.exit:                       ; preds = %entry
  %regmap4.i = getelementptr inbounds %struct.lp50xx, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap4.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %if.end, label %lp50xx_enable_disable.exit.do.end_crit_edge

lp50xx_enable_disable.exit.do.end_crit_edge:      ; preds = %lp50xx_enable_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lp50xx_enable_disable.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i24 = phi i32 [ %call5.i, %lp50xx_enable_disable.exit.do.end_crit_edge ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.lp50xx, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %lp50xx_enable_disable.exit
  %regulator = getelementptr inbounds %struct.lp50xx, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %call5 = tail call i32 @regulator_disable(ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then3.if.end13_crit_edge, label %do.end10

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end10:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.lp50xx, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7) #9
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %if.then3.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %lock = getelementptr inbounds %struct.lp50xx, ptr %1, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end
  %retval.0 = phi i32 [ %retval.0.i24, %do.end ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp50xx_probe(ptr noundef %client) #2 align 64 {
entry:
  %led_banks.i.i = alloca [12 x i32], align 4
  %led_number.i.i = alloca i32, align 4
  %init_data.i = alloca %struct.led_init_data, align 4
  %color_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call i32 @device_get_child_node_count(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 424) #6
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = add nuw i32 %2, 120
  %retval.0.i = select i1 %1, i32 -1, i32 %3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.lp50xx, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @lp50xx_probe.__key) #6
  %client11 = getelementptr inbounds %struct.lp50xx, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %client11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %client11, align 4
  %dev13 = getelementptr inbounds %struct.lp50xx, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev13, align 4
  %call15 = tail call ptr @device_get_match_data(ptr noundef %dev) #6
  %chip_info = getelementptr inbounds %struct.lp50xx, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %chip_info, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call15, align 4
  %call17 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef %9, ptr noundef nonnull @lp50xx_probe._key, ptr noundef nonnull @.str.12) #6
  %regmap = getelementptr inbounds %struct.lp50xx, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end27

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %11) #9
  br label %cleanup

if.end27:                                         ; preds = %do.body8
  %12 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip_info, align 4
  %reset_reg.i = getelementptr inbounds %struct.lp50xx_chip_info, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %reset_reg.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reset_reg.i, align 2
  %conv.i = zext i8 %15 to i32
  %call.i65 = tail call i32 @regmap_write(ptr noundef %call17, i32 noundef %conv.i, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool29.not = icmp eq i32 %call.i65, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call.i66 = tail call i32 @gpiod_direction_output(ptr noundef %17, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i, label %lp50xx_enable_disable.exit, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lp50xx_enable_disable.exit:                       ; preds = %if.end31
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 0, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool33.not = icmp eq i32 %call5.i, 0
  br i1 %tobool33.not, label %if.end35, label %lp50xx_enable_disable.exit.cleanup_crit_edge

lp50xx_enable_disable.exit.cleanup_crit_edge:     ; preds = %lp50xx_enable_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %lp50xx_enable_disable.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #6
  %20 = call ptr @memset(ptr %init_data.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %color_id.i) #6
  %21 = ptrtoint ptr %color_id.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %color_id.i, align 4, !annotation !120
  %22 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev13, align 4
  %call.i68 = tail call ptr @devm_gpiod_get_optional(ptr noundef %23, ptr noundef nonnull @.str.16, i32 noundef 3) #6
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i68, ptr %call.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i68, inttoptr (i32 -4096 to ptr)
  %25 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev13, align 4
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i69

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call.i68 to i32
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %26, i32 noundef %27, ptr noundef nonnull @.str.17) #6
  br label %lp50xx_probe_dt.exit

if.end.i69:                                       ; preds = %if.end35
  %call8.i = tail call ptr @devm_regulator_get(ptr noundef %26, ptr noundef nonnull @.str.18) #6
  %regulator.i = getelementptr inbounds %struct.lp50xx, ptr %call.i, i32 0, i32 1
  %cmp.i116.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i116.i, ptr null, ptr %call8.i
  %28 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %spec.store.select.i, ptr %regulator.i, align 4
  %29 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev13, align 4
  %call15.i = tail call ptr @device_get_next_child_node(ptr noundef %30, ptr noundef null) #6
  %tobool.not148.i = icmp eq ptr %call15.i, null
  br i1 %tobool.not148.i, label %if.end.i69.lp50xx_probe_dt.exit_crit_edge, label %for.body.lr.ph.i

if.end.i69.lp50xx_probe_dt.exit_crit_edge:        ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp50xx_probe_dt.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i69
  %num_of_banked_leds.i.i = getelementptr inbounds %struct.lp50xx, ptr %call.i, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end57.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0150.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc58.i, %if.end57.i.for.body.i_crit_edge ]
  %child.0149.i = phi ptr [ %call15.i, %for.body.lr.ph.i ], [ %call61.i, %if.end57.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.lp50xx, ptr %call.i, i32 0, i32 8, i32 %i.0150.i
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0149.i, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i70 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i70, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.20) #9
  br label %child_out.i

if.end19.i:                                       ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %led_banks.i.i) #6
  %33 = call ptr @memset(ptr %led_banks.i.i, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %led_number.i.i) #6
  %34 = ptrtoint ptr %led_number.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %led_number.i.i, align 4, !annotation !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i117.i = icmp ugt i32 %call.i.i, 1
  br i1 %cmp.i117.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end19.i
  %35 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip_info, align 4
  %max_modules.i.i = getelementptr inbounds %struct.lp50xx_chip_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %max_modules.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_modules.i.i, align 4
  %conv.i.i = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %conv.i.i)
  %cmp1.i.i = icmp ugt i32 %call.i.i, %conv.i.i
  br i1 %cmp1.i.i, label %if.then.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge, label %if.end.i.i

if.then.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp50xx_probe_leds.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %39 = ptrtoint ptr %num_of_banked_leds.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i.i, ptr %num_of_banked_leds.i.i, align 4
  %call.i118.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0149.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %led_banks.i.i, i32 noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.i)
  %tobool.not.i.i = icmp eq i32 %call.i118.i, 0
  br i1 %tobool.not.i.i, label %if.end9.i.i, label %if.end.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge

if.end.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp50xx_probe_leds.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %40 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip_info, align 4
  %max_modules.i.i.i = getelementptr inbounds %struct.lp50xx_chip_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %max_modules.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %max_modules.i.i.i, align 4
  %conv.i.i.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp32.not.i.i.i = icmp eq i8 %43, 0
  br i1 %cmp32.not.i.i.i, label %if.end9.i.i.for.end.i.i.i_crit_edge, label %if.end9.i.i.for.body.i.i.i_crit_edge

if.end9.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.end9.i.i
  br label %for.body.i.i.i

if.end9.i.i.for.end.i.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end9.i.i.for.body.i.i.i_crit_edge
  %i.034.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end9.i.i.for.body.i.i.i_crit_edge ]
  %bank_enable_mask.033.i.i.i = phi i32 [ %bank_enable_mask.1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end9.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i32, ptr %led_banks.i.i, i32 %i.034.i.i.i
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i.i = icmp eq i32 %45, 0
  %shl.i.i.i = shl nuw i32 1, %45
  %or.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %shl.i.i.i
  %bank_enable_mask.1.i.i.i = or i32 %or.i.i.i, %bank_enable_mask.033.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.034.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %if.end9.i.i.for.end.i.i.i_crit_edge
  %bank_enable_mask.0.lcssa.i.i.i = phi i32 [ 0, %if.end9.i.i.for.end.i.i.i_crit_edge ], [ %bank_enable_mask.1.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  %shr.i.i.i = lshr i32 %bank_enable_mask.0.lcssa.i.i.i, 8
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %conv5.i.i.i = and i32 %bank_enable_mask.0.lcssa.i.i.i, 255
  %call.i.i.i = call i32 @regmap_write(ptr noundef %47, i32 noundef 2, i32 noundef %conv5.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end8.i.i.i, label %for.end.i.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge

for.end.i.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp50xx_probe_leds.exit.thread.i

if.end8.i.i.i:                                    ; preds = %for.end.i.i.i
  %48 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip_info, align 4
  %model_id.i.i.i = getelementptr inbounds %struct.lp50xx_chip_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %model_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %model_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp10.i.i.i = icmp sgt i32 %51, 3
  br i1 %cmp10.i.i.i, label %lp50xx_set_banks.exit.i.i, label %if.end8.i.i.i.if.end18.i.i_crit_edge

if.end8.i.i.i.if.end18.i.i_crit_edge:             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i.i

lp50xx_set_banks.exit.i.i:                        ; preds = %if.end8.i.i.i
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %conv14.i.i.i = and i32 %shr.i.i.i, 255
  %call15.i.i.i = call i32 @regmap_write(ptr noundef %53, i32 noundef 3, i32 noundef %conv14.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool12.not.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool12.not.i.i, label %lp50xx_set_banks.exit.i.i.if.end18.i.i_crit_edge, label %lp50xx_set_banks.exit.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge

lp50xx_set_banks.exit.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge: ; preds = %lp50xx_set_banks.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp50xx_probe_leds.exit.thread.i

lp50xx_set_banks.exit.i.i.if.end18.i.i_crit_edge: ; preds = %lp50xx_set_banks.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %lp50xx_set_banks.exit.i.i.if.end18.i.i_crit_edge, %if.end8.i.i.i.if.end18.i.i_crit_edge
  %ctrl_bank_enabled.i.i = getelementptr %struct.lp50xx, ptr %call.i, i32 0, i32 8, i32 %i.0150.i, i32 3
  %54 = ptrtoint ptr %ctrl_bank_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %ctrl_bank_enabled.i.i, align 4
  br label %if.end23.i

if.else.i.i:                                      ; preds = %if.end19.i
  %call.i60.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0149.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %led_number.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i.i)
  %tobool20.not.i.i = icmp eq i32 %call.i60.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end26.i.i, label %if.else.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge

if.else.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp50xx_probe_leds.exit.thread.i

if.end26.i.i:                                     ; preds = %if.else.i.i
  %55 = ptrtoint ptr %led_number.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %led_number.i.i, align 4
  %57 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip_info, align 4
  %num_leds28.i.i = getelementptr inbounds %struct.lp50xx_chip_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %num_leds28.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_leds28.i.i, align 1
  %conv29.i.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv29.i.i)
  %cmp30.i.i = icmp sgt i32 %56, %conv29.i.i
  br i1 %cmp30.i.i, label %if.end26.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge, label %if.end37.i.i

if.end26.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp50xx_probe_leds.exit.thread.i

if.end37.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %led_number38.i.i = getelementptr %struct.lp50xx, ptr %call.i, i32 0, i32 8, i32 %i.0150.i, i32 4
  %61 = ptrtoint ptr %led_number38.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %56, ptr %led_number38.i.i, align 4
  br label %if.end23.i

lp50xx_probe_leds.exit.thread.i:                  ; preds = %if.end26.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge, %if.else.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge, %lp50xx_set_banks.exit.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge, %for.end.i.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge, %if.end.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge, %if.then.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge
  %.str.20.sink.i = phi ptr [ @.str.20, %if.then.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ], [ @.str.31, %if.end.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ], [ @.str.34, %lp50xx_set_banks.exit.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ], [ @.str.34, %for.end.i.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ], [ @.str.37, %if.else.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ], [ @.str.40, %if.end26.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ]
  %retval.0.i.ph.i = phi i32 [ -22, %if.then.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ], [ %call.i118.i, %if.end.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ], [ %call15.i.i.i, %lp50xx_set_banks.exit.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ], [ %call.i.i.i, %for.end.i.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ], [ %call.i60.i.i, %if.else.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ], [ -22, %if.end26.i.i.lp50xx_probe_leds.exit.thread.i_crit_edge ]
  %62 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull %.str.20.sink.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_number.i.i) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %led_banks.i.i) #6
  br label %child_out.i

if.end23.i:                                       ; preds = %if.end37.i.i, %if.end18.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_number.i.i) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %led_banks.i.i) #6
  %64 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %child.0149.i, ptr %init_data.i, align 4
  %65 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev13, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %66, i32 noundef 48, i32 noundef 3520) #6
  %tobool26.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool26.not.i, label %if.end23.i.child_out.i_crit_edge, label %if.end28.i

if.end23.i.child_out.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %child_out.i

if.end28.i:                                       ; preds = %if.end23.i
  %call29.i = call ptr @fwnode_get_next_child_node(ptr noundef nonnull %child.0149.i, ptr noundef null) #6
  %tobool31.not145.i = icmp eq ptr %call29.i, null
  br i1 %tobool31.not145.i, label %if.end28.i.for.end.i_crit_edge, label %if.end28.i.for.body32.i_crit_edge

if.end28.i.for.body32.i_crit_edge:                ; preds = %if.end28.i
  br label %for.body32.i

if.end28.i.for.end.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body32.i:                                     ; preds = %if.end40.i.for.body32.i_crit_edge, %if.end28.i.for.body32.i_crit_edge
  %num_colors.0147.i = phi i32 [ %inc.i, %if.end40.i.for.body32.i_crit_edge ], [ 0, %if.end28.i.for.body32.i_crit_edge ]
  %led_node.0146.i = phi ptr [ %call42.i, %if.end40.i.for.body32.i_crit_edge ], [ %call29.i, %if.end28.i.for.body32.i_crit_edge ]
  %call.i119.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %led_node.0146.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %color_id.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119.i)
  %tobool34.not.i = icmp eq i32 %call.i119.i, 0
  br i1 %tobool34.not.i, label %if.end40.i, label %if.then35.i

if.then35.i:                                      ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @fwnode_handle_put(ptr noundef nonnull %led_node.0146.i) #6
  %67 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.24) #9
  br label %child_out.i

if.end40.i:                                       ; preds = %for.body32.i
  %69 = ptrtoint ptr %color_id.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %color_id.i, align 4
  %arrayidx41.i = getelementptr %struct.mc_subled, ptr %call5.i.i.i, i32 %num_colors.0147.i
  %71 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx41.i, align 4
  %inc.i = add i32 %num_colors.0147.i, 1
  %call42.i = call ptr @fwnode_get_next_child_node(ptr noundef nonnull %child.0149.i, ptr noundef nonnull %led_node.0146.i) #6
  %tobool31.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool31.not.i, label %if.end40.i.for.end.i_crit_edge, label %if.end40.i.for.body32.i_crit_edge

if.end40.i.for.body32.i_crit_edge:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body32.i

if.end40.i.for.end.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end40.i.for.end.i_crit_edge, %if.end28.i.for.end.i_crit_edge
  %num_colors.0.lcssa.i = phi i32 [ 0, %if.end28.i.for.end.i_crit_edge ], [ %inc.i, %if.end40.i.for.end.i_crit_edge ]
  %priv43.i = getelementptr %struct.lp50xx, ptr %call.i, i32 0, i32 8, i32 %i.0150.i, i32 1
  %72 = ptrtoint ptr %priv43.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i, ptr %priv43.i, align 4
  %num_colors44.i = getelementptr inbounds %struct.led_classdev_mc, ptr %arrayidx.i, i32 0, i32 1
  %73 = ptrtoint ptr %num_colors44.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %num_colors.0.lcssa.i, ptr %num_colors44.i, align 4
  %subled_info.i = getelementptr inbounds %struct.led_classdev_mc, ptr %arrayidx.i, i32 0, i32 2
  %74 = ptrtoint ptr %subled_info.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call5.i.i.i, ptr %subled_info.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx.i, i32 0, i32 6
  %75 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @lp50xx_brightness_set, ptr %brightness_set_blocking.i, align 4
  %76 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev13, align 4
  %call50.i = call i32 @devm_led_classdev_multicolor_register_ext(ptr noundef %77, ptr noundef %arrayidx.i, ptr noundef nonnull %init_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end57.i, label %do.end55.i

do.end55.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.27, i32 noundef %call50.i) #9
  br label %child_out.i

if.end57.i:                                       ; preds = %for.end.i
  %inc58.i = add i32 %i.0150.i, 1
  %80 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev13, align 4
  %call61.i = call ptr @device_get_next_child_node(ptr noundef %81, ptr noundef nonnull %child.0149.i) #6
  %tobool.not.i71 = icmp eq ptr %call61.i, null
  br i1 %tobool.not.i71, label %if.end57.i.lp50xx_probe_dt.exit_crit_edge, label %if.end57.i.for.body.i_crit_edge

if.end57.i.for.body.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end57.i.lp50xx_probe_dt.exit_crit_edge:        ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp50xx_probe_dt.exit

child_out.i:                                      ; preds = %do.end55.i, %if.then35.i, %if.end23.i.child_out.i_crit_edge, %lp50xx_probe_leds.exit.thread.i, %do.end.i
  %ret.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %call.i119.i, %if.then35.i ], [ %call50.i, %do.end55.i ], [ %retval.0.i.ph.i, %lp50xx_probe_leds.exit.thread.i ], [ -12, %if.end23.i.child_out.i_crit_edge ]
  call void @fwnode_handle_put(ptr noundef nonnull %child.0149.i) #6
  br label %lp50xx_probe_dt.exit

lp50xx_probe_dt.exit:                             ; preds = %child_out.i, %if.end57.i.lp50xx_probe_dt.exit_crit_edge, %if.end.i69.lp50xx_probe_dt.exit_crit_edge, %if.then.i
  %retval.0.i72 = phi i32 [ %call6.i, %if.then.i ], [ %ret.0.i, %child_out.i ], [ 0, %if.end.i69.lp50xx_probe_dt.exit_crit_edge ], [ 0, %if.end57.i.lp50xx_probe_dt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %color_id.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  br label %cleanup

cleanup:                                          ; preds = %lp50xx_probe_dt.exit, %lp50xx_enable_disable.exit.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then20, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %11, %if.then20 ], [ %retval.0.i72, %lp50xx_probe_dt.exit ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i65, %if.end27.cleanup_crit_edge ], [ %call5.i, %lp50xx_enable_disable.exit.cleanup_crit_edge ], [ %call.i66, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp50xx_brightness_set(ptr nocapture noundef readonly %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.lp50xx_led, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_info = getelementptr inbounds %struct.lp50xx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %lock = getelementptr inbounds %struct.lp50xx, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %ctrl_bank_enabled = getelementptr inbounds %struct.lp50xx_led, ptr %cdev, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl_bank_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_bank_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bank_brt_reg = getelementptr inbounds %struct.lp50xx_chip_info, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %bank_brt_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank_brt_reg, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %led_brightness0_reg = getelementptr inbounds %struct.lp50xx_chip_info, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %led_brightness0_reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %led_brightness0_reg, align 2
  %led_number = getelementptr inbounds %struct.lp50xx_led, ptr %cdev, i32 0, i32 4
  %10 = ptrtoint ptr %led_number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %led_number, align 4
  %12 = trunc i32 %11 to i8
  %conv3 = add i8 %9, %12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %reg_val.0 = phi i8 [ %7, %if.then ], [ %conv3, %if.else ]
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %regmap = getelementptr inbounds %struct.lp50xx, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %conv5 = zext i8 %reg_val.0 to i32
  %call6 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %conv5, i32 noundef %brightness) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end
  %num_colors = getelementptr inbounds %struct.led_classdev_mc, ptr %cdev, i32 0, i32 1
  %17 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_colors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp65.not = icmp eq i32 %18, 0
  br i1 %cmp65.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bank_mix_reg = getelementptr inbounds %struct.lp50xx_chip_info, ptr %3, i32 0, i32 7
  %led_number19 = getelementptr inbounds %struct.lp50xx_led, ptr %cdev, i32 0, i32 4
  %mix_out0_reg = getelementptr inbounds %struct.lp50xx_chip_info, ptr %3, i32 0, i32 5
  %subled_info = getelementptr inbounds %struct.led_classdev_mc, ptr %cdev, i32 0, i32 2
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.lp50xx, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.42, i32 noundef %call6) #9
  br label %out

for.cond:                                         ; preds = %if.end26
  %inc = add nuw i32 %i.066, 1
  %23 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_colors, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %25 = ptrtoint ptr %ctrl_bank_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctrl_bank_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool13.not = icmp eq i8 %26, 0
  br i1 %tobool13.not, label %if.else18, label %for.body.if.end26_crit_edge

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %led_number19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %led_number19, align 4
  %mul = mul i32 %28, 3
  %add20 = add i32 %mul, %i.066
  br label %if.end26

if.end26:                                         ; preds = %if.else18, %for.body.if.end26_crit_edge
  %mix_out0_reg.sink = phi ptr [ %mix_out0_reg, %if.else18 ], [ %bank_mix_reg, %for.body.if.end26_crit_edge ]
  %add20.sink = phi i32 [ %add20, %if.else18 ], [ %i.066, %for.body.if.end26_crit_edge ]
  %29 = ptrtoint ptr %mix_out0_reg.sink to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mix_out0_reg.sink, align 1
  %31 = trunc i32 %add20.sink to i8
  %conv25 = add i8 %30, %31
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %regmap28 = getelementptr inbounds %struct.lp50xx, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %regmap28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap28, align 4
  %conv29 = zext i8 %conv25 to i32
  %36 = ptrtoint ptr %subled_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %subled_info, align 4
  %intensity = getelementptr %struct.mc_subled, ptr %37, i32 %i.066, i32 2
  %38 = ptrtoint ptr %intensity to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %intensity, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %conv29, i32 noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.cond, label %do.end35

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 4
  %dev37 = getelementptr inbounds %struct.lp50xx, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.45, i32 noundef %call30) #9
  br label %out

out:                                              ; preds = %do.end35, %for.cond.out_crit_edge, %do.end, %for.cond.preheader.out_crit_edge
  %ret.1 = phi i32 [ %call6, %do.end ], [ %call30, %do.end35 ], [ 0, %for.cond.preheader.out_crit_edge ], [ 0, %for.cond.out_crit_edge ]
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %lock40 = getelementptr inbounds %struct.lp50xx, ptr %45, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %lock40) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_multicolor_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_leds_lp50xx__288_619_lp50xx_driver_init6, !1, !"__initcall__kmod_leds_lp50xx__288_619_lp50xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lp50xx.c", i32 619, i32 1}
!2 = !{ptr @__exitcall_lp50xx_driver_exit, !1, !"__exitcall_lp50xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lp50xx.c", i32 621, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lp50xx.c", i32 622, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lp50xx.c", i32 623, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lp50xx.c", i32 612, i32 11}
!12 = !{ptr @lp50xx_driver, !13, !"lp50xx_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lp50xx.c", i32 610, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lp50xx.c", i32 573, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lp50xx_remove._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lp50xx_remove._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-lp50xx.c", i32 580, i32 4}
!24 = !{ptr @lp50xx_remove._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lp50xx_remove._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-lp50xx.c", i32 532, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @lp50xx_probe._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @lp50xx_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @lp50xx_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-lp50xx.c", i32 541, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @lp50xx_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-lp50xx.c", i32 546, i32 16}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-lp50xx.c", i32 550, i32 3}
!39 = !{ptr @lp50xx_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @lp50xx_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-lp50xx.c", i32 453, i32 57}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-lp50xx.c", i32 456, i32 10}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-lp50xx.c", i32 458, i32 50}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-lp50xx.c", i32 464, i32 42}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-lp50xx.c", i32 466, i32 4}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lp50xx_probe_dt._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @lp50xx_probe_dt._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-lp50xx.c", i32 489, i32 45}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/leds/leds-lp50xx.c", i32 493, i32 5}
!58 = !{ptr @lp50xx_probe_dt._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @lp50xx_probe_dt._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-lp50xx.c", i32 511, i32 4}
!62 = !{ptr @lp50xx_probe_dt._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @lp50xx_probe_dt._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/leds-lp50xx.c", i32 403, i32 4}
!66 = !{ptr @lp50xx_probe_leds._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @lp50xx_probe_leds._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/leds/leds-lp50xx.c", i32 411, i32 4}
!70 = !{ptr @lp50xx_probe_leds._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @lp50xx_probe_leds._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/leds/leds-lp50xx.c", i32 417, i32 4}
!74 = !{ptr @lp50xx_probe_leds._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @lp50xx_probe_leds._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/leds/leds-lp50xx.c", i32 425, i32 4}
!78 = !{ptr @lp50xx_probe_leds._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @lp50xx_probe_leds._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/leds/leds-lp50xx.c", i32 430, i32 4}
!82 = !{ptr @lp50xx_probe_leds._entry.39, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @lp50xx_probe_leds._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/leds/leds-lp50xx.c", i32 323, i32 3}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @lp50xx_brightness_set._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @lp50xx_brightness_set._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/leds/leds-lp50xx.c", i32 339, i32 4}
!91 = !{ptr @lp50xx_brightness_set._entry.44, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @lp50xx_brightness_set._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @of_lp50xx_leds_match, !94, !"of_lp50xx_leds_match", i1 false, i1 false}
!94 = !{!"../drivers/leds/leds-lp50xx.c", i32 599, i32 34}
!95 = !{ptr @lp50xx_chip_info_tbl, !96, !"lp50xx_chip_info_tbl", i1 false, i1 false}
!96 = !{!"../drivers/leds/leds-lp50xx.c", i32 196, i32 38}
!97 = !{ptr @lp5012_regmap_config, !98, !"lp5012_regmap_config", i1 false, i1 false}
!98 = !{!"../drivers/leds/leds-lp50xx.c", i32 133, i32 35}
!99 = !{ptr @lp5012_reg_defs, !100, !"lp5012_reg_defs", i1 false, i1 false}
!100 = !{!"../drivers/leds/leds-lp50xx.c", i32 66, i32 33}
!101 = !{ptr @lp5024_regmap_config, !102, !"lp5024_regmap_config", i1 false, i1 false}
!102 = !{!"../drivers/leds/leds-lp50xx.c", i32 143, i32 35}
!103 = !{ptr @lp5024_reg_defs, !104, !"lp5024_reg_defs", i1 false, i1 false}
!104 = !{!"../drivers/leds/leds-lp50xx.c", i32 85, i32 33}
!105 = !{ptr @lp5036_regmap_config, !106, !"lp5036_regmap_config", i1 false, i1 false}
!106 = !{!"../drivers/leds/leds-lp50xx.c", i32 153, i32 35}
!107 = !{ptr @lp5036_reg_defs, !108, !"lp5036_reg_defs", i1 false, i1 false}
!108 = !{!"../drivers/leds/leds-lp50xx.c", i32 107, i32 33}
!109 = !{ptr @lp50xx_id, !110, !"lp50xx_id", i1 false, i1 false}
!110 = !{!"../drivers/leds/leds-lp50xx.c", i32 588, i32 35}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
