; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-an30259a.c_pt.bc'
source_filename = "../drivers/leds/leds-an30259a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.an30259a = type { %struct.mutex, ptr, [3 x %struct.an30259a_led], ptr, i32 }
%struct.an30259a_led = type { ptr, ptr, %struct.led_classdev, i32, i32, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_an30259a__288_369_an30259a_driver_init6 = internal global ptr @an30259a_driver_init, section ".initcall6.init", align 4
@an30259a_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @an30259a_remove, ptr @an30259a_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @an30259a_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @an30259a_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_an30259a_driver_exit = internal global ptr @an30259a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [57 x i8] c"leds_an30259a.author=Simon Shields <simon@lineageos.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [46 x i8] c"leds_an30259a.description=AN30259A LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [46 x i8] c"leds_an30259a.file=drivers/leds/leds-an30259a\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"leds_an30259a.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"leds-an30259a\00", [18 x i8] zeroinitializer }, align 32
@an30259a_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"panasonic,an30259a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@an30259a_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"an30259a\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@an30259a_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@an30259a_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@an30259a_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"leds_an30259a:303:(&an30259a_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@an30259a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 308, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"an30259a_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/leds/leds-an30259a.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@an30259a_probe._entry_ptr = internal global ptr @an30259a_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"an30259a\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@an30259a_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 221, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't read LED address: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"an30259a_dt_init\00", [47 x i8] zeroinitializer }, align 32
@an30259a_dt_init._entry_ptr = internal global ptr @an30259a_dt_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default-state\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"an30259a_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 359, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 361, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"an30259a_match_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 346, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"an30259a_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 353, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 299, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"an30259a_regmap_config\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 252, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 303, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 307, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 321, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 322, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 218, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 220, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 232, i32 39 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 233, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [32 x i8] c"../drivers/leds/leds-an30259a.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 235, i32 26 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_an30259a_driver_exit, ptr @__initcall__kmod_leds_an30259a__288_369_an30259a_driver_init6, ptr @an30259a_driver_exit, ptr @an30259a_dt_init._entry, ptr @an30259a_dt_init._entry_ptr, ptr @an30259a_probe._entry, ptr @an30259a_probe._entry_ptr, ptr @an30259a_driver, ptr @.str, ptr @an30259a_match_table, ptr @an30259a_id, ptr @an30259a_probe.__key, ptr @.str.1, ptr @an30259a_probe._key, ptr @an30259a_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @an30259a_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @an30259a_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @an30259a_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @an30259a_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @an30259a_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @an30259a_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @an30259a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @an30259a_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @an30259a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @an30259a_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @an30259a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @an30259a_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @an30259a_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_destroy(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @an30259a_probe(ptr noundef %client) #2 align 64 {
entry:
  %led_on.i = alloca i32, align 4
  %str.i = alloca ptr, align 4
  %source.i = alloca i32, align 4
  %init_data = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1364, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup34_crit_edge, label %if.end

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end:                                           ; preds = %entry
  %of_node.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str.i) #7
  %2 = ptrtoint ptr %str.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %str.i, align 4, !annotation !60
  %call.i.i = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #7
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end.an30259a_dt_init.exit.thread_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.an30259a_dt_init.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %an30259a_dt_init.exit.thread

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.06.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_available_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

of_get_available_child_count.exit.i:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i = icmp eq i32 %inc.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i)
  %cmp.i = icmp sgt i32 %inc.i.i, 3
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %of_get_available_child_count.exit.i.an30259a_dt_init.exit.thread_crit_edge, label %if.end.i

of_get_available_child_count.exit.i.an30259a_dt_init.exit.thread_crit_edge: ; preds = %of_get_available_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %an30259a_dt_init.exit.thread

if.end.i:                                         ; preds = %of_get_available_child_count.exit.i
  %call2.i = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #7
  %cmp3.not68.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.not68.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.072.i = phi i32 [ %i.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %count.070.i = phi i32 [ %count.1.i, %cleanup.i.for.body.i_crit_edge ], [ %inc.i.i, %if.end.i.for.body.i_crit_edge ]
  %child.069.i = phi ptr [ %call31.i, %cleanup.i.for.body.i_crit_edge ], [ %call2.i, %if.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %source.i) #7
  %3 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %source.i, align 4, !annotation !60
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.069.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %source.i, i32 noundef 1, i32 noundef 0) #7
  %4 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp5.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp5.not.i, label %lor.lhs.false6.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false6.i:                                 ; preds = %for.body.i
  %5 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %source.i, align 4
  %7 = add i32 %6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %7)
  %8 = icmp ult i32 %7, -3
  br i1 %8, label %lor.lhs.false6.i.do.end.i_crit_edge, label %if.end12.i

lor.lhs.false6.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false6.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %4) #10
  %dec.i = add i32 %count.070.i, -1
  br label %cleanup.i

if.end12.i:                                       ; preds = %lor.lhs.false6.i
  %arrayidx.i = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.072.i
  %num.i = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.072.i, i32 3
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %num.i, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %child.069.i, i32 0, i32 3
  %fwnode15.i = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.072.i, i32 1
  %11 = ptrtoint ptr %fwnode15.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fwnode.i, ptr %fwnode15.i, align 4
  %call16.i = call i32 @of_property_read_string(ptr noundef nonnull %child.069.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %str.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end12.i.if.end30.i_crit_edge

if.end12.i.if.end30.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then18.i:                                      ; preds = %if.end12.i
  %12 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %str.i, align 4
  %call19.i = call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(3) @.str.14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %default_state.i = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.072.i, i32 4
  %14 = ptrtoint ptr %default_state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %default_state.i, align 4
  br label %if.end30.i

if.else.i:                                        ; preds = %if.then18.i
  %call22.i = call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(5) @.str.15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  %default_state25.i = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.072.i, i32 4
  br i1 %tobool23.not.i, label %if.then24.i, label %if.else26.i

if.then24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %default_state25.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %default_state25.i, align 4
  br label %if.end30.i

if.else26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %default_state25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %default_state25.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else26.i, %if.then24.i, %if.then21.i, %if.end12.i.if.end30.i_crit_edge
  %inc.i = add i32 %i.072.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end30.i, %do.end.i
  %count.1.i = phi i32 [ %dec.i, %do.end.i ], [ %count.070.i, %if.end30.i ]
  %i.1.i = phi i32 [ %i.072.i, %do.end.i ], [ %inc.i, %if.end30.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %source.i) #7
  %call31.i = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.069.i) #7
  %cmp3.not.i = icmp eq ptr %call31.i, null
  br i1 %cmp3.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %count.0.lcssa.i = phi i32 [ %inc.i.i, %if.end.i.for.end.i_crit_edge ], [ %count.1.i, %cleanup.i.for.end.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %i.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa.i)
  %tobool32.not.i = icmp eq i32 %count.0.lcssa.i, 0
  br i1 %tobool32.not.i, label %for.end.i.an30259a_dt_init.exit.thread_crit_edge, label %do.body

for.end.i.an30259a_dt_init.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %an30259a_dt_init.exit.thread

an30259a_dt_init.exit.thread:                     ; preds = %for.end.i.an30259a_dt_init.exit.thread_crit_edge, %of_get_available_child_count.exit.i.an30259a_dt_init.exit.thread_crit_edge, %if.end.an30259a_dt_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str.i) #7
  br label %cleanup34

do.body:                                          ; preds = %for.end.i
  %num_leds.i = getelementptr inbounds %struct.an30259a, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.0.lcssa.i, ptr %num_leds.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str.i) #7
  call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @an30259a_probe.__key) #7
  %client4 = getelementptr inbounds %struct.an30259a, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %client4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %client, ptr %client4, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call5 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @an30259a_regmap_config, ptr noundef nonnull @an30259a_probe._key, ptr noundef nonnull @.str.2) #7
  %regmap = getelementptr inbounds %struct.an30259a, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i67 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body
  %21 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1676 = icmp sgt i32 %22, 0
  br i1 %cmp1676, label %for.body.lr.ph, label %for.cond.preheader.cleanup34_crit_edge

for.cond.preheader.cleanup34_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %devicename = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 2
  %default_label = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 1
  br label %for.body

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call5 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %23) #10
  br label %exit

for.cond:                                         ; preds = %an30259a_init_default_state.exit
  %inc = add nuw nsw i32 %i.077, 1
  %24 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_leds.i, align 4
  %cmp16 = icmp slt i32 %inc, %25
  br i1 %cmp16, label %for.cond.for.body_crit_edge, label %for.cond.cleanup34_crit_edge

for.cond.cleanup34_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #7
  %26 = call ptr @memset(ptr %init_data, i32 0, i32 16)
  %arrayidx = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %led_on.i) #7
  %29 = ptrtoint ptr %led_on.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %led_on.i, align 4, !annotation !60
  %default_state.i68 = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077, i32 4
  %30 = ptrtoint ptr %default_state.i68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %default_state.i68, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %brightness.i = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077, i32 2, i32 1
  %33 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 255, ptr %brightness.i, align 4
  br label %an30259a_init_default_state.exit

sw.bb2.i:                                         ; preds = %for.body
  %regmap.i = getelementptr inbounds %struct.an30259a, ptr %28, i32 0, i32 3
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call.i69 = call i32 @regmap_read(ptr noundef %35, i32 noundef 1, ptr noundef nonnull %led_on.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i72, label %sw.bb2.i.an30259a_init_default_state.exit_crit_edge

sw.bb2.i.an30259a_init_default_state.exit_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %an30259a_init_default_state.exit

if.end.i72:                                       ; preds = %sw.bb2.i
  %36 = ptrtoint ptr %led_on.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %led_on.i, align 4
  %num.i71 = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077, i32 3
  %38 = ptrtoint ptr %num.i71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num.i71, align 4
  %sub.i = add i32 %39, -1
  %shl.i = shl nuw i32 1, %sub.i
  %and.i = and i32 %shl.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #9
  %brightness6.i = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077, i32 2, i32 1
  %40 = ptrtoint ptr %brightness6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %brightness6.i, align 4
  br label %an30259a_init_default_state.exit

if.end7.i:                                        ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i, align 4
  %add.i = add i32 %39, 2
  %brightness12.i = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077, i32 2, i32 1
  %call13.i = call i32 @regmap_read(ptr noundef %42, i32 noundef %add.i, ptr noundef %brightness12.i) #7
  br label %an30259a_init_default_state.exit

sw.default.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %brightness15.i = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077, i32 2, i32 1
  %43 = ptrtoint ptr %brightness15.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %brightness15.i, align 4
  br label %an30259a_init_default_state.exit

an30259a_init_default_state.exit:                 ; preds = %sw.default.i, %if.end7.i, %if.then4.i, %sw.bb2.i.an30259a_init_default_state.exit_crit_edge, %sw.bb.i
  %cdev16.i = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077, i32 2
  %brightness18.i = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077, i32 2, i32 1
  %44 = ptrtoint ptr %brightness18.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %brightness18.i, align 4
  %call19.i73 = call i32 @an30259a_brightness_set(ptr noundef %cdev16.i, i32 noundef %45) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_on.i) #7
  %brightness_set_blocking = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077, i32 2, i32 6
  %46 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @an30259a_brightness_set, ptr %brightness_set_blocking, align 4
  %blink_set = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077, i32 2, i32 8
  %47 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @an30259a_blink_set, ptr %blink_set, align 4
  %fwnode = getelementptr %struct.an30259a, ptr %call.i, i32 0, i32 2, i32 %i.077, i32 1
  %48 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fwnode, align 4
  %50 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %init_data, align 4
  %51 = ptrtoint ptr %devicename to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.8, ptr %devicename, align 4
  %52 = ptrtoint ptr %default_label to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.9, ptr %default_label, align 4
  %call29 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %cdev16.i, ptr noundef nonnull %init_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #7
  br i1 %cmp30, label %an30259a_init_default_state.exit.exit_crit_edge, label %for.cond

an30259a_init_default_state.exit.exit_crit_edge:  ; preds = %an30259a_init_default_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

exit:                                             ; preds = %an30259a_init_default_state.exit.exit_crit_edge, %if.then8
  %err.0 = phi i32 [ %23, %if.then8 ], [ %call29, %an30259a_init_default_state.exit.exit_crit_edge ]
  call void @mutex_destroy(ptr noundef nonnull %call.i) #7
  br label %cleanup34

cleanup34:                                        ; preds = %exit, %for.cond.cleanup34_crit_edge, %for.cond.preheader.cleanup34_crit_edge, %an30259a_dt_init.exit.thread, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit ], [ -12, %entry.cleanup34_crit_edge ], [ -22, %an30259a_dt_init.exit.thread ], [ 0, %for.cond.preheader.cleanup34_crit_edge ], [ 0, %for.cond.cleanup34_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @an30259a_brightness_set(ptr nocapture noundef %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  %led_on = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %led_on) #7
  %0 = ptrtoint ptr %led_on to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %led_on, align 4, !annotation !60
  %add.ptr = getelementptr i8, ptr %cdev, i32 -8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  tail call void @mutex_lock_nested(ptr noundef %2, i32 noundef 0) #7
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %regmap = getelementptr inbounds %struct.an30259a, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %led_on) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cond = icmp eq i32 %brightness, 0
  %num = getelementptr i8, ptr %cdev, i32 400
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num, align 4
  %sub = add i32 %8, -1
  %shl = shl nuw i32 1, %sub
  %9 = ptrtoint ptr %led_on to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %led_on, align 4
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %8, 3
  %shl4 = shl nuw i32 1, %add
  %11 = or i32 %shl, %shl4
  %12 = xor i32 %11, -1
  %and6 = and i32 %10, %12
  %13 = ptrtoint ptr %led_on to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and6, ptr %led_on, align 4
  %sloping = getelementptr i8, ptr %cdev, i32 408
  %14 = ptrtoint ptr %sloping to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %sloping, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %or = or i32 %shl, %10
  %15 = ptrtoint ptr %led_on to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %led_on, align 4
  %sloping10 = getelementptr i8, ptr %cdev, i32 408
  %16 = ptrtoint ptr %sloping10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sloping10, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  br i1 %tobool11.not, label %sw.default.if.end18_crit_edge, label %if.then12

sw.default.if.end18_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then12:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %add15 = add i32 %8, 3
  %shl16 = shl nuw i32 1, %add15
  %or17 = or i32 %or, %shl16
  %18 = ptrtoint ptr %led_on to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or17, ptr %led_on, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %sw.default.if.end18_crit_edge
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  %regmap20 = getelementptr inbounds %struct.an30259a, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap20, align 4
  %sub22 = shl i32 %8, 2
  %add23 = add i32 %sub22, 5
  %call24 = call i32 @regmap_write(ptr noundef %22, i32 noundef %add23, i32 noundef 255) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end18.sw.epilog_crit_edge, label %if.end18.error_crit_edge

if.end18.error_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end18.sw.epilog_crit_edge, %sw.bb
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %regmap29 = getelementptr inbounds %struct.an30259a, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap29, align 4
  %27 = ptrtoint ptr %led_on to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %led_on, align 4
  %call30 = call i32 @regmap_write(ptr noundef %26, i32 noundef 1, i32 noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %sw.epilog.error_crit_edge

sw.epilog.error_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end33:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %regmap35 = getelementptr inbounds %struct.an30259a, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %regmap35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap35, align 4
  %num36 = getelementptr i8, ptr %cdev, i32 400
  %33 = ptrtoint ptr %num36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num36, align 4
  %add38 = add i32 %34, 2
  %call39 = call i32 @regmap_write(ptr noundef %32, i32 noundef %add38, i32 noundef %brightness) #7
  br label %error

error:                                            ; preds = %if.end33, %sw.epilog.error_crit_edge, %if.end18.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call30, %sw.epilog.error_crit_edge ], [ %call39, %if.end33 ], [ %call24, %if.end18.error_crit_edge ]
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  call void @mutex_unlock(ptr noundef %36) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_on) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @an30259a_blink_set(ptr nocapture noundef %cdev, ptr nocapture noundef %delay_off, ptr nocapture noundef %delay_on) #2 align 64 {
entry:
  %led_on = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %led_on) #7
  %0 = ptrtoint ptr %led_on to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %led_on, align 4, !annotation !60
  %1 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %delay_off, align 4
  %3 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay_on, align 4
  %add.ptr = getelementptr i8, ptr %cdev, i32 -8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #7
  %num1 = getelementptr i8, ptr %cdev, i32 400
  %7 = ptrtoint ptr %num1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num1, align 4
  %rem = urem i32 %2, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %rem2 = urem i32 %4, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %tobool3.not = icmp eq i32 %rem2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7500, i32 %2)
  %cmp = icmp ugt i32 %2, 7500
  call void @__sanitizer_cov_trace_const_cmp4(i32 7500, i32 %4)
  %cmp5 = icmp ugt i32 %4, 7500
  %or.cond96 = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond96, label %if.end.error_crit_edge, label %if.end7

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool8.not = icmp eq i32 %2, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 500, ptr %delay_off, align 4
  %10 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 500, ptr %delay_on, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %off.0 = phi i32 [ %2, %if.end7.if.end11_crit_edge ], [ 0, %land.lhs.true.if.end11_crit_edge ], [ 500, %if.then10 ]
  %on.0 = phi i32 [ %4, %if.end7.if.end11_crit_edge ], [ %4, %land.lhs.true.if.end11_crit_edge ], [ 500, %if.then10 ]
  %div.lhs.trunc = trunc i32 %off.0 to i16
  %div97 = udiv i16 %div.lhs.trunc, 500
  %div12.lhs.trunc = trunc i32 %on.0 to i16
  %div1298 = udiv i16 %div12.lhs.trunc, 500
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %regmap = getelementptr inbounds %struct.an30259a, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %sub = shl i32 %8, 2
  %add = add i32 %sub, 6
  %call = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %add, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.error_crit_edge

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end16:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %regmap18 = getelementptr inbounds %struct.an30259a, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap18, align 4
  %add21 = add i32 %sub, 7
  %call22 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %add21, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end16.error_crit_edge

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end25:                                         ; preds = %if.end16
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  %regmap27 = getelementptr inbounds %struct.an30259a, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %regmap27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap27, align 4
  %add30 = add i32 %sub, 8
  %call31 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef %add30, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end25.error_crit_edge

if.end25.error_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end34:                                         ; preds = %if.end25
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %regmap36 = getelementptr inbounds %struct.an30259a, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %regmap36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap36, align 4
  %add38 = add i32 %8, 5
  %27 = shl nuw nsw i16 %div1298, 4
  %or99 = or i16 %27, %div97
  %or = zext i16 %or99 to i32
  %call39 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %add38, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end34.error_crit_edge

if.end34.error_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end42:                                         ; preds = %if.end34
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %regmap44 = getelementptr inbounds %struct.an30259a, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %regmap44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap44, align 4
  %call45 = call i32 @regmap_read(ptr noundef %31, i32 noundef 1, ptr noundef nonnull %led_on) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end42.error_crit_edge

if.end42.error_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end48:                                         ; preds = %if.end42
  %add50 = add i32 %8, 3
  %shl51 = shl nuw i32 1, %add50
  %32 = ptrtoint ptr %num1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num1, align 4
  %sub53 = add i32 %33, -1
  %shl54 = shl nuw i32 1, %sub53
  %34 = ptrtoint ptr %led_on to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %led_on, align 4
  %or55 = or i32 %35, %shl51
  %or56 = or i32 %or55, %shl54
  store i32 %or56, ptr %led_on, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  %regmap58 = getelementptr inbounds %struct.an30259a, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %regmap58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap58, align 4
  %call59 = call i32 @regmap_write(ptr noundef %39, i32 noundef 1, i32 noundef %or56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.end48.error_crit_edge

if.end48.error_crit_edge:                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then61:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %sloping = getelementptr i8, ptr %cdev, i32 408
  %40 = ptrtoint ptr %sloping to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %sloping, align 4
  br label %error

error:                                            ; preds = %if.then61, %if.end48.error_crit_edge, %if.end42.error_crit_edge, %if.end34.error_crit_edge, %if.end25.error_crit_edge, %if.end16.error_crit_edge, %if.end11.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call, %if.end11.error_crit_edge ], [ %call22, %if.end16.error_crit_edge ], [ %call31, %if.end25.error_crit_edge ], [ %call39, %if.end34.error_crit_edge ], [ %call45, %if.end42.error_crit_edge ], [ %call59, %if.end48.error_crit_edge ], [ 0, %if.then61 ], [ -22, %entry.error_crit_edge ], [ -22, %if.end.error_crit_edge ]
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 4
  call void @mutex_unlock(ptr noundef %42) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_on) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_leds_an30259a__288_369_an30259a_driver_init6, !1, !"__initcall__kmod_leds_an30259a__288_369_an30259a_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-an30259a.c", i32 369, i32 1}
!2 = !{ptr @__exitcall_an30259a_driver_exit, !1, !"__exitcall_an30259a_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-an30259a.c", i32 371, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-an30259a.c", i32 372, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-an30259a.c", i32 373, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-an30259a.c", i32 361, i32 11}
!12 = !{ptr @an30259a_driver, !13, !"an30259a_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-an30259a.c", i32 359, i32 26}
!14 = !{ptr @an30259a_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-an30259a.c", i32 299, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @an30259a_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/leds/leds-an30259a.c", i32 303, i32 17}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/leds-an30259a.c", i32 307, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @an30259a_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @an30259a_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-an30259a.c", i32 321, i32 26}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-an30259a.c", i32 322, i32 29}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-an30259a.c", i32 218, i32 37}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-an30259a.c", i32 220, i32 4}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @an30259a_dt_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @an30259a_dt_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-an30259a.c", i32 232, i32 39}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-an30259a.c", i32 233, i32 21}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-an30259a.c", i32 235, i32 26}
!45 = !{ptr @an30259a_regmap_config, !46, !"an30259a_regmap_config", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-an30259a.c", i32 252, i32 35}
!47 = !{ptr @an30259a_match_table, !48, !"an30259a_match_table", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-an30259a.c", i32 346, i32 34}
!49 = !{ptr @an30259a_id, !50, !"an30259a_id", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-an30259a.c", i32 353, i32 35}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{i8 0, i8 2}
