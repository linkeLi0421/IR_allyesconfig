; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lp8501.c_pt.bc'
source_filename = "../drivers/leds/leds-lp8501.c"
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
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_leds_lp8501__288_402_lp8501_driver_init6 = internal global ptr @lp8501_driver_init, section ".initcall6.init", align 4
@lp8501_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp8501_probe, ptr @lp8501_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_lp8501_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp8501_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp8501_driver_exit = internal global ptr @lp8501_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [60 x i8] c"leds_lp8501.description=Texas Instruments LP8501 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [28 x i8] c"leds_lp8501.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"leds_lp8501.file=drivers/leds/leds-lp8501\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"leds_lp8501.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp8501\00", [25 x i8] zeroinitializer }, align 32
@of_lp8501_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8501\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lp8501_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp8501\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lp8501_cfg = internal global { %struct.lp55xx_device_config, [60 x i8] } { %struct.lp55xx_device_config { %struct.lp55xx_reg { i8 61, i8 -1 }, %struct.lp55xx_reg { i8 0, i8 64 }, i32 9, ptr @lp8501_post_init_device, ptr @lp8501_led_brightness, ptr null, ptr @lp8501_set_led_current, ptr @lp8501_firmware_loaded, ptr @lp8501_run_engine, ptr null }, [60 x i8] zeroinitializer }, align 32
@lp8501_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp8501_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lp8501.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp8501_probe._entry_ptr = internal global ptr @lp8501_probe._entry, section ".printk_index", align 4
@lp8501_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@lp8501_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 345, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s Programmable led chip found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lp8501_probe._entry_ptr.10 = internal global ptr @lp8501_probe._entry.7, section ".printk_index", align 4
@lp8501_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"registering sysfs failed\0A\00", [38 x i8] zeroinitializer }, align 32
@lp8501_probe._entry_ptr.13 = internal global ptr @lp8501_probe._entry.11, section ".printk_index", align 4
@lp8501_firmware_loaded._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"firmware data size overflow: %zu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lp8501_firmware_loaded\00", [41 x i8] zeroinitializer }, align 32
@lp8501_firmware_loaded._entry_ptr = internal global ptr @lp8501_firmware_loaded._entry, section ".printk_index", align 4
@lp8501_load_engine.mask = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\000\0C\03", [28 x i8] zeroinitializer }, align 32
@lp8501_load_engine.val = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\10\04\01", [28 x i8] zeroinitializer }, align 32
@lp8501_load_engine.page_sel = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\00\01\02", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%2s%n \00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%2x\00", [28 x i8] zeroinitializer }, align 32
@lp8501_update_program_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wrong pattern format\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lp8501_update_program_memory\00", [35 x i8] zeroinitializer }, align 32
@lp8501_update_program_memory._entry_ptr = internal global ptr @lp8501_update_program_memory._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"lp8501_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 392, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 394, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"of_lp8501_leds_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 384, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"lp8501_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 377, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"lp8501_cfg\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 285, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 324, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 337, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 345, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 353, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 256, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 117, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 123, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant [9 x i8] c"page_sel\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 129, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 223, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 227, i32 19 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [30 x i8] c"../drivers/leds/leds-lp8501.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 247, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lp8501_driver_exit, ptr @__initcall__kmod_leds_lp8501__288_402_lp8501_driver_init6, ptr @lp8501_driver_exit, ptr @lp8501_firmware_loaded._entry, ptr @lp8501_firmware_loaded._entry_ptr, ptr @lp8501_probe._entry, ptr @lp8501_probe._entry.11, ptr @lp8501_probe._entry.7, ptr @lp8501_probe._entry_ptr, ptr @lp8501_probe._entry_ptr.10, ptr @lp8501_probe._entry_ptr.13, ptr @lp8501_update_program_memory._entry, ptr @lp8501_update_program_memory._entry_ptr, ptr @lp8501_driver, ptr @.str, ptr @of_lp8501_leds_match, ptr @lp8501_id, ptr @lp8501_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lp8501_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @lp8501_load_engine.mask, ptr @lp8501_load_engine.val, ptr @lp8501_load_engine.page_sel, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lp8501_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_firmware_loaded._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_load_engine.mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_load_engine.val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_load_engine.page_sel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8501_update_program_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8501_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp8501_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp8501_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lp8501_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8501_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dev_of_node.exit.cleanup_crit_edge, label %if.end

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dev_of_node.exit
  %cfg = getelementptr inbounds %struct.lp55xx_chip, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @lp8501_cfg, ptr %cfg, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.then6, label %if.end.devm_kcalloc.exit_crit_edge

if.end.devm_kcalloc.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %devm_kcalloc.exit

if.then6:                                         ; preds = %if.end
  %tobool7.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool7.not, label %do.end, label %if.then8

if.then8:                                         ; preds = %if.then6
  %call10 = tail call ptr @lp55xx_of_populate_pdata(ptr noundef %dev, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %call.i) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.then8.devm_kcalloc.exit_crit_edge

if.then8.devm_kcalloc.exit_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %devm_kcalloc.exit

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then8.devm_kcalloc.exit_crit_edge, %if.end.devm_kcalloc.exit_crit_edge
  %pdata.0 = phi ptr [ %1, %if.end.devm_kcalloc.exit_crit_edge ], [ %call10, %if.then8.devm_kcalloc.exit_crit_edge ]
  %num_channels = getelementptr inbounds %struct.lp55xx_platform_data, ptr %pdata.0, i32 0, i32 1
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_channels, align 4
  %conv = zext i8 %7 to i32
  %8 = mul nuw nsw i32 %conv, 820
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3520) #6
  %tobool20.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool20.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end22

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @lp8501_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %driver_data.i.i, align 4
  %call27 = tail call i32 @lp55xx_init_device(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end33, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end33:                                         ; preds = %if.end22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %id) #9
  %call35 = tail call i32 @lp55xx_register_leds(ptr noundef nonnull %call5.i.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %do.end33.err_out_crit_edge

do.end33.err_out_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end38:                                         ; preds = %do.end33
  %call39 = tail call i32 @lp55xx_register_sysfs(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %do.end44

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %err_out

err_out:                                          ; preds = %do.end44, %do.end33.err_out_crit_edge
  %ret.0 = phi i32 [ %call35, %do.end33.err_out_crit_edge ], [ %call39, %do.end44 ]
  tail call void @lp55xx_deinit_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end38.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %do.end, %if.then12, %dev_of_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then12 ], [ -22, %do.end ], [ -12, %dev_of_node.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ %call27, %if.end22.cleanup_crit_edge ], [ %ret.0, %err_out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8501_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %call.i = tail call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  tail call void @lp55xx_unregister_sysfs(ptr noundef %3) #6
  tail call void @lp55xx_deinit_device(ptr noundef %3) #6
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
define internal i32 @lp8501_post_init_device(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %pdata = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %clock_mode = getelementptr inbounds %struct.lp55xx_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clock_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clock_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  %spec.select = select i1 %cmp.not, i8 -8, i8 -7
  %call6 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 54, i8 noundef zeroext %spec.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %pwr_sel = getelementptr inbounds %struct.lp55xx_platform_data, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pwr_sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwr_sel, align 4
  %conv11 = trunc i32 %7 to i8
  %call12 = tail call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 5, i8 noundef zeroext 3, i8 noundef zeroext %conv11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8501_led_brightness(ptr nocapture noundef readonly %led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 6
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led, align 4
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, 22
  %brightness = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 5
  %5 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %brightness, align 2
  %call = tail call i32 @lp55xx_write(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %6) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp8501_set_led_current(ptr nocapture noundef %led, i8 noundef zeroext %led_current) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call i32 @lp55xx_write(ptr noundef %2, i8 noundef zeroext %conv, i8 noundef zeroext %led_current) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp8501_firmware_loaded(ptr noundef %chip) #2 align 64 {
entry:
  %pattern.i = alloca [32 x i8], align 1
  %cmd.i = alloca i32, align 4
  %c.i = alloca [3 x i8], align 1
  %nrchars.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %engine_idx.i, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @lp8501_load_engine.mask, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr [4 x i8], ptr @lp8501_load_engine.val, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %call.i = tail call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext %9, i8 noundef zeroext %11) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %arrayidx2.i = getelementptr [4 x i8], ptr @lp8501_load_engine.page_sel, i32 0, i32 %7
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i, align 1
  %call3.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 79, i8 noundef zeroext %13) #6
  %data = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pattern.i) #6
  %18 = call ptr @memset(ptr %pattern.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #6
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %cmd.i, align 4, !annotation !69
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %c.i) #6
  %20 = ptrtoint ptr %c.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %c.i, align 1, !annotation !69
  %21 = getelementptr inbounds [3 x i8], ptr %c.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %21, align 1, !annotation !69
  %23 = getelementptr inbounds [3 x i8], ptr %c.i, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %23, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrchars.i) #6
  %25 = ptrtoint ptr %nrchars.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %nrchars.i, align 4, !annotation !69
  br label %for.body.i

while.cond.preheader.i:                           ; preds = %for.body.i
  %sub.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp13.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp13.not.i, label %while.cond.preheader.i.lp8501_update_program_memory.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.lp8501_update_program_memory.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8501_update_program_memory.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.02.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %26 = trunc i32 %i.02.i to i8
  %conv.i = add i8 %26, 80
  %call.i10 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #6
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %while.cond.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i.15.i = phi i32 [ %inc16.i, %if.end13.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %offset.04.i = phi i32 [ %add15.i, %if.end13.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %15, i32 %offset.04.i
  %call5.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %c.i, ptr noundef nonnull %nrchars.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 1
  br i1 %cmp6.not.i, label %if.end.i, label %while.body.i.do.end.i_crit_edge

while.body.i.do.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i:                                         ; preds = %while.body.i
  %call9.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %c.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 1
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end13.i:                                       ; preds = %if.end.i
  %27 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd.i, align 4
  %conv14.i = trunc i32 %28 to i8
  %arrayidx.i11 = getelementptr [32 x i8], ptr %pattern.i, i32 0, i32 %i.15.i
  %29 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv14.i, ptr %arrayidx.i11, align 1
  %30 = ptrtoint ptr %nrchars.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nrchars.i, align 4
  %add15.i = add i32 %31, %offset.04.i
  %inc16.i = add nuw nsw i32 %i.15.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %sub.i)
  %cmp1.i = icmp ult i32 %add15.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.15.i)
  %cmp3.i = icmp ult i32 %i.15.i, 31
  %or.cond.i = select i1 %cmp1.i, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %if.end13.i.while.body.i_crit_edge, label %while.end.i

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end13.i
  %32 = and i32 %inc16.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %while.end.i.for.body22.i_crit_edge, label %while.end.i.do.end.i_crit_edge

while.end.i.do.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

while.end.i.for.body22.i_crit_edge:               ; preds = %while.end.i
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %while.end.i.for.body22.i_crit_edge
  %i.27.i = phi i32 [ %inc28.i, %for.body22.i.for.body22.i_crit_edge ], [ 0, %while.end.i.for.body22.i_crit_edge ]
  %33 = trunc i32 %i.27.i to i8
  %conv24.i = add i8 %33, 80
  %arrayidx25.i = getelementptr [32 x i8], ptr %pattern.i, i32 0, i32 %i.27.i
  %34 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx25.i, align 1
  %call26.i = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext %conv24.i, i8 noundef zeroext %35) #6
  %inc28.i = add nuw nsw i32 %i.27.i, 1
  %exitcond8.not.i = icmp eq i32 %i.27.i, %i.15.i
  br i1 %exitcond8.not.i, label %for.body22.i.lp8501_update_program_memory.exit_crit_edge, label %for.body22.i.for.body22.i_crit_edge

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22.i

for.body22.i.lp8501_update_program_memory.exit_crit_edge: ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8501_update_program_memory.exit

do.end.i:                                         ; preds = %while.end.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %while.body.i.do.end.i_crit_edge
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #9
  br label %lp8501_update_program_memory.exit

lp8501_update_program_memory.exit:                ; preds = %do.end.i, %for.body22.i.lp8501_update_program_memory.exit_crit_edge, %while.cond.preheader.i.lp8501_update_program_memory.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrchars.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %c.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pattern.i) #6
  br label %cleanup

cleanup:                                          ; preds = %lp8501_update_program_memory.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp8501_run_engine(ptr noundef %chip, i1 noundef zeroext %start) #2 align 64 {
entry:
  %mode = alloca i8, align 1
  %exec = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #6
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mode, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exec) #6
  %1 = ptrtoint ptr %exec to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %exec, align 1, !annotation !69
  br i1 %start, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %call.i56 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 22, i8 noundef zeroext 0) #6
  %call.1.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 23, i8 noundef zeroext 0) #6
  %call.2.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 24, i8 noundef zeroext 0) #6
  %call.3.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 25, i8 noundef zeroext 0) #6
  %call.4.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 26, i8 noundef zeroext 0) #6
  %call.5.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 27, i8 noundef zeroext 0) #6
  %call.6.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 28, i8 noundef zeroext 0) #6
  %call.7.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 29, i8 noundef zeroext 0) #6
  %call.8.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 30, i8 noundef zeroext 0) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @lp55xx_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @lp55xx_read(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %exec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 1
  %4 = and i8 %3, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp = icmp eq i8 %4, 16
  br i1 %cmp, label %if.then9, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %and11 = and i8 %3, -49
  %or = or i8 %and11, 32
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %or, ptr %mode, align 1
  %6 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %exec, align 1
  %8 = and i8 %7, -49
  %9 = or i8 %8, 32
  store i8 %9, ptr %exec, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.end7.if.end17_crit_edge
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mode, align 1
  %12 = and i8 %11, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp20 = icmp eq i8 %12, 4
  br i1 %cmp20, label %if.then22, label %if.end17.if.end31_crit_edge

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %and24 = and i8 %11, -13
  %or25 = or i8 %and24, 8
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or25, ptr %mode, align 1
  %14 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %exec, align 1
  %16 = and i8 %15, -13
  %17 = or i8 %16, 8
  store i8 %17, ptr %exec, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %if.end17.if.end31_crit_edge
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mode, align 1
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp34 = icmp eq i8 %20, 1
  br i1 %cmp34, label %if.then36, label %if.end31.if.end45_crit_edge

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %and38 = and i8 %19, -4
  %or39 = or i8 %and38, 2
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or39, ptr %mode, align 1
  %22 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %exec, align 1
  %24 = and i8 %23, -4
  %25 = or i8 %24, 2
  store i8 %25, ptr %exec, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %if.end31.if.end45_crit_edge
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mode, align 1
  %call46 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext %27) #6
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %28 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %exec, align 1
  %call47 = call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 63, i8 noundef zeroext %29) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exec) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_update_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lp55xx_unregister_sysfs(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_leds_lp8501__288_402_lp8501_driver_init6, !1, !"__initcall__kmod_leds_lp8501__288_402_lp8501_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lp8501.c", i32 402, i32 1}
!2 = !{ptr @__exitcall_lp8501_driver_exit, !1, !"__exitcall_lp8501_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lp8501.c", i32 404, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lp8501.c", i32 405, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lp8501.c", i32 406, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lp8501.c", i32 394, i32 11}
!12 = !{ptr @lp8501_driver, !13, !"lp8501_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lp8501.c", i32 392, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lp8501.c", i32 324, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lp8501_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lp8501_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @lp8501_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-lp8501.c", i32 337, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-lp8501.c", i32 345, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @lp8501_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @lp8501_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-lp8501.c", i32 353, i32 3}
!32 = !{ptr @lp8501_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @lp8501_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @lp8501_cfg, !35, !"lp8501_cfg", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-lp8501.c", i32 285, i32 36}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-lp8501.c", i32 256, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @lp8501_firmware_loaded._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @lp8501_firmware_loaded._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @lp8501_load_engine.mask, !42, !"mask", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-lp8501.c", i32 117, i32 18}
!43 = !{ptr @lp8501_load_engine.val, !44, !"val", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-lp8501.c", i32 123, i32 18}
!45 = !{ptr @lp8501_load_engine.page_sel, !46, !"page_sel", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-lp8501.c", i32 129, i32 18}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-lp8501.c", i32 223, i32 31}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-lp8501.c", i32 227, i32 19}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/leds/leds-lp8501.c", i32 247, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @lp8501_update_program_memory._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @lp8501_update_program_memory._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @of_lp8501_leds_match, !57, !"of_lp8501_leds_match", i1 false, i1 false}
!57 = !{!"../drivers/leds/leds-lp8501.c", i32 384, i32 34}
!58 = !{ptr @lp8501_id, !59, !"lp8501_id", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-lp8501.c", i32 377, i32 35}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
