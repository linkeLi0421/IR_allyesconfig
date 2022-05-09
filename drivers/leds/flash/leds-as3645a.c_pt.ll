; ModuleID = '/llk/IR_all_yes/drivers/leds/flash/leds-as3645a.c_pt.bc'
source_filename = "../drivers/leds/flash/leds-as3645a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.led_flash_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.as3645a = type { ptr, %struct.mutex, %struct.led_classdev_flash, %struct.led_classdev, ptr, ptr, ptr, ptr, %struct.as3645a_config, i32, i32, i32, i32, i32, i32 }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.as3645a_config = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_flash_config = type { [32 x i8], %struct.led_flash_setting, i32, i8 }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }

@__initcall__kmod_leds_as3645a__301_769_as3645a_i2c_driver_init6 = internal global ptr @as3645a_i2c_driver_init, section ".initcall6.init", align 4
@as3645a_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @as3645a_remove, ptr @as3645a_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @as3645a_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @as3645a_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_as3645a_i2c_driver_exit = internal global ptr @as3645a_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [73 x i8] c"leds_as3645a.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [55 x i8] c"leds_as3645a.author=Sakari Ailus <sakari.ailus@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [79 x i8] c"leds_as3645a.description=LED flash driver for AS3645A, LM3555 and their clones\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [50 x i8] c"leds_as3645a.file=drivers/leds/flash/leds-as3645a\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [28 x i8] c"leds_as3645a.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"as3645a\00", [24 x i8] zeroinitializer }, align 32
@as3645a_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ams,as3645a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@as3645a_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"as3645a\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@as3645a_write.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"leds_as3645a\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"as3645a_write\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/leds/flash/leds-as3645a.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Write Addr:%02X Val:%02X %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@as3645a_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&flash->mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 504, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unknown LED %u encountered, ignoring\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as3645a_parse_node\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry_ptr = internal global ptr @as3645a_parse_node._entry, section ".printk_index", align 4
@as3645a_parse_node._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.3, i32 510, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't find flash node\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry_ptr.16 = internal global ptr @as3645a_parse_node._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flash-timeout-us\00", [47 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.3, i32 518, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"can't read flash-timeout-us property for flash\0A\00", [48 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry_ptr.20 = internal global ptr @as3645a_parse_node._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flash-max-microamp\00", [45 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.3, i32 526, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"can't read flash-max-microamp property for flash\0A\00", [46 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry_ptr.24 = internal global ptr @as3645a_parse_node._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str.3, i32 534, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"can't read led-max-microamp property for flash\0A\00", [48 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry_ptr.28 = internal global ptr @as3645a_parse_node._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"voltage-reference\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ams,input-max-microamp\00", [41 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.10, ptr @.str.3, i32 547, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't find indicator node\0A\00", [37 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry_ptr.33 = internal global ptr @as3645a_parse_node._entry.31, section ".printk_index", align 4
@as3645a_parse_node._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.10, ptr @.str.3, i32 558, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"can't read led-max-microamp property for indicator\0A\00", [44 x i8] zeroinitializer }, align 32
@as3645a_parse_node._entry_ptr.36 = internal global ptr @as3645a_parse_node._entry.34, section ".printk_index", align 4
@as3645a_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 428, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't read design info reg\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"as3645a_detect\00", [17 x i8] zeroinitializer }, align 32
@as3645a_detect._entry_ptr = internal global ptr @as3645a_detect._entry, section ".printk_index", align 4
@as3645a_detect._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 437, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't read version control reg\0A\00", [32 x i8] zeroinitializer }, align 32
@as3645a_detect._entry_ptr.41 = internal global ptr @as3645a_detect._entry.39, section ".printk_index", align 4
@as3645a_detect._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 447, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"AS3645A not detected (model %d rfu %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@as3645a_detect._entry_ptr.44 = internal global ptr @as3645a_detect._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AMS, Austria Micro Systems\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADI, Analog Devices Inc.\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NSC, National Semiconductor\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NXP\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TI, Texas Instrument\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@as3645a_detect._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.3, i32 472, ptr @.str.53, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Chip vendor: %s (%d) Version: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@as3645a_detect._entry_ptr.54 = internal global ptr @as3645a_detect._entry.51, section ".printk_index", align 4
@as3645a_read.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"as3645a_read\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Read Addr:%02X Val:%02X %s\0A\00", [36 x i8] zeroinitializer }, align 32
@as3645a_setup.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"as3645a_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Fault info: %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@as3645a_setup.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.3, ptr @.str.59, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AS_INDICATOR_AND_TIMER_REG: %02x\0A\00", [62 x i8] zeroinitializer }, align 32
@as3645a_setup.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.3, ptr @.str.60, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AS_CURRENT_SET_REG: %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@as3645a_setup.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.3, ptr @.str.61, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"AS_CONTROL_REG: %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@as3645a_get_fault.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"as3645a_get_fault\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%u connected LEDs\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"indicator\00", [22 x i8] zeroinitializer }, align 32
@as3645a_led_flash_ops = internal constant { %struct.led_flash_ops, [40 x i8] } { %struct.led_flash_ops { ptr @as3645a_set_flash_brightness, ptr null, ptr @as3645a_set_strobe, ptr null, ptr @as3645a_set_flash_timeout, ptr @as3645a_get_fault }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@as3645a_led_class_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 629, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"led_classdev_flash_register() failed, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"as3645a_led_class_setup\00", [40 x i8] zeroinitializer }, align 32
@as3645a_led_class_setup._entry_ptr = internal global ptr @as3645a_led_class_setup._entry, section ".printk_index", align 4
@switch.table.as3645a_detect = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"as3645a_i2c_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 759, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 762, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"as3645a_of_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 753, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"as3645a_id_table\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 747, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 163, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 697, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 491, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 503, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 510, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 514, i32 53 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 517, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 522, i32 53 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 525, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 530, i32 53 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 533, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 538, i32 46 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 541, i32 46 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 546, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 557, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 428, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 437, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 446, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 453, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 456, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 459, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 462, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 465, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 468, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 471, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 177, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 391, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 410, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 412, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 414, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 267, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 586, i32 28 }
@___asan_gen_.254 = private unnamed_addr constant [22 x i8] c"as3645a_led_flash_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 373, i32 35 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 616, i32 28 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private constant [37 x i8] c"../drivers/leds/flash/leds-as3645a.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 627, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [28 x i8] c"switch.table.as3645a_detect\00", align 1
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_as3645a_i2c_driver_exit, ptr @__initcall__kmod_leds_as3645a__301_769_as3645a_i2c_driver_init6, ptr @as3645a_detect._entry, ptr @as3645a_detect._entry.39, ptr @as3645a_detect._entry.42, ptr @as3645a_detect._entry.51, ptr @as3645a_detect._entry_ptr, ptr @as3645a_detect._entry_ptr.41, ptr @as3645a_detect._entry_ptr.44, ptr @as3645a_detect._entry_ptr.54, ptr @as3645a_i2c_driver_exit, ptr @as3645a_led_class_setup._entry, ptr @as3645a_led_class_setup._entry_ptr, ptr @as3645a_parse_node._entry, ptr @as3645a_parse_node._entry.13, ptr @as3645a_parse_node._entry.18, ptr @as3645a_parse_node._entry.22, ptr @as3645a_parse_node._entry.26, ptr @as3645a_parse_node._entry.31, ptr @as3645a_parse_node._entry.34, ptr @as3645a_parse_node._entry_ptr, ptr @as3645a_parse_node._entry_ptr.16, ptr @as3645a_parse_node._entry_ptr.20, ptr @as3645a_parse_node._entry_ptr.24, ptr @as3645a_parse_node._entry_ptr.28, ptr @as3645a_parse_node._entry_ptr.33, ptr @as3645a_parse_node._entry_ptr.36, ptr @as3645a_i2c_driver, ptr @.str, ptr @as3645a_of_table, ptr @as3645a_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @as3645a_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @as3645a_led_flash_ops, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @switch.table.as3645a_detect], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_parse_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_parse_node._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_parse_node._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_parse_node._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_parse_node._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_parse_node._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_parse_node._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_detect._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_detect._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_detect._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_led_flash_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3645a_led_class_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.as3645a_detect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @as3645a_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @as3645a_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @as3645a_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @as3645a_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3645a_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %peak.i = getelementptr inbounds %struct.as3645a, ptr %1, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %peak.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peak.i, align 4
  %.tr = trunc i32 %3 to i8
  %conv.i = shl i8 %.tr, 6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 4, i8 noundef zeroext %conv.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_remove, %if.then.i.i)) #7
          to label %as3645a_set_control.exit [label %if.then.i.i], !srcloc !146

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %conv5.i.i = zext i8 %conv.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef %conv5.i.i, ptr noundef nonnull %cond.i.i) #7
  br label %as3645a_set_control.exit

as3645a_set_control.exit:                         ; preds = %if.then.i.i, %entry
  %vf = getelementptr inbounds %struct.as3645a, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf, align 4
  tail call void @v4l2_flash_release(ptr noundef %7) #7
  %vfind = getelementptr inbounds %struct.as3645a, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %vfind to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vfind, align 4
  tail call void @v4l2_flash_release(ptr noundef %9) #7
  %fled = getelementptr inbounds %struct.as3645a, ptr %1, i32 0, i32 2
  tail call void @led_classdev_flash_unregister(ptr noundef %fled) #7
  %iled_cdev = getelementptr inbounds %struct.as3645a, ptr %1, i32 0, i32 3
  tail call void @led_classdev_unregister(ptr noundef %iled_cdev) #7
  %mutex = getelementptr inbounds %struct.as3645a, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  %flash_node = getelementptr inbounds %struct.as3645a, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %flash_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flash_node, align 4
  tail call void @fwnode_handle_put(ptr noundef %11) #7
  %indicator_node = getelementptr inbounds %struct.as3645a, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %indicator_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %indicator_node, align 4
  tail call void @fwnode_handle_put(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3645a_probe(ptr noundef %client) #2 align 64 {
entry:
  %cfg.i = alloca %struct.v4l2_flash_config, align 4
  %cfgind.i = alloca %struct.v4l2_flash_config, align 4
  %init_data.i = alloca %struct.led_init_data, align 4
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @dev_fwnode(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1016, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %call7 = tail call ptr @dev_fwnode(ptr noundef %dev) #7
  %cfg1.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 8
  %call.i52 = tail call ptr @fwnode_get_next_child_node(ptr noundef %call7, ptr noundef null) #7
  %tobool.not121.i = icmp eq ptr %call.i52, null
  br i1 %tobool.not121.i, label %if.end4.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end4.for.end.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end4
  %indicator_node.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 7
  %flash_node.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.0122.i = phi ptr [ %call.i52, %for.body.lr.ph.i ], [ %call6.i, %sw.epilog.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #7
  %1 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %id.i, align 4
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0122.i, ptr noundef nonnull @.str.8, ptr noundef nonnull %id.i, i32 noundef 1) #7
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %flash_node.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %child.0122.i, ptr %flash_node.i, align 4
  %call3.i = call ptr @fwnode_handle_get(ptr noundef nonnull %child.0122.i) #7
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %indicator_node.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %child.0122.i, ptr %indicator_node.i, align 4
  %call5.i = call ptr @fwnode_handle_get(ptr noundef nonnull %child.0122.i) #7
  br label %sw.epilog.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %3) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb4.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  %call6.i = call ptr @fwnode_get_next_child_node(ptr noundef %call7, ptr noundef nonnull %child.0122.i) #7
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.for.end.i_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

sw.epilog.i.for.end.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %sw.epilog.i.for.end.i_crit_edge, %if.end4.for.end.i_crit_edge
  %flash_node7.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %flash_node7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %flash_node7.i, align 4
  %tobool8.not.i = icmp eq ptr %10, null
  br i1 %tobool8.not.i, label %do.end11.i, label %if.end.i

do.end11.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %dev13.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end.i:                                         ; preds = %for.end.i
  %call.i115.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.17, ptr noundef %cfg1.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i)
  %cmp.i = icmp slt i32 %call.i115.i, 0
  br i1 %cmp.i, label %do.end19.i, label %if.end22.i

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %dev21.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.19) #10
  br label %out_err.i

if.end22.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %flash_node7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flash_node7.i, align 4
  %flash_max_ua.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 8, i32 1
  %call.i116.i = call i32 @fwnode_property_read_u32_array(ptr noundef %16, ptr noundef nonnull @.str.21, ptr noundef %flash_max_ua.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i)
  %cmp25.i = icmp slt i32 %call.i116.i, 0
  br i1 %cmp25.i, label %do.end29.i, label %if.end32.i

do.end29.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %dev31.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i, ptr noundef nonnull @.str.23) #10
  br label %out_err.i

if.end32.i:                                       ; preds = %if.end22.i
  %19 = ptrtoint ptr %flash_node7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %flash_node7.i, align 4
  %assist_max_ua.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 8, i32 2
  %call.i117.i = call i32 @fwnode_property_read_u32_array(ptr noundef %20, ptr noundef nonnull @.str.25, ptr noundef %assist_max_ua.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i)
  %cmp35.i = icmp slt i32 %call.i117.i, 0
  br i1 %cmp35.i, label %do.end39.i, label %if.end42.i

do.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %dev41.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41.i, ptr noundef nonnull @.str.27) #10
  br label %out_err.i

if.end42.i:                                       ; preds = %if.end32.i
  %23 = ptrtoint ptr %flash_node7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %flash_node7.i, align 4
  %voltage_reference.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 8, i32 4
  %call.i118.i = call i32 @fwnode_property_read_u32_array(ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef %voltage_reference.i, i32 noundef 1) #7
  %25 = ptrtoint ptr %flash_node7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %flash_node7.i, align 4
  %peak.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 8, i32 5
  %call.i119.i = call i32 @fwnode_property_read_u32_array(ptr noundef %26, ptr noundef nonnull @.str.30, ptr noundef %peak.i, i32 noundef 1) #7
  %27 = ptrtoint ptr %peak.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %peak.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %28)
  %cmp48.i = icmp ugt i32 %28, 2000
  %phi.bo.i = add i32 %28, -1250
  %phi.bo114.i = udiv i32 %phi.bo.i, 250
  %cond.i = select i1 %cmp48.i, i32 3, i32 %phi.bo114.i
  %29 = ptrtoint ptr %peak.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.i, ptr %peak.i, align 4
  %indicator_node50.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %indicator_node50.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %indicator_node50.i, align 4
  %tobool51.not.i = icmp eq ptr %31, null
  br i1 %tobool51.not.i, label %do.end55.i, label %if.end58.i

do.end55.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %dev57.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev57.i, ptr noundef nonnull @.str.32) #10
  br label %out_err.i

if.end58.i:                                       ; preds = %if.end42.i
  %indicator_max_ua.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 8, i32 3
  %call.i120.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %31, ptr noundef nonnull @.str.25, ptr noundef %indicator_max_ua.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %cmp61.i = icmp slt i32 %call.i120.i, 0
  br i1 %cmp61.i, label %do.end65.i, label %if.end11

do.end65.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %dev67.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67.i, ptr noundef nonnull @.str.35) #10
  br label %out_err.i

out_err.i:                                        ; preds = %do.end65.i, %do.end55.i, %do.end39.i, %do.end29.i, %do.end19.i
  %rval.0.i = phi i32 [ %call.i115.i, %do.end19.i ], [ %call.i116.i, %do.end29.i ], [ %call.i117.i, %do.end39.i ], [ %call.i120.i, %do.end65.i ], [ -19, %do.end55.i ]
  %36 = ptrtoint ptr %flash_node7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %flash_node7.i, align 4
  call void @fwnode_handle_put(ptr noundef %37) #7
  %indicator_node70.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %indicator_node70.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %indicator_node70.i, align 4
  call void @fwnode_handle_put(ptr noundef %39) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end58.i
  %call12 = call fastcc i32 @as3645a_detect(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.out_put_nodes_crit_edge, label %do.body

if.end11.out_put_nodes_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_nodes

do.body:                                          ; preds = %if.end11
  %mutex = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @as3645a_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call16 = call fastcc i32 @as3645a_setup(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %do.body.out_mutex_destroy_crit_edge

do.body.out_mutex_destroy_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_mutex_destroy

if.end19:                                         ; preds = %do.body
  %iled_cdev1.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #7
  %41 = getelementptr inbounds i8, ptr %init_data.i, i32 12
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %41, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 3, i32 6
  %43 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @as3645a_set_indicator_brightness, ptr %brightness_set_blocking.i, align 4
  %44 = ptrtoint ptr %indicator_max_ua.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %indicator_max_ua.i, align 4
  %div.i = udiv i32 %45, 2500
  %max_brightness.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div.i, ptr %max_brightness.i, align 4
  %flags.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 65536, ptr %flags.i, align 4
  %48 = ptrtoint ptr %indicator_node50.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %indicator_node50.i, align 4
  %50 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %init_data.i, align 4
  %devicename.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 2
  %51 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str, ptr %devicename.i, align 4
  %default_label.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 1
  %52 = ptrtoint ptr %default_label.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.64, ptr %default_label.i, align 4
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %dev.i55 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  %call.i56 = call i32 @led_classdev_register_ext(ptr noundef %dev.i55, ptr noundef %iled_cdev1.i, ptr noundef nonnull %init_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i57 = icmp slt i32 %call.i56, 0
  br i1 %cmp.i57, label %if.end19.as3645a_led_class_setup.exit.thread_crit_edge, label %if.end.i62

if.end19.as3645a_led_class_setup.exit.thread_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %as3645a_led_class_setup.exit.thread

if.end.i62:                                       ; preds = %if.end19
  %fled.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2
  %brightness.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 2
  %55 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 200000, ptr %brightness.i, align 4
  %56 = ptrtoint ptr %flash_max_ua.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flash_max_ua.i, align 4
  %max.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 2, i32 1
  %58 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %max.i, align 4
  %step.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 2, i32 2
  %59 = ptrtoint ptr %step.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 20000, ptr %step.i, align 4
  %val.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 2, i32 3
  %60 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %val.i, align 4
  %timeout.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 3
  %61 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 100000, ptr %timeout.i, align 4
  %62 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cfg1.i, align 4
  %max10.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 3, i32 1
  %64 = ptrtoint ptr %max10.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %max10.i, align 4
  %step11.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 3, i32 2
  %65 = ptrtoint ptr %step11.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 50000, ptr %step11.i, align 4
  %val14.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 3, i32 3
  %66 = ptrtoint ptr %val14.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %val14.i, align 4
  %ops.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @as3645a_led_flash_ops, ptr %ops.i, align 4
  %brightness_set_blocking16.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 0, i32 6
  %68 = ptrtoint ptr %brightness_set_blocking16.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @as3645a_set_assist_brightness, ptr %brightness_set_blocking16.i, align 4
  %69 = ptrtoint ptr %assist_max_ua.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %assist_max_ua.i, align 4
  %71 = call i32 @llvm.umax.i32(i32 %70, i32 200000) #7
  %72 = call i32 @llvm.umin.i32(i32 %71, i32 %57) #7
  %sub.i5.i.i = add i32 %72, -200000
  %retval.0.i.i = udiv i32 %sub.i5.i.i, 20000
  %add.i = add nuw nsw i32 %retval.0.i.i, 1
  %max_brightness19.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %73 = ptrtoint ptr %max_brightness19.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add.i, ptr %max_brightness19.i, align 4
  %flags20.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %74 = ptrtoint ptr %flags20.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 327680, ptr %flags20.i, align 4
  %75 = ptrtoint ptr %flash_node7.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %flash_node7.i, align 4
  %77 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %init_data.i, align 4
  %78 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str, ptr %devicename.i, align 4
  %79 = ptrtoint ptr %default_label.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.65, ptr %default_label.i, align 4
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  %dev25.i = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 4
  %call27.i = call i32 @led_classdev_flash_register_ext(ptr noundef %dev25.i, ptr noundef %fled.i, ptr noundef nonnull %init_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not.i61 = icmp eq i32 %call27.i, 0
  br i1 %tobool.not.i61, label %if.end23, label %out_err.i64

out_err.i64:                                      ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  call void @led_classdev_unregister(ptr noundef %iled_cdev1.i) #7
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 4
  %dev31.i63 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i63, ptr noundef nonnull @.str.66, i32 noundef %call27.i) #10
  br label %as3645a_led_class_setup.exit.thread

as3645a_led_class_setup.exit.thread:              ; preds = %out_err.i64, %if.end19.as3645a_led_class_setup.exit.thread_crit_edge
  %retval.0.i65.ph = phi i32 [ %call.i56, %if.end19.as3645a_led_class_setup.exit.thread_crit_edge ], [ %call27.i, %out_err.i64 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #7
  br label %out_mutex_destroy

if.end23:                                         ; preds = %if.end.i62
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cfg.i) #7
  %84 = getelementptr inbounds i8, ptr %cfg.i, i32 52
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2147483647, ptr %84, align 4, !annotation !147
  %86 = call ptr @memset(ptr %cfg.i, i32 0, i32 32)
  %intensity.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %cfg.i, i32 0, i32 1
  %87 = ptrtoint ptr %intensity.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 20000, ptr %intensity.i, align 4
  %max.i66 = getelementptr inbounds %struct.v4l2_flash_config, ptr %cfg.i, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %assist_max_ua.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %assist_max_ua.i, align 4
  %90 = ptrtoint ptr %max.i66 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %max.i66, align 4
  %step.i68 = getelementptr inbounds %struct.v4l2_flash_config, ptr %cfg.i, i32 0, i32 1, i32 2
  %91 = ptrtoint ptr %step.i68 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 20000, ptr %step.i68, align 4
  %val.i69 = getelementptr inbounds %struct.v4l2_flash_config, ptr %cfg.i, i32 0, i32 1, i32 3
  %92 = ptrtoint ptr %val.i69 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %89, ptr %val.i69, align 4
  %flash_faults.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %cfg.i, i32 0, i32 2
  %93 = ptrtoint ptr %flash_faults.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %flash_faults.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cfgind.i) #7
  %94 = call ptr @memset(ptr %cfgind.i, i32 0, i32 56)
  %max8.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %cfgind.i, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %indicator_max_ua.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %indicator_max_ua.i, align 4
  %97 = ptrtoint ptr %max8.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %max8.i, align 4
  %step10.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %cfgind.i, i32 0, i32 1, i32 2
  %98 = ptrtoint ptr %step10.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2500, ptr %step10.i, align 4
  %val11.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %cfgind.i, i32 0, i32 1, i32 3
  %99 = ptrtoint ptr %val11.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %96, ptr %val11.i, align 4
  %dev.i71 = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 2, i32 0, i32 11
  %100 = ptrtoint ptr %dev.i71 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i71, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 8
  %call.i72 = call i32 @strlcpy(ptr noundef nonnull %cfg.i, ptr noundef %103, i32 noundef 32) #7
  %dev19.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 3, i32 11
  %104 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev19.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %call22.i = call i32 @strlcpy(ptr noundef nonnull %cfgind.i, ptr noundef %107, i32 noundef 32) #7
  %108 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call.i, align 4
  %dev23.i = getelementptr inbounds %struct.i2c_client, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %flash_node7.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %flash_node7.i, align 4
  %call25.i = call ptr @v4l2_flash_init(ptr noundef %dev23.i, ptr noundef %111, ptr noundef %fled.i, ptr noundef null, ptr noundef nonnull %cfg.i) #7
  %vf.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 4
  %112 = ptrtoint ptr %vf.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call25.i, ptr %vf.i, align 4
  %cmp.i.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end23.as3645a_v4l2_setup.exit_crit_edge, label %if.end.i76

if.end23.as3645a_v4l2_setup.exit_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %as3645a_v4l2_setup.exit

if.end.i76:                                       ; preds = %if.end23
  %113 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call.i, align 4
  %dev31.i74 = getelementptr inbounds %struct.i2c_client, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %indicator_node50.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %indicator_node50.i, align 4
  %call33.i = call ptr @v4l2_flash_indicator_init(ptr noundef %dev31.i74, ptr noundef %116, ptr noundef %iled_cdev1.i, ptr noundef nonnull %cfgind.i) #7
  %vfind.i = getelementptr inbounds %struct.as3645a, ptr %call.i, i32 0, i32 5
  %117 = ptrtoint ptr %vfind.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call33.i, ptr %vfind.i, align 4
  %cmp.i62.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.i, label %if.then36.i, label %as3645a_v4l2_setup.exit.thread

as3645a_v4l2_setup.exit.thread:                   ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cfgind.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cfg.i) #7
  br label %cleanup

if.then36.i:                                      ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %vf.i, align 4
  call void @v4l2_flash_release(ptr noundef %119) #7
  %120 = ptrtoint ptr %vfind.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vfind.i, align 4
  br label %as3645a_v4l2_setup.exit

as3645a_v4l2_setup.exit:                          ; preds = %if.then36.i, %if.end23.as3645a_v4l2_setup.exit_crit_edge
  %retval.0.i77.in = phi ptr [ %121, %if.then36.i ], [ %call25.i, %if.end23.as3645a_v4l2_setup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cfgind.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cfg.i) #7
  %tobool25.not = icmp eq ptr %retval.0.i77.in, null
  br i1 %tobool25.not, label %as3645a_v4l2_setup.exit.cleanup_crit_edge, label %out_led_classdev_flash_unregister

as3645a_v4l2_setup.exit.cleanup_crit_edge:        ; preds = %as3645a_v4l2_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out_led_classdev_flash_unregister:                ; preds = %as3645a_v4l2_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %retval.0.i77 = ptrtoint ptr %retval.0.i77.in to i32
  call void @led_classdev_flash_unregister(ptr noundef %fled.i) #7
  br label %out_mutex_destroy

out_mutex_destroy:                                ; preds = %out_led_classdev_flash_unregister, %as3645a_led_class_setup.exit.thread, %do.body.out_mutex_destroy_crit_edge
  %rval.0 = phi i32 [ %call16, %do.body.out_mutex_destroy_crit_edge ], [ %retval.0.i77, %out_led_classdev_flash_unregister ], [ %retval.0.i65.ph, %as3645a_led_class_setup.exit.thread ]
  call void @mutex_destroy(ptr noundef %mutex) #7
  br label %out_put_nodes

out_put_nodes:                                    ; preds = %out_mutex_destroy, %if.end11.out_put_nodes_crit_edge
  %rval.1 = phi i32 [ %call12, %if.end11.out_put_nodes_crit_edge ], [ %rval.0, %out_mutex_destroy ]
  %122 = ptrtoint ptr %flash_node7.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %flash_node7.i, align 4
  call void @fwnode_handle_put(ptr noundef %123) #7
  %124 = ptrtoint ptr %indicator_node50.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %indicator_node50.i, align 4
  call void @fwnode_handle_put(ptr noundef %125) #7
  br label %cleanup

cleanup:                                          ; preds = %out_put_nodes, %as3645a_v4l2_setup.exit.cleanup_crit_edge, %as3645a_v4l2_setup.exit.thread, %out_err.i, %do.end11.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.1, %out_put_nodes ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %as3645a_v4l2_setup.exit.cleanup_crit_edge ], [ 0, %as3645a_v4l2_setup.exit.thread ], [ -19, %do.end11.i ], [ %rval.0.i, %out_err.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_flash_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_flash_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @as3645a_detect(ptr nocapture noundef readonly %flash) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flash, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_detect, %if.then.i)) #7
          to label %as3645a_read.exit [label %if.then.i], !srcloc !146

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %cond.i = select i1 %cmp.i, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_read.__UNIQUE_ID_ddebug293, ptr noundef %dev1, ptr noundef nonnull @.str.56, i32 noundef 0, i32 noundef %call.i, ptr noundef nonnull %cond.i) #7
  br label %as3645a_read.exit

as3645a_read.exit:                                ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %as3645a_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end:                                           ; preds = %as3645a_read.exit
  %shr72 = lshr i32 %call.i, 4
  %and = and i32 %call.i, 15
  %2 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flash, align 4
  %call.i55 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_detect, %if.then.i59)) #7
          to label %as3645a_read.exit60 [label %if.then.i59], !srcloc !146

if.then.i59:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i56 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i57 = icmp slt i32 %call.i55, 0
  %cond.i58 = select i1 %cmp.i57, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_read.__UNIQUE_ID_ddebug293, ptr noundef %dev.i56, ptr noundef nonnull @.str.56, i32 noundef 1, i32 noundef %call.i55, ptr noundef nonnull %cond.i58) #7
  br label %as3645a_read.exit60

as3645a_read.exit60:                              ; preds = %if.then.i59, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp3 = icmp slt i32 %call.i55, 0
  br i1 %cmp3, label %do.end7, label %if.end8

do.end7:                                          ; preds = %as3645a_read.exit60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end8:                                          ; preds = %as3645a_read.exit60
  %and10 = and i32 %call.i55, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp11.not = icmp eq i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i55)
  %cmp12.not = icmp ult i32 %call.i55, 16
  %or.cond = select i1 %cmp11.not, i1 %cmp12.not, i1 false
  br i1 %or.cond, label %if.end17, label %do.end16

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %shr973 = lshr i32 %call.i55, 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %and, i32 noundef %shr973) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %switch.tableidx = add nsw i32 %shr72, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 5
  br i1 %4, label %switch.lookup, label %if.end17.do.end24_crit_edge

if.end17.do.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

switch.lookup:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.as3645a_detect, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end24

do.end24:                                         ; preds = %switch.lookup, %if.end17.do.end24_crit_edge
  %vendor.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.50, %if.end17.do.end24_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.52, ptr noundef nonnull %vendor.0, i32 noundef %shr72, i32 noundef %and10) #10
  %6 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flash, align 4
  %call.i61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 15, i8 noundef zeroext 85) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_detect, %if.then.i65)) #7
          to label %as3645a_write.exit [label %if.then.i65], !srcloc !146

if.then.i65:                                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i62 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.i63 = icmp slt i32 %call.i61, 0
  %cond.i64 = select i1 %cmp.i63, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i62, ptr noundef nonnull @.str.4, i32 noundef 15, i32 noundef 85, ptr noundef nonnull %cond.i64) #7
  br label %as3645a_write.exit

as3645a_write.exit:                               ; preds = %if.then.i65, %do.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp26 = icmp slt i32 %call.i61, 0
  br i1 %cmp26, label %as3645a_write.exit.cleanup_crit_edge, label %if.end28

as3645a_write.exit.cleanup_crit_edge:             ; preds = %as3645a_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %as3645a_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flash, align 4
  %call.i66 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 13, i8 noundef zeroext 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_detect, %if.then.i70)) #7
          to label %cleanup [label %if.then.i70], !srcloc !146

if.then.i70:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i67 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp.i68 = icmp slt i32 %call.i66, 0
  %cond.i69 = select i1 %cmp.i68, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i67, ptr noundef nonnull @.str.4, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %cond.i69) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i70, %if.end28, %as3645a_write.exit.cleanup_crit_edge, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i55, %do.end7 ], [ -19, %do.end16 ], [ %call.i61, %as3645a_write.exit.cleanup_crit_edge ], [ %call.i66, %if.end28 ], [ %call.i66, %if.then.i70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @as3645a_setup(ptr nocapture noundef readonly %flash) unnamed_addr #2 align 64 {
entry:
  %fault = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flash, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fault) #7
  %2 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fault, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 5) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_setup, %if.then.i)) #7
          to label %as3645a_read.exit [label %if.then.i], !srcloc !146

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %cond.i = select i1 %cmp.i, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_read.__UNIQUE_ID_ddebug293, ptr noundef %dev1, ptr noundef nonnull @.str.56, i32 noundef 5, i32 noundef %call.i, ptr noundef nonnull %cond.i) #7
  br label %as3645a_read.exit

as3645a_read.exit:                                ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %as3645a_read.exit.cleanup_crit_edge, label %do.body

as3645a_read.exit.cleanup_crit_edge:              ; preds = %as3645a_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %as3645a_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_setup.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_setup, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !146

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_setup.__UNIQUE_ID_ddebug295, ptr noundef %dev1, ptr noundef nonnull @.str.58, i32 noundef %call.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %flash_current.i = getelementptr inbounds %struct.as3645a, ptr %flash, i32 0, i32 11
  %3 = ptrtoint ptr %flash_current.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flash_current.i, align 4
  %shl.i = shl i32 %4, 4
  %assist_current.i = getelementptr inbounds %struct.as3645a, ptr %flash, i32 0, i32 12
  %5 = ptrtoint ptr %assist_current.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %assist_current.i, align 4
  %or.i = or i32 %shl.i, %6
  %7 = trunc i32 %or.i to i8
  %conv.i = or i8 %7, 8
  %8 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flash, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 3, i8 noundef zeroext %conv.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_setup, %if.then.i.i)) #7
          to label %as3645a_set_current.exit [label %if.then.i.i], !srcloc !146

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %conv5.i.i = zext i8 %conv.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef 3, i32 noundef %conv5.i.i, ptr noundef nonnull %cond.i.i) #7
  br label %as3645a_set_current.exit

as3645a_set_current.exit:                         ; preds = %if.then.i.i, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8 = icmp slt i32 %call.i.i, 0
  br i1 %cmp8, label %as3645a_set_current.exit.cleanup_crit_edge, label %if.end10

as3645a_set_current.exit.cleanup_crit_edge:       ; preds = %as3645a_set_current.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %as3645a_set_current.exit
  %timeout.i = getelementptr inbounds %struct.as3645a, ptr %flash, i32 0, i32 10
  %10 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout.i, align 4
  %voltage_reference.i = getelementptr inbounds %struct.as3645a, ptr %flash, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %voltage_reference.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %voltage_reference.i, align 4
  %indicator_current.i = getelementptr inbounds %struct.as3645a, ptr %flash, i32 0, i32 13
  %14 = ptrtoint ptr %indicator_current.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %indicator_current.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %sub.i = shl i32 %15, 6
  %phi.bo.i = add i32 %sub.i, 192
  %cond.i108 = select i1 %tobool.not.i, i32 0, i32 %phi.bo.i
  %shl1.i = shl i32 %13, 4
  %or.i109 = or i32 %shl1.i, %11
  %or5.i = or i32 %or.i109, %cond.i108
  %conv6.i = trunc i32 %or5.i to i8
  %16 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %flash, align 4
  %call.i.i110 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext %conv6.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_setup, %if.then.i.i115)) #7
          to label %as3645a_set_timeout.exit [label %if.then.i.i115], !srcloc !146

if.then.i.i115:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i111 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  %conv5.i.i112 = and i32 %or5.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %cmp.i.i113 = icmp slt i32 %call.i.i110, 0
  %cond.i.i114 = select i1 %cmp.i.i113, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i111, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef %conv5.i.i112, ptr noundef nonnull %cond.i.i114) #7
  br label %as3645a_set_timeout.exit

as3645a_set_timeout.exit:                         ; preds = %if.then.i.i115, %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %cmp12 = icmp slt i32 %call.i.i110, 0
  br i1 %cmp12, label %as3645a_set_timeout.exit.cleanup_crit_edge, label %if.end14

as3645a_set_timeout.exit.cleanup_crit_edge:       ; preds = %as3645a_set_timeout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %as3645a_set_timeout.exit
  %peak.i = getelementptr inbounds %struct.as3645a, ptr %flash, i32 0, i32 8, i32 5
  %18 = ptrtoint ptr %peak.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %peak.i, align 4
  %.tr = trunc i32 %19 to i8
  %20 = shl i8 %.tr, 6
  %conv.i117 = or i8 %20, 1
  %21 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %flash, align 4
  %call.i.i118 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 4, i8 noundef zeroext %conv.i117) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_setup, %if.then.i.i123)) #7
          to label %as3645a_set_control.exit [label %if.then.i.i123], !srcloc !146

if.then.i.i123:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i119 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %conv5.i.i120 = zext i8 %conv.i117 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i118)
  %cmp.i.i121 = icmp slt i32 %call.i.i118, 0
  %cond.i.i122 = select i1 %cmp.i.i121, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i119, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef %conv5.i.i120, ptr noundef nonnull %cond.i.i122) #7
  br label %as3645a_set_control.exit

as3645a_set_control.exit:                         ; preds = %if.then.i.i123, %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i118)
  %cmp16 = icmp slt i32 %call.i.i118, 0
  br i1 %cmp16, label %as3645a_set_control.exit.cleanup_crit_edge, label %if.end18

as3645a_set_control.exit.cleanup_crit_edge:       ; preds = %as3645a_set_control.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %as3645a_set_control.exit
  %fled = getelementptr inbounds %struct.as3645a, ptr %flash, i32 0, i32 2
  %call19 = call i32 @as3645a_get_fault(ptr noundef %fled, ptr noundef nonnull %fault)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %do.body23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body23:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_setup.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_setup, %if.then35)) #7
          to label %do.body40 [label %if.then35], !srcloc !146

if.then35:                                        ; preds = %do.body23
  %23 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %flash, align 4
  %call.i124 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_setup, %if.then.i128)) #7
          to label %as3645a_read.exit129 [label %if.then.i128], !srcloc !146

if.then.i128:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i125 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i126 = icmp slt i32 %call.i124, 0
  %cond.i127 = select i1 %cmp.i126, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_read.__UNIQUE_ID_ddebug293, ptr noundef %dev.i125, ptr noundef nonnull @.str.56, i32 noundef 2, i32 noundef %call.i124, ptr noundef nonnull %cond.i127) #7
  br label %as3645a_read.exit129

as3645a_read.exit129:                             ; preds = %if.then.i128, %if.then35
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_setup.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.59, i32 noundef %call.i124) #7
  br label %do.body40

do.body40:                                        ; preds = %as3645a_read.exit129, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_setup.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_setup, %if.then52)) #7
          to label %do.body57 [label %if.then52], !srcloc !146

if.then52:                                        ; preds = %do.body40
  %25 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %flash, align 4
  %call.i130 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext 3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_setup, %if.then.i134)) #7
          to label %as3645a_read.exit135 [label %if.then.i134], !srcloc !146

if.then.i134:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i131 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp.i132 = icmp slt i32 %call.i130, 0
  %cond.i133 = select i1 %cmp.i132, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_read.__UNIQUE_ID_ddebug293, ptr noundef %dev.i131, ptr noundef nonnull @.str.56, i32 noundef 3, i32 noundef %call.i130, ptr noundef nonnull %cond.i133) #7
  br label %as3645a_read.exit135

as3645a_read.exit135:                             ; preds = %if.then.i134, %if.then52
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_setup.__UNIQUE_ID_ddebug297, ptr noundef %dev1, ptr noundef nonnull @.str.60, i32 noundef %call.i130) #7
  br label %do.body57

do.body57:                                        ; preds = %as3645a_read.exit135, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_setup.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_setup, %if.then69)) #7
          to label %do.end73 [label %if.then69], !srcloc !146

if.then69:                                        ; preds = %do.body57
  %27 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %flash, align 4
  %call.i136 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %28, i8 noundef zeroext 4) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_setup, %if.then.i140)) #7
          to label %as3645a_read.exit141 [label %if.then.i140], !srcloc !146

if.then.i140:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i137 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp.i138 = icmp slt i32 %call.i136, 0
  %cond.i139 = select i1 %cmp.i138, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_read.__UNIQUE_ID_ddebug293, ptr noundef %dev.i137, ptr noundef nonnull @.str.56, i32 noundef 4, i32 noundef %call.i136, ptr noundef nonnull %cond.i139) #7
  br label %as3645a_read.exit141

as3645a_read.exit141:                             ; preds = %if.then.i140, %if.then69
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_setup.__UNIQUE_ID_ddebug298, ptr noundef %dev1, ptr noundef nonnull @.str.61, i32 noundef %call.i136) #7
  br label %do.end73

do.end73:                                         ; preds = %as3645a_read.exit141, %do.body57
  %and = and i32 %call19, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool74.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool74.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %if.end18.cleanup_crit_edge, %as3645a_set_control.exit.cleanup_crit_edge, %as3645a_set_timeout.exit.cleanup_crit_edge, %as3645a_set_current.exit.cleanup_crit_edge, %as3645a_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %do.end73 ], [ %call.i, %as3645a_read.exit.cleanup_crit_edge ], [ %call.i.i, %as3645a_set_current.exit.cleanup_crit_edge ], [ %call.i.i110, %as3645a_set_timeout.exit.cleanup_crit_edge ], [ %call.i.i118, %as3645a_set_control.exit.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fault) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_handle_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3645a_get_fault(ptr nocapture noundef readonly %fled, ptr nocapture noundef %fault) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fled, i32 -96
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 5) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_get_fault, %if.then.i)) #7
          to label %as3645a_read.exit [label %if.then.i], !srcloc !146

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %cond.i = select i1 %cmp.i, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_read.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.56, i32 noundef 5, i32 noundef %call.i, ptr noundef nonnull %cond.i) #7
  br label %as3645a_read.exit

as3645a_read.exit:                                ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %as3645a_read.exit.cleanup_crit_edge, label %if.end

as3645a_read.exit.cleanup_crit_edge:              ; preds = %as3645a_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %as3645a_read.exit
  %and = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fault, align 4
  %or = or i32 %3, 16
  store i32 %or, ptr %fault, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %and3 = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end2.do.body_crit_edge, label %if.then5

if.end2.do.body_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fault, align 4
  %or6 = or i32 %5, 32
  store i32 %or6, ptr %fault, align 4
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.end2.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_get_fault.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_get_fault, %if.then13)) #7
          to label %do.end [label %if.then13], !srcloc !146

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %and14 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond = select i1 %tobool15.not, i32 1, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_get_fault.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %and17 = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.end.if.end21_crit_edge, label %if.then19

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fault, align 4
  %or20 = or i32 %9, 2
  store i32 %or20, ptr %fault, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.end.if.end21_crit_edge
  %and22 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fault, align 4
  %or25 = or i32 %11, 4
  store i32 %or25, ptr %fault, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %and27 = and i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end31_crit_edge, label %if.then29

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fault, align 4
  %or30 = or i32 %13, 16
  store i32 %or30, ptr %fault, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %and32 = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.then34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fault, align 4
  %or35 = or i32 %15, 128
  store i32 %or35, ptr %fault, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end31.cleanup_crit_edge, %as3645a_read.exit.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3645a_set_indicator_brightness(ptr nocapture noundef %iled_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %iled_cdev, i32 -552
  %indicator_current = getelementptr i8, ptr %iled_cdev, i32 456
  %0 = ptrtoint ptr %indicator_current to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %brightness, ptr %indicator_current, align 4
  %timeout.i = getelementptr i8, ptr %iled_cdev, i32 444
  %1 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout.i, align 4
  %voltage_reference.i = getelementptr i8, ptr %iled_cdev, i32 432
  %3 = ptrtoint ptr %voltage_reference.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %voltage_reference.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not.i = icmp eq i32 %brightness, 0
  %sub.i = shl i32 %brightness, 6
  %phi.bo.i = add i32 %sub.i, 192
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %phi.bo.i
  %shl1.i = shl i32 %4, 4
  %or.i = or i32 %2, %cond.i
  %or5.i = or i32 %or.i, %shl1.i
  %conv6.i = trunc i32 %or5.i to i8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 2, i8 noundef zeroext %conv6.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_set_indicator_brightness, %if.then.i.i)) #7
          to label %as3645a_set_timeout.exit [label %if.then.i.i], !srcloc !146

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %conv5.i.i = and i32 %or5.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef %conv5.i.i, ptr noundef nonnull %cond.i.i) #7
  br label %as3645a_set_timeout.exit

as3645a_set_timeout.exit:                         ; preds = %if.then.i.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %as3645a_set_timeout.exit.cleanup_crit_edge

as3645a_set_timeout.exit.cleanup_crit_edge:       ; preds = %as3645a_set_timeout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %as3645a_set_timeout.exit
  call void @__sanitizer_cov_trace_pc() #9
  %peak.i = getelementptr i8, ptr %iled_cdev, i32 436
  %7 = ptrtoint ptr %peak.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %peak.i, align 4
  %shl.i = shl i32 %8, 6
  %cond.i8 = select i1 %tobool.not.i, i32 0, i32 8
  %or.i9 = or i32 %shl.i, %cond.i8
  %9 = trunc i32 %or.i9 to i8
  %conv.i = or i8 %9, 1
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %call.i.i10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext %conv.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_set_indicator_brightness, %if.then.i.i15)) #7
          to label %cleanup [label %if.then.i.i15], !srcloc !146

if.then.i.i15:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i11 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %conv5.i.i12 = zext i8 %conv.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %cmp.i.i13 = icmp slt i32 %call.i.i10, 0
  %cond.i.i14 = select i1 %cmp.i.i13, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i11, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef %conv5.i.i12, ptr noundef nonnull %cond.i.i14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i15, %if.end, %as3645a_set_timeout.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %as3645a_set_timeout.exit.cleanup_crit_edge ], [ %call.i.i10, %if.end ], [ %call.i.i10, %if.then.i.i15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3645a_set_assist_brightness(ptr nocapture noundef %fled_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fled_cdev, i32 -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not = icmp eq i32 %brightness, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %sub = add i32 %brightness, -1
  %assist_current = getelementptr i8, ptr %fled_cdev, i32 908
  %0 = ptrtoint ptr %assist_current to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sub, ptr %assist_current, align 4
  %flash_current.i = getelementptr i8, ptr %fled_cdev, i32 904
  %1 = ptrtoint ptr %flash_current.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flash_current.i, align 4
  %shl.i = shl i32 %2, 4
  %or.i = or i32 %shl.i, %sub
  %3 = trunc i32 %or.i to i8
  %conv.i = or i8 %3, 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 3, i8 noundef zeroext %conv.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_set_assist_brightness, %if.then.i.i)) #7
          to label %as3645a_set_current.exit [label %if.then.i.i], !srcloc !146

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %conv5.i.i = zext i8 %conv.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef 3, i32 noundef %conv5.i.i, ptr noundef nonnull %cond.i.i) #7
  br label %as3645a_set_current.exit

as3645a_set_current.exit:                         ; preds = %if.then.i.i, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %as3645a_set_current.exit.if.end4_crit_edge, label %as3645a_set_current.exit.cleanup_crit_edge

as3645a_set_current.exit.cleanup_crit_edge:       ; preds = %as3645a_set_current.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

as3645a_set_current.exit.if.end4_crit_edge:       ; preds = %as3645a_set_current.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %as3645a_set_current.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %cond.i = phi i32 [ 8, %as3645a_set_current.exit.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ]
  %peak.i = getelementptr i8, ptr %fled_cdev, i32 892
  %6 = ptrtoint ptr %peak.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %peak.i, align 4
  %shl.i14 = shl i32 %7, 6
  %or.i15 = or i32 %shl.i14, %cond.i
  %8 = trunc i32 %or.i15 to i8
  %conv.i16 = or i8 %8, 2
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %call.i.i17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 4, i8 noundef zeroext %conv.i16) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_set_assist_brightness, %if.then.i.i22)) #7
          to label %cleanup [label %if.then.i.i22], !srcloc !146

if.then.i.i22:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i18 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %conv5.i.i19 = zext i8 %conv.i16 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %cmp.i.i20 = icmp slt i32 %call.i.i17, 0
  %cond.i.i21 = select i1 %cmp.i.i20, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i18, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef %conv5.i.i19, ptr noundef nonnull %cond.i.i21) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i22, %if.end4, %as3645a_set_current.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %as3645a_set_current.exit.cleanup_crit_edge ], [ %call.i.i17, %if.end4 ], [ %call.i.i17, %if.then.i.i22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_flash_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3645a_set_flash_brightness(ptr nocapture noundef %fled, i32 noundef %brightness_ua) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fled, i32 -96
  %assist_max_ua.i = getelementptr i8, ptr %fled, i32 880
  %0 = ptrtoint ptr %assist_max_ua.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assist_max_ua.i, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %brightness_ua, i32 20000) #7
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %1) #7
  %sub.i.i = add i32 %3, -20000
  %retval.0.i = udiv i32 %sub.i.i, 20000
  %flash_current = getelementptr i8, ptr %fled, i32 904
  %4 = ptrtoint ptr %flash_current to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i, ptr %flash_current, align 4
  %shl.i = shl nuw nsw i32 %retval.0.i, 4
  %assist_current.i = getelementptr i8, ptr %fled, i32 908
  %5 = ptrtoint ptr %assist_current.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %assist_current.i, align 4
  %or.i = or i32 %shl.i, %6
  %7 = trunc i32 %or.i to i8
  %conv.i = or i8 %7, 8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 3, i8 noundef zeroext %conv.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_set_flash_brightness, %if.then.i.i)) #7
          to label %as3645a_set_current.exit [label %if.then.i.i], !srcloc !146

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %conv5.i.i = zext i8 %conv.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef 3, i32 noundef %conv5.i.i, ptr noundef nonnull %cond.i.i) #7
  br label %as3645a_set_current.exit

as3645a_set_current.exit:                         ; preds = %if.then.i.i, %entry
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3645a_set_strobe(ptr nocapture noundef readonly %fled, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fled, i32 -96
  %peak.i = getelementptr i8, ptr %fled, i32 892
  %0 = ptrtoint ptr %peak.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peak.i, align 4
  %shl.i = shl i32 %1, 6
  %cond.i = select i1 %state, i32 8, i32 0
  %or.i = or i32 %shl.i, %cond.i
  %2 = trunc i32 %or.i to i8
  %strobe_source.i = getelementptr i8, ptr %fled, i32 916
  %3 = ptrtoint ptr %strobe_source.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %strobe_source.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp3.i = icmp eq i32 %4, 1
  %spec.select.i.v = select i1 %cmp3.i, i8 39, i8 3
  %spec.select.i = or i8 %spec.select.i.v, %2
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 4, i8 noundef zeroext %spec.select.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_set_strobe, %if.then.i.i)) #7
          to label %as3645a_set_control.exit [label %if.then.i.i], !srcloc !146

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %conv5.i.i = zext i8 %spec.select.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef %conv5.i.i, ptr noundef nonnull %cond.i.i) #7
  br label %as3645a_set_control.exit

as3645a_set_control.exit:                         ; preds = %if.then.i.i, %entry
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3645a_set_flash_timeout(ptr nocapture noundef %fled, i32 noundef %timeout_us) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fled, i32 -96
  %div = udiv i32 %timeout_us, 1000
  %sub = add nsw i32 %div, -100
  %div1 = udiv i32 %sub, 50
  %timeout = getelementptr i8, ptr %fled, i32 900
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %div1, ptr %timeout, align 4
  %voltage_reference.i = getelementptr i8, ptr %fled, i32 888
  %1 = ptrtoint ptr %voltage_reference.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %voltage_reference.i, align 4
  %indicator_current.i = getelementptr i8, ptr %fled, i32 912
  %3 = ptrtoint ptr %indicator_current.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %indicator_current.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %sub.i = shl i32 %4, 6
  %phi.bo.i = add i32 %sub.i, 192
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %phi.bo.i
  %shl1.i = shl i32 %2, 4
  %or.i = or i32 %shl1.i, %div1
  %or5.i = or i32 %or.i, %cond.i
  %conv6.i = trunc i32 %or5.i to i8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 2, i8 noundef zeroext %conv6.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3645a_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3645a_set_flash_timeout, %if.then.i.i)) #7
          to label %as3645a_set_timeout.exit [label %if.then.i.i], !srcloc !146

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %conv5.i.i = and i32 %or5.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3645a_write.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef %conv5.i.i, ptr noundef nonnull %cond.i.i) #7
  br label %as3645a_set_timeout.exit

as3645a_set_timeout.exit:                         ; preds = %if.then.i.i, %entry
  ret i32 %call.i.i
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_flash_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_flash_indicator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !122, !124, !126, !128, !129, !130, !131, !133, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_leds_as3645a__301_769_as3645a_i2c_driver_init6, !1, !"__initcall__kmod_leds_as3645a__301_769_as3645a_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 769, i32 1}
!2 = !{ptr @__exitcall_as3645a_i2c_driver_exit, !1, !"__exitcall_as3645a_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 771, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 772, i32 1}
!7 = !{ptr @__UNIQUE_ID_description304, !8, !"__UNIQUE_ID_description304", i1 false, i1 false}
!8 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 773, i32 1}
!9 = !{ptr @__UNIQUE_ID_file305, !10, !"__UNIQUE_ID_file305", i1 false, i1 false}
!10 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 774, i32 1}
!11 = !{ptr @__UNIQUE_ID_license306, !10, !"__UNIQUE_ID_license306", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 762, i32 11}
!14 = !{ptr @as3645a_i2c_driver, !15, !"as3645a_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 759, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 163, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @as3645a_write.__UNIQUE_ID_ddebug292, !17, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!22 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @as3645a_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 697, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 491, i32 35}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 503, i32 4}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @as3645a_parse_node._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @as3645a_parse_node._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 510, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @as3645a_parse_node._entry.13, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @as3645a_parse_node._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 514, i32 53}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 517, i32 3}
!45 = !{ptr @as3645a_parse_node._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @as3645a_parse_node._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 522, i32 53}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 525, i32 3}
!51 = !{ptr @as3645a_parse_node._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @as3645a_parse_node._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 530, i32 53}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 533, i32 3}
!57 = !{ptr @as3645a_parse_node._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @as3645a_parse_node._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 538, i32 46}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 541, i32 46}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 546, i32 3}
!65 = !{ptr @as3645a_parse_node._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @as3645a_parse_node._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 557, i32 3}
!69 = !{ptr @as3645a_parse_node._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @as3645a_parse_node._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 428, i32 3}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @as3645a_detect._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @as3645a_detect._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 437, i32 3}
!78 = !{ptr @as3645a_detect._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @as3645a_detect._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 446, i32 3}
!82 = !{ptr @as3645a_detect._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @as3645a_detect._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 453, i32 12}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 456, i32 12}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 459, i32 12}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 462, i32 12}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 465, i32 12}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 468, i32 12}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 471, i32 2}
!98 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @as3645a_detect._entry.51, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @as3645a_detect._entry_ptr.54, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 177, i32 2}
!103 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @as3645a_read.__UNIQUE_ID_ddebug293, !102, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 391, i32 2}
!107 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @as3645a_setup.__UNIQUE_ID_ddebug295, !106, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 410, i32 2}
!111 = !{ptr @as3645a_setup.__UNIQUE_ID_ddebug296, !110, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 412, i32 2}
!114 = !{ptr @as3645a_setup.__UNIQUE_ID_ddebug297, !113, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 414, i32 2}
!117 = !{ptr @as3645a_setup.__UNIQUE_ID_ddebug298, !116, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 267, i32 2}
!120 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @as3645a_get_fault.__UNIQUE_ID_ddebug294, !119, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 586, i32 28}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 616, i32 28}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 627, i32 2}
!128 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @as3645a_led_class_setup._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @as3645a_led_class_setup._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @as3645a_led_flash_ops, !132, !"as3645a_led_flash_ops", i1 false, i1 false}
!132 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 373, i32 35}
!133 = !{ptr @as3645a_of_table, !134, !"as3645a_of_table", i1 false, i1 false}
!134 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 753, i32 34}
!135 = !{ptr @as3645a_id_table, !136, !"as3645a_id_table", i1 false, i1 false}
!136 = !{!"../drivers/leds/flash/leds-as3645a.c", i32 747, i32 35}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i64 2148774610, i64 2148774615, i64 2148774628, i64 2148774672, i64 2148774706, i64 2148774727}
!147 = !{!"auto-init"}
