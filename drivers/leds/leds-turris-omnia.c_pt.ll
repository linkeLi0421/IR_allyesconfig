; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-turris-omnia.c_pt.bc'
source_filename = "../drivers/leds/leds-turris-omnia.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
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
%struct.omnia_leds = type { ptr, %struct.mutex, [0 x %struct.omnia_led] }
%struct.omnia_led = type { %struct.led_classdev_mc, [3 x %struct.mc_subled], i32 }
%struct.led_classdev_mc = type { %struct.led_classdev, i32, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mc_subled = type { i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_turris_omnia__288_289_omnia_leds_driver_init6 = internal global ptr @omnia_leds_driver_init, section ".initcall6.init", align 4
@omnia_leds_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @omnia_leds_probe, ptr @omnia_leds_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_omnia_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @omnia_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_omnia_leds_driver_exit = internal global ptr @omnia_leds_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"leds_turris_omnia.author=Marek Behun <kabel@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"leds_turris_omnia.description=CZ.NIC's Turris Omnia LEDs\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [54 x i8] c"leds_turris_omnia.file=drivers/leds/leds-turris-omnia\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [33 x i8] c"leds_turris_omnia.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"leds-turris-omnia\00", [46 x i8] zeroinitializer }, align 32
@of_omnia_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cznic,turris-omnia-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@omnia_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"omnia\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@omnia_leds_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"LEDs are not defined in device tree!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omnia_leds_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/leds/leds-turris-omnia.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omnia_leds_probe._entry_ptr = internal global ptr @omnia_leds_probe._entry, section ".printk_index", align 4
@omnia_leds_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Too many LEDs defined in device tree!\0A\00", [57 x i8] zeroinitializer }, align 32
@omnia_leds_probe._entry_ptr.8 = internal global ptr @omnia_leds_probe._entry.6, section ".printk_index", align 4
@omnia_leds_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&leds->lock\00", [20 x i8] zeroinitializer }, align 32
@omnia_led_controller_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @omnia_led_controller_group, ptr null], [24 x i8] zeroinitializer }, align 32
@omnia_leds_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 243, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not add attribute group!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omnia_leds_probe._entry_ptr.13 = internal global ptr @omnia_leds_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@omnia_led_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 88, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Node %pOF: must contain 'reg' property with values between 0 and %i\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omnia_led_register\00", [45 x i8] zeroinitializer }, align 32
@omnia_led_register._entry_ptr = internal global ptr @omnia_led_register._entry, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"color\00", [26 x i8] zeroinitializer }, align 32
@omnia_led_register._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.3, i32 96, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Node %pOF: must contain 'color' property with value LED_COLOR_ID_RGB\0A\00", [58 x i8] zeroinitializer }, align 32
@omnia_led_register._entry_ptr.20 = internal global ptr @omnia_led_register._entry.18, section ".printk_index", align 4
@omnia_led_register._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot set LED %pOF to software mode: %i\0A\00", [54 x i8] zeroinitializer }, align 32
@omnia_led_register._entry_ptr.23 = internal global ptr @omnia_led_register._entry.21, section ".printk_index", align 4
@omnia_led_register._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.16, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot set LED %pOF brightness: %i\0A\00", [60 x i8] zeroinitializer }, align 32
@omnia_led_register._entry_ptr.26 = internal global ptr @omnia_led_register._entry.24, section ".printk_index", align 4
@omnia_led_register._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.16, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot register LED %pOF: %i\0A\00", [34 x i8] zeroinitializer }, align 32
@omnia_led_register._entry_ptr.29 = internal global ptr @omnia_led_register._entry.27, section ".printk_index", align 4
@omnia_led_controller_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @omnia_led_controller_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@omnia_led_controller_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_brightness, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_brightness = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @brightness_show, ptr @brightness_store }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"brightness\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"omnia_leds_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 279, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 284, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"of_omnia_leds_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 268, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"omnia_id\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 273, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 215, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 218, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 229, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [28 x i8] c"omnia_led_controller_groups\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 243, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 84, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 86, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 92, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 94, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 121, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 130, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 137, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"omnia_led_controller_group\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 202, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"omnia_led_controller_attrs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 198, i32 26 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c"dev_attr_brightness\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 196, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [36 x i8] c"../drivers/leds/leds-turris-omnia.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 169, i32 22 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_omnia_leds_driver_exit, ptr @__initcall__kmod_leds_turris_omnia__288_289_omnia_leds_driver_init6, ptr @omnia_led_register._entry, ptr @omnia_led_register._entry.18, ptr @omnia_led_register._entry.21, ptr @omnia_led_register._entry.24, ptr @omnia_led_register._entry.27, ptr @omnia_led_register._entry_ptr, ptr @omnia_led_register._entry_ptr.20, ptr @omnia_led_register._entry_ptr.23, ptr @omnia_led_register._entry_ptr.26, ptr @omnia_led_register._entry_ptr.29, ptr @omnia_leds_driver_exit, ptr @omnia_leds_probe._entry, ptr @omnia_leds_probe._entry.10, ptr @omnia_leds_probe._entry.6, ptr @omnia_leds_probe._entry_ptr, ptr @omnia_leds_probe._entry_ptr.13, ptr @omnia_leds_probe._entry_ptr.8, ptr @omnia_leds_driver, ptr @.str, ptr @of_omnia_leds_match, ptr @omnia_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @omnia_leds_probe.__key, ptr @.str.9, ptr @omnia_led_controller_groups, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @omnia_led_controller_group, ptr @omnia_led_controller_attrs, ptr @dev_attr_brightness, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_leds_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_omnia_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_leds_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_leds_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_leds_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_led_controller_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_leds_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_led_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_led_register._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_led_register._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_led_register._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_led_register._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_led_controller_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omnia_led_controller_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_brightness to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omnia_leds_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @omnia_leds_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omnia_leds_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @omnia_leds_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omnia_leds_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %init_data.i = alloca %struct.led_init_data, align 4
  %color.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %dev_of_node.exit.do.end_crit_edge, label %dev_of_node.exit.for.body.i_crit_edge

dev_of_node.exit.for.body.i_crit_edge:            ; preds = %dev_of_node.exit
  br label %for.body.i

dev_of_node.exit.do.end_crit_edge:                ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %dev_of_node.exit.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %dev_of_node.exit.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %dev_of_node.exit.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  br i1 %tobool.not, label %of_get_available_child_count.exit.do.end_crit_edge, label %if.else

of_get_available_child_count.exit.do.end_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %of_get_available_child_count.exit.do.end_crit_edge, %dev_of_node.exit.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.else:                                          ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %inc.i)
  %cmp = icmp sgt i32 %inc.i, 12
  br i1 %cmp, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 460) #7
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = add nuw i32 %4, 96
  %retval.0.i60 = select i1 %3, i32 -1, i32 %5
  %call.i61 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i60, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i61, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %call.i61 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i61, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i61, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.omnia_leds, ptr %call.i61, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @omnia_leds_probe.__key) #7
  %call18 = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef null) #7
  %cmp19.not77 = icmp eq ptr %call18, null
  br i1 %cmp19.not77, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %leds17 = getelementptr inbounds %struct.omnia_leds, ptr %call.i61, i32 0, i32 2
  %8 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %led.082 = phi ptr [ %leds17, %for.body.lr.ph ], [ %add.ptr, %if.end23.for.body_crit_edge ]
  %child.078 = phi ptr [ %call18, %for.body.lr.ph ], [ %call24, %if.end23.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #7
  %9 = call ptr @memset(ptr %8, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %color.i) #7
  %10 = ptrtoint ptr %color.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %color.i, align 4, !annotation !82
  %reg.i = getelementptr inbounds %struct.omnia_led, ptr %led.082, i32 0, i32 2
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.078, ptr noundef nonnull @.str.14, ptr noundef %reg.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i62 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i62, label %lor.lhs.false.i, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %for.body
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %12)
  %cmp.i = icmp sgt i32 %12, 11
  br i1 %cmp.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i63

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %child.078, i32 noundef 11) #10
  br label %if.end23

if.end.i63:                                       ; preds = %lor.lhs.false.i
  %call.i.i103.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.078, ptr noundef nonnull @.str.17, ptr noundef nonnull %color.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i103.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i103.i, -1
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %if.end.i63.do.end10.i_crit_edge

if.end.i63.do.end10.i_crit_edge:                  ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

lor.lhs.false5.i:                                 ; preds = %if.end.i63
  %13 = ptrtoint ptr %color.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %color.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %cmp6.not.i = icmp eq i32 %14, 9
  br i1 %cmp6.not.i, label %if.end11.i, label %lor.lhs.false5.i.do.end10.i_crit_edge

lor.lhs.false5.i.do.end10.i_crit_edge:            ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

do.end10.i:                                       ; preds = %lor.lhs.false5.i.do.end10.i_crit_edge, %if.end.i63.do.end10.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef nonnull %child.078) #10
  br label %if.end23

if.end11.i:                                       ; preds = %lor.lhs.false5.i
  %subled_info.i = getelementptr inbounds %struct.omnia_led, ptr %led.082, i32 0, i32 1
  %15 = ptrtoint ptr %subled_info.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %subled_info.i, align 4
  %channel.i = getelementptr inbounds %struct.omnia_led, ptr %led.082, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %channel.i, align 4
  %arrayidx15.i = getelementptr %struct.omnia_led, ptr %led.082, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %arrayidx15.i, align 4
  %channel19.i = getelementptr %struct.omnia_led, ptr %led.082, i32 0, i32 1, i32 1, i32 3
  %18 = ptrtoint ptr %channel19.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %channel19.i, align 4
  %arrayidx21.i = getelementptr %struct.omnia_led, ptr %led.082, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %arrayidx21.i, align 4
  %channel25.i = getelementptr %struct.omnia_led, ptr %led.082, i32 0, i32 1, i32 2, i32 3
  %20 = ptrtoint ptr %channel25.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %channel25.i, align 4
  %subled_info27.i = getelementptr inbounds %struct.led_classdev_mc, ptr %led.082, i32 0, i32 2
  %21 = ptrtoint ptr %subled_info27.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %subled_info.i, ptr %subled_info27.i, align 4
  %num_colors.i = getelementptr inbounds %struct.led_classdev_mc, ptr %led.082, i32 0, i32 1
  %22 = ptrtoint ptr %num_colors.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %num_colors.i, align 4
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %child.078, i32 0, i32 3
  %23 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fwnode.i, ptr %init_data.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %led.082, i32 0, i32 2
  %24 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 255, ptr %max_brightness.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.led_classdev, ptr %led.082, i32 0, i32 6
  %25 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @omnia_led_brightness_set_blocking, ptr %brightness_set_blocking.i, align 4
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg.i, align 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 15
  %conv.i = or i8 %29, 16
  %call32.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 3, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %do.end38.i, label %if.end39.i

do.end38.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull %child.078, i32 noundef %call32.i) #10
  br label %if.then22

if.end39.i:                                       ; preds = %if.end11.i
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg.i, align 4
  %32 = trunc i32 %31 to i8
  %conv42.i = and i8 %32, 15
  %call43.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext %conv42.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.i = icmp slt i32 %call43.i, 0
  br i1 %cmp44.i, label %do.end49.i, label %if.end50.i

do.end49.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull %child.078, i32 noundef %call43.i) #10
  br label %if.then22

if.end50.i:                                       ; preds = %if.end39.i
  %call52.i = call i32 @devm_led_classdev_multicolor_register_ext(ptr noundef %dev1, ptr noundef %led.082, ptr noundef nonnull %init_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %do.end58.i, label %if.end50.i.if.end23_crit_edge

if.end50.i.if.end23_crit_edge:                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end58.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef nonnull %child.078, i32 noundef %call52.i) #10
  br label %if.then22

if.then22:                                        ; preds = %do.end58.i, %do.end49.i, %do.end38.i
  %retval.0.i64.ph = phi i32 [ %call52.i, %do.end58.i ], [ %call43.i, %do.end49.i ], [ %call32.i, %do.end38.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %color.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #7
  call void @of_node_put(ptr noundef nonnull %child.078) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end50.i.if.end23_crit_edge, %do.end10.i, %do.end.i
  %retval.0.i64 = phi i32 [ 0, %do.end.i ], [ 0, %do.end10.i ], [ 1, %if.end50.i.if.end23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %color.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #7
  %add.ptr = getelementptr %struct.omnia_led, ptr %led.082, i32 %retval.0.i64
  %call24 = call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef nonnull %child.078) #7
  %cmp19.not = icmp eq ptr %call24, null
  br i1 %cmp19.not, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %if.end12.for.end_crit_edge
  %call25 = call i32 @devm_device_add_groups(ptr noundef %dev1, ptr noundef nonnull @omnia_led_controller_groups) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.end.cleanup_crit_edge, label %do.end30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %for.end.cleanup_crit_edge, %if.then22, %if.end7.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %retval.0.i64.ph, %if.then22 ], [ -19, %do.end ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %do.end30 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omnia_leds_remove(ptr noundef %client) #2 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 3, i8 noundef zeroext 12) #7
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %buf, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 12, ptr %0, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %1, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %3, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf, i32 noundef 5, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omnia_led_brightness_set_blocking(ptr noundef %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #7
  %6 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %7 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %8 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %9 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %lock = getelementptr inbounds %struct.omnia_leds, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call3 = tail call i32 @led_mc_calc_color_components(ptr noundef %cdev, i32 noundef %brightness) #7
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %buf, align 1
  %reg = getelementptr inbounds %struct.omnia_led, ptr %cdev, i32 0, i32 2
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %conv = trunc i32 %12 to i8
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %6, align 1
  %subled_info = getelementptr inbounds %struct.led_classdev_mc, ptr %cdev, i32 0, i32 2
  %14 = ptrtoint ptr %subled_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %subled_info, align 4
  %brightness6 = getelementptr inbounds %struct.mc_subled, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %brightness6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brightness6, align 4
  %conv7 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv7, ptr %7, align 1
  %brightness11 = getelementptr %struct.mc_subled, ptr %15, i32 1, i32 1
  %19 = ptrtoint ptr %brightness11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %brightness11, align 4
  %conv12 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv12, ptr %8, align 1
  %brightness16 = getelementptr %struct.mc_subled, ptr %15, i32 2, i32 1
  %22 = ptrtoint ptr %brightness16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %brightness16, align 4
  %conv17 = trunc i32 %23 to i8
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv17, ptr %9, align 1
  %conv20 = and i8 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv7)
  %tobool.not = icmp eq i8 %conv7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv12)
  %tobool25.not = icmp eq i8 %conv12, 0
  %conv28 = and i32 %23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv28)
  %tobool29.not = icmp eq i32 %conv28, 0
  %or.cond = select i1 %tobool25.not, i1 %tobool29.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %25 = or i8 %conv20, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %state.0 = phi i8 [ %25, %if.then ], [ %conv20, %lor.lhs.false.if.end_crit_edge ]
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %call32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 4, i8 noundef zeroext %state.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  %28 = and i8 %state.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool36.not = icmp eq i8 %28, 0
  %or.cond54 = or i1 %tobool36.not, %cmp
  br i1 %or.cond54, label %if.end.if.end40_crit_edge, label %if.then37

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %buf, i32 noundef 5, i16 noundef zeroext 0) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end.if.end40_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then37 ], [ %call32, %if.end.if.end40_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_multicolor_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_mc_calc_color_components(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brightness_show(ptr noundef %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.omnia_leds, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 8) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brightness_store(ptr noundef %dev, ptr nocapture noundef readnone %a, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %brightness = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %brightness) #7
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %brightness, align 4, !annotation !82
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %brightness) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %4)
  %cmp = icmp ugt i32 %4, 100
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.omnia_leds, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %5 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %brightness, align 4
  %conv = trunc i32 %6 to i8
  %call4 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7, i8 noundef zeroext %conv) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp6 = icmp slt i32 %call4, 0
  %call4.count = select i1 %cmp6, i32 %call4, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call4.count, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %brightness) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !66, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_leds_turris_omnia__288_289_omnia_leds_driver_init6, !1, !"__initcall__kmod_leds_turris_omnia__288_289_omnia_leds_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-turris-omnia.c", i32 289, i32 1}
!2 = !{ptr @__exitcall_omnia_leds_driver_exit, !1, !"__exitcall_omnia_leds_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-turris-omnia.c", i32 291, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-turris-omnia.c", i32 292, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-turris-omnia.c", i32 293, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-turris-omnia.c", i32 284, i32 11}
!12 = !{ptr @omnia_leds_driver, !13, !"omnia_leds_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-turris-omnia.c", i32 279, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-turris-omnia.c", i32 215, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @omnia_leds_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @omnia_leds_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-turris-omnia.c", i32 218, i32 3}
!24 = !{ptr @omnia_leds_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @omnia_leds_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @omnia_leds_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-turris-omnia.c", i32 229, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-turris-omnia.c", i32 243, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @omnia_leds_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @omnia_leds_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-turris-omnia.c", i32 84, i32 33}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-turris-omnia.c", i32 86, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @omnia_led_register._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @omnia_led_register._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-turris-omnia.c", i32 92, i32 33}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-turris-omnia.c", i32 94, i32 3}
!45 = !{ptr @omnia_led_register._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @omnia_led_register._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-turris-omnia.c", i32 121, i32 3}
!49 = !{ptr @omnia_led_register._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @omnia_led_register._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/leds/leds-turris-omnia.c", i32 130, i32 3}
!53 = !{ptr @omnia_led_register._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @omnia_led_register._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/leds/leds-turris-omnia.c", i32 137, i32 3}
!57 = !{ptr @omnia_led_register._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @omnia_led_register._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @omnia_led_controller_groups, !60, !"omnia_led_controller_groups", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-turris-omnia.c", i32 202, i32 1}
!61 = !{ptr @omnia_led_controller_group, !60, !"omnia_led_controller_group", i1 false, i1 false}
!62 = !{ptr @omnia_led_controller_attrs, !63, !"omnia_led_controller_attrs", i1 false, i1 false}
!63 = !{!"../drivers/leds/leds-turris-omnia.c", i32 198, i32 26}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/leds-turris-omnia.c", i32 196, i32 8}
!66 = !{ptr @dev_attr_brightness, !65, !"dev_attr_brightness", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/leds/leds-turris-omnia.c", i32 169, i32 22}
!69 = !{ptr @of_omnia_leds_match, !70, !"of_omnia_leds_match", i1 false, i1 false}
!70 = !{!"../drivers/leds/leds-turris-omnia.c", i32 268, i32 34}
!71 = !{ptr @omnia_id, !72, !"omnia_id", i1 false, i1 false}
!72 = !{!"../drivers/leds/leds-turris-omnia.c", i32 273, i32 35}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
