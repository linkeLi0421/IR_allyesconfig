; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-ns2.c_pt.bc'
source_filename = "../drivers/leds/leds-ns2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
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
%struct.ns2_led = type { %struct.led_classdev, ptr, ptr, i8, i8, %struct.rwlock_t, i32, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ns2_led_modval = type { i32, i32, i32 }

@__initcall__kmod_leds_ns2__183_279_ns2_led_driver_init6 = internal global ptr @ns2_led_driver_init, section ".initcall6.init", align 4
@ns2_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ns2_led_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ns2_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ns2_led_driver_exit = internal global ptr @ns2_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [49 x i8] c"leds_ns2.author=Simon Guinot <sguinot@lacie.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [49 x i8] c"leds_ns2.description=Network Space v2 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [36 x i8] c"leds_ns2.file=drivers/leds/leds-ns2\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [21 x i8] c"leds_ns2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [33 x i8] c"leds_ns2.alias=platform:leds-ns2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"leds-ns2\00", [23 x i8] zeroinitializer }, align 32
@of_ns2_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lacie,ns2-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slow\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"modes-map\00", [22 x i8] zeroinitializer }, align 32
@ns2_led_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 196, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Missing or malformed modes-map for %pfw\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns2_led_register\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/leds/leds-ns2.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ns2_led_register._entry_ptr = internal global ptr @ns2_led_register._entry, section ".printk_index", align 4
@ns2_led_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&led->rw_lock\00", [18 x i8] zeroinitializer }, align 32
@ns2_led_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ns2_led_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ns2_led_register._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 233, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register LED for node %pfw\0A\00", [58 x i8] zeroinitializer }, align 32
@ns2_led_register._entry_ptr.12 = internal global ptr @ns2_led_register._entry.10, section ".printk_index", align 4
@ns2_led_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ns2_led_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ns2_led_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_sata, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_sata = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ns2_led_sata_show, ptr @ns2_led_sata_store }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"ns2_led_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 271, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 274, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"of_ns2_leds_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 265, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 183, i32 52 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 188, i32 53 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 194, i32 40 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 196, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 208, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"ns2_led_groups\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 233, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"ns2_led_group\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 173, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"ns2_led_attrs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 169, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"dev_attr_sata\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 167, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [27 x i8] c"../drivers/leds/leds-ns2.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 164, i32 22 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_ns2_led_driver_exit, ptr @__initcall__kmod_leds_ns2__183_279_ns2_led_driver_init6, ptr @ns2_led_driver_exit, ptr @ns2_led_register._entry, ptr @ns2_led_register._entry.10, ptr @ns2_led_register._entry_ptr, ptr @ns2_led_register._entry_ptr.12, ptr @ns2_led_driver, ptr @.str, ptr @of_ns2_leds_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ns2_led_register.__key, ptr @.str.9, ptr @ns2_led_groups, ptr @.str.11, ptr @ns2_led_group, ptr @ns2_led_attrs, ptr @dev_attr_sata, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ns2_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_led_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_led_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_led_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_led_register._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_led_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns2_led_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ns2_led_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ns2_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ns2_led_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init_data.i = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @device_get_child_node_count(ptr noundef %dev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 464) #8
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %retval.0.i = select i1 %1, i32 -1, i32 %2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef null) #8
  %tobool8.not45 = icmp eq ptr %call7, null
  br i1 %tobool8.not45, label %if.end6.cleanup_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %ns2_led_register.exit.thread33.for.body_crit_edge, %if.end6.for.body_crit_edge
  %leds.047 = phi ptr [ %incdec.ptr, %ns2_led_register.exit.thread33.for.body_crit_edge ], [ %call.i, %if.end6.for.body_crit_edge ]
  %child.046 = phi ptr [ %call13, %ns2_led_register.exit.thread33.for.body_crit_edge ], [ %call7, %if.end6.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #8
  %3 = call ptr @memset(ptr %init_data.i, i32 0, i32 16)
  %call.i28 = call ptr @fwnode_get_name(ptr noundef nonnull %child.046) #8
  %call1.i = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull %child.046, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0, ptr noundef %call.i28) #8
  %cmd.i = getelementptr inbounds %struct.ns2_led, ptr %leds.047, i32 0, i32 1
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %cmd.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.ns2_led_register.exit_crit_edge, label %if.end.i

for.body.ns2_led_register.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ns2_led_register.exit

if.end.i:                                         ; preds = %for.body
  %call6.i = call ptr @fwnode_get_name(ptr noundef nonnull %child.046) #8
  %call7.i = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull %child.046, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0, ptr noundef %call6.i) #8
  %slow.i = getelementptr inbounds %struct.ns2_led, ptr %leds.047, i32 0, i32 2
  %5 = ptrtoint ptr %slow.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %slow.i, align 4
  %cmp.i105.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105.i, label %if.end.i.ns2_led_register.exit_crit_edge, label %if.end13.i

if.end.i.ns2_led_register.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ns2_led_register.exit

if.end13.i:                                       ; preds = %if.end.i
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.046, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, -1
  %rem.i = srem i32 %call.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end16.i, label %if.end13.i.ns2_led_register.exit.thread.sink.split_crit_edge

if.end13.i.ns2_led_register.exit.thread.sink.split_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ns2_led_register.exit.thread.sink.split

if.end16.i:                                       ; preds = %if.end13.i
  %div112.i = udiv i32 %call.i.i, 3
  %6 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div112.i, i32 12) #8
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end16.i.ns2_led_register.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !58

if.end16.i.ns2_led_register.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ns2_led_register.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end16.i
  %8 = extractvalue { i32, i1 } %6, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %8, i32 noundef 3520) #8
  %tobool18.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool18.not.i, label %devm_kcalloc.exit.i.ns2_led_register.exit.thread_crit_edge, label %if.end20.i

devm_kcalloc.exit.i.ns2_led_register.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ns2_led_register.exit.thread

if.end20.i:                                       ; preds = %devm_kcalloc.exit.i
  %mul.i = mul nuw nsw i32 %div112.i, 3
  %call21.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.046, ptr noundef nonnull @.str.3, ptr noundef nonnull %call5.i.i.i, i32 noundef %mul.i) #8
  %rw_lock.i = getelementptr inbounds %struct.ns2_led, ptr %leds.047, i32 0, i32 5
  call void @__rwlock_init(ptr noundef %rw_lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @ns2_led_register.__key) #8
  %blink_set.i = getelementptr inbounds %struct.led_classdev, ptr %leds.047, i32 0, i32 8
  %9 = ptrtoint ptr %blink_set.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %blink_set.i, align 4
  %flags.i = getelementptr inbounds %struct.led_classdev, ptr %leds.047, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %11, 65536
  store i32 %or.i, ptr %flags.i, align 4
  %groups.i = getelementptr inbounds %struct.led_classdev, ptr %leds.047, i32 0, i32 12
  %12 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ns2_led_groups, ptr %groups.i, align 4
  %13 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd.i, align 4
  %call28.i = call i32 @gpiod_cansleep(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %lor.rhs.i, label %if.then35.critedge.i

lor.rhs.i:                                        ; preds = %if.end20.i
  %15 = ptrtoint ptr %slow.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slow.i, align 4
  %call31.i = call i32 @gpiod_cansleep(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.i = icmp ne i32 %call31.i, 0
  %can_sleep.i = getelementptr inbounds %struct.ns2_led, ptr %leds.047, i32 0, i32 3
  %frombool.i = zext i1 %tobool32.i to i8
  %17 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool.i, ptr %can_sleep.i, align 4
  br i1 %tobool32.i, label %lor.rhs.i.if.then35.i_crit_edge, label %if.else.i

lor.rhs.i.if.then35.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35.i

if.then35.critedge.i:                             ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %can_sleep.c.i = getelementptr inbounds %struct.ns2_led, ptr %leds.047, i32 0, i32 3
  %18 = ptrtoint ptr %can_sleep.c.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %can_sleep.c.i, align 4
  br label %if.then35.i

if.then35.i:                                      ; preds = %if.then35.critedge.i, %lor.rhs.i.if.then35.i_crit_edge
  %brightness_set_blocking.i = getelementptr inbounds %struct.led_classdev, ptr %leds.047, i32 0, i32 6
  %19 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ns2_led_set_blocking, ptr %brightness_set_blocking.i, align 4
  br label %if.end38.i

if.else.i:                                        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %brightness_set.i = getelementptr inbounds %struct.led_classdev, ptr %leds.047, i32 0, i32 5
  %20 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ns2_led_set, ptr %brightness_set.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i, %if.then35.i
  %num_modes.i = getelementptr inbounds %struct.ns2_led, ptr %leds.047, i32 0, i32 6
  %21 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div112.i, ptr %num_modes.i, align 4
  %modval39.i = getelementptr inbounds %struct.ns2_led, ptr %leds.047, i32 0, i32 7
  %22 = ptrtoint ptr %modval39.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i.i, ptr %modval39.i, align 4
  %23 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd.i, align 4
  %call.i106.i = call i32 @gpiod_get_value_cansleep(ptr noundef %24) #8
  %25 = ptrtoint ptr %slow.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slow.i, align 4
  %call1.i.i = call i32 @gpiod_get_value_cansleep(ptr noundef %26) #8
  %27 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp22.i.i = icmp sgt i32 %28, 0
  br i1 %cmp22.i.i, label %for.body.lr.ph.i.i, label %if.end38.i.ns2_led_register.exit.thread_crit_edge

if.end38.i.ns2_led_register.exit.thread_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ns2_led_register.exit.thread

for.body.lr.ph.i.i:                               ; preds = %if.end38.i
  %29 = ptrtoint ptr %modval39.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %modval39.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.023.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %cmd_level2.i.i = getelementptr %struct.ns2_led_modval, ptr %30, i32 %i.023.i.i, i32 1
  %31 = ptrtoint ptr %cmd_level2.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %cmd_level2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i106.i, i32 %32)
  %cmp3.i.i = icmp eq i32 %call.i106.i, %32
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %slow_level6.i.i = getelementptr %struct.ns2_led_modval, ptr %30, i32 %i.023.i.i, i32 2
  %33 = ptrtoint ptr %slow_level6.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %slow_level6.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %34)
  %cmp7.i.i = icmp eq i32 %call1.i.i, %34
  br i1 %cmp7.i.i, label %if.end43.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %28
  br i1 %exitcond.not.i.i, label %for.inc.i.i.ns2_led_register.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.ns2_led_register.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ns2_led_register.exit.thread

if.end43.i:                                       ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.ns2_led_modval, ptr %30, i32 %i.023.i.i
  %35 = ptrtoint ptr %arrayidx.le.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx.le.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp44.i = icmp eq i32 %36, 2
  %conv.i = zext i1 %cmp44.i to i8
  %sata.i = getelementptr inbounds %struct.ns2_led, ptr %leds.047, i32 0, i32 4
  %37 = ptrtoint ptr %sata.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %sata.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp45.i = icmp eq i32 %36, 0
  %cond47.i = select i1 %cmp45.i, i32 0, i32 255
  %brightness.i = getelementptr inbounds %struct.led_classdev, ptr %leds.047, i32 0, i32 1
  %38 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond47.i, ptr %brightness.i, align 4
  %39 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %child.046, ptr %init_data.i, align 4
  %call50.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %leds.047, ptr noundef nonnull %init_data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %ns2_led_register.exit.thread33, label %if.end43.i.ns2_led_register.exit.thread.sink.split_crit_edge

if.end43.i.ns2_led_register.exit.thread.sink.split_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ns2_led_register.exit.thread.sink.split

ns2_led_register.exit.thread33:                   ; preds = %if.end43.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  %incdec.ptr = getelementptr %struct.ns2_led, ptr %leds.047, i32 1
  %call13 = call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef nonnull %child.046) #8
  %tobool8.not = icmp eq ptr %call13, null
  br i1 %tobool8.not, label %ns2_led_register.exit.thread33.cleanup_crit_edge, label %ns2_led_register.exit.thread33.for.body_crit_edge

ns2_led_register.exit.thread33.for.body_crit_edge: ; preds = %ns2_led_register.exit.thread33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

ns2_led_register.exit.thread33.cleanup_crit_edge: ; preds = %ns2_led_register.exit.thread33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ns2_led_register.exit.thread.sink.split:          ; preds = %if.end43.i.ns2_led_register.exit.thread.sink.split_crit_edge, %if.end13.i.ns2_led_register.exit.thread.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str.4, %if.end13.i.ns2_led_register.exit.thread.sink.split_crit_edge ], [ @.str.11, %if.end43.i.ns2_led_register.exit.thread.sink.split_crit_edge ]
  %retval.0.i29.ph.ph = phi i32 [ -22, %if.end13.i.ns2_led_register.exit.thread.sink.split_crit_edge ], [ %call50.i, %if.end43.i.ns2_led_register.exit.thread.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.4.sink, ptr noundef nonnull %child.046) #11
  br label %ns2_led_register.exit.thread

ns2_led_register.exit.thread:                     ; preds = %ns2_led_register.exit.thread.sink.split, %for.inc.i.i.ns2_led_register.exit.thread_crit_edge, %if.end38.i.ns2_led_register.exit.thread_crit_edge, %devm_kcalloc.exit.i.ns2_led_register.exit.thread_crit_edge, %if.end16.i.ns2_led_register.exit.thread_crit_edge
  %retval.0.i29.ph = phi i32 [ %retval.0.i29.ph.ph, %ns2_led_register.exit.thread.sink.split ], [ -22, %for.inc.i.i.ns2_led_register.exit.thread_crit_edge ], [ -22, %if.end38.i.ns2_led_register.exit.thread_crit_edge ], [ -12, %if.end16.i.ns2_led_register.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit.i.ns2_led_register.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  br label %if.then11

ns2_led_register.exit:                            ; preds = %if.end.i.ns2_led_register.exit_crit_edge, %for.body.ns2_led_register.exit_crit_edge
  %retval.0.i29.in = phi ptr [ %call1.i, %for.body.ns2_led_register.exit_crit_edge ], [ %call7.i, %if.end.i.ns2_led_register.exit_crit_edge ]
  %retval.0.i29 = ptrtoint ptr %retval.0.i29.in to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #8
  br label %if.then11

if.then11:                                        ; preds = %ns2_led_register.exit, %ns2_led_register.exit.thread
  %retval.0.i2932 = phi i32 [ %retval.0.i29.ph, %ns2_led_register.exit.thread ], [ %retval.0.i29, %ns2_led_register.exit ]
  call void @fwnode_handle_put(ptr noundef nonnull %child.046) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %ns2_led_register.exit.thread33.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i2932, %if.then11 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %ns2_led_register.exit.thread33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_led_set_blocking(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp.i = icmp eq i32 %value, 0
  br i1 %cmp.i, label %entry.ns2_led_set.exit_crit_edge, label %if.else.i

entry.ns2_led_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ns2_led_set.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sata.i = getelementptr inbounds %struct.ns2_led, ptr %led_cdev, i32 0, i32 4
  %0 = ptrtoint ptr %sata.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sata.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 2
  br label %ns2_led_set.exit

ns2_led_set.exit:                                 ; preds = %if.else.i, %entry.ns2_led_set.exit_crit_edge
  %mode.0.i = phi i32 [ 0, %entry.ns2_led_set.exit_crit_edge ], [ %..i, %if.else.i ]
  tail call fastcc void @ns2_led_set_mode(ptr noundef %led_cdev, i32 noundef %mode.0.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns2_led_set(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  br i1 %cmp, label %entry.if.end3_crit_edge, label %if.else

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sata = getelementptr inbounds %struct.ns2_led, ptr %led_cdev, i32 0, i32 4
  %0 = ptrtoint ptr %sata to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sata, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  br label %if.end3

if.end3:                                          ; preds = %if.else, %entry.if.end3_crit_edge
  %mode.0 = phi i32 [ 0, %entry.if.end3_crit_edge ], [ %., %if.else ]
  tail call fastcc void @ns2_led_set_mode(ptr noundef %led_cdev, i32 noundef %mode.0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_led_sata_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sata = getelementptr inbounds %struct.ns2_led, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sata to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sata, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns2_led_sata_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buff, i32 noundef %count) #2 align 64 {
entry:
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #8
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %enable, align 4, !annotation !59
  %call.i = call i32 @_kstrtoul(ptr noundef %buff, i32 noundef 10, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %lnot.ext = zext i1 %tobool to i32
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %lnot.ext, ptr %enable, align 4
  %sata = getelementptr inbounds %struct.ns2_led, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %sata to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sata, align 1
  %8 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %8)
  %cmp3 = icmp eq i8 %7, %8
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %sata to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %sata, align 1
  %brightness.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %. = select i1 %tobool, i32 2, i32 1
  call fastcc void @ns2_led_set_mode(ptr noundef %1, i32 noundef %.)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %if.end6.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns2_led_set_mode(ptr noundef %led, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_modes = getelementptr inbounds %struct.ns2_led, ptr %led, i32 0, i32 6
  %0 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_modes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp52 = icmp sgt i32 %1, 0
  br i1 %cmp52, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %modval = getelementptr inbounds %struct.ns2_led, ptr %led, i32 0, i32 7
  %2 = ptrtoint ptr %modval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modval, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ns2_led_modval, ptr %3, i32 %i.053
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mode)
  %cmp2 = icmp eq i32 %5, %mode
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.053, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %1)
  %cmp4 = icmp eq i32 %i.0.lcssa, %1
  br i1 %cmp4, label %for.end.cleanup_crit_edge, label %do.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %for.end
  %rw_lock = getelementptr inbounds %struct.ns2_led, ptr %led, i32 0, i32 5
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rw_lock) #8
  %can_sleep = getelementptr inbounds %struct.ns2_led, ptr %led, i32 0, i32 3
  %6 = ptrtoint ptr %can_sleep to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %can_sleep, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cmd = getelementptr inbounds %struct.ns2_led, ptr %led, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %modval9 = getelementptr inbounds %struct.ns2_led, ptr %led, i32 0, i32 7
  %10 = ptrtoint ptr %modval9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %modval9, align 4
  %cmd_level = getelementptr %struct.ns2_led_modval, ptr %11, i32 %i.0.lcssa, i32 1
  %12 = ptrtoint ptr %cmd_level to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %cmd_level, align 1
  br i1 %tobool.not, label %if.then8, label %if.end13

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef %13) #8
  %slow = getelementptr inbounds %struct.ns2_led, ptr %led, i32 0, i32 2
  %14 = ptrtoint ptr %slow to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slow, align 4
  %16 = ptrtoint ptr %modval9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %modval9, align 4
  %slow_level = getelementptr %struct.ns2_led_modval, ptr %17, i32 %i.0.lcssa, i32 2
  %18 = ptrtoint ptr %slow_level to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %slow_level, align 1
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef %19) #8
  br label %do.body22

if.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef %13) #8
  %slow18 = getelementptr inbounds %struct.ns2_led, ptr %led, i32 0, i32 2
  %20 = ptrtoint ptr %slow18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slow18, align 4
  %22 = ptrtoint ptr %modval9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %modval9, align 4
  %slow_level21 = getelementptr %struct.ns2_led_modval, ptr %23, i32 %i.0.lcssa, i32 2
  %24 = ptrtoint ptr %slow_level21 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %slow_level21, align 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %21, i32 noundef %25) #8
  br label %do.body22

do.body22:                                        ; preds = %if.end13, %if.then8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rw_lock, i32 noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body22, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !42, !44, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_leds_ns2__183_279_ns2_led_driver_init6, !1, !"__initcall__kmod_leds_ns2__183_279_ns2_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-ns2.c", i32 279, i32 1}
!2 = !{ptr @__exitcall_ns2_led_driver_exit, !1, !"__exitcall_ns2_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-ns2.c", i32 281, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-ns2.c", i32 282, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-ns2.c", i32 283, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-ns2.c", i32 284, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-ns2.c", i32 274, i32 12}
!14 = !{ptr @ns2_led_driver, !15, !"ns2_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-ns2.c", i32 271, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-ns2.c", i32 183, i32 52}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-ns2.c", i32 188, i32 53}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/leds-ns2.c", i32 194, i32 40}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-ns2.c", i32 196, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ns2_led_register._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ns2_led_register._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ns2_led_register.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-ns2.c", i32 208, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-ns2.c", i32 233, i32 3}
!35 = !{ptr @ns2_led_register._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ns2_led_register._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @ns2_led_groups, !38, !"ns2_led_groups", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-ns2.c", i32 173, i32 1}
!39 = !{ptr @ns2_led_group, !38, !"ns2_led_group", i1 false, i1 false}
!40 = !{ptr @ns2_led_attrs, !41, !"ns2_led_attrs", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-ns2.c", i32 169, i32 26}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-ns2.c", i32 167, i32 8}
!44 = !{ptr @dev_attr_sata, !43, !"dev_attr_sata", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-ns2.c", i32 164, i32 22}
!47 = !{ptr @of_ns2_leds_match, !48, !"of_ns2_leds_match", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-ns2.c", i32 265, i32 34}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{!"auto-init"}
!60 = !{i8 0, i8 2}
