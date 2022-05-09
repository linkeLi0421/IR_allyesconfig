; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-usb-gpio.c_pt.bc'
source_filename = "../drivers/extcon/extcon-usb-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_extcon_info = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.delayed_work }

@__initcall__kmod_extcon_usb_gpio__227_308_usb_extcon_driver_init6 = internal global ptr @usb_extcon_driver_init, section ".initcall6.init", align 4
@usb_extcon_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @usb_extcon_probe, ptr @usb_extcon_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb_extcon_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_extcon_pm_ops, ptr null, ptr null }, ptr @usb_extcon_platform_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_usb_extcon_driver_exit = internal global ptr @usb_extcon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [53 x i8] c"extcon_usb_gpio.author=Roger Quadros <rogerq@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [51 x i8] c"extcon_usb_gpio.description=USB GPIO extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [52 x i8] c"extcon_usb_gpio.file=drivers/extcon/extcon-usb-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [31 x i8] c"extcon_usb_gpio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"extcon-usb-gpio\00", [16 x i8] zeroinitializer }, align 32
@usb_extcon_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"linux,extcon-usb-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@usb_extcon_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @usb_extcon_suspend, ptr @usb_extcon_resume, ptr @usb_extcon_suspend, ptr @usb_extcon_resume, ptr @usb_extcon_suspend, ptr @usb_extcon_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@usb_extcon_platform_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"extcon-usb-gpio\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@usb_extcon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 117, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get gpios\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_extcon_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/extcon/extcon-usb-gpio.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_extcon_probe._entry_ptr = internal global ptr @usb_extcon_probe._entry, section ".printk_index", align 4
@usb_extcon_cable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@usb_extcon_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 129, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@usb_extcon_probe._entry_ptr.10 = internal global ptr @usb_extcon_probe._entry.8, section ".printk_index", align 4
@usb_extcon_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 135, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@usb_extcon_probe._entry_ptr.13 = internal global ptr @usb_extcon_probe._entry.11, section ".printk_index", align 4
@usb_extcon_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&info->wq_detcable)->work)\00", [49 x i8] zeroinitializer }, align 32
@usb_extcon_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&info->wq_detcable)->timer\00", [35 x i8] zeroinitializer }, align 32
@usb_extcon_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 154, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get ID IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_extcon_probe._entry_ptr.19 = internal global ptr @usb_extcon_probe._entry.17, section ".printk_index", align 4
@usb_extcon_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 164, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request handler for ID IRQ\0A\00", [58 x i8] zeroinitializer }, align 32
@usb_extcon_probe._entry_ptr.22 = internal global ptr @usb_extcon_probe._entry.20, section ".printk_index", align 4
@usb_extcon_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 172, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get VBUS IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_extcon_probe._entry_ptr.25 = internal global ptr @usb_extcon_probe._entry.23, section ".printk_index", align 4
@usb_extcon_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 182, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to request handler for VBUS IRQ\0A\00", [56 x i8] zeroinitializer }, align 32
@usb_extcon_probe._entry_ptr.28 = internal global ptr @usb_extcon_probe._entry.26, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"usb_extcon_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 297, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 301, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"usb_extcon_dt_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 285, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"usb_extcon_pm_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 282, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant [24 x i8] c"usb_extcon_platform_ids\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 291, i32 40 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 112, i32 55 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 113, i32 57 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 117, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"usb_extcon_cable\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 37, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 129, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 135, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 149, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 154, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 164, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 172, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [36 x i8] c"../drivers/extcon/extcon-usb-gpio.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 182, i32 4 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_usb_extcon_driver_exit, ptr @__initcall__kmod_extcon_usb_gpio__227_308_usb_extcon_driver_init6, ptr @usb_extcon_driver_exit, ptr @usb_extcon_probe._entry, ptr @usb_extcon_probe._entry.11, ptr @usb_extcon_probe._entry.17, ptr @usb_extcon_probe._entry.20, ptr @usb_extcon_probe._entry.23, ptr @usb_extcon_probe._entry.26, ptr @usb_extcon_probe._entry.8, ptr @usb_extcon_probe._entry_ptr, ptr @usb_extcon_probe._entry_ptr.10, ptr @usb_extcon_probe._entry_ptr.13, ptr @usb_extcon_probe._entry_ptr.19, ptr @usb_extcon_probe._entry_ptr.22, ptr @usb_extcon_probe._entry_ptr.25, ptr @usb_extcon_probe._entry_ptr.28, ptr @usb_extcon_driver, ptr @.str, ptr @usb_extcon_dt_match, ptr @usb_extcon_pm_ops, ptr @usb_extcon_platform_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @usb_extcon_cable, ptr @.str.9, ptr @.str.12, ptr @usb_extcon_probe.__key, ptr @.str.14, ptr @usb_extcon_probe.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_platform_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_cable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_extcon_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_extcon_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @usb_extcon_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_extcon_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @usb_extcon_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_extcon_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call8 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 1) #4
  %id_gpiod = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %id_gpiod, align 4
  %call10 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 1) #4
  %vbus_gpiod = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %vbus_gpiod, align 4
  %tobool12.not = icmp eq ptr %call8, null
  %tobool14.not = icmp eq ptr %call10, null
  %or.cond = select i1 %tobool12.not, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %cmp.i200 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %call29 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev1, ptr noundef nonnull @usb_extcon_cable) #4
  %edev = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call29, ptr %edev, align 4
  %cmp.i201 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %do.end35, label %if.end36

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %call38 = tail call i32 @devm_extcon_dev_register(ptr noundef %dev1, ptr noundef %call29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %do.end42, label %if.end43

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %8 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id_gpiod, align 4
  %tobool45.not = icmp eq ptr %9, null
  br i1 %tobool45.not, label %if.end43.if.end49_crit_edge, label %if.then46

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = tail call i32 @gpiod_set_debounce(ptr noundef nonnull %9, i32 noundef 20000) #4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end43.if.end49_crit_edge
  %ret.0 = phi i32 [ %call48, %if.then46 ], [ %call38, %if.end43.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool50.not = icmp eq i32 %ret.0, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %if.end49.if.end57_crit_edge

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true51:                                  ; preds = %if.end49
  %10 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbus_gpiod, align 4
  %tobool53.not = icmp eq ptr %11, null
  br i1 %tobool53.not, label %land.lhs.true51.do.body63_crit_edge, label %if.then54

land.lhs.true51.do.body63_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body63

if.then54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = tail call i32 @gpiod_set_debounce(ptr noundef nonnull %11, i32 noundef 20000) #4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end49.if.end57_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end49.if.end57_crit_edge ], [ %call56, %if.then54 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp58 = icmp slt i32 %ret.1, 0
  br i1 %cmp58, label %if.then59, label %if.end57.do.body63_crit_edge

if.end57.do.body63_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body63

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  %debounce_jiffies = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %debounce_jiffies to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %debounce_jiffies, align 4
  br label %do.body63

do.body63:                                        ; preds = %if.then59, %if.end57.do.body63_crit_edge, %land.lhs.true51.do.body63_crit_edge
  %wq_detcable = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %wq_detcable, i32 noundef 0) #4
  %13 = ptrtoint ptr %wq_detcable to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %wq_detcable, align 4
  %lockdep_map = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @usb_extcon_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry70 = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %14 = ptrtoint ptr %entry70 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry70, ptr %entry70, align 4
  %prev.i = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry70, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @usb_extcon_detect_cable, ptr %func, align 4
  %timer = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.16, ptr noundef nonnull @usb_extcon_probe.__key.15) #4
  %17 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %id_gpiod, align 4
  %tobool82.not = icmp eq ptr %18, null
  br i1 %tobool82.not, label %do.body63.if.end102_crit_edge, label %if.then83

do.body63.if.end102_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

if.then83:                                        ; preds = %do.body63
  %call85 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %18) #4
  %id_irq = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %id_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call85, ptr %id_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp87 = icmp slt i32 %call85, 0
  br i1 %cmp87, label %do.end91, label %if.end93

do.end91:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #7
  %20 = ptrtoint ptr %id_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id_irq, align 4
  br label %cleanup

if.end93:                                         ; preds = %if.then83
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %call95 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call85, ptr noundef null, ptr noundef nonnull @usb_irq_handler, i32 noundef 8195, ptr noundef %23, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %do.end100, label %if.end93.if.end102_crit_edge

if.end93.if.end102_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #7
  br label %cleanup

if.end102:                                        ; preds = %if.end93.if.end102_crit_edge, %do.body63.if.end102_crit_edge
  %24 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vbus_gpiod, align 4
  %tobool104.not = icmp eq ptr %25, null
  br i1 %tobool104.not, label %if.end102.if.end125_crit_edge, label %if.then105

if.end102.if.end125_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

if.then105:                                       ; preds = %if.end102
  %call107 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %25) #4
  %vbus_irq = getelementptr inbounds %struct.usb_extcon_info, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call107, ptr %vbus_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp109 = icmp slt i32 %call107, 0
  br i1 %cmp109, label %do.end113, label %if.end115

do.end113:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #7
  %27 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vbus_irq, align 4
  br label %cleanup

if.end115:                                        ; preds = %if.then105
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %call118 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call107, ptr noundef null, ptr noundef nonnull @usb_irq_handler, i32 noundef 8195, ptr noundef %30, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %do.end123, label %if.end115.if.end125_crit_edge

if.end115.if.end125_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

do.end123:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end125:                                        ; preds = %if.end115.if.end125_crit_edge, %if.end102.if.end125_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #4
  tail call void @usb_extcon_detect_cable(ptr noundef %wq_detcable)
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %do.end123, %do.end113, %do.end100, %do.end91, %do.end42, %do.end35, %if.then25, %if.then19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then19 ], [ %6, %if.then25 ], [ -12, %do.end35 ], [ %call38, %do.end42 ], [ %21, %do.end91 ], [ %call95, %do.end100 ], [ %28, %do.end113 ], [ %call118, %do.end123 ], [ 0, %if.end125 ], [ -19, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_extcon_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wq_detcable = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wq_detcable) #4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_extcon_detect_cable(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id_gpiod = getelementptr i8, ptr %work, i32 -20
  %0 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_gpiod, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %1) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call2, %cond.true ], [ 1, %entry.cond.end_crit_edge ]
  %vbus_gpiod = getelementptr i8, ptr %work, i32 -16
  %2 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus_gpiod, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %cond.end.cond.end8_crit_edge, label %cond.true4

cond.end.cond.end8_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end8

cond.true4:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %3) #4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true4, %cond.end.cond.end8_crit_edge
  %cond9 = phi i32 [ %call6, %cond.true4 ], [ %cond, %cond.end.cond.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool10.not = icmp eq i32 %cond, 0
  br i1 %tobool10.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %cond.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond9)
  %tobool12.not = icmp eq i32 %cond9, 0
  br i1 %tobool12.not, label %if.end16, label %if.end.if.then18_crit_edge

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

if.end.thread:                                    ; preds = %cond.end8
  %edev = getelementptr i8, ptr %work, i32 -24
  %4 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev, align 4
  %call11 = tail call i32 @extcon_set_state_sync(ptr noundef %5, i32 noundef 2, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond9)
  %tobool12.not38 = icmp eq i32 %cond9, 0
  %6 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edev, align 4
  br i1 %tobool12.not38, label %if.else, label %if.then22

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %edev14 = getelementptr i8, ptr %work, i32 -24
  %8 = ptrtoint ptr %edev14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edev14, align 4
  %call15 = tail call i32 @extcon_set_state_sync(ptr noundef %9, i32 noundef 1, i1 noundef zeroext false) #4
  br label %if.then18

if.then18:                                        ; preds = %if.end16, %if.end.if.then18_crit_edge
  %edev19 = getelementptr i8, ptr %work, i32 -24
  %10 = ptrtoint ptr %edev19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edev19, align 4
  %call20 = tail call i32 @extcon_set_state_sync(ptr noundef %11, i32 noundef 2, i1 noundef zeroext true) #4
  br label %if.end26

if.else:                                          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  %call1543 = tail call i32 @extcon_set_state_sync(ptr noundef %7, i32 noundef 1, i1 noundef zeroext false) #4
  br label %if.end26

if.then22:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = tail call i32 @extcon_set_state_sync(ptr noundef %7, i32 noundef 1, i1 noundef zeroext true) #4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.else, %if.then18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_power_efficient_wq, align 4
  %wq_detcable = getelementptr inbounds %struct.usb_extcon_info, ptr %dev_id, i32 0, i32 7
  %debounce_jiffies = getelementptr inbounds %struct.usb_extcon_info, ptr %dev_id, i32 0, i32 6
  %1 = ptrtoint ptr %debounce_jiffies to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debounce_jiffies, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %wq_detcable, i32 noundef %2) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_extcon_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end20_crit_edge, label %device_may_wakeup.exit

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end20_crit_edge, label %if.then

device_may_wakeup.exit.if.end20_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then:                                          ; preds = %device_may_wakeup.exit
  %id_gpiod = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %id_gpiod, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then2:                                         ; preds = %if.then
  %id_irq = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %id_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.then2.if.end6_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %vbus_gpiod = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vbus_gpiod, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end6.if.end20_crit_edge, label %if.then8

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then8:                                         ; preds = %if.end6
  %vbus_irq = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vbus_irq, align 4
  %call.i52 = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool10.not = icmp eq i32 %call.i52, 0
  br i1 %tobool10.not, label %if.then8.if.end20_crit_edge, label %if.then11

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then11:                                        ; preds = %if.then8
  %13 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %id_gpiod, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %if.then14

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %id_irq15 = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %id_irq15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id_irq15, align 4
  %call.i53 = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 0) #4
  br label %cleanup

if.end20:                                         ; preds = %if.then8.if.end20_crit_edge, %if.end6.if.end20_crit_edge, %device_may_wakeup.exit.if.end20_crit_edge, %entry.if.end20_crit_edge
  %id_gpiod21 = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %id_gpiod21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %id_gpiod21, align 4
  %tobool22.not = icmp eq ptr %18, null
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %id_irq24 = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %id_irq24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id_irq24, align 4
  tail call void @disable_irq(i32 noundef %20) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %vbus_gpiod26 = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %vbus_gpiod26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vbus_gpiod26, align 4
  %tobool27.not = icmp eq ptr %22, null
  br i1 %tobool27.not, label %if.end25.if.end30_crit_edge, label %if.then28

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %vbus_irq29 = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %vbus_irq29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vbus_irq29, align 4
  tail call void @disable_irq(i32 noundef %24) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25.if.end30_crit_edge
  %25 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i55 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i55)
  %tobool.not.i56 = icmp sgt i16 %bf.load.i55, -1
  br i1 %tobool.not.i56, label %if.end30.if.then32_crit_edge, label %device_may_wakeup.exit60

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

device_may_wakeup.exit60:                         ; preds = %if.end30
  %wakeup.i57 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %26 = ptrtoint ptr %wakeup.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wakeup.i57, align 8
  %tobool2.i58.not = icmp eq ptr %27, null
  br i1 %tobool2.i58.not, label %device_may_wakeup.exit60.if.then32_crit_edge, label %device_may_wakeup.exit60.cleanup_crit_edge

device_may_wakeup.exit60.cleanup_crit_edge:       ; preds = %device_may_wakeup.exit60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

device_may_wakeup.exit60.if.then32_crit_edge:     ; preds = %device_may_wakeup.exit60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then32:                                        ; preds = %device_may_wakeup.exit60.if.then32_crit_edge, %if.end30.if.then32_crit_edge
  %call33 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %device_may_wakeup.exit60.cleanup_crit_edge, %if.then14, %if.then11.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then2.cleanup_crit_edge ], [ %call.i52, %if.then14 ], [ %call.i52, %if.then11.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %device_may_wakeup.exit60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_extcon_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge
  %5 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i55 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i55)
  %tobool.not.i56 = icmp sgt i16 %bf.load.i55, -1
  br i1 %tobool.not.i56, label %if.end.if.end24_crit_edge, label %device_may_wakeup.exit60

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

device_may_wakeup.exit60:                         ; preds = %if.end
  %wakeup.i57 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %6 = ptrtoint ptr %wakeup.i57 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wakeup.i57, align 8
  %tobool2.i58.not = icmp eq ptr %7, null
  br i1 %tobool2.i58.not, label %device_may_wakeup.exit60.if.end24_crit_edge, label %if.then4

device_may_wakeup.exit60.if.end24_crit_edge:      ; preds = %device_may_wakeup.exit60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then4:                                         ; preds = %device_may_wakeup.exit60
  %id_gpiod = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id_gpiod, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then4.if.end10_crit_edge, label %if.then5

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then5:                                         ; preds = %if.then4
  %id_irq = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %id_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.then4.if.end10_crit_edge
  %vbus_gpiod = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vbus_gpiod, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end10.if.end24_crit_edge, label %if.then12

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then12:                                        ; preds = %if.end10
  %vbus_irq = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vbus_irq, align 4
  %call.i61 = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool14.not = icmp eq i32 %call.i61, 0
  br i1 %tobool14.not, label %if.then12.if.end24_crit_edge, label %if.then15

if.then12.if.end24_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then15:                                        ; preds = %if.then12
  %16 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %id_gpiod, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %if.then18

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %id_irq19 = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %id_irq19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id_irq19, align 4
  %call.i62 = tail call i32 @irq_set_irq_wake(i32 noundef %19, i32 noundef 1) #4
  br label %cleanup

if.end24:                                         ; preds = %if.then12.if.end24_crit_edge, %if.end10.if.end24_crit_edge, %device_may_wakeup.exit60.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %id_gpiod25 = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %id_gpiod25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %id_gpiod25, align 4
  %tobool26.not = icmp eq ptr %21, null
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.then27

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %id_irq28 = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %id_irq28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id_irq28, align 4
  tail call void @enable_irq(i32 noundef %23) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  %vbus_gpiod30 = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %vbus_gpiod30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vbus_gpiod30, align 4
  %tobool31.not = icmp eq ptr %25, null
  br i1 %tobool31.not, label %if.end29.if.end34_crit_edge, label %if.then32

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %vbus_irq33 = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %vbus_irq33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vbus_irq33, align 4
  tail call void @enable_irq(i32 noundef %27) #4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %28 = load ptr, ptr @system_power_efficient_wq, align 4
  %wq_detcable = getelementptr inbounds %struct.usb_extcon_info, ptr %1, i32 0, i32 7
  %call.i63 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %wq_detcable, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then18, %if.then15.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %call.i, %if.then5.cleanup_crit_edge ], [ %call.i61, %if.then18 ], [ %call.i61, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_extcon_usb_gpio__227_308_usb_extcon_driver_init6, !1, !"__initcall__kmod_extcon_usb_gpio__227_308_usb_extcon_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 308, i32 1}
!2 = !{ptr @__exitcall_usb_extcon_driver_exit, !1, !"__exitcall_usb_extcon_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 310, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 311, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 312, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 301, i32 11}
!12 = !{ptr @usb_extcon_driver, !13, !"usb_extcon_driver", i1 false, i1 false}
!13 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 297, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 112, i32 55}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 113, i32 57}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 117, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @usb_extcon_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @usb_extcon_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 129, i32 3}
!28 = !{ptr @usb_extcon_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @usb_extcon_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 135, i32 3}
!32 = !{ptr @usb_extcon_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @usb_extcon_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @usb_extcon_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 149, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @usb_extcon_probe.__key.15, !35, !"__key", i1 false, i1 false}
!38 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 154, i32 4}
!41 = !{ptr @usb_extcon_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @usb_extcon_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 164, i32 4}
!45 = !{ptr @usb_extcon_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @usb_extcon_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 172, i32 4}
!49 = !{ptr @usb_extcon_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @usb_extcon_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 182, i32 4}
!53 = !{ptr @usb_extcon_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @usb_extcon_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @usb_extcon_cable, !56, !"usb_extcon_cable", i1 false, i1 false}
!56 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 37, i32 27}
!57 = !{ptr @usb_extcon_dt_match, !58, !"usb_extcon_dt_match", i1 false, i1 false}
!58 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 285, i32 34}
!59 = !{ptr @usb_extcon_pm_ops, !60, !"usb_extcon_pm_ops", i1 false, i1 false}
!60 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 282, i32 8}
!61 = !{ptr @usb_extcon_platform_ids, !62, !"usb_extcon_platform_ids", i1 false, i1 false}
!62 = !{!"../drivers/extcon/extcon-usb-gpio.c", i32 291, i32 40}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
