; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-88pm860x.c_pt.bc'
source_filename = "../drivers/leds/leds-88pm860x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pm860x_led = type { %struct.led_classdev, ptr, ptr, %struct.mutex, [40 x i8], i32, i32, i8, i8, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pm860x_chip = type { ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }

@__initcall__kmod_leds_88pm860x__289_235_pm860x_led_driver_init6 = internal global ptr @pm860x_led_driver_init, section ".initcall6.init", align 4
@pm860x_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm860x_led_probe, ptr @pm860x_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm860x_led_driver_exit = internal global ptr @pm860x_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [56 x i8] c"leds_88pm860x.description=LED driver for Marvell PM860x\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [65 x i8] c"leds_88pm860x.author=Haojian Zhuang <haojian.zhuang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [46 x i8] c"leds_88pm860x.file=drivers/leds/leds-88pm860x\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [26 x i8] c"leds_88pm860x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [42 x i8] c"leds_88pm860x.alias=platform:88pm860x-led\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"88pm860x-led\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@pm860x_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 157, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No REG resource for control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm860x_led_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/leds/leds-88pm860x.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm860x_led_probe._entry_ptr = internal global ptr @pm860x_led_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blink\00", [26 x i8] zeroinitializer }, align 32
@pm860x_led_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No REG resource for blink\0A\00", [37 x i8] zeroinitializer }, align 32
@pm860x_led_probe._entry_ptr.10 = internal global ptr @pm860x_led_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"led0-red\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"led0-green\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"led0-blue\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"led1-red\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"led1-green\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"led1-blue\00", [22 x i8] zeroinitializer }, align 32
@pm860x_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@pm860x_led_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register LED: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pm860x_led_probe._entry_ptr.20 = internal global ptr @pm860x_led_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"leds\00", [27 x i8] zeroinitializer }, align 32
@pm860x_led_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find leds node\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm860x_led_dt_init\00", [45 x i8] zeroinitializer }, align 32
@pm860x_led_dt_init._entry_ptr = internal global ptr @pm860x_led_dt_init._entry, section ".printk_index", align 4
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,88pm860x-iset\00", [42 x i8] zeroinitializer }, align 32
@pm860x_led_set.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"leds_88pm860x\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pm860x_led_set\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Update LED. (reg:%d, brightness:%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@switch.table.pm860x_led_set = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 8, i16 8, i16 8, i16 16, i16 16, i16 16], [20 x i8] zeroinitializer }, align 32
@switch.table.pm860x_led_set.28 = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 8, i16 8, i16 8, i16 16, i16 16, i16 16], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"pm860x_led_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 227, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 229, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 155, i32 59 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 157, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 161, i32 59 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 163, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 171, i32 23 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 175, i32 23 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 179, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 183, i32 23 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 187, i32 23 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 191, i32 23 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 204, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 208, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 123, i32 63 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 125, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 130, i32 29 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [32 x i8] c"../drivers/leds/leds-88pm860x.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 107, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [28 x i8] c"switch.table.pm860x_led_set\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [31 x i8] c"switch.table.pm860x_led_set.28\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_pm860x_led_driver_exit, ptr @__initcall__kmod_leds_88pm860x__289_235_pm860x_led_driver_init6, ptr @pm860x_led_driver_exit, ptr @pm860x_led_dt_init._entry, ptr @pm860x_led_dt_init._entry_ptr, ptr @pm860x_led_probe._entry, ptr @pm860x_led_probe._entry.18, ptr @pm860x_led_probe._entry.8, ptr @pm860x_led_probe._entry_ptr, ptr @pm860x_led_probe._entry_ptr.10, ptr @pm860x_led_probe._entry_ptr.20, ptr @pm860x_led_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @pm860x_led_probe.__key, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @switch.table.pm860x_led_set, ptr @switch.table.pm860x_led_set.28], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_led_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_led_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_led_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pm860x_led_set to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pm860x_led_set.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm860x_led_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm860x_led_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %iset.i = alloca i32, align 4
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
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 564, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 768, ptr noundef nonnull @.str.1) #5
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call5, align 4
  %reg_control = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %reg_control to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %reg_control, align 4
  %call9 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 768, ptr noundef nonnull @.str.7) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call9, align 4
  %reg_blink = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %reg_blink to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %reg_blink, align 4
  %name = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 4
  %12 = call ptr @memset(ptr %name, i32 0, i32 40)
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end16.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb26
    i32 3, label %sw.bb31
    i32 4, label %sw.bb36
    i32 5, label %sw.bb41
  ]

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %blink_mask = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 11
  %16 = ptrtoint ptr %blink_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %blink_mask, align 4
  %17 = call ptr @memcpy(ptr %name, ptr @.str.11, i32 9)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %blink_mask22 = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %blink_mask22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %blink_mask22, align 4
  %19 = call ptr @memcpy(ptr %name, ptr @.str.12, i32 11)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %blink_mask27 = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 11
  %20 = ptrtoint ptr %blink_mask27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %blink_mask27, align 4
  %21 = call ptr @memcpy(ptr %name, ptr @.str.13, i32 10)
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %blink_mask32 = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 11
  %22 = ptrtoint ptr %blink_mask32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %blink_mask32, align 4
  %23 = call ptr @memcpy(ptr %name, ptr @.str.14, i32 9)
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %blink_mask37 = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 11
  %24 = ptrtoint ptr %blink_mask37 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %blink_mask37, align 4
  %25 = call ptr @memcpy(ptr %name, ptr @.str.15, i32 11)
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %blink_mask42 = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 11
  %26 = ptrtoint ptr %blink_mask42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %blink_mask42, align 4
  %27 = call ptr @memcpy(ptr %name, ptr @.str.16, i32 10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb36, %sw.bb31, %sw.bb26, %sw.bb21, %sw.bb, %if.end16.sw.epilog_crit_edge
  %chip46 = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %chip46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %3, ptr %chip46, align 4
  %id47 = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 10
  %29 = ptrtoint ptr %id47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp48 = icmp eq i32 %30, 1
  %client = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 3
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 4
  %cond.in = select i1 %cmp48, ptr %client, ptr %companion
  %31 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %cond = load ptr, ptr %cond.in, align 4
  %i2c = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cond, ptr %i2c, align 4
  %port = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %14, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iset.i) #5
  %34 = ptrtoint ptr %iset.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %iset.i, align 4
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %sw.epilog.pm860x_led_dt_init.exit_crit_edge, label %dev_of_node.exit.i

sw.epilog.pm860x_led_dt_init.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm860x_led_dt_init.exit

dev_of_node.exit.i:                               ; preds = %sw.epilog
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %dev_of_node.exit.i.pm860x_led_dt_init.exit_crit_edge, label %dev_of_node.exit32.i

dev_of_node.exit.i.pm860x_led_dt_init.exit_crit_edge: ; preds = %dev_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm860x_led_dt_init.exit

dev_of_node.exit32.i:                             ; preds = %dev_of_node.exit.i
  %call4.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %38, ptr noundef nonnull @.str.21) #5
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %dev_of_node.exit32.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  br label %pm860x_led_dt_init.exit

if.end8.i:                                        ; preds = %dev_of_node.exit32.i
  %call9.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call4.i, ptr noundef null) #5
  %cmp.not36.i = icmp eq ptr %call9.i, null
  br i1 %cmp.not36.i, label %if.end8.i.pm860x_led_dt_init.exit.thread_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

if.end8.i.pm860x_led_dt_init.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm860x_led_dt_init.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %np.037.i = phi ptr [ %call15.i, %for.inc.i.for.body.i_crit_edge ], [ %call9.i, %if.end8.i.for.body.i_crit_edge ]
  %call10.i = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %np.037.i, ptr noundef %name) #5
  br i1 %call10.i, label %if.then11.i, label %for.inc.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.037.i, ptr noundef nonnull @.str.24, ptr noundef nonnull %iset.i, i32 noundef 1, i32 noundef 0) #5
  %39 = ptrtoint ptr %iset.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iset.i, align 4
  %41 = shl i32 %40, 3
  %shl.i = and i32 %41, 224
  %iset13.i = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 6
  %42 = ptrtoint ptr %iset13.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shl.i, ptr %iset13.i, align 4
  call void @of_node_put(ptr noundef nonnull %np.037.i) #5
  br label %pm860x_led_dt_init.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  %call15.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call4.i, ptr noundef nonnull %np.037.i) #5
  %cmp.not.i = icmp eq ptr %call15.i, null
  br i1 %cmp.not.i, label %for.inc.i.pm860x_led_dt_init.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.pm860x_led_dt_init.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm860x_led_dt_init.exit.thread

pm860x_led_dt_init.exit.thread:                   ; preds = %for.inc.i.pm860x_led_dt_init.exit.thread_crit_edge, %if.then11.i, %if.end8.i.pm860x_led_dt_init.exit.thread_crit_edge
  call void @of_node_put(ptr noundef nonnull %call4.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iset.i) #5
  br label %if.end57

pm860x_led_dt_init.exit:                          ; preds = %do.end.i, %dev_of_node.exit.i.pm860x_led_dt_init.exit_crit_edge, %sw.epilog.pm860x_led_dt_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iset.i) #5
  %tobool53.not = icmp eq ptr %5, null
  br i1 %tobool53.not, label %pm860x_led_dt_init.exit.if.end57_crit_edge, label %if.then54

pm860x_led_dt_init.exit.if.end57_crit_edge:       ; preds = %pm860x_led_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then54:                                        ; preds = %pm860x_led_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 4
  %iset55 = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 6
  %45 = ptrtoint ptr %iset55 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %iset55, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %pm860x_led_dt_init.exit.if.end57_crit_edge, %pm860x_led_dt_init.exit.thread
  %current_brightness = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 8
  %46 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %current_brightness, align 1
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %name, ptr %call.i, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 6
  %48 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @pm860x_led_set, ptr %brightness_set_blocking, align 4
  %lock = getelementptr inbounds %struct.pm860x_led, ptr %call.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @pm860x_led_probe.__key) #5
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %call.i130 = call i32 @led_classdev_register_ext(ptr noundef %50, ptr noundef %call.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp68 = icmp slt i32 %call.i130, 0
  br i1 %cmp68, label %do.end72, label %if.end74

do.end72:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i130) #8
  br label %cleanup

if.end74:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %call76 = call i32 @pm860x_led_set(ptr noundef nonnull %call.i, i32 noundef 0)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %do.end72, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i130, %do.end72 ], [ 0, %if.end74 ], [ -6, %do.end14 ], [ -6, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_led_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @led_classdev_unregister(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_led_set(ptr noundef %cdev, i32 noundef %value) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #5
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !74
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !74
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !74
  %chip1 = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 2
  %5 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip1, align 4
  %lock = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %shr = lshr i32 %value, 3
  %conv = trunc i32 %shr to i8
  %brightness = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 7
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %brightness, align 4
  %current_brightness = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 8
  %8 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %current_brightness, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp ne i8 %9, 0
  %10 = and i32 %value, 2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then:                                          ; preds = %entry
  %port = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 5
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %13 = icmp ult i32 %12, 6
  br i1 %13, label %switch.lookup, label %if.then.led_power_set.exit_crit_edge

if.then.led_power_set.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %led_power_set.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [6 x i16], ptr @switch.table.pm860x_led_set, i32 0, i32 %12
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %14)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call.i = tail call i32 @pm8606_osc_enable(ptr noundef %6, i16 noundef zeroext %switch.load) #5
  br label %led_power_set.exit

led_power_set.exit:                               ; preds = %switch.lookup, %if.then.led_power_set.exit_crit_edge
  %iset = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 6
  %15 = ptrtoint ptr %iset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %led_power_set.exit.if.end_crit_edge, label %if.then7

led_power_set.exit.if.end_crit_edge:              ; preds = %led_power_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7:                                         ; preds = %led_power_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %i2c = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 1
  %17 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c, align 4
  %reg_control = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 9
  %19 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_control, align 4
  %conv9 = trunc i32 %16 to i8
  %call10 = tail call i32 @pm860x_set_bits(ptr noundef %18, i32 noundef %20, i8 noundef zeroext -32, i8 noundef zeroext %conv9) #5
  br label %if.end

if.end:                                           ; preds = %if.then7, %led_power_set.exit.if.end_crit_edge
  %i2c11 = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 1
  %21 = ptrtoint ptr %i2c11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c11, align 4
  %reg_blink = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 10
  %23 = ptrtoint ptr %reg_blink to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_blink, align 4
  %call12 = tail call i32 @pm860x_set_bits(ptr noundef %22, i32 noundef %24, i8 noundef zeroext 127, i8 noundef zeroext 120) #5
  %25 = ptrtoint ptr %i2c11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c11, align 4
  %blink_mask = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 11
  %27 = ptrtoint ptr %blink_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blink_mask, align 4
  %conv14 = trunc i32 %28 to i8
  %call17 = tail call i32 @pm860x_set_bits(ptr noundef %26, i32 noundef 7, i8 noundef zeroext %conv14, i8 noundef zeroext %conv14) #5
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry.if.end18_crit_edge
  %i2c19 = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 1
  %29 = ptrtoint ptr %i2c19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c19, align 4
  %reg_control20 = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 9
  %31 = ptrtoint ptr %reg_control20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_control20, align 4
  %33 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %brightness, align 4
  %call22 = tail call i32 @pm860x_set_bits(ptr noundef %30, i32 noundef %32, i8 noundef zeroext 31, i8 noundef zeroext %34) #5
  %35 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp25 = icmp eq i8 %36, 0
  br i1 %cmp25, label %if.then27, label %if.end18.if.end52_crit_edge

if.end18.if.end52_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then27:                                        ; preds = %if.end18
  %37 = ptrtoint ptr %i2c19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c19, align 4
  %39 = ptrtoint ptr %reg_control20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_control20, align 4
  %call30 = call i32 @pm860x_bulk_read(ptr noundef %38, i32 noundef %40, i32 noundef 3, ptr noundef nonnull %buf) #5
  %41 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %buf, align 1
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %1, align 1
  %45 = or i8 %44, %42
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %3, align 1
  %or100102 = or i8 %45, %47
  %or38101 = and i8 %or100102, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or38101)
  %cmp39 = icmp eq i8 %or38101, 0
  br i1 %cmp39, label %if.then41, label %if.then27.if.end52_crit_edge

if.then27.if.end52_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then41:                                        ; preds = %if.then27
  %48 = ptrtoint ptr %i2c19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c19, align 4
  %50 = ptrtoint ptr %reg_control20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg_control20, align 4
  %call44 = call i32 @pm860x_set_bits(ptr noundef %49, i32 noundef %51, i8 noundef zeroext -32, i8 noundef zeroext 0) #5
  %52 = ptrtoint ptr %i2c19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i2c19, align 4
  %blink_mask46 = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 11
  %54 = ptrtoint ptr %blink_mask46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %blink_mask46, align 4
  %conv47 = trunc i32 %55 to i8
  %call48 = call i32 @pm860x_set_bits(ptr noundef %53, i32 noundef 7, i8 noundef zeroext %conv47, i8 noundef zeroext 0) #5
  %port49 = getelementptr inbounds %struct.pm860x_led, ptr %cdev, i32 0, i32 5
  %56 = ptrtoint ptr %port49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %57)
  %58 = icmp ult i32 %57, 6
  br i1 %58, label %switch.lookup108, label %if.then41.if.end52_crit_edge

if.then41.if.end52_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

switch.lookup108:                                 ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep109 = getelementptr inbounds [6 x i16], ptr @switch.table.pm860x_led_set.28, i32 0, i32 %57
  %59 = ptrtoint ptr %switch.gep109 to i32
  call void @__asan_load2_noabort(i32 %59)
  %switch.load110 = load i16, ptr %switch.gep109, align 2
  %call7.i = call i32 @pm8606_osc_disable(ptr noundef %6, i16 noundef zeroext %switch.load110) #5
  br label %if.end52

if.end52:                                         ; preds = %switch.lookup108, %if.then41.if.end52_crit_edge, %if.then27.if.end52_crit_edge, %if.end18.if.end52_crit_edge
  %60 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %brightness, align 4
  %62 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %current_brightness, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_led_set.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm860x_led_set, %if.then60)) #5
          to label %do.end [label %if.then60], !srcloc !75

if.then60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %6, align 4
  %65 = ptrtoint ptr %reg_control20 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg_control20, align 4
  %67 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %brightness, align 4
  %conv63 = zext i8 %68 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_led_set.__UNIQUE_ID_ddebug288, ptr noundef %64, ptr noundef nonnull @.str.27, i32 noundef %66, i32 noundef %conv63) #5
  br label %do.end

do.end:                                           ; preds = %if.then60, %if.end52
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_bulk_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8606_osc_enable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8606_osc_disable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_leds_88pm860x__289_235_pm860x_led_driver_init6, !1, !"__initcall__kmod_leds_88pm860x__289_235_pm860x_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-88pm860x.c", i32 235, i32 1}
!2 = !{ptr @__exitcall_pm860x_led_driver_exit, !1, !"__exitcall_pm860x_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-88pm860x.c", i32 237, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-88pm860x.c", i32 238, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-88pm860x.c", i32 239, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias294, !11, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-88pm860x.c", i32 240, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-88pm860x.c", i32 229, i32 11}
!14 = !{ptr @pm860x_led_driver, !15, !"pm860x_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-88pm860x.c", i32 227, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-88pm860x.c", i32 155, i32 59}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-88pm860x.c", i32 157, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pm860x_led_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @pm860x_led_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-88pm860x.c", i32 161, i32 59}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-88pm860x.c", i32 163, i32 3}
!30 = !{ptr @pm860x_led_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pm860x_led_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-88pm860x.c", i32 171, i32 23}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-88pm860x.c", i32 175, i32 23}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-88pm860x.c", i32 179, i32 23}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-88pm860x.c", i32 183, i32 23}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-88pm860x.c", i32 187, i32 23}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-88pm860x.c", i32 191, i32 23}
!44 = !{ptr @pm860x_led_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-88pm860x.c", i32 204, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-88pm860x.c", i32 208, i32 3}
!49 = !{ptr @pm860x_led_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pm860x_led_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/leds/leds-88pm860x.c", i32 123, i32 63}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/leds/leds-88pm860x.c", i32 125, i32 3}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @pm860x_led_dt_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @pm860x_led_dt_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-88pm860x.c", i32 130, i32 29}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-88pm860x.c", i32 107, i32 2}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pm860x_led_set.__UNIQUE_ID_ddebug288, !61, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 2148695416, i64 2148695421, i64 2148695434, i64 2148695478, i64 2148695512, i64 2148695533}
