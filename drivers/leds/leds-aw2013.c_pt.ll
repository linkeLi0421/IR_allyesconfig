; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-aw2013.c_pt.bc'
source_filename = "../drivers/leds/leds-aw2013.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.aw2013 = type { %struct.mutex, ptr, ptr, [3 x %struct.aw2013_led], ptr, i32, i8 }
%struct.aw2013_led = type { ptr, %struct.led_classdev, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_aw2013__294_431_aw2013_driver_init6 = internal global ptr @aw2013_driver_init, section ".initcall6.init", align 4
@aw2013_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @aw2013_remove, ptr @aw2013_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aw2013_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_aw2013_driver_exit = internal global ptr @aw2013_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [57 x i8] c"leds_aw2013.author=Nikita Travkin <nikitos.tr@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [42 x i8] c"leds_aw2013.description=AW2013 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [42 x i8] c"leds_aw2013.file=drivers/leds/leds-aw2013\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [27 x i8] c"leds_aw2013.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"leds-aw2013\00", [20 x i8] zeroinitializer }, align 32
@aw2013_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"awinic,aw2013\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@aw2013_chip_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to disable regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aw2013_chip_disable\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-aw2013.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aw2013_chip_disable._entry_ptr = internal global ptr @aw2013_chip_disable._entry, section ".printk_index", align 4
@aw2013_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@aw2013_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aw2013_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 119, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"leds_aw2013:343:(&aw2013_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@aw2013_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aw2013_probe\00", [19 x i8] zeroinitializer }, align 32
@aw2013_probe._entry_ptr = internal global ptr @aw2013_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@aw2013_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@aw2013_probe._entry_ptr.13 = internal global ptr @aw2013_probe._entry.11, section ".printk_index", align 4
@aw2013_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@aw2013_probe._entry_ptr.16 = internal global ptr @aw2013_probe._entry.14, section ".printk_index", align 4
@aw2013_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read chip ID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@aw2013_probe._entry_ptr.19 = internal global ptr @aw2013_probe._entry.17, section ".printk_index", align 4
@aw2013_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Chip reported wrong ID: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@aw2013_probe._entry_ptr.22 = internal global ptr @aw2013_probe._entry.20, section ".printk_index", align 4
@aw2013_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.9, ptr @.str.3, i32 388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@aw2013_probe._entry_ptr.24 = internal global ptr @aw2013_probe._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@aw2013_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't read LED address: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aw2013_probe_dt\00", [16 x i8] zeroinitializer }, align 32
@aw2013_probe_dt._entry_ptr = internal global ptr @aw2013_probe_dt._entry, section ".printk_index", align 4
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@aw2013_probe_dt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 297, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DT property led-max-microamp is missing\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aw2013_probe_dt._entry_ptr.32 = internal global ptr @aw2013_probe_dt._entry.29, section ".printk_index", align 4
@aw2013_chip_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.33, ptr @.str.3, i32 129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aw2013_chip_enable\00", [45 x i8] zeroinitializer }, align 32
@aw2013_chip_enable._entry_ptr = internal global ptr @aw2013_chip_enable._entry, section ".printk_index", align 4
@aw2013_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 80, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable the chip: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aw2013_chip_init\00", [47 x i8] zeroinitializer }, align 32
@aw2013_chip_init._entry_ptr = internal global ptr @aw2013_chip_init._entry, section ".printk_index", align 4
@aw2013_chip_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 92, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to set maximum current for led %d: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@aw2013_chip_init._entry_ptr.38 = internal global ptr @aw2013_chip_init._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"aw2013_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 422, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 424, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"aw2013_match_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 415, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 111, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 337, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"aw2013_regmap_config\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 321, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 343, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 346, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 351, i32 57 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 355, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 362, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 369, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 375, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 387, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 279, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 281, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 292, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 296, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 128, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 79, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [30 x i8] c"../drivers/leds/leds-aw2013.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 90, i32 4 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_aw2013_driver_exit, ptr @__initcall__kmod_leds_aw2013__294_431_aw2013_driver_init6, ptr @aw2013_chip_disable._entry, ptr @aw2013_chip_disable._entry_ptr, ptr @aw2013_chip_enable._entry, ptr @aw2013_chip_enable._entry_ptr, ptr @aw2013_chip_init._entry, ptr @aw2013_chip_init._entry.36, ptr @aw2013_chip_init._entry_ptr, ptr @aw2013_chip_init._entry_ptr.38, ptr @aw2013_driver_exit, ptr @aw2013_probe._entry, ptr @aw2013_probe._entry.11, ptr @aw2013_probe._entry.14, ptr @aw2013_probe._entry.17, ptr @aw2013_probe._entry.20, ptr @aw2013_probe._entry.23, ptr @aw2013_probe._entry_ptr, ptr @aw2013_probe._entry_ptr.13, ptr @aw2013_probe._entry_ptr.16, ptr @aw2013_probe._entry_ptr.19, ptr @aw2013_probe._entry_ptr.22, ptr @aw2013_probe._entry_ptr.24, ptr @aw2013_probe_dt._entry, ptr @aw2013_probe_dt._entry.29, ptr @aw2013_probe_dt._entry_ptr, ptr @aw2013_probe_dt._entry_ptr.32, ptr @aw2013_driver, ptr @.str, ptr @aw2013_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @aw2013_probe.__key, ptr @.str.6, ptr @aw2013_probe._key, ptr @aw2013_regmap_config, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_chip_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_probe_dt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_chip_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2013_chip_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aw2013_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @aw2013_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aw2013_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @aw2013_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aw2013_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enabled.i = getelementptr inbounds %struct.aw2013, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.aw2013_chip_disable.exit_crit_edge, label %if.end.i

entry.aw2013_chip_disable.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %aw2013_chip_disable.exit

if.end.i:                                         ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.aw2013, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 1, i32 noundef 0) #6
  %vcc_regulator.i = getelementptr inbounds %struct.aw2013, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vcc_regulator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcc_regulator.i, align 4
  %call1.i = tail call i32 @regulator_disable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr inbounds %struct.aw2013, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef %call1.i) #9
  br label %aw2013_chip_disable.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enabled.i, align 4
  br label %aw2013_chip_disable.exit

aw2013_chip_disable.exit:                         ; preds = %if.end4.i, %do.end.i, %entry.aw2013_chip_disable.exit_crit_edge
  tail call void @mutex_destroy(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aw2013_probe(ptr noundef %client) #2 align 64 {
entry:
  %init_data.i = alloca %struct.led_init_data, align 4
  %source.i = alloca i32, align 4
  %imax.i = alloca i32, align 4
  %chipid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chipid) #6
  %0 = ptrtoint ptr %chipid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chipid, align 4, !annotation !95
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1348, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @aw2013_probe.__key) #6
  tail call void @mutex_lock_nested(ptr noundef nonnull %call.i, i32 noundef 0) #6
  %client2 = getelementptr inbounds %struct.aw2013, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %client2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @aw2013_regmap_config, ptr noundef nonnull @aw2013_probe._key, ptr noundef nonnull @.str.7) #6
  %regmap = getelementptr inbounds %struct.aw2013, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end13

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %4) #9
  br label %error

if.end13:                                         ; preds = %do.body
  %call15 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #6
  %vcc_regulator = getelementptr inbounds %struct.aw2013, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %vcc_regulator to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %vcc_regulator, align 4
  %cmp.i.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %call15 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %6, i32 0
  %7 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %do.end23 [
    i32 0, label %if.end26
    i32 -517, label %if.end13.error_crit_edge
  ]

if.end13.error_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

do.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %spec.select.i) #9
  br label %error

if.end26:                                         ; preds = %if.end13
  %call28 = tail call i32 @regulator_enable(ptr noundef %call15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call28) #9
  br label %error

if.end35:                                         ; preds = %if.end26
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call37 = call i32 @regmap_read(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %chipid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call37) #9
  br label %error_reg

if.end44:                                         ; preds = %if.end35
  %10 = ptrtoint ptr %chipid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %11)
  %cmp45.not = icmp eq i32 %11, 51
  br i1 %cmp45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %11) #9
  br label %error_reg

if.end51:                                         ; preds = %if.end44
  %12 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client2, align 4
  %of_node.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4, i32 27
  %14 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i = call ptr @of_get_next_available_child(ptr noundef %15, ptr noundef null) #6
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end51.error_reg_crit_edge, label %if.end51.for.body.i.i_crit_edge

if.end51.for.body.i.i_crit_edge:                  ; preds = %if.end51
  br label %for.body.i.i

if.end51.error_reg_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_reg

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end51.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end51.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end51.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_available_child(ptr noundef %15, ptr noundef nonnull %child.06.i.i) #6
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_available_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

of_get_available_child_count.exit.i:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i = icmp eq i32 %inc.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i)
  %cmp.i108 = icmp sgt i32 %inc.i.i, 3
  %or.cond.i = or i1 %tobool.not.i, %cmp.i108
  br i1 %or.cond.i, label %of_get_available_child_count.exit.i.error_reg_crit_edge, label %if.end.i

of_get_available_child_count.exit.i.error_reg_crit_edge: ; preds = %of_get_available_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_reg

if.end.i:                                         ; preds = %of_get_available_child_count.exit.i
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 0, i32 noundef 85) #6
  %call3.i = call ptr @of_get_next_available_child(ptr noundef %15, ptr noundef null) #6
  %cmp4.not99.i = icmp eq ptr %call3.i, null
  br i1 %cmp4.not99.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.0105.i = phi i32 [ %i.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %count.0103.i = phi i32 [ %count.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ %inc.i.i, %if.end.i.for.body.i_crit_edge ]
  %child.0100.i = phi ptr [ %call43.i, %for.inc.i.for.body.i_crit_edge ], [ %call3.i, %if.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #6
  %18 = call ptr @memset(ptr %init_data.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %source.i) #6
  %19 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %source.i, align 4, !annotation !95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imax.i) #6
  %20 = ptrtoint ptr %imax.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %imax.i, align 4, !annotation !95
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0100.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %source.i, i32 noundef 1, i32 noundef 0) #6
  %21 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp6.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp6.not.i, label %lor.lhs.false7.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false7.i:                                 ; preds = %for.body.i
  %22 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %source.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp8.i = icmp ugt i32 %23, 2
  br i1 %cmp8.i, label %lor.lhs.false7.i.do.end.i_crit_edge, label %if.end12.i

lor.lhs.false7.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false7.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %24 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client2, align 4
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.26, i32 noundef %21) #9
  %dec.i = add i32 %count.0103.i, -1
  br label %for.inc.i

if.end12.i:                                       ; preds = %lor.lhs.false7.i
  %arrayidx.i = getelementptr %struct.aw2013, ptr %call.i, i32 0, i32 3, i32 %i.0105.i
  %num.i = getelementptr %struct.aw2013, ptr %call.i, i32 0, i32 3, i32 %i.0105.i, i32 2
  %26 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %num.i, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %child.0100.i, i32 0, i32 3
  %28 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fwnode.i, ptr %init_data.i, align 4
  %call.i.i84.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0100.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %imax.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i84.i)
  %tobool17.not.i = icmp sgt i32 %call.i.i84.i, -1
  br i1 %tobool17.not.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %imax.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %imax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %30)
  %cmp20.i = icmp ult i32 %30, 15000
  %div.i = udiv i32 %30, 5000
  %cond24.i = select i1 %cmp20.i, i32 %div.i, i32 3
  %imax25.i = getelementptr %struct.aw2013, ptr %call.i, i32 0, i32 3, i32 %i.0105.i, i32 3
  %31 = ptrtoint ptr %imax25.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond24.i, ptr %imax25.i, align 4
  br label %if.end32.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %imax26.i = getelementptr %struct.aw2013, ptr %call.i, i32 0, i32 3, i32 %i.0105.i, i32 3
  %32 = ptrtoint ptr %imax26.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %imax26.i, align 4
  %33 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client2, align 4
  %dev31.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31.i, ptr noundef nonnull @.str.30) #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else.i, %if.then18.i
  %cdev.i = getelementptr %struct.aw2013, ptr %call.i, i32 0, i32 3, i32 %i.0105.i, i32 1
  %brightness_set_blocking.i = getelementptr %struct.aw2013, ptr %call.i, i32 0, i32 3, i32 %i.0105.i, i32 1, i32 6
  %35 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @aw2013_brightness_set, ptr %brightness_set_blocking.i, align 4
  %blink_set.i = getelementptr %struct.aw2013, ptr %call.i, i32 0, i32 3, i32 %i.0105.i, i32 1, i32 8
  %36 = ptrtoint ptr %blink_set.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @aw2013_blink_set, ptr %blink_set.i, align 4
  %37 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client2, align 4
  %dev35.i = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  %call37.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev35.i, ptr noundef %cdev.i, ptr noundef nonnull %init_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %cleanup.i, label %if.end40.i

if.end40.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %i.0105.i, 1
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %child.0100.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imax.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %source.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  br label %error_reg

for.inc.i:                                        ; preds = %if.end40.i, %do.end.i
  %count.1.ph.i = phi i32 [ %count.0103.i, %if.end40.i ], [ %dec.i, %do.end.i ]
  %i.1.ph.i = phi i32 [ %inc.i, %if.end40.i ], [ %i.0105.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imax.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %source.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  %call43.i = call ptr @of_get_next_available_child(ptr noundef %15, ptr noundef nonnull %child.0100.i) #6
  %cmp4.not.i = icmp eq ptr %call43.i, null
  br i1 %cmp4.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %count.0.lcssa.i = phi i32 [ %inc.i.i, %if.end.i.for.end.i_crit_edge ], [ %count.1.ph.i, %for.inc.i.for.end.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %i.1.ph.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa.i)
  %tobool44.not.i = icmp eq i32 %count.0.lcssa.i, 0
  br i1 %tobool44.not.i, label %for.end.i.error_reg_crit_edge, label %if.end55

for.end.i.error_reg_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_reg

if.end55:                                         ; preds = %for.end.i
  %num_leds.i = getelementptr inbounds %struct.aw2013, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.0.lcssa.i, ptr %num_leds.i, align 4
  %40 = ptrtoint ptr %vcc_regulator to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vcc_regulator, align 4
  %call57 = call i32 @regulator_disable(ptr noundef %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call57) #9
  br label %error

if.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef nonnull %call.i) #6
  br label %cleanup

error_reg:                                        ; preds = %for.end.i.error_reg_crit_edge, %cleanup.i, %of_get_available_child_count.exit.i.error_reg_crit_edge, %if.end51.error_reg_crit_edge, %do.end49, %do.end42
  %ret.0 = phi i32 [ %call37, %do.end42 ], [ -19, %do.end49 ], [ -22, %if.end51.error_reg_crit_edge ], [ -22, %for.end.i.error_reg_crit_edge ], [ -22, %of_get_available_child_count.exit.i.error_reg_crit_edge ], [ %call37.i, %cleanup.i ]
  %42 = ptrtoint ptr %vcc_regulator to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vcc_regulator, align 4
  %call67 = call i32 @regulator_disable(ptr noundef %43) #6
  br label %error

error:                                            ; preds = %error_reg, %do.end62, %do.end33, %do.end23, %if.end13.error_crit_edge, %if.then6
  %ret.1 = phi i32 [ %4, %if.then6 ], [ %spec.select.i, %do.end23 ], [ %call28, %do.end33 ], [ %ret.0, %error_reg ], [ %call57, %do.end62 ], [ %spec.select.i, %if.end13.error_crit_edge ]
  call void @mutex_destroy(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error ], [ 0, %if.end64 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chipid) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aw2013_brightness_set(ptr nocapture noundef readonly %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %num_leds.i = getelementptr inbounds %struct.aw2013, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.i = icmp sgt i32 %5, 0
  br i1 %cmp4.i, label %for.body.i.preheader, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.body.i.preheader:                             ; preds = %entry
  %brightness.i88 = getelementptr %struct.aw2013, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %brightness.i88 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i89 = icmp eq i32 %7, 0
  br i1 %tobool.not.i89, label %for.body.i.preheader.for.cond.i_crit_edge, label %for.body.i.preheader.if.then_crit_edge

for.body.i.preheader.if.then_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.05.i90 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.05.i90, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %5)
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.aw2013_chip_in_use.exit_crit_edge, label %for.body.i

for.cond.i.aw2013_chip_in_use.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aw2013_chip_in_use.exit

for.body.i:                                       ; preds = %for.cond.i
  %brightness.i = getelementptr %struct.aw2013, ptr %3, i32 0, i32 3, i32 %inc.i, i32 1, i32 1
  %8 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brightness.i, align 4
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.aw2013_chip_in_use.exit_crit_edge

for.body.i.aw2013_chip_in_use.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aw2013_chip_in_use.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

aw2013_chip_in_use.exit:                          ; preds = %for.body.i.aw2013_chip_in_use.exit_crit_edge, %for.cond.i.aw2013_chip_in_use.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %5)
  %cmp.i.le = icmp slt i32 %inc.i, %5
  br i1 %cmp.i.le, label %aw2013_chip_in_use.exit.if.then_crit_edge, label %aw2013_chip_in_use.exit.if.end5_crit_edge

aw2013_chip_in_use.exit.if.end5_crit_edge:        ; preds = %aw2013_chip_in_use.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

aw2013_chip_in_use.exit.if.then_crit_edge:        ; preds = %aw2013_chip_in_use.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %aw2013_chip_in_use.exit.if.then_crit_edge, %for.body.i.preheader.if.then_crit_edge
  %enabled.i = getelementptr inbounds %struct.aw2013, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i57 = icmp eq i8 %11, 0
  br i1 %tobool.not.i57, label %if.end.i, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i:                                         ; preds = %if.then
  %vcc_regulator.i = getelementptr inbounds %struct.aw2013, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %vcc_regulator.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vcc_regulator.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr inbounds %struct.aw2013, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %call.i) #9
  br label %error

if.end3.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %enabled.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.aw2013, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %do.end.i.i

for.cond.preheader.i.i:                           ; preds = %if.end3.i
  %19 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp34.i.i = icmp sgt i32 %20, 0
  br i1 %cmp34.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.if.end5_crit_edge

for.cond.preheader.i.i.if.end5_crit_edge:         ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %client.i.i = getelementptr inbounds %struct.aw2013, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.34, i32 noundef %call.i.i) #9
  br label %if.then7.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  %23 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_leds.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %24
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end5_crit_edge

for.cond.i.i.if.end5_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %25 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i, align 4
  %num.i.i = getelementptr %struct.aw2013, ptr %3, i32 0, i32 3, i32 %i.035.i.i, i32 2
  %27 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num.i.i, align 4
  %add.i.i = add i32 %28, 49
  %imax.i.i = getelementptr %struct.aw2013, ptr %3, i32 0, i32 3, i32 %i.035.i.i, i32 3
  %29 = ptrtoint ptr %imax.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %imax.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %add.i.i, i32 noundef 3, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool5.not.i.i, label %for.cond.i.i, label %do.end9.i.i

do.end9.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %client10.i.i = getelementptr inbounds %struct.aw2013, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %client10.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client10.i.i, align 4
  %dev11.i.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.37, i32 noundef %34, i32 noundef %call.i.i.i) #9
  br label %if.then7.i

if.then7.i:                                       ; preds = %do.end9.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %call.i.i.i, %do.end9.i.i ]
  %35 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enabled.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i18.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i18.i, label %if.then7.i.error_crit_edge, label %if.end.i.i

if.then7.i.error_crit_edge:                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end.i.i:                                       ; preds = %if.then7.i
  %37 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i.i, align 4
  %call.i20.i = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 1, i32 noundef 0) #6
  %39 = ptrtoint ptr %vcc_regulator.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vcc_regulator.i, align 4
  %call1.i.i = tail call i32 @regulator_disable(ptr noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %do.end.i23.i

do.end.i23.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %client.i21.i = getelementptr inbounds %struct.aw2013, ptr %3, i32 0, i32 2
  %41 = ptrtoint ptr %client.i21.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client.i21.i, align 4
  %dev.i22.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.1, i32 noundef %call1.i.i) #9
  br label %error

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %enabled.i, align 4
  br label %error

if.end5:                                          ; preds = %for.cond.i.i.if.end5_crit_edge, %for.cond.preheader.i.i.if.end5_crit_edge, %if.then.if.end5_crit_edge, %aw2013_chip_in_use.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %num6 = getelementptr i8, ptr %cdev, i32 400
  %44 = ptrtoint ptr %num6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num6, align 4
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %regmap = getelementptr inbounds %struct.aw2013, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %add = add i32 %45, 52
  %call8 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %add, i32 noundef %brightness) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.error_crit_edge

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool12.not = icmp eq i32 %brightness, 0
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %regmap18 = getelementptr inbounds %struct.aw2013, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap18, align 4
  %shl19 = shl nuw i32 1, %45
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 48, i32 noundef %shl19, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end28

if.else:                                          ; preds = %if.end11
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 48, i32 noundef %shl19, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool21.not = icmp eq i32 %call.i59, 0
  br i1 %tobool21.not, label %if.end23, label %if.else.error_crit_edge

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 4
  %regmap25 = getelementptr inbounds %struct.aw2013, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap25, align 4
  %add26 = add i32 %45, 49
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef %add26, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end28

if.end28:                                         ; preds = %if.end23, %if.then13
  %ret.0 = phi i32 [ %call.i58, %if.then13 ], [ %call.i60, %if.end23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool29.not = icmp eq i32 %ret.0, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.error_crit_edge

if.end28.error_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end31:                                         ; preds = %if.end28
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 4
  %num_leds.i61 = getelementptr inbounds %struct.aw2013, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %num_leds.i61 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_leds.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp4.i62 = icmp sgt i32 %61, 0
  br i1 %cmp4.i62, label %for.body.i71.preheader, label %if.end31.if.then34_crit_edge

if.end31.if.then34_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

for.body.i71.preheader:                           ; preds = %if.end31
  %brightness.i6992 = getelementptr %struct.aw2013, ptr %59, i32 0, i32 3, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %brightness.i6992 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %brightness.i6992, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i7093 = icmp eq i32 %63, 0
  br i1 %tobool.not.i7093, label %for.body.i71.preheader.for.cond.i66_crit_edge, label %for.body.i71.preheader.error_crit_edge

for.body.i71.preheader.error_crit_edge:           ; preds = %for.body.i71.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.body.i71.preheader.for.cond.i66_crit_edge:    ; preds = %for.body.i71.preheader
  br label %for.cond.i66

for.cond.i66:                                     ; preds = %for.body.i71.for.cond.i66_crit_edge, %for.body.i71.preheader.for.cond.i66_crit_edge
  %i.05.i6894 = phi i32 [ %inc.i63, %for.body.i71.for.cond.i66_crit_edge ], [ 0, %for.body.i71.preheader.for.cond.i66_crit_edge ]
  %inc.i63 = add nuw nsw i32 %i.05.i6894, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i63, i32 %61)
  %exitcond.not.i65 = icmp eq i32 %inc.i63, %61
  br i1 %exitcond.not.i65, label %for.cond.i66.aw2013_chip_in_use.exit73_crit_edge, label %for.body.i71

for.cond.i66.aw2013_chip_in_use.exit73_crit_edge: ; preds = %for.cond.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %aw2013_chip_in_use.exit73

for.body.i71:                                     ; preds = %for.cond.i66
  %brightness.i69 = getelementptr %struct.aw2013, ptr %59, i32 0, i32 3, i32 %inc.i63, i32 1, i32 1
  %64 = ptrtoint ptr %brightness.i69 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %brightness.i69, align 4
  %tobool.not.i70 = icmp eq i32 %65, 0
  br i1 %tobool.not.i70, label %for.body.i71.for.cond.i66_crit_edge, label %for.body.i71.aw2013_chip_in_use.exit73_crit_edge

for.body.i71.aw2013_chip_in_use.exit73_crit_edge: ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %aw2013_chip_in_use.exit73

for.body.i71.for.cond.i66_crit_edge:              ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i66

aw2013_chip_in_use.exit73:                        ; preds = %for.body.i71.aw2013_chip_in_use.exit73_crit_edge, %for.cond.i66.aw2013_chip_in_use.exit73_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i63, i32 %61)
  %cmp.i64.le = icmp slt i32 %inc.i63, %61
  br i1 %cmp.i64.le, label %aw2013_chip_in_use.exit73.error_crit_edge, label %aw2013_chip_in_use.exit73.if.then34_crit_edge

aw2013_chip_in_use.exit73.if.then34_crit_edge:    ; preds = %aw2013_chip_in_use.exit73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

aw2013_chip_in_use.exit73.error_crit_edge:        ; preds = %aw2013_chip_in_use.exit73
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.then34:                                        ; preds = %aw2013_chip_in_use.exit73.if.then34_crit_edge, %if.end31.if.then34_crit_edge
  %enabled.i74 = getelementptr inbounds %struct.aw2013, ptr %59, i32 0, i32 6
  %66 = ptrtoint ptr %enabled.i74 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %enabled.i74, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i75 = icmp eq i8 %67, 0
  br i1 %tobool.not.i75, label %if.then34.error_crit_edge, label %if.end.i78

if.then34.error_crit_edge:                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end.i78:                                       ; preds = %if.then34
  %regmap.i = getelementptr inbounds %struct.aw2013, ptr %59, i32 0, i32 4
  %68 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i, align 4
  %call.i76 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 1, i32 noundef 0) #6
  %vcc_regulator.i77 = getelementptr inbounds %struct.aw2013, ptr %59, i32 0, i32 1
  %70 = ptrtoint ptr %vcc_regulator.i77 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vcc_regulator.i77, align 4
  %call1.i = tail call i32 @regulator_disable(ptr noundef %71) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i81

do.end.i81:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #8
  %client.i79 = getelementptr inbounds %struct.aw2013, ptr %59, i32 0, i32 2
  %72 = ptrtoint ptr %client.i79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %client.i79, align 4
  %dev.i80 = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i80, ptr noundef nonnull @.str.1, i32 noundef %call1.i) #9
  br label %error

if.end4.i:                                        ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %enabled.i74 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %enabled.i74, align 4
  br label %error

error:                                            ; preds = %if.end4.i, %do.end.i81, %if.then34.error_crit_edge, %aw2013_chip_in_use.exit73.error_crit_edge, %for.body.i71.preheader.error_crit_edge, %if.end28.error_crit_edge, %if.else.error_crit_edge, %if.end5.error_crit_edge, %if.end4.i.i, %do.end.i23.i, %if.then7.i.error_crit_edge, %do.end.i
  %ret.1 = phi i32 [ %call8, %if.end5.error_crit_edge ], [ %ret.0, %if.end28.error_crit_edge ], [ 0, %aw2013_chip_in_use.exit73.error_crit_edge ], [ %call.i59, %if.else.error_crit_edge ], [ 0, %if.then34.error_crit_edge ], [ 0, %do.end.i81 ], [ 0, %if.end4.i ], [ %retval.0.i.i, %if.end4.i.i ], [ %retval.0.i.i, %do.end.i23.i ], [ %retval.0.i.i, %if.then7.i.error_crit_edge ], [ %call.i, %do.end.i ], [ 0, %for.body.i71.preheader.error_crit_edge ]
  %75 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr, align 4
  tail call void @mutex_unlock(ptr noundef %76) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aw2013_blink_set(ptr nocapture noundef %cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdev, i32 -4
  %num1 = getelementptr i8, ptr %cdev, i32 400
  %0 = ptrtoint ptr %num1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num1, align 4
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 500, ptr %delay_off, align 4
  %7 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 500, ptr %delay_on, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %cdev, i32 0, i32 1
  %8 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then5:                                         ; preds = %if.end
  %10 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 255, ptr %brightness, align 4
  %call = tail call i32 @aw2013_brightness_set(ptr noundef %cdev, i32 noundef 255)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.then5.if.end14_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %if.then5.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %11 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  br i1 %tobool15.not, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %brightness, align 4
  %call20 = tail call i32 @aw2013_brightness_set(ptr noundef %cdev, i32 noundef 0)
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  tail call void @mutex_lock_nested(ptr noundef %15, i32 noundef 0) #6
  %16 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  br i1 %tobool22.not, label %if.then23, label %cond.end37

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %regmap = getelementptr inbounds %struct.aw2013, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %add = add i32 %1, 49
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %add, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %out

cond.end37:                                       ; preds = %if.end21
  %sub = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %sub)
  %22 = icmp ult i32 %sub, 130
  %div = udiv i32 %sub, 130
  %23 = tail call i32 @llvm.ctlz.i32(i32 %div, i1 true) #6, !range !96
  %sub.i.op.i = xor i32 %23, 31
  %24 = call i32 @llvm.smin.i32(i32 %sub.i.op.i, i32 4)
  %.op = add nuw nsw i32 %24, 1
  %25 = select i1 %22, i32 0, i32 %.op
  %26 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %delay_on, align 4
  %sub47 = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %sub47)
  %28 = icmp ult i32 %sub47, 130
  %div48 = udiv i32 %sub47, 130
  %29 = tail call i32 @llvm.ctlz.i32(i32 %div48, i1 true) #6, !range !96
  %sub.i.op.i155 = xor i32 %29, 31
  %30 = call i32 @llvm.smin.i32(i32 %sub.i.op.i155, i32 6)
  %.op159 = add nuw nsw i32 %30, 1
  %31 = select i1 %28, i32 0, i32 %.op159
  %mul = shl nuw nsw i32 130, %25
  %32 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %delay_off, align 4
  %mul78 = shl nuw nsw i32 130, %31
  %33 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul78, ptr %delay_on, align 4
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %regmap80 = getelementptr inbounds %struct.aw2013, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %regmap80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap80, align 4
  %mul81 = mul i32 %1, 3
  %add82 = add i32 %mul81, 55
  %call83 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %add82, i32 noundef %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %cond.end37.out_crit_edge

cond.end37.out_crit_edge:                         ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end86:                                         ; preds = %cond.end37
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 4
  %regmap88 = getelementptr inbounds %struct.aw2013, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %regmap88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap88, align 4
  %add90 = add i32 %mul81, 56
  %call91 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef %add90, i32 noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end86.out_crit_edge

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end94:                                         ; preds = %if.end86
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 4
  %regmap96 = getelementptr inbounds %struct.aw2013, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %regmap96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap96, align 4
  %add97 = add i32 %1, 49
  %call.i157 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %add97, i32 noundef 16, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool99.not = icmp eq i32 %call.i157, 0
  br i1 %tobool99.not, label %if.end101, label %if.end94.out_crit_edge

if.end94.out_crit_edge:                           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end101:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %regmap103 = getelementptr inbounds %struct.aw2013, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %regmap103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap103, align 4
  %shl104 = shl nuw i32 1, %1
  %call.i158 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 48, i32 noundef %shl104, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %out

out:                                              ; preds = %if.end101, %if.end94.out_crit_edge, %if.end86.out_crit_edge, %cond.end37.out_crit_edge, %if.then23
  %ret.0 = phi i32 [ %call83, %cond.end37.out_crit_edge ], [ %call91, %if.end86.out_crit_edge ], [ %call.i157, %if.end94.out_crit_edge ], [ %call.i158, %if.end101 ], [ %call.i, %if.then23 ]
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  tail call void @mutex_unlock(ptr noundef %51) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then16, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call20, %if.then16 ], [ %call, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_leds_aw2013__294_431_aw2013_driver_init6, !1, !"__initcall__kmod_leds_aw2013__294_431_aw2013_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-aw2013.c", i32 431, i32 1}
!2 = !{ptr @__exitcall_aw2013_driver_exit, !1, !"__exitcall_aw2013_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-aw2013.c", i32 433, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-aw2013.c", i32 434, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-aw2013.c", i32 435, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-aw2013.c", i32 424, i32 11}
!12 = !{ptr @aw2013_driver, !13, !"aw2013_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-aw2013.c", i32 422, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-aw2013.c", i32 111, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @aw2013_chip_disable._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @aw2013_chip_disable._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @aw2013_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-aw2013.c", i32 337, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @aw2013_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-aw2013.c", i32 343, i32 17}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-aw2013.c", i32 346, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @aw2013_probe._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @aw2013_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-aw2013.c", i32 351, i32 57}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-aw2013.c", i32 355, i32 4}
!37 = !{ptr @aw2013_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @aw2013_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-aw2013.c", i32 362, i32 3}
!41 = !{ptr @aw2013_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @aw2013_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-aw2013.c", i32 369, i32 3}
!45 = !{ptr @aw2013_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @aw2013_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-aw2013.c", i32 375, i32 3}
!49 = !{ptr @aw2013_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @aw2013_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @aw2013_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/leds/leds-aw2013.c", i32 387, i32 3}
!53 = !{ptr @aw2013_probe._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @aw2013_regmap_config, !55, !"aw2013_regmap_config", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-aw2013.c", i32 321, i32 35}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/leds/leds-aw2013.c", i32 279, i32 37}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-aw2013.c", i32 281, i32 4}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @aw2013_probe_dt._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @aw2013_probe_dt._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/leds/leds-aw2013.c", i32 292, i32 36}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/leds/leds-aw2013.c", i32 296, i32 4}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @aw2013_probe_dt._entry.29, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @aw2013_probe_dt._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/leds-aw2013.c", i32 128, i32 3}
!72 = !{ptr @aw2013_chip_enable._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @aw2013_chip_enable._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/leds/leds-aw2013.c", i32 79, i32 3}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @aw2013_chip_init._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @aw2013_chip_init._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/leds/leds-aw2013.c", i32 90, i32 4}
!81 = !{ptr @aw2013_chip_init._entry.36, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @aw2013_chip_init._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @aw2013_match_table, !84, !"aw2013_match_table", i1 false, i1 false}
!84 = !{!"../drivers/leds/leds-aw2013.c", i32 415, i32 34}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
!95 = !{!"auto-init"}
!96 = !{i32 0, i32 33}
