; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-mt6323.c_pt.bc'
source_filename = "../drivers/leds/leds-mt6323.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mt6323_leds = type { ptr, ptr, %struct.mutex, [4 x ptr] }
%struct.mt6397_chip = type { ptr, ptr, %struct.notifier_block, i32, ptr, %struct.mutex, [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i16, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mt6323_led = type { i32, ptr, %struct.led_classdev, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_mt6323__170_487_mt6323_led_driver_init6 = internal global ptr @mt6323_led_driver_init, section ".initcall6.init", align 4
@mt6323_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6323_led_probe, ptr @mt6323_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt6323_led_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6323_led_driver_exit = internal global ptr @mt6323_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [60 x i8] c"leds_mt6323.description=LED driver for Mediatek MT6323 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [54 x i8] c"leds_mt6323.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [42 x i8] c"leds_mt6323.file=drivers/leds/leds-mt6323\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [24 x i8] c"leds_mt6323.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt6323-led\00", [21 x i8] zeroinitializer }, align 32
@mt6323_led_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6323-led\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt6323_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&leds->lock\00", [20 x i8] zeroinitializer }, align 32
@mt6323_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 395, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to update MT6323_TOP_CKPDN0 Register\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt6323_led_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-mt6323.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6323_led_probe._entry_ptr = internal global ptr @mt6323_led_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mt6323_led_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 404, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read led 'reg' property\0A\00", [61 x i8] zeroinitializer }, align 32
@mt6323_led_probe._entry_ptr.10 = internal global ptr @mt6323_led_probe._entry.8, section ".printk_index", align 4
@mt6323_led_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 409, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid led reg %u\0A\00", [44 x i8] zeroinitializer }, align 32
@mt6323_led_probe._entry_ptr.13 = internal global ptr @mt6323_led_probe._entry.11, section ".printk_index", align 4
@mt6323_led_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 433, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to LED set default from devicetree\0A\00", [53 x i8] zeroinitializer }, align 32
@mt6323_led_probe._entry_ptr.16 = internal global ptr @mt6323_led_probe._entry.14, section ".printk_index", align 4
@mt6323_led_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 442, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register LED: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mt6323_led_probe._entry_ptr.19 = internal global ptr @mt6323_led_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default-state\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"mt6323_led_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 478, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 482, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"mt6323_led_dt_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 472, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 388, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 394, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 402, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 404, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 409, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 432, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 442, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 345, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 347, i32 22 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [30 x i8] c"../drivers/leds/leds-mt6323.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 353, i32 29 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_mt6323_led_driver_exit, ptr @__initcall__kmod_leds_mt6323__170_487_mt6323_led_driver_init6, ptr @mt6323_led_driver_exit, ptr @mt6323_led_probe._entry, ptr @mt6323_led_probe._entry.11, ptr @mt6323_led_probe._entry.14, ptr @mt6323_led_probe._entry.17, ptr @mt6323_led_probe._entry.8, ptr @mt6323_led_probe._entry_ptr, ptr @mt6323_led_probe._entry_ptr.10, ptr @mt6323_led_probe._entry_ptr.13, ptr @mt6323_led_probe._entry_ptr.16, ptr @mt6323_led_probe._entry_ptr.19, ptr @mt6323_led_driver, ptr @.str, ptr @mt6323_led_dt_match, ptr @mt6323_led_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6323_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6323_led_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6323_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6323_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6323_led_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6323_led_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6323_led_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6323_led_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6323_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6323_led_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6323_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6323_led_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6323_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %init_data = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !60
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dev_of_node.exit.cleanup77_crit_edge, label %if.end

dev_of_node.exit.cleanup77_crit_edge:             ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup77

if.end:                                           ; preds = %dev_of_node.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %call.i, align 4
  %hw5 = getelementptr inbounds %struct.mt6323_leds, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %hw5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %hw5, align 4
  %lock = getelementptr inbounds %struct.mt6323_leds, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mt6323_led_probe.__key) #7
  %10 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw5, align 4
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i127 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 258, i32 noundef 2048, i32 noundef -2049, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %cmp = icmp slt i32 %call.i127, 0
  br i1 %cmp, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.2) #10
  br label %cleanup77

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef null) #7
  %cmp15.not155 = icmp eq ptr %call14, null
  br i1 %cmp15.not155, label %if.end13.cleanup77_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.cleanup77_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup77

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13.for.body_crit_edge
  %child.0156 = phi ptr [ %call76, %for.inc.for.body_crit_edge ], [ %call14, %if.end13.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #7
  %16 = call ptr @memset(ptr %init_data, i32 0, i32 16)
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0156, ptr noundef nonnull @.str.7, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool17.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool17.not, label %if.end22, label %do.end21

do.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  br label %put_child_node

if.end22:                                         ; preds = %for.body
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp23 = icmp ugt i32 %18, 3
  br i1 %cmp23, label %if.end22.do.end29_crit_edge, label %lor.lhs.false

if.end22.do.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

lor.lhs.false:                                    ; preds = %if.end22
  %arrayidx = getelementptr %struct.mt6323_leds, ptr %call.i, i32 0, i32 3, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool25.not = icmp eq ptr %20, null
  br i1 %tobool25.not, label %if.end30, label %lor.lhs.false.do.end29_crit_edge

lor.lhs.false.do.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

do.end29:                                         ; preds = %lor.lhs.false.do.end29_crit_edge, %if.end22.do.end29_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %18) #10
  br label %put_child_node

if.end30:                                         ; preds = %lor.lhs.false
  %call.i128 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 412, i32 noundef 3520) #7
  %tobool32.not = icmp eq ptr %call.i128, null
  br i1 %tobool32.not, label %if.end30.put_child_node_crit_edge, label %if.end34

if.end30.put_child_node_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child_node

if.end34:                                         ; preds = %if.end30
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg, align 4
  %arrayidx36 = getelementptr %struct.mt6323_leds, ptr %call.i, i32 0, i32 3, i32 %22
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i128, ptr %arrayidx36, align 4
  %24 = ptrtoint ptr %call.i128 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %call.i128, align 4
  %max_brightness = getelementptr inbounds %struct.mt6323_led, ptr %call.i128, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %max_brightness, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.mt6323_led, ptr %call.i128, i32 0, i32 2, i32 6
  %26 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mt6323_led_set_brightness, ptr %brightness_set_blocking, align 4
  %blink_set = getelementptr inbounds %struct.mt6323_led, ptr %call.i128, i32 0, i32 2, i32 8
  %27 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mt6323_led_set_blink, ptr %blink_set, align 4
  %brightness_get = getelementptr inbounds %struct.mt6323_led, ptr %call.i128, i32 0, i32 2, i32 7
  %28 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mt6323_get_led_hw_brightness, ptr %brightness_get, align 4
  %parent52 = getelementptr inbounds %struct.mt6323_led, ptr %call.i128, i32 0, i32 1
  %29 = ptrtoint ptr %parent52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %parent52, align 4
  %cdev55 = getelementptr inbounds %struct.mt6323_led, ptr %call.i128, i32 0, i32 2
  %call.i129 = call ptr @of_get_property(ptr noundef nonnull %child.0156, ptr noundef nonnull @.str.20, ptr noundef null) #7
  %tobool.not.i130 = icmp eq ptr %call.i129, null
  br i1 %tobool.not.i130, label %if.end34.cond.end_crit_edge, label %if.then.i

if.end34.cond.end_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.then.i:                                        ; preds = %if.end34
  %call1.i = call i32 @strcmp(ptr noundef nonnull %call.i129, ptr noundef nonnull dereferenceable(5) @.str.21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  %call4.i = call i32 @mt6323_get_led_hw_brightness(ptr noundef %cdev55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.then3.i.do.end61_crit_edge, label %if.end.i131

if.then3.i.do.end61_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end61

if.end.i131:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %current_brightness.i = getelementptr %struct.mt6323_led, ptr %call.i128, i32 0, i32 3
  %30 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call4.i, ptr %current_brightness.i, align 4
  br label %cond.end

if.else.i:                                        ; preds = %if.then.i
  %call6.i = call i32 @strcmp(ptr noundef nonnull %call.i129, ptr noundef nonnull dereferenceable(3) @.str.22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else.i.mt6323_led_set_dt_default.exit_crit_edge

if.else.i.mt6323_led_set_dt_default.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6323_led_set_dt_default.exit

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_brightness, align 4
  br label %mt6323_led_set_dt_default.exit

mt6323_led_set_dt_default.exit:                   ; preds = %if.then8.i, %if.else.i.mt6323_led_set_dt_default.exit_crit_edge
  %.sink = phi i32 [ %32, %if.then8.i ], [ 0, %if.else.i.mt6323_led_set_dt_default.exit_crit_edge ]
  %call9.i = call i32 @mt6323_led_set_brightness(ptr noundef %cdev55, i32 noundef %.sink) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp57 = icmp slt i32 %call9.i, 0
  br i1 %cmp57, label %mt6323_led_set_dt_default.exit.do.end61_crit_edge, label %mt6323_led_set_dt_default.exit.cond.end_crit_edge

mt6323_led_set_dt_default.exit.cond.end_crit_edge: ; preds = %mt6323_led_set_dt_default.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

mt6323_led_set_dt_default.exit.do.end61_crit_edge: ; preds = %mt6323_led_set_dt_default.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end61

do.end61:                                         ; preds = %mt6323_led_set_dt_default.exit.do.end61_crit_edge, %if.then3.i.do.end61_crit_edge
  %retval.0.i132138 = phi i32 [ %call9.i, %mt6323_led_set_dt_default.exit.do.end61_crit_edge ], [ %call4.i, %if.then3.i.do.end61_crit_edge ]
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.15) #10
  br label %put_child_node

cond.end:                                         ; preds = %mt6323_led_set_dt_default.exit.cond.end_crit_edge, %if.end.i131, %if.end34.cond.end_crit_edge
  %fwnode = getelementptr inbounds %struct.device_node, ptr %child.0156, i32 0, i32 3
  %35 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %fwnode, ptr %init_data, align 4
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg, align 4
  %arrayidx67 = getelementptr %struct.mt6323_leds, ptr %call.i, i32 0, i32 3, i32 %37
  %38 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx67, align 4
  %cdev68 = getelementptr inbounds %struct.mt6323_led, ptr %39, i32 0, i32 2
  %call69 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %cdev68, ptr noundef nonnull %init_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %for.inc, label %do.end74

do.end74:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call69) #10
  br label %put_child_node

for.inc:                                          ; preds = %cond.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #7
  %call76 = call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef nonnull %child.0156) #7
  %cmp15.not = icmp eq ptr %call76, null
  br i1 %cmp15.not, label %for.inc.cleanup77_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup77_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup77

put_child_node:                                   ; preds = %do.end74, %do.end61, %if.end30.put_child_node_crit_edge, %do.end29, %do.end21
  %ret.0.ph = phi i32 [ %call69, %do.end74 ], [ %retval.0.i132138, %do.end61 ], [ -22, %do.end29 ], [ %call.i.i, %do.end21 ], [ -12, %if.end30.put_child_node_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #7
  call void @of_node_put(ptr noundef nonnull %child.0156) #7
  br label %cleanup77

cleanup77:                                        ; preds = %put_child_node, %for.inc.cleanup77_crit_edge, %if.end13.cleanup77_crit_edge, %do.end11, %dev_of_node.exit.cleanup77_crit_edge
  %retval.0 = phi i32 [ %call.i127, %do.end11 ], [ %ret.0.ph, %put_child_node ], [ -12, %dev_of_node.exit.cleanup77_crit_edge ], [ 0, %if.end13.cleanup77_crit_edge ], [ 0, %for.inc.cleanup77_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6323_led_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx10 = getelementptr %struct.mt6323_leds, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx10, align 4
  %tobool.not11 = icmp eq ptr %3, null
  br i1 %tobool.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %mt6323_led_hw_off.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %16, %mt6323_led_hw_off.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.012 = phi i32 [ %inc, %mt6323_led_hw_off.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %parent.i = getelementptr %struct.mt6323_led, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  %hw.i = getelementptr inbounds %struct.mt6323_leds, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw.i, align 4
  %regmap1.i = getelementptr inbounds %struct.mt6397_chip, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap1.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 4
  %shl.i = shl nuw i32 1, %12
  %neg.i = xor i32 %shl.i, -1
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 854, i32 noundef %shl.i, i32 noundef %neg.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %for.body.mt6323_led_hw_off.exit_crit_edge, label %if.end.i

for.body.mt6323_led_hw_off.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6323_led_hw_off.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 300, i32 noundef 2) #7
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  %shl5.i = shl nuw i32 1, %14
  %call.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 270, i32 noundef %shl5.i, i32 noundef %shl5.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %mt6323_led_hw_off.exit

mt6323_led_hw_off.exit:                           ; preds = %if.end.i, %for.body.mt6323_led_hw_off.exit_crit_edge
  %inc = add i32 %i.012, 1
  %arrayidx = getelementptr %struct.mt6323_leds, ptr %1, i32 0, i32 3, i32 %inc
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %mt6323_led_hw_off.exit.for.end_crit_edge, label %mt6323_led_hw_off.exit.for.body_crit_edge

mt6323_led_hw_off.exit.for.body_crit_edge:        ; preds = %mt6323_led_hw_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

mt6323_led_hw_off.exit.for.end_crit_edge:         ; preds = %mt6323_led_hw_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %mt6323_led_hw_off.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %hw = getelementptr inbounds %struct.mt6323_leds, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 258, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %lock = getelementptr inbounds %struct.mt6323_leds, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6323_led_set_brightness(ptr nocapture noundef %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr i8, ptr %cdev, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %lock = getelementptr inbounds %struct.mt6323_leds, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %current_brightness = getelementptr i8, ptr %cdev, i32 400
  %2 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool1.not = icmp eq i32 %brightness, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @mt6323_led_hw_on(ptr noundef %cdev, i32 noundef %brightness)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.out_crit_edge, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else:                                          ; preds = %entry
  %add.ptr.i31 = getelementptr i8, ptr %cdev, i32 -8
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %hw.i33 = getelementptr inbounds %struct.mt6323_leds, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hw.i33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i33, align 4
  %regmap1.i34 = getelementptr inbounds %struct.mt6397_chip, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap1.i34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap1.i34, align 4
  br i1 %tobool1.not, label %if.else9, label %if.then4

if.then4:                                         ; preds = %if.else
  %sub.i = shl i32 %brightness, 12
  %shl.i = add i32 %sub.i, 28672
  %and.i = and i32 %shl.i, 28672
  %or3.i = or i32 %and.i, 5
  %10 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i31, align 4
  %mul.i = shl i32 %11, 3
  %add.i = add i32 %mul.i, 820
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add.i, i32 noundef 28679, i32 noundef %or3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6 = icmp slt i32 %call.i.i, 0
  br i1 %cmp6, label %if.then4.out_crit_edge, label %if.then4.if.end15_crit_edge

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else9:                                         ; preds = %if.else
  %12 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i31, align 4
  %shl.i35 = shl nuw i32 1, %13
  %neg.i = xor i32 %shl.i35, -1
  %call.i.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 854, i32 noundef %shl.i35, i32 noundef %neg.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %cmp.i = icmp slt i32 %call.i.i36, 0
  br i1 %cmp.i, label %if.else9.out_crit_edge, label %mt6323_led_hw_off.exit

if.else9.out_crit_edge:                           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

mt6323_led_hw_off.exit:                           ; preds = %if.else9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 300, i32 noundef 2) #7
  %14 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i31, align 4
  %shl5.i = shl nuw i32 1, %15
  %call.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 270, i32 noundef %shl5.i, i32 noundef %shl5.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %16 = tail call i32 @llvm.smin.i32(i32 %call.i24.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %cmp11 = icmp slt i32 %call.i24.i, 0
  br i1 %cmp11, label %mt6323_led_hw_off.exit.out_crit_edge, label %mt6323_led_hw_off.exit.if.end15_crit_edge

mt6323_led_hw_off.exit.if.end15_crit_edge:        ; preds = %mt6323_led_hw_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

mt6323_led_hw_off.exit.out_crit_edge:             ; preds = %mt6323_led_hw_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %mt6323_led_hw_off.exit.if.end15_crit_edge, %if.then4.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %if.then4.if.end15_crit_edge ], [ 0, %mt6323_led_hw_off.exit.if.end15_crit_edge ], [ %call, %if.then.if.end15_crit_edge ]
  %17 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %brightness, ptr %current_brightness, align 4
  br label %out

out:                                              ; preds = %if.end15, %mt6323_led_hw_off.exit.out_crit_edge, %if.else9.out_crit_edge, %if.then4.out_crit_edge, %if.then.out_crit_edge
  %ret.1 = phi i32 [ %call.i.i, %if.then4.out_crit_edge ], [ %ret.0, %if.end15 ], [ %16, %mt6323_led_hw_off.exit.out_crit_edge ], [ %call, %if.then.out_crit_edge ], [ %call.i.i36, %if.else9.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6323_led_set_blink(ptr nocapture noundef %cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdev, i32 -8
  %parent = getelementptr i8, ptr %cdev, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %hw = getelementptr inbounds %struct.mt6323_leds, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %regmap1 = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1, align 4
  %6 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 500, ptr %delay_on, align 4
  %11 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 500, ptr %delay_off, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay_on, align 4
  %14 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delay_off, align 4
  %add = add i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %add)
  %cmp = icmp ugt i32 %add, 10000
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mul = mul i32 %13, 100000
  %mul5 = mul nuw nsw i32 %add, 3125
  %div62 = lshr i32 %mul5, 1
  %add7 = add i32 %div62, %mul
  %div8 = udiv i32 %add7, %mul5
  %conv = trunc i32 %div8 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool9.not = icmp eq i8 %conv, 0
  br i1 %tobool9.not, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %lock = getelementptr inbounds %struct.mt6323_leds, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %current_brightness = getelementptr i8, ptr %cdev, i32 400
  %16 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %current_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then13:                                        ; preds = %if.end11
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %cdev, i32 0, i32 2
  %18 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_brightness, align 4
  %call = tail call fastcc i32 @mt6323_led_hw_on(ptr noundef %cdev, i32 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp14 = icmp slt i32 %call, 0
  br i1 %cmp14, label %if.then13.out_crit_edge, label %if.end17

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_brightness, align 4
  %22 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %current_brightness, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %if.end11.if.end20_crit_edge
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr, align 4
  %mul21 = shl i32 %24, 3
  %add22 = add i32 %mul21, 816
  %conv23 = shl i32 %div8, 8
  %shl = add i32 %conv23, 7936
  %and = and i32 %shl, 7936
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add22, i32 noundef 7936, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25 = icmp slt i32 %call.i, 0
  br i1 %cmp25, label %if.end20.out_crit_edge, label %if.end28

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr, align 4
  %mul30 = shl i32 %26, 3
  %add31 = add i32 %mul30, 818
  %sub32 = add nuw nsw i32 %add, 65535
  %and33 = and i32 %sub32, 65535
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add31, i32 noundef 65535, i32 noundef %and33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %out

out:                                              ; preds = %if.end28, %if.end20.out_crit_edge, %if.then13.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end20.out_crit_edge ], [ %call.i63, %if.end28 ], [ %call, %if.then13.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6323_get_led_hw_brightness(ptr nocapture noundef readonly %cdev) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdev, i32 -8
  %parent = getelementptr i8, ptr %cdev, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %hw = getelementptr inbounds %struct.mt6323_leds, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %regmap1 = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status, align 4, !annotation !60
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 270, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %shl = shl nuw i32 1, %10
  %and = and i32 %shl, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @regmap_read(ptr noundef %5, i32 noundef 854, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %shl9 = shl nuw i32 1, %14
  %and10 = and i32 %shl9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %mul = shl i32 %14, 3
  %add = add i32 %mul, 820
  %call15 = call i32 @regmap_read(ptr noundef %5, i32 noundef %add, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %and19 = lshr i32 %16, 12
  %shr = and i32 %and19, 7
  %add20 = add nuw nsw i32 %shr, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add20, %if.end18 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt6323_led_hw_on(ptr nocapture noundef readonly %cdev, i32 noundef %brightness) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdev, i32 -8
  %parent = getelementptr i8, ptr %cdev, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %hw = getelementptr inbounds %struct.mt6323_leds, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %regmap1 = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %shl = shl i32 1024, %7
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 294, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %shl3 = shl nuw i32 1, %9
  %neg = xor i32 %shl3, -1
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 270, i32 noundef %shl3, i32 noundef %neg, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp7 = icmp slt i32 %call.i61, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 300, i32 noundef 2) #7
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %shl11 = shl nuw i32 1, %11
  %call.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 854, i32 noundef %shl11, i32 noundef %shl11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp15 = icmp slt i32 %call.i62, 0
  br i1 %cmp15, label %if.end9.cleanup_crit_edge, label %if.end17

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  %hw.i = getelementptr inbounds %struct.mt6323_leds, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 4
  %regmap1.i = getelementptr inbounds %struct.mt6397_chip, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap1.i, align 4
  %sub.i = shl i32 %brightness, 12
  %shl.i = add i32 %sub.i, 28672
  %and.i = and i32 %shl.i, 28672
  %or3.i = or i32 %and.i, 5
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %mul.i = shl i32 %19, 3
  %add.i = add i32 %mul.i, 820
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %add.i, i32 noundef 28679, i32 noundef %or3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp19 = icmp slt i32 %call.i.i, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  %mul = shl i32 %21, 3
  %add = add i32 %mul, 816
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 7936, i32 noundef 7936, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp24 = icmp slt i32 %call.i63, 0
  br i1 %cmp24, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %mul28 = shl i32 %23, 3
  %add29 = add i32 %mul28, 818
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add29, i32 noundef 65535, i32 noundef 1000, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %24 = tail call i32 @llvm.smin.i32(i32 %call.i64, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i61, %if.end.cleanup_crit_edge ], [ %call.i62, %if.end9.cleanup_crit_edge ], [ %call.i.i, %if.end17.cleanup_crit_edge ], [ %call.i63, %if.end21.cleanup_crit_edge ], [ %24, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_leds_mt6323__170_487_mt6323_led_driver_init6, !1, !"__initcall__kmod_leds_mt6323__170_487_mt6323_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-mt6323.c", i32 487, i32 1}
!2 = !{ptr @__exitcall_mt6323_led_driver_exit, !1, !"__exitcall_mt6323_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-mt6323.c", i32 489, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-mt6323.c", i32 490, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-mt6323.c", i32 491, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-mt6323.c", i32 482, i32 11}
!12 = !{ptr @mt6323_led_driver, !13, !"mt6323_led_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-mt6323.c", i32 478, i32 31}
!14 = !{ptr @mt6323_led_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-mt6323.c", i32 388, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/leds/leds-mt6323.c", i32 394, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mt6323_led_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mt6323_led_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-mt6323.c", i32 402, i32 37}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-mt6323.c", i32 404, i32 4}
!29 = !{ptr @mt6323_led_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mt6323_led_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-mt6323.c", i32 409, i32 4}
!33 = !{ptr @mt6323_led_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mt6323_led_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-mt6323.c", i32 432, i32 4}
!37 = !{ptr @mt6323_led_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mt6323_led_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-mt6323.c", i32 442, i32 4}
!41 = !{ptr @mt6323_led_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mt6323_led_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-mt6323.c", i32 345, i32 30}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-mt6323.c", i32 347, i32 22}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-mt6323.c", i32 353, i32 29}
!49 = !{ptr @mt6323_led_dt_match, !50, !"mt6323_led_dt_match", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-mt6323.c", i32 472, i32 34}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
