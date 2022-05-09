; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/max8925_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/max8925_bl.c"
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
%struct.max8925_backlight_data = type { ptr, i32, i32, i32 }
%struct.max8925_backlight_pdata = type { i32, i32, i32 }
%struct.max8925_chip = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_max8925_bl__304_192_max8925_backlight_driver_init6 = internal global ptr @max8925_backlight_driver_init, section ".initcall6.init", align 4
@max8925_backlight_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8925_backlight_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8925_backlight_driver_exit = internal global ptr @max8925_backlight_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description305 = internal constant [58 x i8] c"max8925_bl.description=Backlight Driver for Maxim MAX8925\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [62 x i8] c"max8925_bl.author=Haojian Zhuang <haojian.zhuang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [51 x i8] c"max8925_bl.file=drivers/video/backlight/max8925_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [23 x i8] c"max8925_bl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias309 = internal constant [44 x i8] c"max8925_bl.alias=platform:max8925-backlight\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8925-backlight\00", [46 x i8] zeroinitializer }, align 32
@max8925_backlight_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No REG resource for mode control!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max8925_backlight_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/backlight/max8925_bl.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8925_backlight_probe._entry_ptr = internal global ptr @max8925_backlight_probe._entry, section ".printk_index", align 4
@max8925_backlight_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No REG resource for control!\0A\00", [34 x i8] zeroinitializer }, align 32
@max8925_backlight_probe._entry_ptr.8 = internal global ptr @max8925_backlight_probe._entry.6, section ".printk_index", align 4
@max8925_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @max8925_backlight_update_status, ptr @max8925_backlight_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@max8925_backlight_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@max8925_backlight_probe._entry_ptr.11 = internal global ptr @max8925_backlight_probe._entry.9, section ".printk_index", align 4
@max8925_backlight_set.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"max8925_bl\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8925_backlight_set\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set brightness %d\0A\00", [45 x i8] zeroinitializer }, align 32
@max8925_backlight_set.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.3, ptr @.str.15, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"set brightness %d failure with return value:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@max8925_backlight_get_brightness.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"max8925_backlight_get_brightness\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get brightness %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backlight\00", [22 x i8] zeroinitializer }, align 32
@max8925_backlight_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to find backlight node\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max8925_backlight_dt_init\00", [38 x i8] zeroinitializer }, align 32
@max8925_backlight_dt_init._entry_ptr = internal global ptr @max8925_backlight_dt_init._entry, section ".printk_index", align 4
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"maxim,max8925-dual-string\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"max8925_backlight_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 185, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 187, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 137, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 143, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"max8925_backlight_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 84, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 158, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 56, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 60, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 80, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 105, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 107, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [40 x i8] c"../drivers/video/backlight/max8925_bl.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 111, i32 32 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias309, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_max8925_backlight_driver_exit, ptr @__initcall__kmod_max8925_bl__304_192_max8925_backlight_driver_init6, ptr @max8925_backlight_driver_exit, ptr @max8925_backlight_dt_init._entry, ptr @max8925_backlight_dt_init._entry_ptr, ptr @max8925_backlight_probe._entry, ptr @max8925_backlight_probe._entry.6, ptr @max8925_backlight_probe._entry.9, ptr @max8925_backlight_probe._entry_ptr, ptr @max8925_backlight_probe._entry_ptr.11, ptr @max8925_backlight_probe._entry_ptr.8, ptr @max8925_backlight_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @max8925_backlight_ops, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_backlight_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_backlight_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_backlight_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_backlight_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_backlight_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_backlight_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8925_backlight_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8925_backlight_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8925_backlight_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_backlight_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #6
  %4 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %5 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 768, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call3, align 4
  %reg_mode_cntl = getelementptr inbounds %struct.max8925_backlight_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %reg_mode_cntl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %reg_mode_cntl, align 4
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 768, i32 noundef 1) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call7, align 4
  %reg_cntl = getelementptr inbounds %struct.max8925_backlight_data, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %reg_cntl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %reg_cntl, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %call.i, align 4
  %current_brightness = getelementptr inbounds %struct.max8925_backlight_data, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %current_brightness, align 4
  %14 = call ptr @memset(ptr %props, i32 0, i32 28)
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %5, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 255, ptr %4, align 4
  %call19 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @max8925_backlight_ops, ptr noundef nonnull %props) #6
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %17 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end14
  %18 = ptrtoint ptr %call19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 255, ptr %call19, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call19, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform_data, align 8
  %tobool30.not = icmp eq ptr %21, null
  br i1 %tobool30.not, label %if.then31, label %if.end27.if.then36_crit_edge

if.end27.if.then36_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

if.then31:                                        ; preds = %if.end27
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %val.i, align 4, !annotation !64
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then31.if.end32_crit_edge, label %if.end.i

if.then31.if.end32_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end.i:                                         ; preds = %if.then31
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end32_crit_edge, label %if.end4.i

if.end.i.if.end32_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call ptr @of_get_child_by_name(ptr noundef nonnull %25, ptr noundef nonnull @.str.18) #6
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %if.end32

if.end9.i:                                        ; preds = %if.end4.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call5.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool11.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end9.i.if.end32.thread110_crit_edge

if.end9.i.if.end32.thread110_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.thread110

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  %dual_string.i = getelementptr inbounds %struct.max8925_backlight_pdata, ptr %call.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %dual_string.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dual_string.i, align 4
  br label %if.end32.thread110

if.end32.thread110:                               ; preds = %if.then12.i, %if.end9.i.if.end32.thread110_crit_edge
  call void @of_node_put(ptr noundef nonnull %call5.i) #6
  %30 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %platform_data, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.then36

if.end32:                                         ; preds = %do.end.i, %if.end.i.if.end32_crit_edge, %if.then31.if.end32_crit_edge
  %31 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr.pr = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %tobool35.not = icmp eq ptr %.pr.pr, null
  br i1 %tobool35.not, label %if.end32.if.end54_crit_edge, label %if.end32.if.then36_crit_edge

if.end32.if.then36_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

if.end32.if.end54_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then36:                                        ; preds = %if.end32.if.then36_crit_edge, %if.end32.thread110, %if.end27.if.then36_crit_edge
  %32 = phi ptr [ %.pr.pr, %if.end32.if.then36_crit_edge ], [ %call.i.i, %if.end32.thread110 ], [ %21, %if.end27.if.then36_crit_edge ]
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool37.not = icmp eq i32 %34, 0
  %spec.select = select i1 %tobool37.not, i8 0, i8 -128
  %lxw_freq = getelementptr inbounds %struct.max8925_backlight_pdata, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %lxw_freq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lxw_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool41.not = icmp eq i32 %36, 0
  %sub = add i32 %36, -601
  %div = sdiv i32 %sub, 100
  %div.tr = trunc i32 %div to i8
  %37 = shl i8 %div.tr, 4
  %38 = and i8 %37, 112
  %conv46 = select i1 %tobool41.not, i8 0, i8 %38
  %value.1 = or i8 %conv46, %spec.select
  %dual_string = getelementptr inbounds %struct.max8925_backlight_pdata, ptr %32, i32 0, i32 2
  %39 = ptrtoint ptr %dual_string to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dual_string, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool48.not = icmp eq i32 %40, 0
  %41 = or i8 %value.1, 2
  %spec.select104 = select i1 %tobool48.not, i8 %value.1, i8 %41
  br label %if.end54

if.end54:                                         ; preds = %if.then36, %if.end32.if.end54_crit_edge
  %value.2 = phi i8 [ 0, %if.end32.if.end54_crit_edge ], [ %spec.select104, %if.then36 ]
  %i2c = getelementptr inbounds %struct.max8925_chip, ptr %3, i32 0, i32 1
  %42 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c, align 4
  %44 = ptrtoint ptr %reg_mode_cntl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg_mode_cntl, align 4
  %call56 = call i32 @max8925_set_bits(ptr noundef %43, i32 noundef %45, i8 noundef zeroext -2, i8 noundef zeroext %value.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end54.cleanup_crit_edge, label %if.end60

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %if.end54
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call19, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call19, i32 0, i32 3
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %tobool.not.i105 = icmp eq ptr %47, null
  br i1 %tobool.not.i105, label %if.end60.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end60.backlight_update_status.exit_crit_edge:  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end60
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i106 = icmp eq ptr %49, null
  br i1 %tobool2.not.i106, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i107 = call i32 %49(ptr noundef %call19) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end60.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %if.end54.cleanup_crit_edge, %do.end24, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %do.end24 ], [ 0, %backlight_update_status.exit ], [ -6, %do.end12 ], [ -6, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call56, %if.end54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_backlight_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %0 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.backlight_get_brightness.exit_crit_edge

entry.backlight_get_brightness.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

if.else.i:                                        ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bl, align 8
  br label %backlight_get_brightness.exit

backlight_get_brightness.exit:                    ; preds = %if.else.i, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge, %entry.backlight_get_brightness.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.else.i ], [ 0, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge ], [ 0, %entry.backlight_get_brightness.exit_crit_edge ]
  %call1 = tail call fastcc i32 @max8925_backlight_set(ptr noundef %bl, i32 noundef %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_backlight_get_brightness(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.max8925_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  %reg_cntl = getelementptr inbounds %struct.max8925_backlight_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %reg_cntl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_cntl, align 4
  %call2 = tail call i32 @max8925_reg_read(ptr noundef %5, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %current_brightness = getelementptr inbounds %struct.max8925_backlight_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %current_brightness, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_backlight_get_brightness.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max8925_backlight_get_brightness, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !65

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %11 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_brightness, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_backlight_get_brightness.__UNIQUE_ID_ddebug303, ptr noundef %10, ptr noundef nonnull @.str.17, i32 noundef %12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.then6 ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max8925_backlight_set(ptr nocapture noundef readonly %bl, i32 noundef %brightness) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %i2c = getelementptr inbounds %struct.max8925_chip, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %reg_cntl = getelementptr inbounds %struct.max8925_backlight_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_cntl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_cntl, align 4
  %call2 = tail call i32 @max8925_reg_write(ptr noundef %7, i32 noundef %9, i8 noundef zeroext %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %entry.do.body32_crit_edge, label %if.end6

entry.do.body32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

if.end6:                                          ; preds = %entry
  %current_brightness = getelementptr inbounds %struct.max8925_backlight_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool7.not = icmp eq i32 %brightness, 0
  %or.cond = or i1 %tobool7.not, %tobool.not
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = or i1 %tobool7.not, %or.cond.not
  br i1 %brmerge, label %if.end18, label %if.end6.do.body_crit_edge

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end18:                                         ; preds = %if.end6
  %.mux = zext i1 %or.cond.not to i8
  %12 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c, align 4
  %reg_mode_cntl15 = getelementptr inbounds %struct.max8925_backlight_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %reg_mode_cntl15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_mode_cntl15, align 4
  %call16 = tail call i32 @max8925_set_bits(ptr noundef %13, i32 noundef %15, i8 noundef zeroext 1, i8 noundef zeroext %.mux) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp19 = icmp slt i32 %call16, 0
  br i1 %cmp19, label %if.end18.do.body32_crit_edge, label %if.end18.do.body_crit_edge

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end18.do.body32_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %if.end6.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_backlight_set.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max8925_backlight_set, %if.then27)) #6
          to label %do.end [label %if.then27], !srcloc !65

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %conv28 = and i32 %4, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_backlight_set.__UNIQUE_ID_ddebug301, ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %conv28) #6
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %conv30 = and i32 %4, 255
  %18 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv30, ptr %current_brightness, align 4
  br label %cleanup

do.body32:                                        ; preds = %if.end18.do.body32_crit_edge, %entry.do.body32_crit_edge
  %ret.1 = phi i32 [ %call2, %entry.do.body32_crit_edge ], [ %call16, %if.end18.do.body32_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8925_backlight_set.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max8925_backlight_set, %if.then44)) #6
          to label %cleanup [label %if.then44], !srcloc !65

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %conv46 = and i32 %4, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8925_backlight_set.__UNIQUE_ID_ddebug302, ptr noundef %20, ptr noundef nonnull @.str.15, i32 noundef %conv46, i32 noundef %ret.1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %do.body32, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.1, %if.then44 ], [ %ret.1, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_max8925_bl__304_192_max8925_backlight_driver_init6, !1, !"__initcall__kmod_max8925_bl__304_192_max8925_backlight_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/max8925_bl.c", i32 192, i32 1}
!2 = !{ptr @__exitcall_max8925_backlight_driver_exit, !1, !"__exitcall_max8925_backlight_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description305, !4, !"__UNIQUE_ID_description305", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/max8925_bl.c", i32 194, i32 1}
!5 = !{ptr @__UNIQUE_ID_author306, !6, !"__UNIQUE_ID_author306", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/max8925_bl.c", i32 195, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/max8925_bl.c", i32 196, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias309, !11, !"__UNIQUE_ID_alias309", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/max8925_bl.c", i32 197, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/max8925_bl.c", i32 187, i32 11}
!14 = !{ptr @max8925_backlight_driver, !15, !"max8925_backlight_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/max8925_bl.c", i32 185, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/max8925_bl.c", i32 137, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @max8925_backlight_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @max8925_backlight_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/max8925_bl.c", i32 143, i32 3}
!26 = !{ptr @max8925_backlight_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @max8925_backlight_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/max8925_bl.c", i32 158, i32 3}
!30 = !{ptr @max8925_backlight_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @max8925_backlight_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @max8925_backlight_ops, !33, !"max8925_backlight_ops", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/max8925_bl.c", i32 84, i32 35}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/backlight/max8925_bl.c", i32 56, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @max8925_backlight_set.__UNIQUE_ID_ddebug301, !35, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/backlight/max8925_bl.c", i32 60, i32 2}
!41 = !{ptr @max8925_backlight_set.__UNIQUE_ID_ddebug302, !40, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/backlight/max8925_bl.c", i32 80, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @max8925_backlight_get_brightness.__UNIQUE_ID_ddebug303, !43, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/backlight/max8925_bl.c", i32 105, i32 36}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/backlight/max8925_bl.c", i32 107, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @max8925_backlight_dt_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @max8925_backlight_dt_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/backlight/max8925_bl.c", i32 111, i32 32}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{i64 2148694649, i64 2148694654, i64 2148694667, i64 2148694711, i64 2148694745, i64 2148694766}
