; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-mc13783.c_pt.bc'
source_filename = "../drivers/leds/leds-mc13783.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.mc13xxx_led_devtype = type { i32, i32, i32, i32 }
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
%struct.mc13xxx_leds = type { ptr, ptr, i32, ptr }
%struct.mc13xxx_leds_platform_data = type { ptr, i32, [6 x i32] }
%struct.mc13xxx_led_platform_data = type { i32, ptr, ptr }
%struct.mc13xxx_led = type { %struct.led_classdev, i32, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_leds_mc13783__187_311_mc13xxx_led_driver_init6 = internal global ptr @mc13xxx_led_driver_init, section ".initcall6.init", align 4
@mc13xxx_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @mc13xxx_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.20, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mc13xxx_led_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mc13xxx_led_driver_exit = internal global ptr @mc13xxx_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [64 x i8] c"leds_mc13783.description=LEDs driver for Freescale MC13XXX PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [66 x i8] c"leds_mc13783.author=Philippe Retornaz <philippe.retornaz@epfl.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [44 x i8] c"leds_mc13783.file=drivers/leds/leds-mc13783\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [25 x i8] c"leds_mc13783.license=GPL\00", section ".modinfo", align 1
@mc13xxx_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid LED count %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mc13xxx_led_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/leds/leds-mc13783.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mc13xxx_led_probe._entry_ptr = internal global ptr @mc13xxx_led_probe._entry, section ".printk_index", align 4
@mc13xxx_led_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 232, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Invalid ID %i\0A\00", [17 x i8] zeroinitializer }, align 32
@mc13xxx_led_probe._entry_ptr.7 = internal global ptr @mc13xxx_led_probe._entry.5, section ".printk_index", align 4
@mc13xxx_led_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 237, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LED %i already initialized\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mc13xxx_led_probe._entry_ptr.11 = internal global ptr @mc13xxx_led_probe._entry.8, section ".printk_index", align 4
@mc13xxx_led_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register LED %i\0A\00", [37 x i8] zeroinitializer }, align 32
@mc13xxx_led_probe._entry_ptr.14 = internal global ptr @mc13xxx_led_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"leds\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"led-control\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"linux,default-trigger\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mc13xxx-led\00", [20 x i8] zeroinitializer }, align 32
@mc13xxx_led_id_table = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"mc13783-led\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mc13783_led_devtype to i32) }, %struct.platform_device_id { [20 x i8] c"mc13892-led\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mc13892_led_devtype to i32) }, %struct.platform_device_id { [20 x i8] c"mc34708-led\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mc34708_led_devtype to i32) }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@mc13783_led_devtype = internal constant { %struct.mc13xxx_led_devtype, [16 x i8] } { %struct.mc13xxx_led_devtype { i32 0, i32 11, i32 6, i32 51 }, [16 x i8] zeroinitializer }, align 32
@mc13892_led_devtype = internal constant { %struct.mc13xxx_led_devtype, [16 x i8] } { %struct.mc13xxx_led_devtype { i32 12, i32 17, i32 4, i32 51 }, [16 x i8] zeroinitializer }, align 32
@mc34708_led_devtype = internal constant { %struct.mc13xxx_led_devtype, [16 x i8] } { %struct.mc13xxx_led_devtype { i32 18, i32 19, i32 1, i32 54 }, [16 x i8] zeroinitializer }, align 32
@switch.table.mc13xxx_led_set = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 0, i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0], [48 x i8] zeroinitializer }, align 32
@switch.table.mc13xxx_led_set.21 = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 9, i32 13, i32 17, i32 6, i32 11, i32 16, i32 6, i32 11, i32 16, i32 6, i32 11, i32 16, i32 3, i32 15, i32 3, i32 3, i32 15, i32 3, i32 3, i32 15], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"mc13xxx_led_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 304, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 206, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 232, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 237, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 252, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 124, i32 58 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 128, i32 43 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 147, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 151, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 153, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 306, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"mc13xxx_led_id_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 296, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"mc13783_led_devtype\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 275, i32 41 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"mc13892_led_devtype\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 282, i32 41 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"mc34708_led_devtype\00", align 1
@___asan_gen_.92 = private constant [31 x i8] c"../drivers/leds/leds-mc13783.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 289, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant [29 x i8] c"switch.table.mc13xxx_led_set\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [32 x i8] c"switch.table.mc13xxx_led_set.21\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_mc13xxx_led_driver_exit, ptr @__initcall__kmod_leds_mc13783__187_311_mc13xxx_led_driver_init6, ptr @mc13xxx_led_driver_exit, ptr @mc13xxx_led_probe._entry, ptr @mc13xxx_led_probe._entry.12, ptr @mc13xxx_led_probe._entry.5, ptr @mc13xxx_led_probe._entry.8, ptr @mc13xxx_led_probe._entry_ptr, ptr @mc13xxx_led_probe._entry_ptr.11, ptr @mc13xxx_led_probe._entry_ptr.14, ptr @mc13xxx_led_probe._entry_ptr.7, ptr @mc13xxx_led_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @mc13xxx_led_id_table, ptr @mc13783_led_devtype, ptr @mc13892_led_devtype, ptr @mc34708_led_devtype, ptr @switch.table.mc13xxx_led_set, ptr @switch.table.mc13xxx_led_set.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_led_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_led_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_led_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_led_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_led_devtype to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13892_led_devtype to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc34708_led_devtype to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mc13xxx_led_set to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mc13xxx_led_set.21 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @mc13xxx_led_driver, ptr noundef nonnull @mc13xxx_led_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mc13xxx_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mc13xxx_led_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_led_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %6 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %10 = inttoptr i32 %9 to ptr
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup112_crit_edge, label %if.end

entry.cleanup112_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

if.end:                                           ; preds = %entry
  %devtype4 = getelementptr inbounds %struct.mc13xxx_leds, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %devtype4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %devtype4, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %dev_of_node.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

dev_of_node.exit:                                 ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %dev_of_node.exit.if.else_crit_edge, label %if.then8

dev_of_node.exit.if.else_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then8:                                         ; preds = %dev_of_node.exit
  %call9 = tail call fastcc ptr @mc13xxx_led_probe_dt(ptr noundef %pdev) #9
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.then8.if.end17_crit_edge

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call9 to i32
  br label %cleanup112

if.else:                                          ; preds = %dev_of_node.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %if.else.cleanup112_crit_edge, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.else.cleanup112_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.then8.if.end17_crit_edge
  %pdata.0 = phi ptr [ %call9, %if.then8.if.end17_crit_edge ], [ %1, %if.else.if.end17_crit_edge ]
  %num_leds = getelementptr inbounds %struct.mc13xxx_leds_platform_data, ptr %pdata.0, i32 0, i32 1
  %19 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_leds, align 4
  %num_leds18 = getelementptr inbounds %struct.mc13xxx_leds, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %num_leds18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %num_leds18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp slt i32 %20, 1
  br i1 %cmp, label %if.end17.do.end_crit_edge, label %lor.lhs.false

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end17
  %led_max = getelementptr inbounds %struct.mc13xxx_led_devtype, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %led_max to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %led_max, align 4
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %10, align 4
  %sub = add i32 %23, 1
  %add = sub i32 %sub, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add)
  %cmp21 = icmp sgt i32 %20, %add
  br i1 %cmp21, label %lor.lhs.false.do.end_crit_edge, label %if.end24

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end17.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %20) #10
  br label %cleanup112

if.end24:                                         ; preds = %lor.lhs.false
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 408) #6
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !62

devm_kcalloc.exit.thread:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %led205 = getelementptr inbounds %struct.mc13xxx_leds, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %led205 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %led205, align 4
  br label %cleanup112

devm_kcalloc.exit:                                ; preds = %if.end24
  %29 = extractvalue { i32, i1 } %26, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %29, i32 noundef 3520) #6
  %led = getelementptr inbounds %struct.mc13xxx_leds, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %led to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i.i, ptr %led, align 4
  %tobool28.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool28.not, label %devm_kcalloc.exit.cleanup112_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup112_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %num_regs = getelementptr inbounds %struct.mc13xxx_led_devtype, ptr %10, i32 0, i32 2
  %31 = ptrtoint ptr %num_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp31223 = icmp sgt i32 %32, 0
  br i1 %cmp31223, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.cond38.preheader_crit_edge

for.cond.preheader.for.cond38.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond38.preheader

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0224, 1
  %33 = ptrtoint ptr %num_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_regs, align 4
  %cmp31 = icmp slt i32 %inc, %34
  br i1 %cmp31, label %for.cond.for.body_crit_edge, label %for.cond.for.cond38.preheader_crit_edge

for.cond.for.cond38.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond38.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond38.preheader:                             ; preds = %for.cond.for.cond38.preheader_crit_edge, %for.cond.preheader.for.cond38.preheader_crit_edge
  %spec.select = phi i32 [ -61, %for.cond.preheader.for.cond38.preheader_crit_edge ], [ 0, %for.cond.for.cond38.preheader_crit_edge ]
  %35 = ptrtoint ptr %num_leds18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_leds18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp40225 = icmp sgt i32 %36, 0
  br i1 %cmp40225, label %for.cond38.preheader.for.body41_crit_edge, label %for.cond38.preheader.cleanup112_crit_edge

for.cond38.preheader.cleanup112_crit_edge:        ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

for.cond38.preheader.for.body41_crit_edge:        ; preds = %for.cond38.preheader
  br label %for.body41

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0224 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %37 = ptrtoint ptr %devtype4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %devtype4, align 4
  %ledctrl_base = getelementptr inbounds %struct.mc13xxx_led_devtype, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %ledctrl_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ledctrl_base, align 4
  %add33 = add i32 %40, %i.0224
  %arrayidx = getelementptr %struct.mc13xxx_leds_platform_data, ptr %pdata.0, i32 0, i32 2, i32 %i.0224
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %call34 = tail call i32 @mc13xxx_reg_write(ptr noundef %5, i32 noundef %add33, i32 noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.cond, label %for.body.cleanup112_crit_edge

for.body.cleanup112_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

for.body41:                                       ; preds = %for.inc102.for.body41_crit_edge, %for.cond38.preheader.for.body41_crit_edge
  %init_led.0227 = phi i32 [ %or, %for.inc102.for.body41_crit_edge ], [ 0, %for.cond38.preheader.for.body41_crit_edge ]
  %i.1226 = phi i32 [ %inc103, %for.inc102.for.body41_crit_edge ], [ 0, %for.cond38.preheader.for.body41_crit_edge ]
  %43 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdata.0, align 4
  %arrayidx43 = getelementptr %struct.mc13xxx_led_platform_data, ptr %44, i32 %i.1226
  %45 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx43, align 4
  %name47 = getelementptr %struct.mc13xxx_led_platform_data, ptr %44, i32 %i.1226, i32 1
  %47 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name47, align 4
  %default_trigger = getelementptr %struct.mc13xxx_led_platform_data, ptr %44, i32 %i.1226, i32 2
  %49 = ptrtoint ptr %default_trigger to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %default_trigger, align 4
  %51 = ptrtoint ptr %led_max to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %led_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %52)
  %cmp51 = icmp sgt i32 %46, %52
  br i1 %cmp51, label %for.body41.do.end58_crit_edge, label %lor.lhs.false52

for.body41.do.end58_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

lor.lhs.false52:                                  ; preds = %for.body41
  %53 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %54)
  %cmp54 = icmp slt i32 %46, %54
  br i1 %cmp54, label %lor.lhs.false52.do.end58_crit_edge, label %if.end59

lor.lhs.false52.do.end58_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

do.end58:                                         ; preds = %lor.lhs.false52.do.end58_crit_edge, %for.body41.do.end58_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %46) #10
  br label %while.cond.preheader

if.end59:                                         ; preds = %lor.lhs.false52
  %shl = shl nuw i32 1, %46
  %and = and i32 %shl, %init_led.0227
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.end65, label %do.end64

do.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %46) #10
  br label %while.cond.preheader

if.end65:                                         ; preds = %if.end59
  %55 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %led, align 4
  %id69 = getelementptr %struct.mc13xxx_led, ptr %56, i32 %i.1226, i32 1
  %57 = ptrtoint ptr %id69 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %46, ptr %id69, align 4
  %58 = load ptr, ptr %led, align 4
  %leds72 = getelementptr %struct.mc13xxx_led, ptr %58, i32 %i.1226, i32 2
  %59 = ptrtoint ptr %leds72 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %leds72, align 4
  %60 = load ptr, ptr %led, align 4
  %arrayidx74 = getelementptr %struct.mc13xxx_led, ptr %60, i32 %i.1226
  %61 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %48, ptr %arrayidx74, align 4
  %62 = load ptr, ptr %led, align 4
  %default_trigger79 = getelementptr %struct.mc13xxx_led, ptr %62, i32 %i.1226, i32 0, i32 14
  %63 = ptrtoint ptr %default_trigger79 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %50, ptr %default_trigger79, align 4
  %64 = load ptr, ptr %led, align 4
  %flags = getelementptr %struct.mc13xxx_led, ptr %64, i32 %i.1226, i32 0, i32 3
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 65536, ptr %flags, align 4
  %66 = load ptr, ptr %led, align 4
  %brightness_set_blocking = getelementptr %struct.mc13xxx_led, ptr %66, i32 %i.1226, i32 0, i32 6
  %67 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @mc13xxx_led_set, ptr %brightness_set_blocking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %68 = icmp ult i32 %46, 3
  %69 = add i32 %46, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %69)
  %70 = icmp ult i32 %69, 9
  %spec.select.i = select i1 %70, i32 31, i32 63
  %retval.0.i200 = select i1 %68, i32 15, i32 %spec.select.i
  %71 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %led, align 4
  %max_brightness = getelementptr %struct.mc13xxx_led, ptr %72, i32 %i.1226, i32 0, i32 2
  %73 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %retval.0.i200, ptr %max_brightness, align 4
  %74 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %parent, align 8
  %76 = load ptr, ptr %led, align 4
  %arrayidx92 = getelementptr %struct.mc13xxx_led, ptr %76, i32 %i.1226
  %call.i201 = tail call i32 @led_classdev_register_ext(ptr noundef %75, ptr noundef %arrayidx92, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool95.not = icmp eq i32 %call.i201, 0
  br i1 %tobool95.not, label %for.inc102, label %do.end99

do.end99:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %46) #10
  br label %while.cond.preheader

for.inc102:                                       ; preds = %if.end65
  %or = or i32 %shl, %init_led.0227
  %inc103 = add nuw nsw i32 %i.1226, 1
  %77 = ptrtoint ptr %num_leds18 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_leds18, align 4
  %cmp40 = icmp slt i32 %inc103, %78
  br i1 %cmp40, label %for.inc102.for.body41_crit_edge, label %for.inc102.cleanup112_crit_edge

for.inc102.cleanup112_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

for.inc102.for.body41_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body41

while.cond.preheader:                             ; preds = %do.end99, %do.end64, %do.end58
  %ret.3.ph = phi i32 [ -22, %do.end58 ], [ -22, %do.end64 ], [ %call.i201, %do.end99 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1226)
  %cmp107231.not = icmp eq i32 %i.1226, 0
  br i1 %cmp107231.not, label %while.cond.preheader.cleanup112_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup112_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec232.in = phi i32 [ %dec232, %while.body.while.body_crit_edge ], [ %i.1226, %while.cond.preheader.while.body_crit_edge ]
  %dec232 = add nsw i32 %dec232.in, -1
  %79 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %led, align 4
  %arrayidx109 = getelementptr %struct.mc13xxx_led, ptr %80, i32 %dec232
  tail call void @led_classdev_unregister(ptr noundef %arrayidx109) #6
  %cmp107.not = icmp eq i32 %dec232, 0
  br i1 %cmp107.not, label %while.body.cleanup112_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.cleanup112_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

cleanup112:                                       ; preds = %while.body.cleanup112_crit_edge, %while.cond.preheader.cleanup112_crit_edge, %for.inc102.cleanup112_crit_edge, %for.body.cleanup112_crit_edge, %for.cond38.preheader.cleanup112_crit_edge, %devm_kcalloc.exit.cleanup112_crit_edge, %devm_kcalloc.exit.thread, %do.end, %if.else.cleanup112_crit_edge, %if.then11, %entry.cleanup112_crit_edge
  %retval.0 = phi i32 [ %18, %if.then11 ], [ -22, %do.end ], [ -12, %entry.cleanup112_crit_edge ], [ -61, %if.else.cleanup112_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup112_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %ret.3.ph, %while.cond.preheader.cleanup112_crit_edge ], [ %spec.select, %for.cond38.preheader.cleanup112_crit_edge ], [ %ret.3.ph, %while.body.cleanup112_crit_edge ], [ 0, %for.inc102.cleanup112_crit_edge ], [ %call34, %for.body.cleanup112_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mc13xxx_led_probe_dt(ptr noundef %pdev) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %str = alloca ptr, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.end:                                           ; preds = %entry
  %parent4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent4, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.dev_of_node.exit_crit_edge, label %if.end.i

if.end.dev_of_node.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %if.end.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ null, %if.end.dev_of_node.exit_crit_edge ]
  %call6 = tail call ptr @of_get_child_by_name(ptr noundef %retval.0.i, ptr noundef nonnull @.str.15) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %dev_of_node.exit.cond.true_crit_edge, label %if.end9

dev_of_node.exit.cond.true_crit_edge:             ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

if.end9:                                          ; preds = %dev_of_node.exit
  %led_control = getelementptr inbounds %struct.mc13xxx_leds_platform_data, ptr %call.i, i32 0, i32 2
  %devtype = getelementptr inbounds %struct.mc13xxx_leds, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype, align 4
  %num_regs = getelementptr inbounds %struct.mc13xxx_led_devtype, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %num_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_regs, align 4
  %call.i84 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call6, ptr noundef nonnull @.str.16, ptr noundef %led_control, i32 noundef %9, i32 noundef 0) #6
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i84, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i84)
  %tobool11.not = icmp sgt i32 %call.i84, -1
  br i1 %tobool11.not, label %if.end13, label %if.end9.cond.true_crit_edge

if.end9.cond.true_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

if.end13:                                         ; preds = %if.end9
  %call.i85 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call6, ptr noundef null) #6
  %cmp.not5.i = icmp eq ptr %call.i85, null
  br i1 %cmp.not5.i, label %if.end13.of_get_available_child_count.exit_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.of_get_available_child_count.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_available_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end13.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i85, %if.end13.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call6, ptr noundef nonnull %child.06.i) #6
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.of_get_available_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.of_get_available_child_count.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_available_child_count.exit

of_get_available_child_count.exit:                ; preds = %for.body.i.of_get_available_child_count.exit_crit_edge, %if.end13.of_get_available_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end13.of_get_available_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_available_child_count.exit_crit_edge ]
  %num_leds = getelementptr inbounds %struct.mc13xxx_leds_platform_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %num_leds to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %num.0.lcssa.i, ptr %num_leds, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i, i32 12) #6
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !62

devm_kcalloc.exit.thread:                         ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %call.i, align 4
  br label %cond.true

devm_kcalloc.exit:                                ; preds = %of_get_available_child_count.exit
  %15 = extractvalue { i32, i1 } %12, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %15, i32 noundef 3520) #6
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i, ptr %call.i, align 4
  %tobool18.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool18.not, label %devm_kcalloc.exit.cond.true_crit_edge, label %if.end20

devm_kcalloc.exit.cond.true_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

if.end20:                                         ; preds = %devm_kcalloc.exit
  %call21 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call6, ptr noundef null) #6
  %cmp.not91 = icmp eq ptr %call21, null
  br i1 %cmp.not91, label %for.end.thread, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

for.end.thread:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %num_leds to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %num_leds, align 4
  br label %cond.true

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end20.for.body_crit_edge
  %i.093 = phi i32 [ %i.1, %cleanup.for.body_crit_edge ], [ 0, %if.end20.for.body_crit_edge ]
  %child.092 = phi ptr [ %call41, %cleanup.for.body_crit_edge ], [ %call21, %if.end20.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str) #6
  %18 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %str, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %tmp, align 4, !annotation !63
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.092, ptr noundef nonnull @.str.17, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool23.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool23.not, label %if.end25, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %for.body
  %20 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devtype, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmp, align 4
  %add = add i32 %25, %23
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %arrayidx = getelementptr %struct.mc13xxx_led_platform_data, ptr %27, i32 %i.093
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %arrayidx, align 4
  %call28 = call i32 @of_property_read_string(ptr noundef nonnull %child.092, ptr noundef nonnull @.str.18, ptr noundef nonnull %str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %str, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %name = getelementptr %struct.mc13xxx_led_platform_data, ptr %32, i32 %i.093, i32 1
  %33 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %name, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end25.if.end33_crit_edge
  %call34 = call i32 @of_property_read_string(ptr noundef nonnull %child.092, ptr noundef nonnull @.str.19, ptr noundef nonnull %str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %str, align 4
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %default_trigger = getelementptr %struct.mc13xxx_led_platform_data, ptr %37, i32 %i.093, i32 2
  %38 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %default_trigger, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %inc = add i32 %i.093, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %for.body.cleanup_crit_edge
  %i.1 = phi i32 [ %inc, %if.end39 ], [ %i.093, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str) #6
  %call41 = call ptr @of_get_next_available_child(ptr noundef nonnull %call6, ptr noundef nonnull %child.092) #6
  %cmp.not = icmp eq ptr %call41, null
  br i1 %cmp.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  %39 = ptrtoint ptr %num_leds to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.1, ptr %num_leds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp43 = icmp sgt i32 %i.1, 0
  br i1 %cmp43, label %out_node_put, label %for.end.cond.true_crit_edge

for.end.cond.true_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

out_node_put:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %call6) #6
  br label %cleanup47

cond.true:                                        ; preds = %for.end.cond.true_crit_edge, %for.end.thread, %devm_kcalloc.exit.cond.true_crit_edge, %devm_kcalloc.exit.thread, %if.end9.cond.true_crit_edge, %dev_of_node.exit.cond.true_crit_edge
  %ret.0.ph = phi i32 [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit.cond.true_crit_edge ], [ -61, %dev_of_node.exit.cond.true_crit_edge ], [ -61, %for.end.cond.true_crit_edge ], [ %10, %if.end9.cond.true_crit_edge ], [ -61, %for.end.thread ]
  call void @of_node_put(ptr noundef %call6) #6
  %40 = inttoptr i32 %ret.0.ph to ptr
  br label %cleanup47

cleanup47:                                        ; preds = %cond.true, %out_node_put, %entry.cleanup47_crit_edge
  %retval.0 = phi ptr [ %40, %cond.true ], [ %call.i, %out_node_put ], [ inttoptr (i32 -12 to ptr), %entry.cleanup47_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_led_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.mc13xxx_led, ptr %led_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %2 = icmp ult i32 %1, 20
  br i1 %2, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/leds/leds-mc13783.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 102, 0\0A.popsection", ""() #6, !srcloc !64
  unreachable

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %leds1 = getelementptr inbounds %struct.mc13xxx_led, ptr %led_cdev, i32 0, i32 2
  %3 = ptrtoint ptr %leds1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %leds1, align 4
  %switch.gep = getelementptr inbounds [20 x i32], ptr @switch.table.mc13xxx_led_set, i32 0, i32 %1
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep61 = getelementptr inbounds [20 x i32], ptr @switch.table.mc13xxx_led_set.21, i32 0, i32 %1
  %6 = ptrtoint ptr %switch.gep61 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load62 = load i32, ptr %switch.gep61, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %devtype = getelementptr inbounds %struct.mc13xxx_leds, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %devtype, align 4
  %ledctrl_base = getelementptr inbounds %struct.mc13xxx_led_devtype, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %ledctrl_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ledctrl_base, align 4
  %add36 = add i32 %12, %switch.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %13 = icmp ult i32 %1, 3
  %14 = add nsw i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %15 = icmp ult i32 %14, 9
  %spec.select.i = select i1 %15, i32 31, i32 63
  %retval.0.i = select i1 %13, i32 15, i32 %spec.select.i
  %shl = shl i32 %retval.0.i, %switch.load62
  %shl38 = shl i32 %value, %switch.load62
  %call39 = tail call i32 @mc13xxx_reg_rmw(ptr noundef %8, i32 noundef %add36, i32 noundef %shl, i32 noundef %shl38) #6
  ret i32 %call39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_led_remove(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_leds = getelementptr inbounds %struct.mc13xxx_leds, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_leds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %led = getelementptr inbounds %struct.mc13xxx_leds, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led, align 4
  %arrayidx = getelementptr %struct.mc13xxx_led, ptr %5, i32 %i.05
  tail call void @led_classdev_unregister(ptr noundef %arrayidx) #6
  %inc = add nuw nsw i32 %i.05, 1
  %6 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_leds, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_leds_mc13783__187_311_mc13xxx_led_driver_init6, !1, !"__initcall__kmod_leds_mc13783__187_311_mc13xxx_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-mc13783.c", i32 311, i32 1}
!2 = !{ptr @__exitcall_mc13xxx_led_driver_exit, !1, !"__exitcall_mc13xxx_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-mc13783.c", i32 313, i32 1}
!5 = !{ptr @__UNIQUE_ID_author189, !6, !"__UNIQUE_ID_author189", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-mc13783.c", i32 314, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-mc13783.c", i32 315, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-mc13783.c", i32 206, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mc13xxx_led_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @mc13xxx_led_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-mc13783.c", i32 232, i32 4}
!20 = !{ptr @mc13xxx_led_probe._entry.5, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mc13xxx_led_probe._entry_ptr.7, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-mc13783.c", i32 237, i32 4}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mc13xxx_led_probe._entry.8, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mc13xxx_led_probe._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-mc13783.c", i32 252, i32 4}
!29 = !{ptr @mc13xxx_led_probe._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mc13xxx_led_probe._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-mc13783.c", i32 124, i32 58}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-mc13783.c", i32 128, i32 43}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-mc13783.c", i32 147, i32 35}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-mc13783.c", i32 151, i32 39}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-mc13783.c", i32 153, i32 39}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-mc13783.c", i32 306, i32 11}
!43 = !{ptr @mc13xxx_led_driver, !44, !"mc13xxx_led_driver", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-mc13783.c", i32 304, i32 31}
!45 = !{ptr @mc13xxx_led_id_table, !46, !"mc13xxx_led_id_table", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-mc13783.c", i32 296, i32 40}
!47 = !{ptr @mc13783_led_devtype, !48, !"mc13783_led_devtype", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-mc13783.c", i32 275, i32 41}
!49 = !{ptr @mc13892_led_devtype, !50, !"mc13892_led_devtype", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-mc13783.c", i32 282, i32 41}
!51 = !{ptr @mc34708_led_devtype, !52, !"mc34708_led_devtype", i1 false, i1 false}
!52 = !{!"../drivers/leds/leds-mc13783.c", i32 289, i32 41}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{!"auto-init"}
!64 = !{i64 2153115303, i64 2153115795, i64 2153115340, i64 2153115396, i64 2153115430, i64 2153115454, i64 2153115495, i64 2153115516, i64 2153115544, i64 2153115578}
