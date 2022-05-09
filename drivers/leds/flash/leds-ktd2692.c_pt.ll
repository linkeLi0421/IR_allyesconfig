; ModuleID = '/llk/IR_all_yes/drivers/leds/flash/leds-ktd2692.c_pt.bc'
source_filename = "../drivers/leds/flash/leds-ktd2692.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.led_flash_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ktd2692_led_config_data = type { i32, i32, i32, i32 }
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
%struct.ktd2692_context = type { %struct.led_classdev_flash, %struct.mutex, ptr, ptr, ptr, i32, i32 }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_flash_setting = type { i32, i32, i32, i32 }

@__initcall__kmod_leds_ktd2692__288_420_ktd2692_driver_init6 = internal global ptr @ktd2692_driver_init, section ".initcall6.init", align 4
@ktd2692_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ktd2692_probe, ptr @ktd2692_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ktd2692_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ktd2692_driver_exit = internal global ptr @ktd2692_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [53 x i8] c"leds_ktd2692.author=Ingi Kim <ingi2.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [52 x i8] c"leds_ktd2692.description=Kinetic KTD2692 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [50 x i8] c"leds_ktd2692.file=drivers/leds/flash/leds-ktd2692\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [28 x i8] c"leds_ktd2692.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ktd2692\00", [24 x i8] zeroinitializer }, align 32
@ktd2692_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kinetic,ktd2692\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@flash_ops = internal constant { %struct.led_flash_ops, [40 x i8] } { %struct.led_flash_ops { ptr null, ptr null, ptr @ktd2692_led_flash_strobe_set, ptr null, ptr @ktd2692_led_flash_timeout_set, ptr null }, [40 x i8] zeroinitializer }, align 32
@ktd2692_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&led->lock\00", [21 x i8] zeroinitializer }, align 32
@ktd2692_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 384, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't register LED %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ktd2692_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/leds/flash/leds-ktd2692.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ktd2692_probe._entry_ptr = internal global ptr @ktd2692_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 283, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot get ctrl-gpios %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ktd2692_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry_ptr = internal global ptr @ktd2692_parse_dt._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.4, i32 290, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot get aux-gpios %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry_ptr.13 = internal global ptr @ktd2692_parse_dt._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.4, i32 301, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable supply: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry_ptr.17 = internal global ptr @ktd2692_parse_dt._entry.15, section ".printk_index", align 4
@ktd2692_parse_dt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.4, i32 312, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No DT child node found for connected LED.\0A\00", [53 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry_ptr.20 = internal global ptr @ktd2692_parse_dt._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.4, i32 322, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to parse led-max-microamp\0A\00", [62 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry_ptr.25 = internal global ptr @ktd2692_parse_dt._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flash-max-microamp\00", [45 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.9, ptr @.str.4, i32 329, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to parse flash-max-microamp\0A\00", [60 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry_ptr.29 = internal global ptr @ktd2692_parse_dt._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flash-max-timeout-us\00", [43 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.9, ptr @.str.4, i32 336, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to parse flash-max-timeout-us\0A\00", [58 x i8] zeroinitializer }, align 32
@ktd2692_parse_dt._entry_ptr.33 = internal global ptr @ktd2692_parse_dt._entry.31, section ".printk_index", align 4
@regulator_disable_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to disable supply: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"regulator_disable_action\00", [39 x i8] zeroinitializer }, align 32
@regulator_disable_action._entry_ptr = internal global ptr @regulator_disable_action._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"ktd2692_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 411, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 413, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"ktd2692_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 405, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [10 x i8] c"flash_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 345, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 378, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 384, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 280, i32 39 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 283, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 287, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 290, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 294, i32 43 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 301, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 312, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 317, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 319, i32 41 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 322, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 326, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 329, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 333, i32 41 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 336, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [37 x i8] c"../drivers/leds/flash/leds-ktd2692.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 267, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ktd2692_driver_exit, ptr @__initcall__kmod_leds_ktd2692__288_420_ktd2692_driver_init6, ptr @ktd2692_driver_exit, ptr @ktd2692_parse_dt._entry, ptr @ktd2692_parse_dt._entry.11, ptr @ktd2692_parse_dt._entry.15, ptr @ktd2692_parse_dt._entry.18, ptr @ktd2692_parse_dt._entry.23, ptr @ktd2692_parse_dt._entry.27, ptr @ktd2692_parse_dt._entry.31, ptr @ktd2692_parse_dt._entry_ptr, ptr @ktd2692_parse_dt._entry_ptr.13, ptr @ktd2692_parse_dt._entry_ptr.17, ptr @ktd2692_parse_dt._entry_ptr.20, ptr @ktd2692_parse_dt._entry_ptr.25, ptr @ktd2692_parse_dt._entry_ptr.29, ptr @ktd2692_parse_dt._entry_ptr.33, ptr @ktd2692_probe._entry, ptr @ktd2692_probe._entry_ptr, ptr @regulator_disable_action._entry, ptr @regulator_disable_action._entry_ptr, ptr @ktd2692_driver, ptr @.str, ptr @ktd2692_match, ptr @flash_ops, ptr @ktd2692_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktd2692_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktd2692_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktd2692_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktd2692_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktd2692_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktd2692_parse_dt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktd2692_parse_dt._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktd2692_parse_dt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktd2692_parse_dt._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktd2692_parse_dt._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktd2692_parse_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_disable_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ktd2692_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ktd2692_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ktd2692_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ktd2692_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ktd2692_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %led_cfg = alloca %struct.ktd2692_led_config_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %led_cfg) #6
  %0 = getelementptr inbounds %struct.ktd2692_led_config_data, ptr %led_cfg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ktd2692_led_config_data, ptr %led_cfg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ktd2692_led_config_data, ptr %led_cfg, i32 0, i32 3
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %3 = call ptr @memset(ptr %led_cfg, i32 255, i32 16)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 568, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %dev_of_node.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dev_of_node.exit.i:                               ; preds = %if.end
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %dev_of_node.exit.i.cleanup_crit_edge, label %if.end.i

dev_of_node.exit.i.cleanup_crit_edge:             ; preds = %dev_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %dev_of_node.exit.i
  %call1.i = tail call ptr @devm_gpiod_get(ptr noundef nonnull %dev, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %ctrl_gpio.i = getelementptr inbounds %struct.ktd2692_context, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %ctrl_gpio.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i, ptr %ctrl_gpio.i, align 4
  %cmp.i.i.not.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call1.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.8, i32 noundef %7) #9
  br label %ktd2692_parse_dt.exit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call ptr @devm_gpiod_get(ptr noundef nonnull %dev, ptr noundef nonnull @.str.10, i32 noundef 0) #6
  %aux_gpio.i = getelementptr inbounds %struct.ktd2692_context, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %aux_gpio.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %aux_gpio.i, align 4
  %cmp.i.i114.not.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i114.not.i, label %do.end14.i, label %if.end15.i

do.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call7.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.12, i32 noundef %9) #9
  br label %ktd2692_parse_dt.exit

if.end15.i:                                       ; preds = %if.end6.i
  %call16.i = tail call ptr @devm_regulator_get(ptr noundef nonnull %dev, ptr noundef nonnull @.str.14) #6
  %regulator.i = getelementptr inbounds %struct.ktd2692_context, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16.i, ptr %regulator.i, align 4
  %cmp.i.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end21.thread.i, label %if.end21.i

if.end21.thread.i:                                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %regulator.i, align 4
  br label %if.end37.i

if.end21.i:                                       ; preds = %if.end15.i
  %tobool23.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool23.not.i, label %if.end21.i.if.end37.i_crit_edge, label %if.then24.i

if.end21.i.if.end37.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then24.i:                                      ; preds = %if.end21.i
  %call26.i = tail call i32 @regulator_enable(ptr noundef nonnull %call16.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.else.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.16, i32 noundef %call26.i) #9
  br label %if.end37.i

if.else.i:                                        ; preds = %if.then24.i
  %call.i.i = tail call i32 @devm_add_action(ptr noundef nonnull %dev, ptr noundef nonnull @regulator_disable_action, ptr noundef nonnull %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i116.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i116.i, label %if.else.i.if.end37.i_crit_edge, label %if.then.i.i

if.else.i.if.end37.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then.i.i:                                      ; preds = %if.else.i
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %regulator.i.i.i = getelementptr inbounds %struct.ktd2692_context, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %regulator.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regulator.i.i.i, align 4
  %call1.i.i.i = tail call i32 @regulator_disable(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.34, i32 noundef %call1.i.i.i) #9
  br label %cleanup

if.end37.i:                                       ; preds = %if.else.i.if.end37.i_crit_edge, %do.end31.i, %if.end21.i.if.end37.i_crit_edge, %if.end21.thread.i
  %call38.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef null) #6
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %do.end43.i, label %if.end44.i

do.end43.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end44.i:                                       ; preds = %if.end37.i
  %call45.i = tail call ptr @of_get_property(ptr noundef nonnull %call38.i, ptr noundef nonnull @.str.21, ptr noundef null) #6
  %tobool46.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool46.not.i, label %cond.false.i, label %if.end44.i.cond.end.i_crit_edge

if.end44.i.cond.end.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call38.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call38.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end44.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %17, %cond.false.i ], [ %call45.i, %if.end44.i.cond.end.i_crit_edge ]
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cond.i, ptr %call.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call38.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %led_cfg, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool49.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool49.not.i, label %if.end54.i, label %cond.end.i.err_parse_dt.sink.split.i_crit_edge

cond.end.i.err_parse_dt.sink.split.i_crit_edge:   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_parse_dt.sink.split.i

if.end54.i:                                       ; preds = %cond.end.i
  %call.i.i118.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call38.i, ptr noundef nonnull @.str.26, ptr noundef %0, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i118.i)
  %tobool56.not.i = icmp sgt i32 %call.i.i118.i, -1
  br i1 %tobool56.not.i, label %if.end61.i, label %if.end54.i.err_parse_dt.sink.split.i_crit_edge

if.end54.i.err_parse_dt.sink.split.i_crit_edge:   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_parse_dt.sink.split.i

if.end61.i:                                       ; preds = %if.end54.i
  %call.i.i119.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call38.i, ptr noundef nonnull @.str.30, ptr noundef %1, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i119.i)
  %tobool63.not.i = icmp sgt i32 %call.i.i119.i, -1
  br i1 %tobool63.not.i, label %if.end61.i.err_parse_dt.i_crit_edge, label %if.end61.i.err_parse_dt.sink.split.i_crit_edge

if.end61.i.err_parse_dt.sink.split.i_crit_edge:   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_parse_dt.sink.split.i

if.end61.i.err_parse_dt.i_crit_edge:              ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_parse_dt.i

err_parse_dt.sink.split.i:                        ; preds = %if.end61.i.err_parse_dt.sink.split.i_crit_edge, %if.end54.i.err_parse_dt.sink.split.i_crit_edge, %cond.end.i.err_parse_dt.sink.split.i_crit_edge
  %.str.32.sink.i = phi ptr [ @.str.24, %cond.end.i.err_parse_dt.sink.split.i_crit_edge ], [ @.str.28, %if.end54.i.err_parse_dt.sink.split.i_crit_edge ], [ @.str.32, %if.end61.i.err_parse_dt.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call.i.i.i, %cond.end.i.err_parse_dt.sink.split.i_crit_edge ], [ %call.i.i118.i, %if.end54.i.err_parse_dt.sink.split.i_crit_edge ], [ %call.i.i119.i, %if.end61.i.err_parse_dt.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull %.str.32.sink.i) #9
  br label %err_parse_dt.i

err_parse_dt.i:                                   ; preds = %err_parse_dt.sink.split.i, %if.end61.i.err_parse_dt.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end61.i.err_parse_dt.i_crit_edge ], [ %ret.0.ph.i, %err_parse_dt.sink.split.i ]
  call void @of_node_put(ptr noundef nonnull %call38.i) #6
  br label %ktd2692_parse_dt.exit

ktd2692_parse_dt.exit:                            ; preds = %err_parse_dt.i, %do.end14.i, %do.end.i
  %retval.0.i = phi i32 [ %7, %do.end.i ], [ %9, %do.end14.i ], [ %ret.0.i, %err_parse_dt.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %if.end7, label %ktd2692_parse_dt.exit.cleanup_crit_edge

ktd2692_parse_dt.exit.cleanup_crit_edge:          ; preds = %ktd2692_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %ktd2692_parse_dt.exit
  %timeout.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %timeout.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %max.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max.i, align 4
  %div.i = udiv i32 %21, 7
  %step.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %step.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div.i, ptr %step.i, align 4
  %val.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %val.i, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 4
  %div1.i = udiv i32 %26, 48
  %27 = ptrtoint ptr %led_cfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %led_cfg, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end7
  %offset.0.i = phi i32 [ 16, %if.end7 ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %mul.i = mul i32 %offset.0.i, %div1.i
  %dec.i = add nsw i32 %offset.0.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %28)
  %cmp.i = icmp ule i32 %mul.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp2.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = or i1 %cmp.i, %cmp2.not.i
  br i1 %or.cond.i, label %ktd2692_init_movie_current_max.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

ktd2692_init_movie_current_max.exit:              ; preds = %do.body.i
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dec.i, ptr %2, align 4
  %ops = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @flash_ops, ptr %ops, align 4
  %max_brightness8 = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %max_brightness8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dec.i, ptr %max_brightness8, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ktd2692_led_brightness_set, ptr %brightness_set_blocking, align 4
  %flags = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %or = or i32 %34, 327680
  store i32 %or, ptr %flags, align 4
  %lock = getelementptr inbounds %struct.ktd2692_context, ptr %call.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ktd2692_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i45 = call i32 @led_classdev_flash_register_ext(ptr noundef nonnull %dev, ptr noundef %call.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool11.not = icmp eq i32 %call.i45, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %ktd2692_init_movie_current_max.exit
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.2, ptr noundef %37) #9
  call void @mutex_destroy(ptr noundef %lock) #6
  br label %cleanup

if.end18:                                         ; preds = %ktd2692_init_movie_current_max.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mode.i = getelementptr inbounds %struct.ktd2692_context, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %mode.i, align 4
  %39 = ptrtoint ptr %ctrl_gpio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl_gpio.i, align 4
  %call.i.i46 = call i32 @gpiod_direction_output(ptr noundef %40, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 150323600) #6
  %aux_gpio.i47 = getelementptr inbounds %struct.ktd2692_context, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %aux_gpio.i47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %aux_gpio.i47, align 4
  %call.i48 = call i32 @gpiod_direction_output(ptr noundef %43, i32 noundef 0) #6
  call fastcc void @ktd2692_expresswire_write(ptr noundef %call.i, i8 noundef zeroext 71) #6
  call fastcc void @ktd2692_expresswire_write(ptr noundef %call.i, i8 noundef zeroext -121) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end15, %ktd2692_parse_dt.exit.cleanup_crit_edge, %do.end43.i, %do.end.i.i.i, %if.then.i.i.cleanup_crit_edge, %dev_of_node.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i45, %do.end15 ], [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %ktd2692_parse_dt.exit.cleanup_crit_edge ], [ %call.i.i, %do.end.i.i.i ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -6, %dev_of_node.exit.i.cleanup_crit_edge ], [ -22, %do.end43.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %led_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ktd2692_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @led_classdev_flash_unregister(ptr noundef %1) #6
  %lock = getelementptr inbounds %struct.ktd2692_context, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ktd2692_led_brightness_set(ptr noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ktd2692_context, ptr %led_cdev, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr inbounds %struct.ktd2692_context, ptr %led_cdev, i32 0, i32 5
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mode, align 4
  %aux_gpio = getelementptr inbounds %struct.ktd2692_context, ptr %led_cdev, i32 0, i32 3
  %1 = ptrtoint ptr %aux_gpio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aux_gpio, align 4
  %call2 = tail call i32 @gpiod_direction_output(ptr noundef %2, i32 noundef 0) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = trunc i32 %brightness to i8
  %conv = or i8 %3, 96
  tail call fastcc void @ktd2692_expresswire_write(ptr noundef %led_cdev, i8 noundef zeroext %conv)
  %mode3 = getelementptr inbounds %struct.ktd2692_context, ptr %led_cdev, i32 0, i32 5
  %4 = ptrtoint ptr %mode3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %mode3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mode4 = getelementptr inbounds %struct.ktd2692_context, ptr %led_cdev, i32 0, i32 5
  %5 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode4, align 4
  %7 = trunc i32 %6 to i8
  %conv6 = or i8 %7, -96
  tail call fastcc void @ktd2692_expresswire_write(ptr noundef %led_cdev, i8 noundef zeroext %conv6)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regulator_disable_action(ptr noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %_data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regulator = getelementptr inbounds %struct.ktd2692_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulator, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %_data, ptr noundef nonnull @.str.34, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ktd2692_led_flash_strobe_set(ptr noundef %fled_cdev, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ktd2692_context, ptr %fled_cdev, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  br i1 %state, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.led_classdev_flash, ptr %fled_cdev, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %step = getelementptr inbounds %struct.led_classdev_flash, ptr %fled_cdev, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %step, align 4
  %div = udiv i32 %1, %3
  %4 = trunc i32 %div to i8
  %conv = or i8 %4, 32
  tail call fastcc void @ktd2692_expresswire_write(ptr noundef %fled_cdev, i8 noundef zeroext %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ 2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %.sink23 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %mode3 = getelementptr inbounds %struct.ktd2692_context, ptr %fled_cdev, i32 0, i32 5
  %5 = ptrtoint ptr %mode3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %mode3, align 4
  %aux_gpio4 = getelementptr inbounds %struct.ktd2692_context, ptr %fled_cdev, i32 0, i32 3
  %6 = ptrtoint ptr %aux_gpio4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux_gpio4, align 4
  %call5 = tail call i32 @gpiod_direction_output(ptr noundef %7, i32 noundef %.sink23) #6
  %mode6 = getelementptr inbounds %struct.ktd2692_context, ptr %fled_cdev, i32 0, i32 5
  %8 = ptrtoint ptr %mode6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode6, align 4
  %10 = trunc i32 %9 to i8
  %conv8 = or i8 %10, -96
  tail call fastcc void @ktd2692_expresswire_write(ptr noundef %fled_cdev, i8 noundef zeroext %conv8)
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %fled_cdev, i32 0, i32 1
  %11 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %brightness, align 4
  %12 = ptrtoint ptr %mode6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mode6, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ktd2692_led_flash_timeout_set(ptr nocapture noundef readnone %fled_cdev, i32 noundef %timeout) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ktd2692_expresswire_write(ptr nocapture noundef readonly %led, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_gpio.i = getelementptr inbounds %struct.ktd2692_context, ptr %led, i32 0, i32 4
  %0 = ptrtoint ptr %ctrl_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_gpio.i, align 4
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %1, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #6
  %conv = zext i8 %value to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 7, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.09
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %3 = ptrtoint ptr %ctrl_gpio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl_gpio.i, align 4
  %call.i6 = tail call i32 @gpiod_direction_output(ptr noundef %4, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %..i = select i1 %tobool.not, i32 2576976, i32 858992
  %.13.i = select i1 %tobool.not, i32 858992, i32 2576976
  tail call void %5(i32 noundef %..i) #6
  %6 = ptrtoint ptr %ctrl_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_gpio.i, align 4
  %call6.i = tail call i32 @gpiod_direction_output(ptr noundef %7, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef %.13.i) #6
  %dec = add nsw i32 %i.09, -1
  %cmp.not = icmp eq i32 %i.09, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ctrl_gpio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_gpio.i, align 4
  %call.i8 = tail call i32 @gpiod_direction_output(ptr noundef %10, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #6
  %12 = ptrtoint ptr %ctrl_gpio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_gpio.i, align 4
  %call2.i = tail call i32 @gpiod_direction_output(ptr noundef %13, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 75161800) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_flash_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_flash_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_leds_ktd2692__288_420_ktd2692_driver_init6, !1, !"__initcall__kmod_leds_ktd2692__288_420_ktd2692_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 420, i32 1}
!2 = !{ptr @__exitcall_ktd2692_driver_exit, !1, !"__exitcall_ktd2692_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 422, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 423, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 424, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 413, i32 12}
!12 = !{ptr @ktd2692_driver, !13, !"ktd2692_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 411, i32 31}
!14 = !{ptr @ktd2692_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 378, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 384, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ktd2692_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ktd2692_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 280, i32 39}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 283, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ktd2692_parse_dt._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @ktd2692_parse_dt._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 287, i32 38}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 290, i32 3}
!36 = !{ptr @ktd2692_parse_dt._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ktd2692_parse_dt._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 294, i32 43}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 301, i32 4}
!42 = !{ptr @ktd2692_parse_dt._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ktd2692_parse_dt._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 312, i32 3}
!46 = !{ptr @ktd2692_parse_dt._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ktd2692_parse_dt._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 317, i32 31}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 319, i32 41}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 322, i32 3}
!54 = !{ptr @ktd2692_parse_dt._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ktd2692_parse_dt._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 326, i32 41}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 329, i32 3}
!60 = !{ptr @ktd2692_parse_dt._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ktd2692_parse_dt._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 333, i32 41}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 336, i32 3}
!66 = !{ptr @ktd2692_parse_dt._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ktd2692_parse_dt._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 267, i32 3}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @regulator_disable_action._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @regulator_disable_action._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @flash_ops, !74, !"flash_ops", i1 false, i1 false}
!74 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 345, i32 35}
!75 = !{ptr @ktd2692_match, !76, !"ktd2692_match", i1 false, i1 false}
!76 = !{!"../drivers/leds/flash/leds-ktd2692.c", i32 405, i32 34}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
