; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/88pm860x_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/88pm860x_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pm860x_backlight_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.pm860x_chip = type { ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }
%struct.pm860x_backlight_pdata = type { i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_88pm860x_bl__304_256_pm860x_backlight_driver_init6 = internal global ptr @pm860x_backlight_driver_init, section ".initcall6.init", align 4
@pm860x_backlight_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm860x_backlight_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm860x_backlight_driver_exit = internal global ptr @pm860x_backlight_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description305 = internal constant [76 x i8] c"88pm860x_bl.description=Backlight Driver for Marvell Semiconductor 88PM8606\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [63 x i8] c"88pm860x_bl.author=Haojian Zhuang <haojian.zhuang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [53 x i8] c"88pm860x_bl.file=drivers/video/backlight/88pm860x_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [24 x i8] c"88pm860x_bl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias309 = internal constant [46 x i8] c"88pm860x_bl.alias=platform:88pm860x-backlight\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"88pm860x-backlight\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"duty cycle\00", [21 x i8] zeroinitializer }, align 32
@pm860x_backlight_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 197, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No REG resource for duty cycle\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pm860x_backlight_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/video/backlight/88pm860x_bl.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm860x_backlight_probe._entry_ptr = internal global ptr @pm860x_backlight_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"always on\00", [22 x i8] zeroinitializer }, align 32
@pm860x_backlight_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 203, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No REG resource for always on\0A\00", [33 x i8] zeroinitializer }, align 32
@pm860x_backlight_probe._entry_ptr.10 = internal global ptr @pm860x_backlight_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"current\00", [24 x i8] zeroinitializer }, align 32
@pm860x_backlight_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 209, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No REG resource for current\0A\00", [35 x i8] zeroinitializer }, align 32
@pm860x_backlight_probe._entry_ptr.14 = internal global ptr @pm860x_backlight_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"backlight-%d\00", [19 x i8] zeroinitializer }, align 32
@pm860x_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @pm860x_backlight_update_status, ptr @pm860x_backlight_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@pm860x_backlight_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@pm860x_backlight_probe._entry_ptr.18 = internal global ptr @pm860x_backlight_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"backlights\00", [21 x i8] zeroinitializer }, align 32
@pm860x_backlight_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find backlights node\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pm860x_backlight_dt_init\00", [39 x i8] zeroinitializer }, align 32
@pm860x_backlight_dt_init._entry_ptr = internal global ptr @pm860x_backlight_dt_init._entry, section ".printk_index", align 4
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,88pm860x-iset\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,88pm860x-pwm\00", [43 x i8] zeroinitializer }, align 32
@pm860x_backlight_set.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"88pm860x_bl\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm860x_backlight_set\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set brightness %d\0A\00", [45 x i8] zeroinitializer }, align 32
@pm860x_backlight_set.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.4, ptr @.str.27, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"set brightness %d failure with return value: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pm860x_backlight_get_brightness.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm860x_backlight_get_brightness\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get brightness %d\0A\00", [45 x i8] zeroinitializer }, align 32
@switch.table.pm860x_backlight_set = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 1, i16 2, i16 4], [26 x i8] zeroinitializer }, align 32
@switch.table.pm860x_backlight_set.30 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 1, i16 2, i16 4], [26 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant [24 x i8] c"pm860x_backlight_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 249, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 251, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 195, i32 59 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 197, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 201, i32 59 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 203, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 207, i32 59 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 209, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 215, i32 16 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"pm860x_backlight_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 143, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 233, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 157, i32 59 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 159, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 164, i32 29 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 167, i32 29 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 113, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 117, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [41 x i8] c"../drivers/video/backlight/88pm860x_bl.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 137, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [34 x i8] c"switch.table.pm860x_backlight_set\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [37 x i8] c"switch.table.pm860x_backlight_set.30\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_pm860x_backlight_driver_exit, ptr @__initcall__kmod_88pm860x_bl__304_256_pm860x_backlight_driver_init6, ptr @pm860x_backlight_driver_exit, ptr @pm860x_backlight_dt_init._entry, ptr @pm860x_backlight_dt_init._entry_ptr, ptr @pm860x_backlight_probe._entry, ptr @pm860x_backlight_probe._entry.12, ptr @pm860x_backlight_probe._entry.16, ptr @pm860x_backlight_probe._entry.8, ptr @pm860x_backlight_probe._entry_ptr, ptr @pm860x_backlight_probe._entry_ptr.10, ptr @pm860x_backlight_probe._entry_ptr.14, ptr @pm860x_backlight_probe._entry_ptr.18, ptr @pm860x_backlight_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @pm860x_backlight_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @switch.table.pm860x_backlight_set, ptr @switch.table.pm860x_backlight_set.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_backlight_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_backlight_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_backlight_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_backlight_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_backlight_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_backlight_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pm860x_backlight_set to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pm860x_backlight_set.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_backlight_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm860x_backlight_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_backlight_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm860x_backlight_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_backlight_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %iset.i = alloca i32, align 4
  %props = alloca %struct.backlight_properties, align 4
  %name = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #7
  %6 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %7 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %name) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 768, ptr noundef nonnull @.str.1) #7
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call5, align 4
  %reg_duty_cycle = getelementptr inbounds %struct.pm860x_backlight_data, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %reg_duty_cycle to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %reg_duty_cycle, align 4
  %call9 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 768, ptr noundef nonnull @.str.7) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call9, align 4
  %reg_always_on = getelementptr inbounds %struct.pm860x_backlight_data, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %reg_always_on to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %reg_always_on, align 4
  %call18 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 768, ptr noundef nonnull @.str.11) #7
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call18, align 4
  %reg_current = getelementptr inbounds %struct.pm860x_backlight_data, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %reg_current to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %reg_current, align 4
  %17 = call ptr @memset(ptr %name, i32 0, i32 40)
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %call28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.15, i32 noundef %19)
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %port = getelementptr inbounds %struct.pm860x_backlight_data, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %port, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %3, ptr %call.i, align 4
  %id31 = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %id31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp32 = icmp eq i32 %25, 1
  %client = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 3
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 4
  %cond.in = select i1 %cmp32, ptr %client, ptr %companion
  %26 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %cond = load ptr, ptr %cond.in, align 4
  %i2c = getelementptr inbounds %struct.pm860x_backlight_data, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cond, ptr %i2c, align 4
  %current_brightness = getelementptr inbounds %struct.pm860x_backlight_data, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 255, ptr %current_brightness, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iset.i) #7
  %29 = ptrtoint ptr %iset.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %iset.i, align 4
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %call.i110 = tail call ptr @of_get_child_by_name(ptr noundef %33, ptr noundef nonnull @.str.19) #7
  %tobool.not.i = icmp eq ptr %call.i110, null
  br i1 %tobool.not.i, label %pm860x_backlight_dt_init.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end25
  %call2.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i110, ptr noundef null) #7
  %cmp.not24.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not24.i, label %if.end.i.pm860x_backlight_dt_init.exit.thread_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.pm860x_backlight_dt_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm860x_backlight_dt_init.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %np.025.i = phi ptr [ %call9.i, %for.inc.i.for.body.i_crit_edge ], [ %call2.i, %if.end.i.for.body.i_crit_edge ]
  %call3.i = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %np.025.i, ptr noundef nonnull %name) #7
  br i1 %call3.i, label %if.then4.i, label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.025.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %iset.i, i32 noundef 1, i32 noundef 0) #7
  %34 = ptrtoint ptr %iset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iset.i, align 4
  %and.i = shl i32 %35, 1
  %shl.i = and i32 %and.i, 62
  %iset6.i = getelementptr inbounds %struct.pm860x_backlight_data, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %iset6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl.i, ptr %iset6.i, align 4
  %pwm.i = getelementptr inbounds %struct.pm860x_backlight_data, ptr %call.i, i32 0, i32 4
  %call.i.i22.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.025.i, ptr noundef nonnull @.str.23, ptr noundef %pwm.i, i32 noundef 1, i32 noundef 0) #7
  call void @of_node_put(ptr noundef nonnull %np.025.i) #7
  br label %pm860x_backlight_dt_init.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  %call9.i = call ptr @of_get_next_child(ptr noundef nonnull %call.i110, ptr noundef nonnull %np.025.i) #7
  %cmp.not.i = icmp eq ptr %call9.i, null
  br i1 %cmp.not.i, label %for.inc.i.pm860x_backlight_dt_init.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.pm860x_backlight_dt_init.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm860x_backlight_dt_init.exit.thread

pm860x_backlight_dt_init.exit.thread:             ; preds = %for.inc.i.pm860x_backlight_dt_init.exit.thread_crit_edge, %if.then4.i, %if.end.i.pm860x_backlight_dt_init.exit.thread_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i110) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iset.i) #7
  br label %if.end42

pm860x_backlight_dt_init.exit:                    ; preds = %if.end25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iset.i) #7
  %tobool37.not = icmp eq ptr %5, null
  br i1 %tobool37.not, label %pm860x_backlight_dt_init.exit.if.end42_crit_edge, label %if.then38

pm860x_backlight_dt_init.exit.if.end42_crit_edge: ; preds = %pm860x_backlight_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then38:                                        ; preds = %pm860x_backlight_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %5, align 4
  %pwm39 = getelementptr inbounds %struct.pm860x_backlight_data, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %pwm39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %pwm39, align 4
  %iset = getelementptr inbounds %struct.pm860x_backlight_pdata, ptr %5, i32 0, i32 1
  %40 = ptrtoint ptr %iset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iset, align 4
  %iset40 = getelementptr inbounds %struct.pm860x_backlight_data, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %iset40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %iset40, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %pm860x_backlight_dt_init.exit.if.end42_crit_edge, %pm860x_backlight_dt_init.exit.thread
  %43 = call ptr @memset(ptr %props, i32 0, i32 28)
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %7, align 4
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 255, ptr %6, align 4
  %call46 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef nonnull %name, ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @pm860x_backlight_ops, ptr noundef nonnull %props) #7
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end51, label %if.end54

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  %46 = ptrtoint ptr %call46 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end42
  %47 = ptrtoint ptr %call46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 255, ptr %call46, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call46, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %call46, i32 0, i32 6, i32 8
  %49 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %i2c.i = getelementptr inbounds %struct.pm860x_backlight_data, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c.i, align 4
  %reg_duty_cycle.i = getelementptr inbounds %struct.pm860x_backlight_data, ptr %50, i32 0, i32 6
  %55 = ptrtoint ptr %reg_duty_cycle.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg_duty_cycle.i, align 4
  %call2.i111 = call i32 @pm860x_reg_read(ptr noundef %54, i32 noundef %56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i111)
  %cmp.i112 = icmp slt i32 %call2.i111, 0
  br i1 %cmp.i112, label %if.end54.cleanup_crit_edge, label %if.end.i113

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i113:                                      ; preds = %if.end54
  %current_brightness.i = getelementptr inbounds %struct.pm860x_backlight_data, ptr %50, i32 0, i32 2
  %57 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call2.i111, ptr %current_brightness.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_backlight_get_brightness.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm860x_backlight_probe, %if.then6.i)) #7
          to label %pm860x_backlight_get_brightness.exit [label %if.then6.i], !srcloc !78

if.then6.i:                                       ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %52, align 4
  %60 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %current_brightness.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_backlight_get_brightness.__UNIQUE_ID_ddebug303, ptr noundef %59, ptr noundef nonnull @.str.29, i32 noundef %61) #7
  br label %pm860x_backlight_get_brightness.exit

pm860x_backlight_get_brightness.exit:             ; preds = %if.then6.i, %if.end.i113
  %62 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %current_brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp57 = icmp slt i32 %63, 0
  br i1 %cmp57, label %pm860x_backlight_get_brightness.exit.cleanup_crit_edge, label %if.end59

pm860x_backlight_get_brightness.exit.cleanup_crit_edge: ; preds = %pm860x_backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59:                                         ; preds = %pm860x_backlight_get_brightness.exit
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call46, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call46, i32 0, i32 3
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %tobool.not.i116 = icmp eq ptr %65, null
  br i1 %tobool.not.i116, label %if.end59.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end59.backlight_update_status.exit_crit_edge:  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end59
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %67, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i117 = call i32 %67(ptr noundef %call46) #7
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end59.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %pm860x_backlight_get_brightness.exit.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %do.end51, %do.end23, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %do.end51 ], [ 0, %backlight_update_status.exit ], [ -6, %do.end23 ], [ -6, %do.end14 ], [ -6, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %63, %pm860x_backlight_get_brightness.exit.cleanup_crit_edge ], [ -22, %if.end54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_backlight_get_brightness(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  %reg_duty_cycle = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %reg_duty_cycle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_duty_cycle, align 4
  %call2 = tail call i32 @pm860x_reg_read(ptr noundef %5, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_brightness = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %current_brightness, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_backlight_get_brightness.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm860x_backlight_get_brightness, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !78

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %11 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_brightness, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_backlight_get_brightness.__UNIQUE_ID_ddebug303, ptr noundef %10, ptr noundef nonnull @.str.29, i32 noundef %12) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %13 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %current_brightness, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_backlight_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %0 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.backlight_get_brightness.exit_crit_edge

entry.backlight_get_brightness.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_get_brightness.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %2 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge

lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_get_brightness.exit

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge

backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_get_brightness.exit

if.else.i:                                        ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bl, align 8
  br label %backlight_get_brightness.exit

backlight_get_brightness.exit:                    ; preds = %if.else.i, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge, %entry.backlight_get_brightness.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.else.i ], [ 0, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge ], [ 0, %entry.backlight_get_brightness.exit_crit_edge ]
  %call1 = tail call fastcc i32 @pm860x_backlight_set(ptr noundef %bl, i32 noundef %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm860x_backlight_set(ptr nocapture noundef readonly %bl, i32 noundef %brightness) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %brightness, i32 255)
  %5 = trunc i32 %4 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not = icmp eq i32 %brightness, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then2

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %entry
  %port = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %switch.lookup, label %if.then2.if.end4_crit_edge

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

switch.lookup:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.pm860x_backlight_set, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %9)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call13.i = tail call i32 @pm8606_osc_enable(ptr noundef %3, i16 noundef zeroext %switch.load) #7
  br label %if.end4

if.end4:                                          ; preds = %switch.lookup, %if.then2.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i2c = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 4
  %reg_duty_cycle = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %reg_duty_cycle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_duty_cycle, align 4
  %call5 = tail call i32 @pm860x_reg_write(ptr noundef %11, i32 noundef %13, i8 noundef zeroext %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.do.body74_crit_edge, label %if.end9

if.end4.do.body74_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body74

if.end9:                                          ; preds = %if.end4
  %current_brightness = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp ne i32 %15, 0
  %brmerge = or i1 %tobool.not, %cmp10
  br i1 %brmerge, label %if.else42, label %if.then13

if.then13:                                        ; preds = %if.end9
  %iset = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %iset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool14.not = icmp eq i32 %17, 0
  br i1 %tobool14.not, label %if.then13.if.end24_crit_edge, label %if.then15

if.then13.if.end24_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then15:                                        ; preds = %if.then13
  %18 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c, align 4
  %reg_current = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %reg_current to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_current, align 4
  %conv18 = trunc i32 %17 to i8
  %call19 = tail call i32 @pm860x_set_bits(ptr noundef %19, i32 noundef %21, i8 noundef zeroext 62, i8 noundef zeroext %conv18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then15.do.body74_crit_edge, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then15.do.body74_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body74

if.end24:                                         ; preds = %if.then15.if.end24_crit_edge, %if.then13.if.end24_crit_edge
  %pwm = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool25.not = icmp eq i32 %23, 0
  br i1 %tobool25.not, label %if.end24.if.end35_crit_edge, label %if.then26

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then26:                                        ; preds = %if.end24
  %24 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c, align 4
  %conv29 = trunc i32 %23 to i8
  %call30 = tail call i32 @pm860x_set_bits(ptr noundef %25, i32 noundef 1, i8 noundef zeroext 7, i8 noundef zeroext %conv29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then26.do.body74_crit_edge, label %if.then26.if.end35_crit_edge

if.then26.if.end35_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then26.do.body74_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body74

if.end35:                                         ; preds = %if.then26.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %brightness)
  %cmp36 = icmp eq i32 %brightness, 255
  br i1 %cmp36, label %if.then38, label %if.end35.if.end58_crit_edge

if.end35.if.end58_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c, align 4
  %reg_always_on = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %reg_always_on to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg_always_on, align 4
  %call40 = tail call i32 @pm860x_set_bits(ptr noundef %27, i32 noundef %29, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %if.end54

if.else42:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %brightness)
  %cmp43 = icmp eq i32 %brightness, 255
  %30 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c, align 4
  %reg_always_on47 = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %reg_always_on47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_always_on47, align 4
  br i1 %cmp43, label %if.then45, label %if.else49

if.then45:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call i32 @pm860x_set_bits(ptr noundef %31, i32 noundef %33, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %if.end54

if.else49:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = tail call i32 @pm860x_set_bits(ptr noundef %31, i32 noundef %33, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %if.end54

if.end54:                                         ; preds = %if.else49, %if.then45, %if.then38
  %ret.2 = phi i32 [ %call40, %if.then38 ], [ %call48, %if.then45 ], [ %call52, %if.else49 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp55 = icmp slt i32 %ret.2, 0
  br i1 %cmp55, label %if.end54.do.body74_crit_edge, label %if.end54.if.end58_crit_edge

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.end54.do.body74_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body74

if.end58:                                         ; preds = %if.end54.if.end58_crit_edge, %if.end35.if.end58_crit_edge
  br i1 %tobool.not, label %if.then61, label %if.end58.do.body_crit_edge

if.end58.do.body_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then61:                                        ; preds = %if.end58
  %port62 = getelementptr inbounds %struct.pm860x_backlight_data, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %port62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %switch.lookup145, label %if.then61.do.body_crit_edge

if.then61.do.body_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

switch.lookup145:                                 ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep146 = getelementptr inbounds [3 x i16], ptr @switch.table.pm860x_backlight_set.30, i32 0, i32 %35
  %37 = ptrtoint ptr %switch.gep146 to i32
  call void @__asan_load2_noabort(i32 %37)
  %switch.load147 = load i16, ptr %switch.gep146, align 2
  %call15.i = tail call i32 @pm8606_osc_disable(ptr noundef %3, i16 noundef zeroext %switch.load147) #7
  br label %do.body

do.body:                                          ; preds = %switch.lookup145, %if.then61.do.body_crit_edge, %if.end58.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_backlight_set.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm860x_backlight_set, %if.then69)) #7
          to label %do.end [label %if.then69], !srcloc !78

if.then69:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %conv70 = and i32 %4, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_backlight_set.__UNIQUE_ID_ddebug301, ptr noundef %39, ptr noundef nonnull @.str.26, i32 noundef %conv70) #7
  br label %do.end

do.end:                                           ; preds = %if.then69, %do.body
  %conv72 = and i32 %4, 255
  %40 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv72, ptr %current_brightness, align 4
  br label %cleanup

do.body74:                                        ; preds = %if.end54.do.body74_crit_edge, %if.then26.do.body74_crit_edge, %if.then15.do.body74_crit_edge, %if.end4.do.body74_crit_edge
  %ret.3 = phi i32 [ %call5, %if.end4.do.body74_crit_edge ], [ %call19, %if.then15.do.body74_crit_edge ], [ %call30, %if.then26.do.body74_crit_edge ], [ %ret.2, %if.end54.do.body74_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_backlight_set.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm860x_backlight_set, %if.then86)) #7
          to label %cleanup [label %if.then86], !srcloc !78

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %conv88 = and i32 %4, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_backlight_set.__UNIQUE_ID_ddebug302, ptr noundef %42, ptr noundef nonnull @.str.27, i32 noundef %conv88, i32 noundef %ret.3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %do.body74, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.3, %if.then86 ], [ %ret.3, %do.body74 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8606_osc_enable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8606_osc_disable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !67, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_88pm860x_bl__304_256_pm860x_backlight_driver_init6, !1, !"__initcall__kmod_88pm860x_bl__304_256_pm860x_backlight_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 256, i32 1}
!2 = !{ptr @__exitcall_pm860x_backlight_driver_exit, !1, !"__exitcall_pm860x_backlight_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description305, !4, !"__UNIQUE_ID_description305", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 258, i32 1}
!5 = !{ptr @__UNIQUE_ID_author306, !6, !"__UNIQUE_ID_author306", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 259, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 260, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias309, !11, !"__UNIQUE_ID_alias309", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 261, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 251, i32 11}
!14 = !{ptr @pm860x_backlight_driver, !15, !"pm860x_backlight_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 249, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 195, i32 59}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 197, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pm860x_backlight_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @pm860x_backlight_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 201, i32 59}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 203, i32 3}
!30 = !{ptr @pm860x_backlight_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pm860x_backlight_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 207, i32 59}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 209, i32 3}
!36 = !{ptr @pm860x_backlight_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pm860x_backlight_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 215, i32 16}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 233, i32 3}
!42 = !{ptr @pm860x_backlight_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pm860x_backlight_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 157, i32 59}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 159, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pm860x_backlight_dt_init._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @pm860x_backlight_dt_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 164, i32 29}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 167, i32 29}
!55 = !{ptr @pm860x_backlight_ops, !56, !"pm860x_backlight_ops", i1 false, i1 false}
!56 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 143, i32 35}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 113, i32 2}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @pm860x_backlight_set.__UNIQUE_ID_ddebug301, !58, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 117, i32 2}
!64 = !{ptr @pm860x_backlight_set.__UNIQUE_ID_ddebug302, !63, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/backlight/88pm860x_bl.c", i32 137, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @pm860x_backlight_get_brightness.__UNIQUE_ID_ddebug303, !66, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148696399, i64 2148696404, i64 2148696417, i64 2148696461, i64 2148696495, i64 2148696516}
