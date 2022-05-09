; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-max8997.c_pt.bc'
source_filename = "../drivers/leds/leds-max8997.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.max8997_led = type { ptr, %struct.led_classdev, i8, i32, i32, %struct.mutex }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.max8997_platform_data = type { i32, ptr, i32, i8, [3 x i32], i32, [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, ptr, ptr, ptr }
%struct.max8997_led_platform_data = type { [2 x i32], [2 x i8] }
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }

@__initcall__kmod_leds_max8997__288_294_max8997_led_driver_init6 = internal global ptr @max8997_led_driver_init, section ".initcall6.init", align 4
@max8997_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8997_led_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8997_led_driver_exit = internal global ptr @max8997_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"leds_max8997.author=Donggeun Kim <dg77.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [44 x i8] c"leds_max8997.description=MAX8997 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [44 x i8] c"leds_max8997.file=drivers/leds/leds-max8997\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"leds_max8997.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [40 x i8] c"leds_max8997.alias=platform:max8997-led\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8997-led\00", [20 x i8] zeroinitializer }, align 32
@max8997_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8997_led_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/leds/leds-max8997.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8997_led_probe._entry_ptr = internal global ptr @max8997_led_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8997-led%d\00", [18 x i8] zeroinitializer }, align 32
@max8997_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @max8997_group, ptr null], [24 x i8] zeroinitializer }, align 32
@max8997_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&led->mutex\00", [20 x i8] zeroinitializer }, align 32
@max8997_led_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 111, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to update register(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max8997_led_enable\00", [45 x i8] zeroinitializer }, align 32
@max8997_led_enable._entry_ptr = internal global ptr @max8997_led_enable._entry, section ".printk_index", align 4
@max8997_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @max8997_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@max8997_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_mode, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_show, ptr @mode_store }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FLASH\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MOVIE\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FLASH_PIN_CONTROL\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MOVIE_PIN_CONTROL\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NONE\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FLASH_PIN_CONTROL\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MOVIE_PIN_CONTROL\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FLASH\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MOVIE\00", [26 x i8] zeroinitializer }, align 32
@max8997_led_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.20, ptr @.str.3, i32 91, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max8997_led_set_mode\00", [43 x i8] zeroinitializer }, align 32
@max8997_led_set_mode._entry_ptr = internal global ptr @max8997_led_set_mode._entry, section ".printk_index", align 4
@max8997_led_set_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.21, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max8997_led_set_current\00", [40 x i8] zeroinitializer }, align 32
@max8997_led_set_current._entry_ptr = internal global ptr @max8997_led_set_current._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"max8997_led_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 287, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 289, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 242, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 251, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"max8997_groups\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 278, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 110, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"max8997_group\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 231, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"max8997_attrs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 227, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 225, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 175, i32 23 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 178, i32 23 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 181, i32 23 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 184, i32 23 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 187, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 207, i32 20 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 209, i32 25 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 211, i32 25 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 213, i32 25 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 90, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [31 x i8] c"../drivers/leds/leds-max8997.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 143, i32 4 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max8997_led_driver_exit, ptr @__initcall__kmod_leds_max8997__288_294_max8997_led_driver_init6, ptr @max8997_led_driver_exit, ptr @max8997_led_enable._entry, ptr @max8997_led_enable._entry_ptr, ptr @max8997_led_probe._entry, ptr @max8997_led_probe._entry_ptr, ptr @max8997_led_set_current._entry, ptr @max8997_led_set_current._entry_ptr, ptr @max8997_led_set_mode._entry, ptr @max8997_led_set_mode._entry_ptr, ptr @max8997_led_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @max8997_groups, ptr @max8997_led_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @max8997_group, ptr @max8997_attrs, ptr @dev_attr_mode, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_led_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_led_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_led_set_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_led_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8997_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_led_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #8
  %cmp = icmp eq ptr %7, null
  %8 = call ptr @memset(ptr %name, i32 255, i32 20)
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 508, i32 noundef 3520) #8
  %cmp6 = icmp eq ptr %call.i, null
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %id9 = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %id9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %id9, align 4
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 20, ptr noundef nonnull @.str.6, i32 noundef %10)
  %cdev = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name, ptr %cdev, align 4
  %brightness_set = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @max8997_led_brightness_set, ptr %brightness_set, align 4
  %flags = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 65536
  store i32 %or, ptr %flags, align 4
  %brightness = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %brightness, align 4
  %groups = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 1, i32 12
  %17 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @max8997_groups, ptr %groups, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %3, ptr %call.i, align 4
  %led_pdata = getelementptr inbounds %struct.max8997_platform_data, ptr %7, i32 0, i32 16
  %19 = ptrtoint ptr %led_pdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %led_pdata, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %max8997_led_set_current.exit118, label %if.then19

if.then19:                                        ; preds = %if.end8
  %21 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id9, align 4
  %arrayidx = getelementptr [2 x i32], ptr %20, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %arrayidx27 = getelementptr %struct.max8997_led_platform_data, ptr %20, i32 0, i32 1, i32 %22
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx27, align 1
  %conv28 = and i32 %24, 255
  %i2c.i = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c.i, align 4
  %trunc = trunc i32 %24 to i8
  %29 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.epilog.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb1.i
    i8 3, label %sw.bb8.i
    i8 4, label %sw.bb15.i
  ]

sw.bb.i:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  %conv.i = select i1 %tobool.not.i, i8 1, i8 2
  br label %if.then.i

sw.bb1.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool3.not.i = icmp eq i32 %22, 0
  %conv5.i = select i1 %tobool3.not.i, i8 8, i8 16
  br label %if.then.i

sw.bb8.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not.i = icmp eq i32 %22, 0
  %conv12.i = select i1 %tobool10.not.i, i8 5, i8 6
  br label %if.then.i

sw.bb15.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool17.not.i = icmp eq i32 %22, 0
  %conv19.i = select i1 %tobool17.not.i, i8 40, i8 48
  br label %if.then.i

sw.epilog.i:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %max_brightness23.i = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %max_brightness23.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %max_brightness23.i, align 4
  br label %max8997_led_set_mode.exit

if.then.i:                                        ; preds = %sw.bb15.i, %sw.bb8.i, %sw.bb1.i, %sw.bb.i
  %.sink.i = phi i32 [ 15, %sw.bb15.i ], [ 31, %sw.bb8.i ], [ 15, %sw.bb1.i ], [ 31, %sw.bb.i ]
  %mask.0.ph.i = phi i8 [ 56, %sw.bb15.i ], [ 7, %sw.bb8.i ], [ 24, %sw.bb1.i ], [ 3, %sw.bb.i ]
  %val.0.ph.i = phi i8 [ %conv19.i, %sw.bb15.i ], [ %conv12.i, %sw.bb8.i ], [ %conv5.i, %sw.bb1.i ], [ %conv.i, %sw.bb.i ]
  %max_brightness21.i = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %max_brightness21.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink.i, ptr %max_brightness21.i, align 4
  %call.i88 = call i32 @max8997_update_reg(ptr noundef %28, i8 noundef zeroext 104, i8 noundef zeroext %val.0.ph.i, i8 noundef zeroext %mask.0.ph.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool25.not.i = icmp eq i32 %call.i88, 0
  br i1 %tobool25.not.i, label %if.then.i.max8997_led_set_mode.exit_crit_edge, label %do.end.i

if.then.i.max8997_led_set_mode.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max8997_led_set_mode.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.8, i32 noundef %call.i88) #11
  br label %max8997_led_set_mode.exit

max8997_led_set_mode.exit:                        ; preds = %do.end.i, %if.then.i.max8997_led_set_mode.exit_crit_edge, %sw.epilog.i
  %led_mode.i = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv28, ptr %led_mode.i, align 4
  %conv29 = zext i8 %26 to i32
  %max_brightness = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv29)
  %cmp31 = icmp ult i32 %38, %conv29
  %conv36 = trunc i32 %38 to i8
  %spec.select = select i1 %cmp31, i8 %conv36, i8 %26
  %conv38 = zext i8 %spec.select to i32
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %i2c.i89 = getelementptr inbounds %struct.max8997_dev, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %i2c.i89 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c.i89, align 4
  %43 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %trunc, label %max8997_led_set_mode.exit.max8997_led_set_current.exit_crit_edge [
    i8 1, label %max8997_led_set_mode.exit.sw.bb.i94_crit_edge
    i8 3, label %max8997_led_set_mode.exit.sw.bb.i94_crit_edge121
    i8 2, label %max8997_led_set_mode.exit.sw.bb2.i_crit_edge
    i8 4, label %max8997_led_set_mode.exit.sw.bb2.i_crit_edge122
  ]

max8997_led_set_mode.exit.sw.bb2.i_crit_edge122:  ; preds = %max8997_led_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

max8997_led_set_mode.exit.sw.bb2.i_crit_edge:     ; preds = %max8997_led_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

max8997_led_set_mode.exit.sw.bb.i94_crit_edge121: ; preds = %max8997_led_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i94

max8997_led_set_mode.exit.sw.bb.i94_crit_edge:    ; preds = %max8997_led_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i94

max8997_led_set_mode.exit.max8997_led_set_current.exit_crit_edge: ; preds = %max8997_led_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %max8997_led_set_current.exit

sw.bb.i94:                                        ; preds = %max8997_led_set_mode.exit.sw.bb.i94_crit_edge, %max8997_led_set_mode.exit.sw.bb.i94_crit_edge121
  %conv.i91 = shl i8 %spec.select, 3
  %44 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i93 = icmp eq i32 %45, 0
  %conv1.i = select i1 %tobool.not.i93, i8 99, i8 100
  br label %if.then.i98

sw.bb2.i:                                         ; preds = %max8997_led_set_mode.exit.sw.bb2.i_crit_edge, %max8997_led_set_mode.exit.sw.bb2.i_crit_edge122
  %conv4.i = shl i8 %spec.select, 4
  br label %if.then.i98

if.then.i98:                                      ; preds = %sw.bb2.i, %sw.bb.i94
  %val.0.ph.i95 = phi i8 [ %conv.i91, %sw.bb.i94 ], [ %conv4.i, %sw.bb2.i ]
  %mask.0.ph.i96 = phi i8 [ -8, %sw.bb.i94 ], [ -16, %sw.bb2.i ]
  %reg.0.ph.i = phi i8 [ %conv1.i, %sw.bb.i94 ], [ 101, %sw.bb2.i ]
  %call.i97 = call i32 @max8997_update_reg(ptr noundef %42, i8 noundef zeroext %reg.0.ph.i, i8 noundef zeroext %val.0.ph.i95, i8 noundef zeroext %mask.0.ph.i96) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool6.not.i = icmp eq i32 %call.i97, 0
  br i1 %tobool6.not.i, label %if.then.i98.max8997_led_set_current.exit_crit_edge, label %do.end.i99

if.then.i98.max8997_led_set_current.exit_crit_edge: ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %max8997_led_set_current.exit

do.end.i99:                                       ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.8, i32 noundef %call.i97) #11
  br label %max8997_led_set_current.exit

max8997_led_set_current.exit:                     ; preds = %do.end.i99, %if.then.i98.max8997_led_set_current.exit_crit_edge, %max8997_led_set_mode.exit.max8997_led_set_current.exit_crit_edge
  %50 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv38, ptr %brightness, align 4
  br label %do.body43

max8997_led_set_current.exit118:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %max_brightness23.i101 = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %max_brightness23.i101 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %max_brightness23.i101, align 4
  %led_mode.i103 = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 4
  %52 = ptrtoint ptr %led_mode.i103 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %led_mode.i103, align 4
  br label %do.body43

do.body43:                                        ; preds = %max8997_led_set_current.exit118, %max8997_led_set_current.exit
  %mutex = getelementptr inbounds %struct.max8997_led, ptr %call.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @max8997_led_probe.__key) #8
  %call.i119 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %cdev, ptr noundef null) #8
  %53 = call i32 @llvm.smin.i32(i32 %call.i119, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %do.body43, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %53, %do.body43 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8997_led_brightness_set(ptr nocapture noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %i2c.i9 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i9, align 4
  %led_mode.i10 = getelementptr i8, ptr %led_cdev, i32 408
  %4 = ptrtoint ptr %led_mode.i10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %led_mode.i10, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %5, label %if.then.max8997_led_set_current.exit_crit_edge [
    i32 1, label %if.then.sw.bb.i_crit_edge
    i32 3, label %if.then.sw.bb.i_crit_edge33
    i32 2, label %if.then.sw.bb2.i_crit_edge
    i32 4, label %if.then.sw.bb2.i_crit_edge34
  ]

if.then.sw.bb2.i_crit_edge34:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.then.sw.bb2.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.then.sw.bb.i_crit_edge33:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.max8997_led_set_current.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %max8997_led_set_current.exit

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge33
  %value.tr16.i = trunc i32 %value to i8
  %conv.i = shl i8 %value.tr16.i, 3
  %id.i = getelementptr i8, ptr %led_cdev, i32 404
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %conv1.i = select i1 %tobool.not.i, i8 99, i8 100
  br label %if.then.i

sw.bb2.i:                                         ; preds = %if.then.sw.bb2.i_crit_edge, %if.then.sw.bb2.i_crit_edge34
  %value.tr.i = trunc i32 %value to i8
  %conv4.i = shl i8 %value.tr.i, 4
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb2.i, %sw.bb.i
  %val.0.ph.i = phi i8 [ %conv.i, %sw.bb.i ], [ %conv4.i, %sw.bb2.i ]
  %mask.0.ph.i = phi i8 [ -8, %sw.bb.i ], [ -16, %sw.bb2.i ]
  %reg.0.ph.i = phi i8 [ %conv1.i, %sw.bb.i ], [ 101, %sw.bb2.i ]
  %call.i = tail call i32 @max8997_update_reg(ptr noundef %3, i8 noundef zeroext %reg.0.ph.i, i8 noundef zeroext %val.0.ph.i, i8 noundef zeroext %mask.0.ph.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then.i.max8997_led_set_current.exit_crit_edge, label %do.end.i

if.then.i.max8997_led_set_current.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max8997_led_set_current.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8, i32 noundef %call.i) #11
  br label %max8997_led_set_current.exit

max8997_led_set_current.exit:                     ; preds = %do.end.i, %if.then.i.max8997_led_set_current.exit_crit_edge, %if.then.max8997_led_set_current.exit_crit_edge
  %enabled.i = getelementptr i8, ptr %led_cdev, i32 400
  %13 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enabled.i, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i = icmp eq i8 %14, 1
  br i1 %cmp.i, label %max8997_led_set_current.exit.if.end_crit_edge, label %if.end.i

max8997_led_set_current.exit.if.end_crit_edge:    ; preds = %max8997_led_set_current.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %max8997_led_set_current.exit
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %i2c.i6 = getelementptr inbounds %struct.max8997_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %i2c.i6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c.i6, align 4
  %call.i7 = tail call i32 @max8997_update_reg(ptr noundef %18, i8 noundef zeroext 103, i8 noundef zeroext 64, i8 noundef zeroext 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool7.not.i = icmp eq i32 %call.i7, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end10.i_crit_edge, label %do.end.i8

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

do.end.i8:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8, i32 noundef %call.i7) #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i8, %if.end.i.if.end10.i_crit_edge
  %23 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %enabled.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %24 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %5, label %if.else.max8997_led_set_current.exit23_crit_edge [
    i32 1, label %if.else.sw.bb.i14_crit_edge
    i32 3, label %if.else.sw.bb.i14_crit_edge35
    i32 2, label %if.else.if.then.i21_crit_edge
    i32 4, label %if.else.if.then.i21_crit_edge36
  ]

if.else.if.then.i21_crit_edge36:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i21

if.else.if.then.i21_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i21

if.else.sw.bb.i14_crit_edge35:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i14

if.else.sw.bb.i14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i14

if.else.max8997_led_set_current.exit23_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %max8997_led_set_current.exit23

sw.bb.i14:                                        ; preds = %if.else.sw.bb.i14_crit_edge, %if.else.sw.bb.i14_crit_edge35
  %id.i11 = getelementptr i8, ptr %led_cdev, i32 404
  %25 = ptrtoint ptr %id.i11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i12 = icmp eq i32 %26, 0
  %conv1.i13 = select i1 %tobool.not.i12, i8 99, i8 100
  br label %if.then.i21

if.then.i21:                                      ; preds = %sw.bb.i14, %if.else.if.then.i21_crit_edge, %if.else.if.then.i21_crit_edge36
  %mask.0.ph.i17 = phi i8 [ -8, %sw.bb.i14 ], [ -16, %if.else.if.then.i21_crit_edge ], [ -16, %if.else.if.then.i21_crit_edge36 ]
  %reg.0.ph.i18 = phi i8 [ %conv1.i13, %sw.bb.i14 ], [ 101, %if.else.if.then.i21_crit_edge ], [ 101, %if.else.if.then.i21_crit_edge36 ]
  %call.i19 = tail call i32 @max8997_update_reg(ptr noundef %3, i8 noundef zeroext %reg.0.ph.i18, i8 noundef zeroext 0, i8 noundef zeroext %mask.0.ph.i17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool6.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool6.not.i20, label %if.then.i21.max8997_led_set_current.exit23_crit_edge, label %do.end.i22

if.then.i21.max8997_led_set_current.exit23_crit_edge: ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %max8997_led_set_current.exit23

do.end.i22:                                       ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.8, i32 noundef %call.i19) #11
  br label %max8997_led_set_current.exit23

max8997_led_set_current.exit23:                   ; preds = %do.end.i22, %if.then.i21.max8997_led_set_current.exit23_crit_edge, %if.else.max8997_led_set_current.exit23_crit_edge
  %enabled.i24 = getelementptr i8, ptr %led_cdev, i32 400
  %31 = ptrtoint ptr %enabled.i24 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enabled.i24, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.i25 = icmp eq i8 %32, 0
  br i1 %cmp.i25, label %max8997_led_set_current.exit23.if.end_crit_edge, label %if.end.i29

max8997_led_set_current.exit23.if.end_crit_edge:  ; preds = %max8997_led_set_current.exit23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i29:                                       ; preds = %max8997_led_set_current.exit23
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  %i2c.i26 = getelementptr inbounds %struct.max8997_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %i2c.i26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c.i26, align 4
  %call.i27 = tail call i32 @max8997_update_reg(ptr noundef %36, i8 noundef zeroext 103, i8 noundef zeroext 0, i8 noundef zeroext 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool7.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool7.not.i28, label %if.end.i29.if.end10.i31_crit_edge, label %do.end.i30

if.end.i29.if.end10.i31_crit_edge:                ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i31

do.end.i30:                                       ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.8, i32 noundef %call.i27) #11
  br label %if.end10.i31

if.end10.i31:                                     ; preds = %do.end.i30, %if.end.i29.if.end10.i31_crit_edge
  %41 = ptrtoint ptr %enabled.i24 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %enabled.i24, align 4
  br label %if.end

if.end:                                           ; preds = %if.end10.i31, %max8997_led_set_current.exit23.if.end_crit_edge, %if.end10.i, %max8997_led_set_current.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr i8, ptr %1, i32 412
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %led_mode = getelementptr i8, ptr %1, i32 408
  %2 = ptrtoint ptr %led_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
    i32 4, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.11, i32 7)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.12, i32 7)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.13, i32 19)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.14, i32 19)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.15, i32 6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %ret.0 = phi i32 [ 5, %sw.default ], [ 18, %sw.bb8 ], [ 18, %sw.bb5 ], [ 6, %sw.bb2 ], [ 6, %sw.bb ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr i8, ptr %1, i32 412
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(18) @.str.16, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %sw.bb8.i, label %if.else

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(18) @.str.17, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %sw.bb15.i, label %if.else5

if.else5:                                         ; preds = %if.else
  %call6 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(6) @.str.18, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %sw.bb.i, label %if.else9

if.else9:                                         ; preds = %if.else5
  %call10 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(6) @.str.19, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %add.ptr40 = getelementptr i8, ptr %1, i32 -4
  br i1 %tobool11.not, label %sw.bb1.i, label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr33 = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr33, align 4
  %i2c.i34 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 2
  %id.i = getelementptr i8, ptr %1, i32 404
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %conv.i = select i1 %tobool.not.i, i8 1, i8 2
  br label %if.then.i

sw.bb1.i:                                         ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr40, align 4
  %i2c.i41 = getelementptr inbounds %struct.max8997_dev, ptr %7, i32 0, i32 2
  %id2.i = getelementptr i8, ptr %1, i32 404
  %8 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  %conv5.i = select i1 %tobool3.not.i, i8 8, i8 16
  br label %if.then.i

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr46 = getelementptr i8, ptr %1, i32 -4
  %10 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr46, align 4
  %i2c.i47 = getelementptr inbounds %struct.max8997_dev, ptr %11, i32 0, i32 2
  %id9.i = getelementptr i8, ptr %1, i32 404
  %12 = ptrtoint ptr %id9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.i = icmp eq i32 %13, 0
  %conv12.i = select i1 %tobool10.not.i, i8 5, i8 6
  br label %if.then.i

sw.bb15.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %i2c.i = getelementptr inbounds %struct.max8997_dev, ptr %15, i32 0, i32 2
  %id16.i = getelementptr i8, ptr %1, i32 404
  %16 = ptrtoint ptr %id16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not.i = icmp eq i32 %17, 0
  %conv19.i = select i1 %tobool17.not.i, i8 40, i8 48
  br label %if.then.i

sw.epilog.i:                                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  %max_brightness23.i = getelementptr i8, ptr %1, i32 8
  %18 = ptrtoint ptr %max_brightness23.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %max_brightness23.i, align 4
  br label %max8997_led_set_mode.exit

if.then.i:                                        ; preds = %sw.bb15.i, %sw.bb8.i, %sw.bb1.i, %sw.bb.i
  %.in = phi ptr [ %i2c.i, %sw.bb15.i ], [ %i2c.i47, %sw.bb8.i ], [ %i2c.i41, %sw.bb1.i ], [ %i2c.i34, %sw.bb.i ]
  %mode.035 = phi i32 [ 4, %sw.bb15.i ], [ 3, %sw.bb8.i ], [ 2, %sw.bb1.i ], [ 1, %sw.bb.i ]
  %add.ptr28 = phi ptr [ %add.ptr, %sw.bb15.i ], [ %add.ptr46, %sw.bb8.i ], [ %add.ptr40, %sw.bb1.i ], [ %add.ptr33, %sw.bb.i ]
  %.sink.i = phi i32 [ 15, %sw.bb15.i ], [ 31, %sw.bb8.i ], [ 15, %sw.bb1.i ], [ 31, %sw.bb.i ]
  %mask.0.ph.i = phi i8 [ 56, %sw.bb15.i ], [ 7, %sw.bb8.i ], [ 24, %sw.bb1.i ], [ 3, %sw.bb.i ]
  %val.0.ph.i = phi i8 [ %conv19.i, %sw.bb15.i ], [ %conv12.i, %sw.bb8.i ], [ %conv5.i, %sw.bb1.i ], [ %conv.i, %sw.bb.i ]
  %19 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.in, align 4
  %max_brightness21.i = getelementptr i8, ptr %1, i32 8
  %21 = ptrtoint ptr %max_brightness21.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink.i, ptr %max_brightness21.i, align 4
  %call.i = tail call i32 @max8997_update_reg(ptr noundef %20, i8 noundef zeroext 104, i8 noundef zeroext %val.0.ph.i, i8 noundef zeroext %mask.0.ph.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool25.not.i, label %if.then.i.max8997_led_set_mode.exit_crit_edge, label %do.end.i

if.then.i.max8997_led_set_mode.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max8997_led_set_mode.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr28, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.8, i32 noundef %call.i) #11
  br label %max8997_led_set_mode.exit

max8997_led_set_mode.exit:                        ; preds = %do.end.i, %if.then.i.max8997_led_set_mode.exit_crit_edge, %sw.epilog.i
  %add.ptr29 = phi ptr [ %add.ptr40, %sw.epilog.i ], [ %add.ptr28, %if.then.i.max8997_led_set_mode.exit_crit_edge ], [ %add.ptr28, %do.end.i ]
  %mode.026 = phi i32 [ 0, %sw.epilog.i ], [ %mode.035, %if.then.i.max8997_led_set_mode.exit_crit_edge ], [ %mode.035, %do.end.i ]
  %led_mode.i = getelementptr inbounds %struct.max8997_led, ptr %add.ptr29, i32 0, i32 4
  %26 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mode.026, ptr %led_mode.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %size
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !31, !32, !33, !34, !36, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_leds_max8997__288_294_max8997_led_driver_init6, !1, !"__initcall__kmod_leds_max8997__288_294_max8997_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-max8997.c", i32 294, i32 1}
!2 = !{ptr @__exitcall_max8997_led_driver_exit, !1, !"__exitcall_max8997_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-max8997.c", i32 296, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-max8997.c", i32 297, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-max8997.c", i32 298, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-max8997.c", i32 299, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-max8997.c", i32 289, i32 12}
!14 = !{ptr @max8997_led_driver, !15, !"max8997_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-max8997.c", i32 287, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-max8997.c", i32 242, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @max8997_led_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @max8997_led_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-max8997.c", i32 251, i32 31}
!26 = !{ptr @max8997_led_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-max8997.c", i32 278, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-max8997.c", i32 110, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @max8997_led_enable._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @max8997_led_enable._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @max8997_groups, !35, !"max8997_groups", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-max8997.c", i32 231, i32 1}
!36 = !{ptr @max8997_group, !35, !"max8997_group", i1 false, i1 false}
!37 = !{ptr @max8997_attrs, !38, !"max8997_attrs", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-max8997.c", i32 227, i32 26}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-max8997.c", i32 225, i32 8}
!41 = !{ptr @dev_attr_mode, !40, !"dev_attr_mode", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-max8997.c", i32 175, i32 23}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-max8997.c", i32 178, i32 23}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-max8997.c", i32 181, i32 23}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/leds/leds-max8997.c", i32 184, i32 23}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-max8997.c", i32 187, i32 23}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/leds-max8997.c", i32 207, i32 20}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-max8997.c", i32 209, i32 25}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/leds/leds-max8997.c", i32 211, i32 25}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-max8997.c", i32 213, i32 25}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-max8997.c", i32 90, i32 4}
!62 = !{ptr @max8997_led_set_mode._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @max8997_led_set_mode._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/leds-max8997.c", i32 143, i32 4}
!66 = !{ptr @max8997_led_set_current._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @max8997_led_set_current._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
