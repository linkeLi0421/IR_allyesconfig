; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/led_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/led_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_bl_data = type { ptr, ptr, ptr, i8, i32, ptr, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_led_bl__301_251_led_bl_driver_init6 = internal global ptr @led_bl_driver_init, section ".initcall6.init", align 4
@led_bl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @led_bl_probe, ptr @led_bl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @led_bl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_led_bl_driver_exit = internal global ptr @led_bl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [46 x i8] c"led_bl.description=LED based Backlight Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [43 x i8] c"led_bl.file=drivers/video/backlight/led_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [19 x i8] c"led_bl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [36 x i8] c"led_bl.alias=platform:led-backlight\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"led-backlight\00", [18 x i8] zeroinitializer }, align 32
@led_bl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"led-backlight\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@led_bl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to parse DT data\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"led_bl_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/backlight/led_bl.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@led_bl_probe._entry_ptr = internal global ptr @led_bl_probe._entry, section ".printk_index", align 4
@led_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @led_bl_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@led_bl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@led_bl_probe._entry_ptr.8 = internal global ptr @led_bl_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"leds\00", [27 x i8] zeroinitializer }, align 32
@led_bl_get_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 82, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to get led count\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"led_bl_get_leds\00", [16 x i8] zeroinitializer }, align 32
@led_bl_get_leds._entry_ptr = internal global ptr @led_bl_get_leds._entry, section ".printk_index", align 4
@led_bl_get_leds._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"At least one LED must be specified!\0A\00", [59 x i8] zeroinitializer }, align 32
@led_bl_get_leds._entry_ptr.14 = internal global ptr @led_bl_get_leds._entry.12, section ".printk_index", align 4
@led_bl_get_leds._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LEDs must have identical ranges\0A\00", [63 x i8] zeroinitializer }, align 32
@led_bl_get_leds._entry_ptr.17 = internal global ptr @led_bl_get_leds._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brightness-levels\00", [46 x i8] zeroinitializer }, align 32
@led_bl_parse_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 164, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not enough levels defined\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"led_bl_parse_levels\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@led_bl_parse_levels._entry_ptr = internal global ptr @led_bl_parse_levels._entry, section ".printk_index", align 4
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"default-brightness-level\00", [39 x i8] zeroinitializer }, align 32
@led_bl_parse_levels._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.3, i32 170, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid default brightness. Ignoring it\0A\00", [55 x i8] zeroinitializer }, align 32
@led_bl_parse_levels._entry_ptr.25 = internal global ptr @led_bl_parse_levels._entry.23, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"led_bl_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 242, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 244, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"led_bl_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 235, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 195, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"led_bl_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 67, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 208, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 80, i32 41 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 82, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 88, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 107, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 134, i32 49 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 164, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 166, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [36 x i8] c"../drivers/video/backlight/led_bl.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 170, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_led_bl_driver_exit, ptr @__initcall__kmod_led_bl__301_251_led_bl_driver_init6, ptr @led_bl_driver_exit, ptr @led_bl_get_leds._entry, ptr @led_bl_get_leds._entry.12, ptr @led_bl_get_leds._entry.15, ptr @led_bl_get_leds._entry_ptr, ptr @led_bl_get_leds._entry_ptr.14, ptr @led_bl_get_leds._entry_ptr.17, ptr @led_bl_parse_levels._entry, ptr @led_bl_parse_levels._entry.23, ptr @led_bl_parse_levels._entry_ptr, ptr @led_bl_parse_levels._entry_ptr.25, ptr @led_bl_probe._entry, ptr @led_bl_probe._entry.6, ptr @led_bl_probe._entry_ptr, ptr @led_bl_probe._entry_ptr.8, ptr @led_bl_driver, ptr @.str, ptr @led_bl_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @led_bl_ops, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_bl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_bl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_bl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_bl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_bl_get_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_bl_get_leds._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_bl_get_leds._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_bl_parse_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_bl_parse_levels._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @led_bl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @led_bl_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @led_bl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @led_bl_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_bl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #5
  %0 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %1 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 2
  %2 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %call.i63 = tail call i32 @of_count_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i = icmp slt i32 %call.i63, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp1.i = icmp eq i32 %call.i63, 0
  br i1 %cmp1.i, label %do.end5.i, label %if.end6.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %mul.i = shl i32 %call.i63, 2
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul.i, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.075.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i63
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %i.075.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  %call11.i = tail call ptr @devm_of_led_get(ptr noundef %dev, i32 noundef %i.075.i) #5
  %arrayidx.i = getelementptr ptr, ptr %call.i.i, i32 %i.075.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11.i, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %led_bl_get_leds.exit, label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i.i, align 4
  %max_brightness19.i = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %max_brightness19.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_brightness19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i63)
  %cmp2176.i = icmp sgt i32 %call.i63, 1
  br i1 %cmp2176.i, label %for.end.i.for.body22.i_crit_edge, label %for.end.i.led_bl_get_leds.exit.thread85_crit_edge

for.end.i.led_bl_get_leds.exit.thread85_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %led_bl_get_leds.exit.thread85

for.end.i.for.body22.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body22.i

for.cond20.i:                                     ; preds = %for.body22.i
  %inc32.i = add nuw nsw i32 %i.177.i, 1
  %exitcond79.not.i = icmp eq i32 %inc32.i, %call.i63
  br i1 %exitcond79.not.i, label %for.cond20.i.led_bl_get_leds.exit.thread85_crit_edge, label %for.cond20.i.for.body22.i_crit_edge

for.cond20.i.for.body22.i_crit_edge:              ; preds = %for.cond20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22.i

for.cond20.i.led_bl_get_leds.exit.thread85_crit_edge: ; preds = %for.cond20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %led_bl_get_leds.exit.thread85

for.body22.i:                                     ; preds = %for.cond20.i.for.body22.i_crit_edge, %for.end.i.for.body22.i_crit_edge
  %i.177.i = phi i32 [ %inc32.i, %for.cond20.i.for.body22.i_crit_edge ], [ 1, %for.end.i.for.body22.i_crit_edge ]
  %arrayidx23.i = getelementptr ptr, ptr %call.i.i, i32 %i.177.i
  %12 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx23.i, align 4
  %max_brightness24.i = getelementptr inbounds %struct.led_classdev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %max_brightness24.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_brightness24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp25.not.i = icmp eq i32 %11, %15
  br i1 %cmp25.not.i, label %for.cond20.i, label %do.end29.i

do.end29.i:                                       ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %cleanup

led_bl_get_leds.exit.thread85:                    ; preds = %for.cond20.i.led_bl_get_leds.exit.thread85_crit_edge, %for.end.i.led_bl_get_leds.exit.thread85_crit_edge
  %brightness.i = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brightness.i, align 4
  %nb_leds35.i = getelementptr inbounds %struct.led_bl_data, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %nb_leds35.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i63, ptr %nb_leds35.i, align 4
  %leds36.i = getelementptr inbounds %struct.led_bl_data, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %leds36.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %leds36.i, align 4
  %max_brightness37.i = getelementptr inbounds %struct.led_bl_data, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %max_brightness37.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %11, ptr %max_brightness37.i, align 4
  %default_brightness38.i = getelementptr inbounds %struct.led_bl_data, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %default_brightness38.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %default_brightness38.i, align 4
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #5
  %24 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %value.i, align 4, !annotation !68
  %tobool.not.i65 = icmp eq ptr %23, null
  br i1 %tobool.not.i65, label %led_bl_get_leds.exit.thread85.led_bl_parse_levels.exit.thread91_crit_edge, label %if.end.i68

led_bl_get_leds.exit.thread85.led_bl_parse_levels.exit.thread91_crit_edge: ; preds = %led_bl_get_leds.exit.thread85
  call void @__sanitizer_cov_trace_pc() #7
  br label %led_bl_parse_levels.exit.thread91

led_bl_get_leds.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call11.i to i32
  br label %cleanup

if.end.i68:                                       ; preds = %led_bl_get_leds.exit.thread85
  %call.i.i66 = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %23, ptr noundef nonnull @.str.18, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i66)
  %cmp.i67 = icmp sgt i32 %call.i.i66, 1
  br i1 %cmp.i67, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i68
  %mul.i69 = shl i32 %call.i.i66, 2
  %call.i81.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul.i69, i32 noundef 3520) #5
  %tobool3.not.i = icmp eq ptr %call.i81.i, null
  br i1 %tobool3.not.i, label %if.then1.i.led_bl_parse_levels.exit.thread91_crit_edge, label %if.end5.i

if.then1.i.led_bl_parse_levels.exit.thread91_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %led_bl_parse_levels.exit.thread91

if.end5.i:                                        ; preds = %if.then1.i
  %call.i82.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %23, ptr noundef nonnull @.str.18, ptr noundef nonnull %call.i81.i, i32 noundef %call.i.i66, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %cmp7.i = icmp slt i32 %call.i82.i, 0
  br i1 %cmp7.i, label %led_bl_parse_levels.exit, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end5.i
  %26 = ptrtoint ptr %default_brightness38.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %default_brightness38.i, align 4
  br label %for.body.i70

for.body.i70:                                     ; preds = %for.inc.i.for.body.i70_crit_edge, %for.body.preheader.i
  %i.086.i = phi i32 [ %inc.i72, %for.inc.i.for.body.i70_crit_edge ], [ 0, %for.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.086.i)
  %tobool11.not.i = icmp eq i32 %i.086.i, 0
  br i1 %tobool11.not.i, label %for.body.i70.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i70.for.inc.i_crit_edge:                 ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i70
  %sub.i = add nsw i32 %i.086.i, -1
  %arrayidx.i71 = getelementptr i32, ptr %call.i81.i, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp12.i = icmp ugt i32 %27, %29
  br i1 %cmp12.i, label %land.lhs.true13.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %arrayidx14.i = getelementptr i32, ptr %call.i81.i, i32 %i.086.i
  %30 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %cmp15.not.i = icmp ugt i32 %27, %31
  br i1 %cmp15.not.i, label %land.lhs.true13.i.for.inc.i_crit_edge, label %land.lhs.true13.i.cleanup.i_crit_edge

land.lhs.true13.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

land.lhs.true13.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true13.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i70.for.inc.i_crit_edge
  %inc.i72 = add nuw nsw i32 %i.086.i, 1
  %exitcond.not.i73 = icmp eq i32 %inc.i72, %call.i.i66
  br i1 %exitcond.not.i73, label %for.inc.i.cleanup.i_crit_edge, label %for.inc.i.for.body.i70_crit_edge

for.inc.i.for.body.i70_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i70

for.inc.i.cleanup.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.inc.i.cleanup.i_crit_edge, %land.lhs.true13.i.cleanup.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.086.i, %land.lhs.true13.i.cleanup.i_crit_edge ], [ %call.i.i66, %for.inc.i.cleanup.i_crit_edge ]
  %32 = ptrtoint ptr %default_brightness38.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %i.0.lcssa.i, ptr %default_brightness38.i, align 4
  %sub19.i = add nsw i32 %call.i.i66, -1
  %33 = ptrtoint ptr %max_brightness37.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub19.i, ptr %max_brightness37.i, align 4
  %levels20.i = getelementptr inbounds %struct.led_bl_data, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %levels20.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i81.i, ptr %levels20.i, align 4
  br label %if.end26.i

if.else.i:                                        ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i66)
  %cmp23.i = icmp sgt i32 %call.i.i66, -1
  br i1 %cmp23.i, label %do.end.i74, label %if.else.i.if.end26.i_crit_edge

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

do.end.i74:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end.i74, %if.else.i.if.end26.i_crit_edge, %cleanup.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %23, ptr noundef nonnull @.str.22, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool28.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool28.not.i, label %land.lhs.true29.i, label %if.end26.i.led_bl_parse_levels.exit.thread_crit_edge

if.end26.i.led_bl_parse_levels.exit.thread_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %led_bl_parse_levels.exit.thread

land.lhs.true29.i:                                ; preds = %if.end26.i
  %35 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %value.i, align 4
  %37 = ptrtoint ptr %max_brightness37.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_brightness37.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp31.not.i = icmp ugt i32 %36, %38
  br i1 %cmp31.not.i, label %do.end42.i, label %if.then32.i

if.then32.i:                                      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %default_brightness38.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %default_brightness38.i, align 4
  br label %led_bl_parse_levels.exit.thread

do.end42.i:                                       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  br label %led_bl_parse_levels.exit.thread

led_bl_parse_levels.exit.thread:                  ; preds = %do.end42.i, %if.then32.i, %if.end26.i.led_bl_parse_levels.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  %40 = getelementptr inbounds i8, ptr %props, i32 12
  %41 = call ptr @memset(ptr %40, i32 0, i32 16)
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %2, align 4
  %43 = ptrtoint ptr %max_brightness37.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_brightness37.i, align 4
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %0, align 4
  %46 = ptrtoint ptr %default_brightness38.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %default_brightness38.i, align 4
  %48 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %props, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp15.not = icmp eq i32 %47, 0
  %cond = select i1 %cmp15.not, i32 0, i32 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %50 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i75 = icmp eq ptr %51, null
  br i1 %tobool.not.i75, label %if.end.i76, label %led_bl_parse_levels.exit.thread.dev_name.exit_crit_edge

led_bl_parse_levels.exit.thread.dev_name.exit_crit_edge: ; preds = %led_bl_parse_levels.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

led_bl_parse_levels.exit.thread91:                ; preds = %if.then1.i.led_bl_parse_levels.exit.thread91_crit_edge, %led_bl_get_leds.exit.thread85.led_bl_parse_levels.exit.thread91_crit_edge
  %retval.1.i.ph = phi i32 [ -12, %if.then1.i.led_bl_parse_levels.exit.thread91_crit_edge ], [ -19, %led_bl_get_leds.exit.thread85.led_bl_parse_levels.exit.thread91_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  br label %do.end

led_bl_parse_levels.exit:                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  br label %do.end

do.end:                                           ; preds = %led_bl_parse_levels.exit, %led_bl_parse_levels.exit.thread91
  %retval.1.i94 = phi i32 [ %retval.1.i.ph, %led_bl_parse_levels.exit.thread91 ], [ %call.i82.i, %led_bl_parse_levels.exit ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end.i76:                                       ; preds = %led_bl_parse_levels.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i76, %led_bl_parse_levels.exit.thread.dev_name.exit_crit_edge
  %retval.0.i77 = phi ptr [ %53, %if.end.i76 ], [ %51, %led_bl_parse_levels.exit.thread.dev_name.exit_crit_edge ]
  %call19 = call ptr @backlight_device_register(ptr noundef %retval.0.i77, ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @led_bl_ops, ptr noundef nonnull %props) #5
  %bl_dev = getelementptr inbounds %struct.led_bl_data, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call19, ptr %bl_dev, align 4
  %cmp.i78 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %do.end25, label %for.cond.preheader

for.cond.preheader:                               ; preds = %dev_name.exit
  %55 = ptrtoint ptr %nb_leds35.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nb_leds35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp3096 = icmp sgt i32 %56, 0
  br i1 %cmp3096, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end25:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  %57 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bl_dev, align 4
  %59 = ptrtoint ptr %58 to i32
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %60 = ptrtoint ptr %leds36.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %leds36.i, align 4
  %arrayidx = getelementptr ptr, ptr %61, i32 %i.097
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx, align 4
  call void @led_sysfs_disable(ptr noundef %63) #5
  %inc = add nuw nsw i32 %i.097, 1
  %64 = ptrtoint ptr %nb_leds35.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nb_leds35.i, align 4
  %cmp30 = icmp slt i32 %inc, %65
  br i1 %cmp30, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %66 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bl_dev, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %67, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i, align 4
  %tobool.not.i79 = icmp eq ptr %69, null
  br i1 %tobool.not.i79, label %for.end.backlight_update_status.exit_crit_edge, label %land.lhs.true.i80

for.end.backlight_update_status.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit

land.lhs.true.i80:                                ; preds = %for.end
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %71, null
  br i1 %tobool2.not.i, label %land.lhs.true.i80.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i80.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #7
  %call.i81 = call i32 %71(ptr noundef %67) #5
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i80.backlight_update_status.exit_crit_edge, %for.end.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %do.end25, %do.end, %led_bl_get_leds.exit, %do.end29.i, %if.end6.i.cleanup_crit_edge, %do.end5.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i94, %do.end ], [ %59, %do.end25 ], [ 0, %backlight_update_status.exit ], [ -12, %entry.cleanup_crit_edge ], [ %25, %led_bl_get_leds.exit ], [ -12, %if.end6.i.cleanup_crit_edge ], [ -22, %do.end29.i ], [ -22, %do.end5.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_bl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bl_dev = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_dev, align 4
  tail call void @backlight_device_unregister(ptr noundef %3) #5
  %enabled.i = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.led_bl_power_off.exit_crit_edge, label %for.cond.preheader.i

entry.led_bl_power_off.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %led_bl_power_off.exit

for.cond.preheader.i:                             ; preds = %entry
  %nb_leds.i = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %nb_leds.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.i = icmp sgt i32 %7, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %leds.i = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %leds.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %leds.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.08.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @led_set_brightness(ptr noundef %11, i32 noundef 0) #5
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %12 = ptrtoint ptr %nb_leds.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nb_leds.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled.i, align 4
  br label %led_bl_power_off.exit

led_bl_power_off.exit:                            ; preds = %for.end.i, %entry.led_bl_power_off.exit_crit_edge
  %nb_leds = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %nb_leds to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nb_leds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6 = icmp sgt i32 %16, 0
  br i1 %cmp6, label %for.body.lr.ph, label %led_bl_power_off.exit.for.end_crit_edge

led_bl_power_off.exit.for.end_crit_edge:          ; preds = %led_bl_power_off.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %led_bl_power_off.exit
  %leds = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %leds, align 4
  %arrayidx = getelementptr ptr, ptr %18, i32 %i.07
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  tail call void @led_sysfs_enable(ptr noundef %20) #5
  %inc = add nuw nsw i32 %i.07, 1
  %21 = ptrtoint ptr %nb_leds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nb_leds, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %led_bl_power_off.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_sysfs_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_led_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %2 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %4 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.if.else_crit_edge

lor.lhs.false.i.i.if.else_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %backlight_get_brightness.exit, label %backlight_is_blank.exit.i.if.else_crit_edge

backlight_is_blank.exit.i.if.else_crit_edge:      ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

backlight_get_brightness.exit:                    ; preds = %backlight_is_blank.exit.i
  %8 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %backlight_get_brightness.exit.if.else_crit_edge

backlight_get_brightness.exit.if.else_crit_edge:  ; preds = %backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %backlight_get_brightness.exit
  %levels.i = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %levels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %levels.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr i32, ptr %11, i32 %9
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %bkl_brightness.0.i = phi i32 [ %13, %if.then.i ], [ %9, %if.then.if.end.i_crit_edge ]
  %nb_leds.i = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %nb_leds.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nb_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10.i = icmp sgt i32 %15, 0
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %if.end.i.led_bl_set_brightness.exit_crit_edge

if.end.i.led_bl_set_brightness.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %led_bl_set_brightness.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %leds.i = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %leds.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %leds.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %17, i32 %i.011.i
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @led_set_brightness(ptr noundef %19, i32 noundef %bkl_brightness.0.i) #5
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %20 = ptrtoint ptr %nb_leds.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nb_leds.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.led_bl_set_brightness.exit_crit_edge

for.body.i.led_bl_set_brightness.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %led_bl_set_brightness.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

led_bl_set_brightness.exit:                       ; preds = %for.body.i.led_bl_set_brightness.exit_crit_edge, %if.end.i.led_bl_set_brightness.exit_crit_edge
  %enabled.i = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %enabled.i, align 4
  br label %if.end

if.else:                                          ; preds = %backlight_get_brightness.exit.if.else_crit_edge, %backlight_is_blank.exit.i.if.else_crit_edge, %lor.lhs.false.i.i.if.else_crit_edge, %entry.if.else_crit_edge
  %enabled.i5 = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %enabled.i5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %enabled.i5, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i6 = icmp eq i8 %24, 0
  br i1 %tobool.not.i6, label %if.else.if.end_crit_edge, label %for.cond.preheader.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.preheader.i:                             ; preds = %if.else
  %nb_leds.i7 = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %nb_leds.i7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nb_leds.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp7.i = icmp sgt i32 %26, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i9, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i9:                                ; preds = %for.cond.preheader.i
  %leds.i8 = getelementptr inbounds %struct.led_bl_data, ptr %1, i32 0, i32 2
  br label %for.body.i13

for.body.i13:                                     ; preds = %for.body.i13.for.body.i13_crit_edge, %for.body.lr.ph.i9
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i9 ], [ %inc.i11, %for.body.i13.for.body.i13_crit_edge ]
  %27 = ptrtoint ptr %leds.i8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %leds.i8, align 4
  %arrayidx.i10 = getelementptr ptr, ptr %28, i32 %i.08.i
  %29 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i10, align 4
  tail call void @led_set_brightness(ptr noundef %30, i32 noundef 0) #5
  %inc.i11 = add nuw nsw i32 %i.08.i, 1
  %31 = ptrtoint ptr %nb_leds.i7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nb_leds.i7, align 4
  %cmp.i12 = icmp slt i32 %inc.i11, %32
  br i1 %cmp.i12, label %for.body.i13.for.body.i13_crit_edge, label %for.body.i13.for.end.i_crit_edge

for.body.i13.for.end.i_crit_edge:                 ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i13.for.body.i13_crit_edge:              ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i13

for.end.i:                                        ; preds = %for.body.i13.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %33 = ptrtoint ptr %enabled.i5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %enabled.i5, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.i, %if.else.if.end_crit_edge, %led_bl_set_brightness.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_sysfs_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !49, !51, !53, !54, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_led_bl__301_251_led_bl_driver_init6, !1, !"__initcall__kmod_led_bl__301_251_led_bl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/led_bl.c", i32 251, i32 1}
!2 = !{ptr @__exitcall_led_bl_driver_exit, !1, !"__exitcall_led_bl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/led_bl.c", i32 253, i32 1}
!5 = !{ptr @__UNIQUE_ID_file303, !6, !"__UNIQUE_ID_file303", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/led_bl.c", i32 254, i32 1}
!7 = !{ptr @__UNIQUE_ID_license304, !6, !"__UNIQUE_ID_license304", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias305, !9, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!9 = !{!"../drivers/video/backlight/led_bl.c", i32 255, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/led_bl.c", i32 244, i32 12}
!12 = !{ptr @led_bl_driver, !13, !"led_bl_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/led_bl.c", i32 242, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/led_bl.c", i32 195, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @led_bl_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @led_bl_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/led_bl.c", i32 208, i32 3}
!24 = !{ptr @led_bl_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @led_bl_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/led_bl.c", i32 80, i32 41}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/led_bl.c", i32 82, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @led_bl_get_leds._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @led_bl_get_leds._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/backlight/led_bl.c", i32 88, i32 3}
!35 = !{ptr @led_bl_get_leds._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @led_bl_get_leds._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/backlight/led_bl.c", i32 107, i32 4}
!39 = !{ptr @led_bl_get_leds._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @led_bl_get_leds._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/backlight/led_bl.c", i32 134, i32 49}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/backlight/led_bl.c", i32 164, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @led_bl_parse_levels._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @led_bl_parse_levels._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/backlight/led_bl.c", i32 166, i32 35}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/backlight/led_bl.c", i32 170, i32 3}
!53 = !{ptr @led_bl_parse_levels._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @led_bl_parse_levels._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @led_bl_ops, !56, !"led_bl_ops", i1 false, i1 false}
!56 = !{!"../drivers/video/backlight/led_bl.c", i32 67, i32 35}
!57 = !{ptr @led_bl_of_match, !58, !"led_bl_of_match", i1 false, i1 false}
!58 = !{!"../drivers/video/backlight/led_bl.c", i32 235, i32 34}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{i8 0, i8 2}
