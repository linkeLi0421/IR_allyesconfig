; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lp3952.c_pt.bc'
source_filename = "../drivers/leds/leds-lp3952.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.atomic_t = type { i32 }
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
%struct.lp3952_led_array = type { ptr, ptr, ptr, [6 x %struct.lp3952_ctrl_hdl] }
%struct.lp3952_ctrl_hdl = type { %struct.led_classdev, [15 x i8], i32, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_leds_lp3952__290_284_lp3952_i2c_driver_init6 = internal global ptr @lp3952_i2c_driver_init, section ".initcall6.init", align 4
@lp3952_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp3952_probe, ptr @lp3952_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp3952_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp3952_i2c_driver_exit = internal global ptr @lp3952_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [57 x i8] c"leds_lp3952.author=Tony Makkiel <tony.makkiel@daqri.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [57 x i8] c"leds_lp3952.description=lp3952 I2C LED controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [42 x i8] c"leds_lp3952.file=drivers/leds/leds-lp3952\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [27 x i8] c"leds_lp3952.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp3952\00", [25 x i8] zeroinitializer }, align 32
@lp3952_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp3952\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nrst\00", [27 x i8] zeroinitializer }, align 32
@lp3952_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 226, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable gpio: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp3952_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lp3952.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp3952_probe._entry_ptr = internal global ptr @lp3952_probe._entry, section ".printk_index", align 4
@lp3952_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lp3952_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 96, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"leds_lp3952:230:(&lp3952_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@lp3952_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 235, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lp3952_probe._entry_ptr.10 = internal global ptr @lp3952_probe._entry.8, section ".printk_index", align 4
@lp3952_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Probe failed. Device not found (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@lp3952_probe._entry_ptr.13 = internal global ptr @lp3952_probe._entry.11, section ".printk_index", align 4
@lp3952_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to register led_classdev: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lp3952_probe._entry_ptr.16 = internal global ptr @lp3952_probe._entry.14, section ".printk_index", align 4
@lp3952_register_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 32, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: reg 0x%x, val 0x%x, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lp3952_register_write\00", [42 x i8] zeroinitializer }, align 32
@lp3952_register_write._entry_ptr = internal global ptr @lp3952_register_write._entry, section ".printk_index", align 4
@lp3952_register_led_classdev.led_name_hdl = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blue2\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"green2\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"red2\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blue1\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"green1\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"red1\00", [27 x i8] zeroinitializer }, align 32
@lp3952_register_led_classdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't register LED %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lp3952_register_led_classdev\00", [35 x i8] zeroinitializer }, align 32
@lp3952_register_led_classdev._entry_ptr = internal global ptr @lp3952_register_led_classdev._entry, section ".printk_index", align 4
@lp3952_set_brightness.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"leds_lp3952\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lp3952_set_brightness\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Brightness request: %d on %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lp3952_set_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 76, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" %s Invalid LED requested\00", [38 x i8] zeroinitializer }, align 32
@lp3952_set_brightness._entry_ptr = internal global ptr @lp3952_set_brightness._entry, section ".printk_index", align 4
@lp3952_on_off.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lp3952_on_off\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s LED %d to %d\0A\00", [47 x i8] zeroinitializer }, align 32
@lp3952_on_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 50, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s, Error %d\0A\00", [18 x i8] zeroinitializer }, align 32
@lp3952_on_off._entry_ptr = internal global ptr @lp3952_on_off._entry, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"lp3952_i2c_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 275, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 277, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"lp3952_id\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 269, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 222, i32 51 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 226, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"lp3952_regmap\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 203, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 230, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 234, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 243, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 250, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 31, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"led_name_hdl\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 111, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 112, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 113, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 114, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 115, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 116, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 117, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 137, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 67, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 76, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 41, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [30 x i8] c"../drivers/leds/leds-lp3952.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 50, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_lp3952_i2c_driver_exit, ptr @__initcall__kmod_leds_lp3952__290_284_lp3952_i2c_driver_init6, ptr @lp3952_i2c_driver_exit, ptr @lp3952_on_off._entry, ptr @lp3952_on_off._entry_ptr, ptr @lp3952_probe._entry, ptr @lp3952_probe._entry.11, ptr @lp3952_probe._entry.14, ptr @lp3952_probe._entry.8, ptr @lp3952_probe._entry_ptr, ptr @lp3952_probe._entry_ptr.10, ptr @lp3952_probe._entry_ptr.13, ptr @lp3952_probe._entry_ptr.16, ptr @lp3952_register_led_classdev._entry, ptr @lp3952_register_led_classdev._entry_ptr, ptr @lp3952_register_write._entry, ptr @lp3952_register_write._entry_ptr, ptr @lp3952_set_brightness._entry, ptr @lp3952_set_brightness._entry_ptr, ptr @lp3952_i2c_driver, ptr @.str, ptr @lp3952_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lp3952_probe._key, ptr @lp3952_regmap, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @lp3952_register_led_classdev.led_name_hdl, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_register_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_register_led_classdev.led_name_hdl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_register_led_classdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_set_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3952_on_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3952_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp3952_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp3952_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lp3952_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3952_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %str.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2556, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %client1 = getelementptr inbounds %struct.lp3952_led_array, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client1, align 4
  %call3 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #6
  %enable_gpio = getelementptr inbounds %struct.lp3952_led_array, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %enable_gpio, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %2) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lp3952_regmap, ptr noundef nonnull @lp3952_probe._key, ptr noundef nonnull @.str.7) #6
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %call.i, align 4
  %cmp.i65 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %4) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client1, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call2.i.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %lp3952_register_write.exit.i

lp3952_register_write.exit.i:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 0, i32 noundef %call2.i.i) #9
  br label %do.end27

if.end.i:                                         ; preds = %if.end21
  %12 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client1, align 4
  %driver_data.i.i.i20.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i20.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call2.i21.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 17, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call2.i21.i, 0
  br i1 %tobool.not.i22.i, label %if.end5.i, label %lp3952_register_write.exit25.i

lp3952_register_write.exit25.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i23.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i23.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 17, i32 noundef 6, i32 noundef %call2.i21.i) #9
  br label %do.end27

if.end5.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client1, align 4
  %driver_data.i.i.i26.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i26.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call2.i27.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 11, i32 noundef 68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i27.i)
  %tobool.not.i28.i = icmp eq i32 %call2.i27.i, 0
  br i1 %tobool.not.i28.i, label %if.end10.i, label %lp3952_register_write.exit31.i

lp3952_register_write.exit31.i:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i29.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i29.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 11, i32 noundef 68, i32 noundef %call2.i27.i) #9
  br label %do.end27

if.end10.i:                                       ; preds = %if.end5.i
  %24 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client1, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call2.i.i.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 80, i32 noundef 53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end29.i.i, label %lp3952_register_write.exit.i.i

lp3952_register_write.exit.i.i:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 80, i32 noundef 53, i32 noundef %call2.i.i.i) #9
  br label %do.end27

if.end29.i.i:                                     ; preds = %if.end10.i
  %30 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client1, align 4
  %driver_data.i.i.i1.i.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4, i32 8
  %32 = ptrtoint ptr %driver_data.i.i.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i.i1.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call2.i2.i.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 81, i32 noundef 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %call2.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.end29.i.i.for.body.i_crit_edge, label %do.end.i5.i.i

if.end29.i.i.for.body.i_crit_edge:                ; preds = %if.end29.i.i
  br label %for.body.i

do.end.i5.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i4.i.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i4.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 81, i32 noundef 28, i32 noundef %call2.i2.i.i) #9
  br label %do.end27

do.end27:                                         ; preds = %do.end.i5.i.i, %lp3952_register_write.exit.i.i, %lp3952_register_write.exit31.i, %lp3952_register_write.exit25.i, %lp3952_register_write.exit.i
  %retval.0.i.ph = phi i32 [ %call2.i2.i.i, %do.end.i5.i.i ], [ %call2.i.i.i, %lp3952_register_write.exit.i.i ], [ %call2.i27.i, %lp3952_register_write.exit31.i ], [ %call2.i21.i, %lp3952_register_write.exit25.i ], [ %call2.i.i, %lp3952_register_write.exit.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end29.i.i.for.body.i_crit_edge
  %ret.069.i = phi i32 [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ], [ -19, %if.end29.i.i.for.body.i_crit_edge ]
  %i.067.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end29.i.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  %arrayidx.i = getelementptr [6 x ptr], ptr @lp3952_register_led_classdev.led_name_hdl, i32 0, i32 %i.067.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str.i.i) #6
  %40 = ptrtoint ptr %str.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %str.i.i, align 4, !annotation !93
  %call.i.i = call i32 @device_property_read_string(ptr noundef %dev.i, ptr noundef %39, ptr noundef nonnull %str.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i67 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i67, label %if.end.i68, label %lp3952_get_label.exit.i

lp3952_get_label.exit.i:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str.i.i) #6
  br label %for.inc.i

if.end.i68:                                       ; preds = %for.body.i
  %arrayidx1.i = getelementptr %struct.lp3952_led_array, ptr %call.i, i32 0, i32 3, i32 %i.067.i
  %name.i = getelementptr %struct.lp3952_led_array, ptr %call.i, i32 0, i32 3, i32 %i.067.i, i32 1
  %41 = ptrtoint ptr %str.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %str.i.i, align 4
  %call1.i.i = call ptr @strncpy(ptr noundef %name.i, ptr noundef %42, i32 noundef 15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str.i.i) #6
  %43 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %name.i, ptr %arrayidx1.i, align 4
  %brightness.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx1.i, i32 0, i32 1
  %44 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %brightness.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx1.i, i32 0, i32 2
  %45 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %max_brightness.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx1.i, i32 0, i32 6
  %46 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @lp3952_set_brightness, ptr %brightness_set_blocking.i, align 4
  %channel.i = getelementptr %struct.lp3952_led_array, ptr %call.i, i32 0, i32 3, i32 %i.067.i, i32 2
  %47 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %i.067.i, ptr %channel.i, align 4
  %priv22.i = getelementptr %struct.lp3952_led_array, ptr %call.i, i32 0, i32 3, i32 %i.067.i, i32 3
  %48 = ptrtoint ptr %priv22.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %priv22.i, align 4
  %49 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client1, align 4
  %dev24.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  %call.i65.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev24.i, ptr noundef %arrayidx1.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %cmp29.i = icmp slt i32 %call.i65.i, 0
  br i1 %cmp29.i, label %lp3952_register_led_classdev.exit.thread, label %if.end.i68.for.inc.i_crit_edge

if.end.i68.for.inc.i_crit_edge:                   ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lp3952_register_led_classdev.exit.thread:         ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %client1, align 4
  %dev32.i = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx1.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32.i, ptr noundef nonnull @.str.25, ptr noundef %54) #9
  br label %do.end35

for.inc.i:                                        ; preds = %if.end.i68.for.inc.i_crit_edge, %lp3952_get_label.exit.i
  %ret.1.i = phi i32 [ %ret.069.i, %lp3952_get_label.exit.i ], [ %call.i65.i, %if.end.i68.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %lp3952_register_led_classdev.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

lp3952_register_led_classdev.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool31.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool31.not, label %lp3952_register_led_classdev.exit.cleanup_crit_edge, label %lp3952_register_led_classdev.exit.do.end35_crit_edge

lp3952_register_led_classdev.exit.do.end35_crit_edge: ; preds = %lp3952_register_led_classdev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

lp3952_register_led_classdev.exit.cleanup_crit_edge: ; preds = %lp3952_register_led_classdev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end35:                                         ; preds = %lp3952_register_led_classdev.exit.do.end35_crit_edge, %lp3952_register_led_classdev.exit.thread
  %ret.2.i74 = phi i32 [ %call.i65.i, %lp3952_register_led_classdev.exit.thread ], [ %ret.1.i, %lp3952_register_led_classdev.exit.do.end35_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %ret.2.i74) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %lp3952_register_led_classdev.exit.cleanup_crit_edge, %do.end27, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %4, %if.then14 ], [ %retval.0.i.ph, %do.end27 ], [ %ret.2.i74, %do.end35 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %lp3952_register_led_classdev.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3952_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3952_on_off.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lp3952_remove, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !94

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr inbounds %struct.lp3952_led_array, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3952_on_off.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 6, i32 noundef 0) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 63, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %do.end.i.lp3952_on_off.exit_crit_edge, label %do.end15.i

do.end.i.lp3952_on_off.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3952_on_off.exit

do.end15.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %client16.i = getelementptr inbounds %struct.lp3952_led_array, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %client16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client16.i, align 4
  %dev17.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %call.i.i) #9
  br label %lp3952_on_off.exit

lp3952_on_off.exit:                               ; preds = %do.end15.i, %do.end.i.lp3952_on_off.exit_crit_edge
  %enable_gpio = getelementptr inbounds %struct.lp3952_led_array, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3952_set_brightness(ptr nocapture noundef readonly %cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.lp3952_ctrl_hdl, ptr %cdev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3952_set_brightness.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lp3952_set_brightness, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.led_classdev, ptr %cdev, i32 0, i32 11
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.lp3952_ctrl_hdl, ptr %cdev, i32 0, i32 2
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3952_set_brightness.__UNIQUE_ID_ddebug289, ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %value, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  %channel6 = getelementptr inbounds %struct.lp3952_ctrl_hdl, ptr %cdev, i32 0, i32 2
  %6 = ptrtoint ptr %channel6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel6, align 4
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3952_on_off.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lp3952_set_brightness, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !94

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr inbounds %struct.lp3952_led_array, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3952_on_off.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %7, i32 noundef 0) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then5
  %shl.i = shl nuw i32 1, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp.i = icmp eq i32 %7, 6
  %spec.store.select.i = select i1 %cmp.i, i32 63, i32 %shl.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef %spec.store.select.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %do.end.i.cleanup_crit_edge, label %do.end15.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end15.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %client16.i = getelementptr inbounds %struct.lp3952_led_array, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %client16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client16.i, align 4
  %dev17.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %call.i.i) #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp9 = icmp ugt i32 %7, 5
  br i1 %cmp9, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %dev14 = getelementptr inbounds %struct.led_classdev, ptr %cdev, i32 0, i32 11
  %14 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp17 = icmp ugt i32 %7, 2
  %sub = shl nuw nsw i32 %7, 1
  %mul = add nsw i32 %sub, -6
  %shift_val.0 = select i1 %cmp17, i32 %mul, i32 %sub
  %reg.0 = select i1 %cmp17, i32 18, i32 19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3952_on_off.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lp3952_set_brightness, %if.then.i45)) #6
          to label %do.end.i51 [label %if.then.i45], !srcloc !94

if.then.i45:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %client.i43 = getelementptr inbounds %struct.lp3952_led_array, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %client.i43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i43, align 4
  %dev.i44 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3952_on_off.__UNIQUE_ID_ddebug288, ptr noundef %dev.i44, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %7, i32 noundef 1) #6
  br label %do.end.i51

do.end.i51:                                       ; preds = %if.then.i45, %if.end15
  %shl.i46 = shl nuw nsw i32 1, %7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i.i49 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 0, i32 noundef %shl.i46, i32 noundef %shl.i46, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %tobool11.not.i50 = icmp eq i32 %call.i.i49, 0
  br i1 %tobool11.not.i50, label %do.end.i51.lp3952_on_off.exit55_crit_edge, label %do.end15.i54

do.end.i51.lp3952_on_off.exit55_crit_edge:        ; preds = %do.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3952_on_off.exit55

do.end15.i54:                                     ; preds = %do.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  %client16.i52 = getelementptr inbounds %struct.lp3952_led_array, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %client16.i52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client16.i52, align 4
  %dev17.i53 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i53, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %call.i.i49) #9
  br label %lp3952_on_off.exit55

lp3952_on_off.exit55:                             ; preds = %do.end15.i54, %do.end.i51.lp3952_on_off.exit55_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %shl = shl nuw nsw i32 3, %shift_val.0
  %dec = add i32 %value, -1
  %shl24 = shl i32 %dec, %shift_val.0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %reg.0, i32 noundef %shl, i32 noundef %shl24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %lp3952_on_off.exit55, %do.end13, %do.end15.i, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end13 ], [ %call.i, %lp3952_on_off.exit55 ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %do.end15.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_leds_lp3952__290_284_lp3952_i2c_driver_init6, !1, !"__initcall__kmod_leds_lp3952__290_284_lp3952_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lp3952.c", i32 284, i32 1}
!2 = !{ptr @__exitcall_lp3952_i2c_driver_exit, !1, !"__exitcall_lp3952_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lp3952.c", i32 286, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lp3952.c", i32 287, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lp3952.c", i32 288, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lp3952.c", i32 277, i32 12}
!12 = !{ptr @lp3952_i2c_driver, !13, !"lp3952_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lp3952.c", i32 275, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lp3952.c", i32 222, i32 51}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-lp3952.c", i32 226, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lp3952_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lp3952_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lp3952_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-lp3952.c", i32 230, i32 17}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-lp3952.c", i32 234, i32 3}
!29 = !{ptr @lp3952_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lp3952_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-lp3952.c", i32 243, i32 3}
!33 = !{ptr @lp3952_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @lp3952_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-lp3952.c", i32 250, i32 3}
!37 = !{ptr @lp3952_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lp3952_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @lp3952_regmap, !40, !"lp3952_regmap", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-lp3952.c", i32 203, i32 35}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-lp3952.c", i32 31, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @lp3952_register_write._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @lp3952_register_write._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-lp3952.c", i32 112, i32 3}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/leds/leds-lp3952.c", i32 113, i32 3}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-lp3952.c", i32 114, i32 3}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/leds-lp3952.c", i32 115, i32 3}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-lp3952.c", i32 116, i32 3}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/leds/leds-lp3952.c", i32 117, i32 3}
!58 = !{ptr @lp3952_register_led_classdev.led_name_hdl, !59, !"led_name_hdl", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-lp3952.c", i32 111, i32 21}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-lp3952.c", i32 137, i32 4}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @lp3952_register_led_classdev._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @lp3952_register_led_classdev._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/leds/leds-lp3952.c", i32 67, i32 2}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @lp3952_set_brightness.__UNIQUE_ID_ddebug289, !66, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/leds-lp3952.c", i32 76, i32 3}
!72 = !{ptr @lp3952_set_brightness._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @lp3952_set_brightness._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/leds/leds-lp3952.c", i32 41, i32 2}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @lp3952_on_off.__UNIQUE_ID_ddebug288, !75, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/leds/leds-lp3952.c", i32 50, i32 3}
!80 = !{ptr @lp3952_on_off._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @lp3952_on_off._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @lp3952_id, !83, !"lp3952_id", i1 false, i1 false}
!83 = !{!"../drivers/leds/leds-lp3952.c", i32 269, i32 35}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i64 2148761532, i64 2148761537, i64 2148761550, i64 2148761594, i64 2148761628, i64 2148761649}
