; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-da9052.c_pt.bc'
source_filename = "../drivers/leds/leds-da9052.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.led_platform_data = type { i32, ptr }
%struct.led_info = type { ptr, ptr, i32 }
%struct.da9052_led = type { %struct.led_classdev, ptr, i8, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.da9052 = type { ptr, ptr, %struct.mutex, %struct.completion, i32, ptr, i8, i32, ptr }

@__initcall__kmod_leds_da9052__187_187_da9052_led_driver_init6 = internal global ptr @da9052_led_driver_init, section ".initcall6.init", align 4
@da9052_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9052_led_probe, ptr @da9052_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9052_led_driver_exit = internal global ptr @da9052_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [64 x i8] c"leds_da9052.author=Dialog Semiconductor Ltd <dchen@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [58 x i8] c"leds_da9052.description=LED driver for Dialog DA9052 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [42 x i8] c"leds_da9052.file=drivers/leds/leds-da9052\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [24 x i8] c"leds_da9052.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9052-leds\00", [20 x i8] zeroinitializer }, align 32
@da9052_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9052_led_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-da9052.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9052_led_probe._entry_ptr = internal global ptr @da9052_led_probe._entry, section ".printk_index", align 4
@da9052_led_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No platform data for LED\0A\00", [38 x i8] zeroinitializer }, align 32
@da9052_led_probe._entry_ptr.8 = internal global ptr @da9052_led_probe._entry.6, section ".printk_index", align 4
@da9052_led_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register led %d\0A\00", [37 x i8] zeroinitializer }, align 32
@da9052_led_probe._entry_ptr.11 = internal global ptr @da9052_led_probe._entry.9, section ".printk_index", align 4
@da9052_led_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to init led %d\0A\00", [41 x i8] zeroinitializer }, align 32
@da9052_led_probe._entry_ptr.14 = internal global ptr @da9052_led_probe._entry.12, section ".printk_index", align 4
@da9052_led_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to configure GPIO LED%d\0A\00", [32 x i8] zeroinitializer }, align 32
@da9052_led_probe._entry_ptr.17 = internal global ptr @da9052_led_probe._entry.15, section ".printk_index", align 4
@led_reg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"OP", [30 x i8] zeroinitializer }, align 32
@da9052_set_led_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 50, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set led brightness, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"da9052_set_led_brightness\00", [38 x i8] zeroinitializer }, align 32
@da9052_set_led_brightness._entry_ptr = internal global ptr @da9052_set_led_brightness._entry, section ".printk_index", align 4
@da9052_configure_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 75, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to write GPIO 14-15 reg, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da9052_configure_leds\00", [42 x i8] zeroinitializer }, align 32
@da9052_configure_leds._entry_ptr = internal global ptr @da9052_configure_leds._entry, section ".printk_index", align 4
@da9052_configure_leds._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 84, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@da9052_configure_leds._entry_ptr.23 = internal global ptr @da9052_configure_leds._entry.22, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"da9052_led_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 179, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 181, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 101, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 107, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 129, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 137, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 144, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [8 x i8] c"led_reg\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 34, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 49, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 74, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private constant [30 x i8] c"../drivers/leds/leds-da9052.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 83, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_da9052_led_driver_exit, ptr @__initcall__kmod_leds_da9052__187_187_da9052_led_driver_init6, ptr @da9052_configure_leds._entry, ptr @da9052_configure_leds._entry.22, ptr @da9052_configure_leds._entry_ptr, ptr @da9052_configure_leds._entry_ptr.23, ptr @da9052_led_driver_exit, ptr @da9052_led_probe._entry, ptr @da9052_led_probe._entry.12, ptr @da9052_led_probe._entry.15, ptr @da9052_led_probe._entry.6, ptr @da9052_led_probe._entry.9, ptr @da9052_led_probe._entry_ptr, ptr @da9052_led_probe._entry_ptr.11, ptr @da9052_led_probe._entry_ptr.14, ptr @da9052_led_probe._entry_ptr.17, ptr @da9052_led_probe._entry_ptr.8, ptr @da9052_set_led_brightness._entry, ptr @da9052_set_led_brightness._entry_ptr, ptr @da9052_led_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @led_reg, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_led_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_led_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_led_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_led_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_reg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_set_led_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_configure_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_configure_leds._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9052_led_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9052_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9052_led_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 408) #5
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end11.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !62

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end11
  %14 = extractvalue { i32, i1 } %12, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %14, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp17155 = icmp sgt i32 %16, 0
  br i1 %cmp17155, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %leds = getelementptr inbounds %struct.led_platform_data, ptr %9, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %leds, align 4
  %arrayidx = getelementptr %struct.led_info, ptr %18, i32 %i.0156
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %arrayidx18 = getelementptr %struct.da9052_led, ptr %call5.i.i, i32 %i.0156
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %arrayidx18, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %arrayidx18, i32 0, i32 6
  %22 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @da9052_led_set, ptr %brightness_set_blocking, align 4
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %arrayidx18, i32 0, i32 1
  %23 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %brightness, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %arrayidx18, i32 0, i32 2
  %24 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 95, ptr %max_brightness, align 4
  %25 = load ptr, ptr %leds, align 4
  %flags = getelementptr %struct.led_info, ptr %25, i32 %i.0156, i32 2
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %conv = trunc i32 %27 to i8
  %led_index = getelementptr %struct.da9052_led, ptr %call5.i.i, i32 %i.0156, i32 2
  %28 = ptrtoint ptr %led_index to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %led_index, align 4
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 8
  %driver_data.i136 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i136 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i136, align 4
  %da905233 = getelementptr %struct.da9052_led, ptr %call5.i.i, i32 %i.0156, i32 1
  %33 = ptrtoint ptr %da905233 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %da905233, align 4
  %call.i = tail call i32 @led_classdev_register_ext(ptr noundef %30, ptr noundef %arrayidx18, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool39.not = icmp eq i32 %call.i, 0
  br i1 %tobool39.not, label %if.end48, label %do.end43

do.end43:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %led_index to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %led_index, align 4
  %conv47 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv47) #8
  br label %err_register

if.end48:                                         ; preds = %for.body
  %36 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %brightness, align 4
  %38 = ptrtoint ptr %da905233 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %da905233, align 4
  %40 = ptrtoint ptr %led_index to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %led_index, align 4
  %idxprom.i = zext i8 %41 to i32
  %arrayidx.i = getelementptr [2 x i8], ptr @led_reg, i32 0, i32 %idxprom.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i8 %43 to i32
  %conv.i = and i32 %37, 127
  %conv1.i.i = or i32 %conv.i, 128
  %call.i.i = tail call i32 @regmap_write(ptr noundef %45, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end48.da9052_set_led_brightness.exit.thread_crit_edge, label %if.end.i.i137

if.end48.da9052_set_led_brightness.exit.thread_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_set_led_brightness.exit.thread

if.end.i.i137:                                    ; preds = %if.end48
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %39, i32 0, i32 8
  %46 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.end.i.i137.da9052_set_led_brightness.exit_crit_edge, label %da9052_reg_write.exit.i

if.end.i.i137.da9052_set_led_brightness.exit_crit_edge: ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_set_led_brightness.exit

da9052_reg_write.exit.i:                          ; preds = %if.end.i.i137
  %call5.i.i138 = tail call i32 %47(ptr noundef %39, i8 noundef zeroext %43) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i138)
  %cmp.i = icmp slt i32 %call5.i.i138, 0
  br i1 %cmp.i, label %da9052_reg_write.exit.i.da9052_set_led_brightness.exit.thread_crit_edge, label %da9052_reg_write.exit.i.da9052_set_led_brightness.exit_crit_edge

da9052_reg_write.exit.i.da9052_set_led_brightness.exit_crit_edge: ; preds = %da9052_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_set_led_brightness.exit

da9052_reg_write.exit.i.da9052_set_led_brightness.exit.thread_crit_edge: ; preds = %da9052_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_set_led_brightness.exit.thread

da9052_set_led_brightness.exit.thread:            ; preds = %da9052_reg_write.exit.i.da9052_set_led_brightness.exit.thread_crit_edge, %if.end48.da9052_set_led_brightness.exit.thread_crit_edge
  %retval.0.i9.i = phi i32 [ %call5.i.i138, %da9052_reg_write.exit.i.da9052_set_led_brightness.exit.thread_crit_edge ], [ %call.i.i, %if.end48.da9052_set_led_brightness.exit.thread_crit_edge ]
  %48 = ptrtoint ptr %da905233 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %da905233, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i9.i) #8
  br label %do.end58

da9052_set_led_brightness.exit:                   ; preds = %da9052_reg_write.exit.i.da9052_set_led_brightness.exit_crit_edge, %if.end.i.i137.da9052_set_led_brightness.exit_crit_edge
  %retval.0.i10.i = phi i32 [ %call5.i.i138, %da9052_reg_write.exit.i.da9052_set_led_brightness.exit_crit_edge ], [ %call.i.i, %if.end.i.i137.da9052_set_led_brightness.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i10.i)
  %tobool54.not = icmp eq i32 %retval.0.i10.i, 0
  br i1 %tobool54.not, label %da9052_set_led_brightness.exit.for.inc_crit_edge, label %da9052_set_led_brightness.exit.do.end58_crit_edge

da9052_set_led_brightness.exit.do.end58_crit_edge: ; preds = %da9052_set_led_brightness.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end58

da9052_set_led_brightness.exit.for.inc_crit_edge: ; preds = %da9052_set_led_brightness.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end58:                                         ; preds = %da9052_set_led_brightness.exit.do.end58_crit_edge, %da9052_set_led_brightness.exit.thread
  %52 = ptrtoint ptr %led_index to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %led_index, align 4
  %conv62 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %conv62) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end58, %da9052_set_led_brightness.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0156, 1
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %9, align 4
  %cmp17 = icmp slt i32 %inc, %55
  br i1 %cmp17, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %da905264 = getelementptr inbounds %struct.da9052_led, ptr %call5.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %da905264 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %da905264, align 4
  %regmap.i.i139 = getelementptr inbounds %struct.da9052, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %regmap.i.i139 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i.i139, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 28, i32 noundef 15, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i140 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i140, label %for.end.da9052_configure_leds.exit.thread_crit_edge, label %if.end.i.i143

for.end.da9052_configure_leds.exit.thread_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_configure_leds.exit.thread

if.end.i.i143:                                    ; preds = %for.end
  %fix_io.i.i141 = getelementptr inbounds %struct.da9052, ptr %57, i32 0, i32 8
  %60 = ptrtoint ptr %fix_io.i.i141 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fix_io.i.i141, align 4
  %tobool.not.i.i142 = icmp eq ptr %61, null
  br i1 %tobool.not.i.i142, label %if.end.i.i143.if.end.i_crit_edge, label %da9052_reg_update.exit.i

if.end.i.i143.if.end.i_crit_edge:                 ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

da9052_reg_update.exit.i:                         ; preds = %if.end.i.i143
  %call6.i.i = tail call i32 %61(ptr noundef %57, i8 noundef zeroext 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i144 = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i144, label %da9052_reg_update.exit.i.da9052_configure_leds.exit.thread_crit_edge, label %da9052_reg_update.exit.i.if.end.i_crit_edge

da9052_reg_update.exit.i.if.end.i_crit_edge:      ; preds = %da9052_reg_update.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

da9052_reg_update.exit.i.da9052_configure_leds.exit.thread_crit_edge: ; preds = %da9052_reg_update.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_configure_leds.exit.thread

if.end.i:                                         ; preds = %da9052_reg_update.exit.i.if.end.i_crit_edge, %if.end.i.i143.if.end.i_crit_edge
  %62 = ptrtoint ptr %regmap.i.i139 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i.i139, align 4
  %call.i.i22.i = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 28, i32 noundef 240, i32 noundef 160, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22.i)
  %cmp.i23.i = icmp slt i32 %call.i.i22.i, 0
  br i1 %cmp.i23.i, label %if.end.i.da9052_configure_leds.exit.thread_crit_edge, label %if.end.i26.i

if.end.i.da9052_configure_leds.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_configure_leds.exit.thread

if.end.i26.i:                                     ; preds = %if.end.i
  %64 = ptrtoint ptr %fix_io.i.i141 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fix_io.i.i141, align 4
  %tobool.not.i25.i = icmp eq ptr %65, null
  br i1 %tobool.not.i25.i, label %if.end.i26.i.da9052_configure_leds.exit_crit_edge, label %da9052_reg_update.exit30.i

if.end.i26.i.da9052_configure_leds.exit_crit_edge: ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_configure_leds.exit

da9052_reg_update.exit30.i:                       ; preds = %if.end.i26.i
  %call6.i27.i = tail call i32 %65(ptr noundef %57, i8 noundef zeroext 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i27.i)
  %cmp3.i = icmp slt i32 %call6.i27.i, 0
  br i1 %cmp3.i, label %da9052_reg_update.exit30.i.da9052_configure_leds.exit.thread_crit_edge, label %da9052_reg_update.exit30.i.da9052_configure_leds.exit_crit_edge

da9052_reg_update.exit30.i.da9052_configure_leds.exit_crit_edge: ; preds = %da9052_reg_update.exit30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_configure_leds.exit

da9052_reg_update.exit30.i.da9052_configure_leds.exit.thread_crit_edge: ; preds = %da9052_reg_update.exit30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_configure_leds.exit.thread

da9052_configure_leds.exit.thread:                ; preds = %da9052_reg_update.exit30.i.da9052_configure_leds.exit.thread_crit_edge, %if.end.i.da9052_configure_leds.exit.thread_crit_edge, %da9052_reg_update.exit.i.da9052_configure_leds.exit.thread_crit_edge, %for.end.da9052_configure_leds.exit.thread_crit_edge
  %retval.0.i2939.sink.i = phi i32 [ %call6.i.i, %da9052_reg_update.exit.i.da9052_configure_leds.exit.thread_crit_edge ], [ %call.i.i.i, %for.end.da9052_configure_leds.exit.thread_crit_edge ], [ %call6.i27.i, %da9052_reg_update.exit30.i.da9052_configure_leds.exit.thread_crit_edge ], [ %call.i.i22.i, %if.end.i.da9052_configure_leds.exit.thread_crit_edge ]
  %66 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i2939.sink.i) #8
  br label %do.end70

da9052_configure_leds.exit:                       ; preds = %da9052_reg_update.exit30.i.da9052_configure_leds.exit_crit_edge, %if.end.i26.i.da9052_configure_leds.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i27.i, %da9052_reg_update.exit30.i.da9052_configure_leds.exit_crit_edge ], [ %call.i.i22.i, %if.end.i26.i.da9052_configure_leds.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool66.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool66.not, label %if.end72, label %da9052_configure_leds.exit.do.end70_crit_edge

da9052_configure_leds.exit.do.end70_crit_edge:    ; preds = %da9052_configure_leds.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end70

do.end70:                                         ; preds = %da9052_configure_leds.exit.do.end70_crit_edge, %da9052_configure_leds.exit.thread
  %retval.0.i152 = phi i32 [ %retval.0.i2939.sink.i, %da9052_configure_leds.exit.thread ], [ %retval.0.i, %da9052_configure_leds.exit.do.end70_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i152) #8
  br label %err_register

if.end72:                                         ; preds = %da9052_configure_leds.exit
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call5.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_register:                                     ; preds = %do.end70, %do.end43
  %i.0154 = phi i32 [ %i.0156, %do.end43 ], [ %i.0.lcssa, %do.end70 ]
  %error.0 = phi i32 [ %call.i, %do.end43 ], [ %retval.0.i152, %do.end70 ]
  %i.1157 = add i32 %i.0154, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1157)
  %cmp74158 = icmp sgt i32 %i.1157, -1
  br i1 %cmp74158, label %err_register.for.body76_crit_edge, label %err_register.cleanup_crit_edge

err_register.cleanup_crit_edge:                   ; preds = %err_register
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_register.for.body76_crit_edge:                ; preds = %err_register
  br label %for.body76

for.body76:                                       ; preds = %for.body76.for.body76_crit_edge, %err_register.for.body76_crit_edge
  %i.1159 = phi i32 [ %i.1, %for.body76.for.body76_crit_edge ], [ %i.1157, %err_register.for.body76_crit_edge ]
  %arrayidx77 = getelementptr %struct.da9052_led, ptr %call5.i.i, i32 %i.1159
  tail call void @led_classdev_unregister(ptr noundef %arrayidx77) #5
  %i.1 = add nsw i32 %i.1159, -1
  %cmp74.not = icmp eq i32 %i.1159, 0
  br i1 %cmp74.not, label %for.body76.cleanup_crit_edge, label %for.body76.for.body76_crit_edge

for.body76.for.body76_crit_edge:                  ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body76

for.body76.cleanup_crit_edge:                     ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body76.cleanup_crit_edge, %err_register.cleanup_crit_edge, %if.end72, %devm_kcalloc.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ 0, %if.end72 ], [ -19, %do.end ], [ -19, %do.end9 ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ %error.0, %err_register.cleanup_crit_edge ], [ %error.0, %for.body76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_led_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %da9052_set_led_brightness.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %da9052_set_led_brightness.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.da9052_led, ptr %1, i32 %i.013
  %da9052.i = getelementptr %struct.da9052_led, ptr %1, i32 %i.013, i32 1
  %14 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %da9052.i, align 4
  %led_index.i = getelementptr %struct.da9052_led, ptr %1, i32 %i.013, i32 2
  %16 = ptrtoint ptr %led_index.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %led_index.i, align 4
  %idxprom.i = zext i8 %17 to i32
  %arrayidx.i = getelementptr [2 x i8], ptr @led_reg, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i8 %19 to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %conv.i.i, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.body.do.end.i_crit_edge, label %if.end.i.i

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end.i.i:                                       ; preds = %for.body
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %15, i32 0, i32 8
  %22 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.i.da9052_set_led_brightness.exit_crit_edge, label %da9052_reg_write.exit.i

if.end.i.i.da9052_set_led_brightness.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_set_led_brightness.exit

da9052_reg_write.exit.i:                          ; preds = %if.end.i.i
  %call5.i.i = tail call i32 %23(ptr noundef %15, i8 noundef zeroext %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i, label %da9052_reg_write.exit.i.do.end.i_crit_edge, label %da9052_reg_write.exit.i.da9052_set_led_brightness.exit_crit_edge

da9052_reg_write.exit.i.da9052_set_led_brightness.exit_crit_edge: ; preds = %da9052_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_set_led_brightness.exit

da9052_reg_write.exit.i.do.end.i_crit_edge:       ; preds = %da9052_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %da9052_reg_write.exit.i.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %retval.0.i9.i = phi i32 [ %call5.i.i, %da9052_reg_write.exit.i.do.end.i_crit_edge ], [ %call.i.i, %for.body.do.end.i_crit_edge ]
  %24 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %da9052.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i9.i) #8
  br label %da9052_set_led_brightness.exit

da9052_set_led_brightness.exit:                   ; preds = %do.end.i, %da9052_reg_write.exit.i.da9052_set_led_brightness.exit_crit_edge, %if.end.i.i.da9052_set_led_brightness.exit_crit_edge
  tail call void @led_classdev_unregister(ptr noundef %arrayidx) #5
  %inc = add nuw nsw i32 %i.013, 1
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %11, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %da9052_set_led_brightness.exit.for.body_crit_edge, label %da9052_set_led_brightness.exit.for.end_crit_edge

da9052_set_led_brightness.exit.for.end_crit_edge: ; preds = %da9052_set_led_brightness.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

da9052_set_led_brightness.exit.for.body_crit_edge: ; preds = %da9052_set_led_brightness.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %da9052_set_led_brightness.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_led_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %da9052.i = getelementptr inbounds %struct.da9052_led, ptr %led_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da9052.i, align 4
  %led_index.i = getelementptr inbounds %struct.da9052_led, ptr %led_cdev, i32 0, i32 2
  %2 = ptrtoint ptr %led_index.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %led_index.i, align 4
  %idxprom.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [2 x i8], ptr @led_reg, i32 0, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i8 %5 to i32
  %conv.i = and i32 %value, 127
  %conv1.i.i = or i32 %conv.i, 128
  %call.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.do.end.i_crit_edge, label %if.end.i.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end.i.i:                                       ; preds = %entry
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i.da9052_set_led_brightness.exit_crit_edge, label %da9052_reg_write.exit.i

if.end.i.i.da9052_set_led_brightness.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_set_led_brightness.exit

da9052_reg_write.exit.i:                          ; preds = %if.end.i.i
  %call5.i.i = tail call i32 %9(ptr noundef %1, i8 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i, label %da9052_reg_write.exit.i.do.end.i_crit_edge, label %da9052_reg_write.exit.i.da9052_set_led_brightness.exit_crit_edge

da9052_reg_write.exit.i.da9052_set_led_brightness.exit_crit_edge: ; preds = %da9052_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_set_led_brightness.exit

da9052_reg_write.exit.i.do.end.i_crit_edge:       ; preds = %da9052_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %da9052_reg_write.exit.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %retval.0.i9.i = phi i32 [ %call5.i.i, %da9052_reg_write.exit.i.do.end.i_crit_edge ], [ %call.i.i, %entry.do.end.i_crit_edge ]
  %10 = ptrtoint ptr %da9052.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %da9052.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i9.i) #8
  br label %da9052_set_led_brightness.exit

da9052_set_led_brightness.exit:                   ; preds = %do.end.i, %da9052_reg_write.exit.i.da9052_set_led_brightness.exit_crit_edge, %if.end.i.i.da9052_set_led_brightness.exit_crit_edge
  %retval.0.i10.i = phi i32 [ %retval.0.i9.i, %do.end.i ], [ %call5.i.i, %da9052_reg_write.exit.i.da9052_set_led_brightness.exit_crit_edge ], [ %call.i.i, %if.end.i.i.da9052_set_led_brightness.exit_crit_edge ]
  ret i32 %retval.0.i10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !50, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_leds_da9052__187_187_da9052_led_driver_init6, !1, !"__initcall__kmod_leds_da9052__187_187_da9052_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-da9052.c", i32 187, i32 1}
!2 = !{ptr @__exitcall_da9052_led_driver_exit, !1, !"__exitcall_da9052_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-da9052.c", i32 189, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-da9052.c", i32 190, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-da9052.c", i32 191, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-da9052.c", i32 181, i32 11}
!12 = !{ptr @da9052_led_driver, !13, !"da9052_led_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-da9052.c", i32 179, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-da9052.c", i32 101, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @da9052_led_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @da9052_led_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-da9052.c", i32 107, i32 3}
!24 = !{ptr @da9052_led_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @da9052_led_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-da9052.c", i32 129, i32 4}
!28 = !{ptr @da9052_led_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @da9052_led_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-da9052.c", i32 137, i32 4}
!32 = !{ptr @da9052_led_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @da9052_led_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-da9052.c", i32 144, i32 3}
!36 = !{ptr @da9052_led_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @da9052_led_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-da9052.c", i32 49, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @da9052_set_led_brightness._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @da9052_set_led_brightness._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @led_reg, !44, !"led_reg", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-da9052.c", i32 34, i32 22}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-da9052.c", i32 74, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @da9052_configure_leds._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @da9052_configure_leds._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @da9052_configure_leds._entry.22, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-da9052.c", i32 83, i32 3}
!52 = !{ptr @da9052_configure_leds._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
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
