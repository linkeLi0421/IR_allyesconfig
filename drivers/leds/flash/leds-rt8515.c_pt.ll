; ModuleID = '/llk/IR_all_yes/drivers/leds/flash/leds-rt8515.c_pt.bc'
source_filename = "../drivers/leds/flash/leds-rt8515.c"
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
%struct.led_flash_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.v4l2_flash_config = type { [32 x i8], %struct.led_flash_setting, i32, i8 }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
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
%struct.rt8515 = type { %struct.led_classdev_flash, ptr, ptr, %struct.mutex, ptr, ptr, ptr, %struct.timer_list, i32, i32, i32 }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_leds_rt8515__294_395_rt8515_driver_init6 = internal global ptr @rt8515_driver_init, section ".initcall6.init", align 4
@rt8515_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rt8515_probe, ptr @rt8515_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt8515_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rt8515_driver_exit = internal global ptr @rt8515_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [60 x i8] c"leds_rt8515.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [50 x i8] c"leds_rt8515.description=Richtek RT8515 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [48 x i8] c"leds_rt8515.file=drivers/leds/flash/leds-rt8515\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [24 x i8] c"leds_rt8515.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt8515\00", [25 x i8] zeroinitializer }, align 32
@rt8515_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"richtek,rt8515\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"enf\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot get ENF (enable flash) GPIO\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ent\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot get ENT (enable torch) GPIO\0A\00", [60 x i8] zeroinitializer }, align 32
@rt8515_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 310, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"No fwnode child node found for connected LED.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt8515_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/leds/flash/leds-rt8515.c\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt8515_probe._entry_ptr = internal global ptr @rt8515_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"richtek,rfs-ohms\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flash-max-microamp\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"richtek,rts-ohms\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flash-max-timeout-us\00", [43 x i8] zeroinitializer }, align 32
@rt8515_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.7, i32 329, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"flash-max-timeout-us property missing\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt8515_probe._entry_ptr.18 = internal global ptr @rt8515_probe._entry.15, section ".printk_index", align 4
@rt8515_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&rt->powerdown_timer)\00", [41 x i8] zeroinitializer }, align 32
@rt8515_flash_ops = internal constant { %struct.led_flash_ops, [40 x i8] } { %struct.led_flash_ops { ptr null, ptr null, ptr @rt8515_led_flash_strobe_set, ptr @rt8515_led_flash_strobe_get, ptr @rt8515_led_flash_timeout_set, ptr null }, [40 x i8] zeroinitializer }, align 32
@rt8515_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rt->lock\00", [22 x i8] zeroinitializer }, align 32
@rt8515_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.7, i32 348, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't register LED %s\0A\00", [41 x i8] zeroinitializer }, align 32
@rt8515_probe._entry_ptr.24 = internal global ptr @rt8515_probe._entry.22, section ".printk_index", align 4
@rt8515_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.7, i32 359, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to register V4L2 flash device (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@rt8515_probe._entry_ptr.27 = internal global ptr @rt8515_probe._entry.25, section ".printk_index", align 4
@rt8515_determine_max_intensity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 249, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"either %s or %s missing from DT, using HW max\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rt8515_determine_max_intensity\00", [33 x i8] zeroinitializer }, align 32
@rt8515_determine_max_intensity._entry_ptr = internal global ptr @rt8515_determine_max_intensity._entry, section ".printk_index", align 4
@rt8515_determine_max_intensity._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.7, i32 268, ptr @.str.32, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"current restricted from %u to %u mA, max intensity %d/100\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt8515_determine_max_intensity._entry_ptr.33 = internal global ptr @rt8515_determine_max_intensity._entry.30, section ".printk_index", align 4
@rt8515_determine_max_intensity._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.7, i32 272, ptr @.str.32, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max intensity %d/%d = %d mA\0A\00", [35 x i8] zeroinitializer }, align 32
@rt8515_determine_max_intensity._entry_ptr.36 = internal global ptr @rt8515_determine_max_intensity._entry.34, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"rt8515_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 387, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 389, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"rt8515_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 381, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 296, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 299, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 302, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 305, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 309, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 315, i32 44 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 316, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 319, i32 44 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 320, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 324, i32 40 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 328, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 331, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"rt8515_flash_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 160, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 340, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 348, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 358, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 247, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 266, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [36 x i8] c"../drivers/leds/flash/leds-rt8515.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 271, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_rt8515_driver_exit, ptr @__initcall__kmod_leds_rt8515__294_395_rt8515_driver_init6, ptr @rt8515_determine_max_intensity._entry, ptr @rt8515_determine_max_intensity._entry.30, ptr @rt8515_determine_max_intensity._entry.34, ptr @rt8515_determine_max_intensity._entry_ptr, ptr @rt8515_determine_max_intensity._entry_ptr.33, ptr @rt8515_determine_max_intensity._entry_ptr.36, ptr @rt8515_driver_exit, ptr @rt8515_probe._entry, ptr @rt8515_probe._entry.15, ptr @rt8515_probe._entry.22, ptr @rt8515_probe._entry.25, ptr @rt8515_probe._entry_ptr, ptr @rt8515_probe._entry_ptr.18, ptr @rt8515_probe._entry_ptr.24, ptr @rt8515_probe._entry_ptr.27, ptr @rt8515_driver, ptr @.str, ptr @rt8515_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @rt8515_probe.__key, ptr @.str.19, ptr @rt8515_flash_ops, ptr @rt8515_probe.__key.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_flash_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_determine_max_intensity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_determine_max_intensity._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt8515_determine_max_intensity._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt8515_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rt8515_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt8515_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rt8515_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt8515_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init_data = alloca %struct.led_init_data, align 4
  %v4l2_sd_cfg = alloca %struct.v4l2_flash_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #8
  %0 = getelementptr inbounds i8, ptr %init_data, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %v4l2_sd_cfg) #8
  %2 = call ptr @memset(ptr %v4l2_sd_cfg, i32 0, i32 56)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 628, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.rt8515, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev2, align 4
  %call4 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 3) #8
  %enable_flash = getelementptr inbounds %struct.rt8515, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %enable_flash to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %enable_flash, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call4 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 3) #8
  %enable_torch = getelementptr inbounds %struct.rt8515, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %enable_torch to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %enable_torch, align 4
  %cmp.i118 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call12 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %7, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %fwnode = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 28
  %8 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fwnode, align 4
  %call20 = tail call ptr @fwnode_get_next_available_child_node(ptr noundef %9, ptr noundef null) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %10 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20, ptr %init_data, align 4
  %flash_max_intensity = getelementptr inbounds %struct.rt8515, ptr %call.i, i32 0, i32 9
  tail call fastcc void @rt8515_determine_max_intensity(ptr noundef nonnull %call.i, ptr noundef nonnull %call20, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 16, ptr noundef %flash_max_intensity)
  %torch_max_intensity = getelementptr inbounds %struct.rt8515, ptr %call.i, i32 0, i32 10
  tail call fastcc void @rt8515_determine_max_intensity(ptr noundef nonnull %call.i, ptr noundef nonnull %call20, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 100, ptr noundef %torch_max_intensity)
  %max_timeout = getelementptr inbounds %struct.rt8515, ptr %call.i, i32 0, i32 8
  %call.i119 = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call20, ptr noundef nonnull @.str.14, ptr noundef %max_timeout, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool26.not = icmp eq i32 %call.i119, 0
  br i1 %tobool26.not, label %if.end23.do.body33_crit_edge, label %if.then27

if.end23.do.body33_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 300000, ptr %max_timeout, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %do.body33

do.body33:                                        ; preds = %if.then27, %if.end23.do.body33_crit_edge
  %powerdown_timer = getelementptr inbounds %struct.rt8515, ptr %call.i, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %powerdown_timer, ptr noundef nonnull @rt8515_powerdown_timer, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @rt8515_probe.__key) #8
  %timeout.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %timeout.i, align 4
  %13 = ptrtoint ptr %max_timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_timeout, align 4
  %max.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max.i, align 4
  %step.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %step.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %step.i, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 250000) #8
  %val.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val.i, align 4
  %ops = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rt8515_flash_ops, ptr %ops, align 4
  %20 = ptrtoint ptr %torch_max_intensity to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %torch_max_intensity, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_brightness, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rt8515_led_brightness_set, ptr %brightness_set_blocking, align 4
  %flags = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %or = or i32 %25, 327680
  store i32 %or, ptr %flags, align 4
  %lock = getelementptr inbounds %struct.rt8515, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @rt8515_probe.__key.20) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call40 = call i32 @devm_led_classdev_flash_register_ext(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %init_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end47, label %if.then42

if.then42:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  call void @fwnode_handle_put(ptr noundef nonnull %call20) #8
  call void @mutex_destroy(ptr noundef %lock) #8
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef %28) #11
  br label %cleanup

if.end47:                                         ; preds = %do.body33
  %dev.i = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 11
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %call.i120 = call i32 @strscpy(ptr noundef nonnull %v4l2_sd_cfg, ptr noundef %32, i32 noundef 32) #8
  %intensity.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1
  %33 = ptrtoint ptr %intensity.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %intensity.i, align 4
  %34 = ptrtoint ptr %flash_max_intensity to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flash_max_intensity, align 4
  %max.i121 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %max.i121 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max.i121, align 4
  %step.i122 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %step.i122 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %step.i122, align 4
  %val.i123 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %val.i123 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %val.i123, align 4
  %call48 = call ptr @v4l2_flash_init(ptr noundef %dev1, ptr noundef nonnull %call20, ptr noundef nonnull %call.i, ptr noundef null, ptr noundef nonnull %v4l2_sd_cfg) #8
  %v4l2_flash = getelementptr inbounds %struct.rt8515, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call48, ptr %v4l2_flash, align 4
  %cmp.i124 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then51, label %if.end47.if.end57_crit_edge

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %call48 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %40) #11
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end47.if.end57_crit_edge
  call void @fwnode_handle_put(ptr noundef nonnull %call20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then42, %do.end, %if.then15, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then7 ], [ %call18, %if.then15 ], [ %call40, %if.then42 ], [ 0, %if.end57 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %v4l2_sd_cfg) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt8515_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %v4l2_flash.i = getelementptr inbounds %struct.rt8515, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %v4l2_flash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_flash.i, align 4
  tail call void @v4l2_flash_release(ptr noundef %3) #8
  %powerdown_timer = getelementptr inbounds %struct.rt8515, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @del_timer_sync(ptr noundef %powerdown_timer) #8
  %lock = getelementptr inbounds %struct.rt8515, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_available_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt8515_determine_max_intensity(ptr nocapture noundef readonly %rt, ptr noundef %led, ptr noundef %resistance, ptr noundef %max_ua_prop, i32 noundef %hw_max, ptr nocapture noundef writeonly %max_intensity_setting) unnamed_addr #2 align 64 {
entry:
  %res = alloca i32, align 4
  %ua = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #8
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %res, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ua) #8
  %1 = ptrtoint ptr %ua to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ua, align 4, !annotation !86
  %dev = getelementptr inbounds %struct.rt8515, ptr %rt, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %fwnode = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwnode, align 4
  %call.i = call i32 @fwnode_property_read_u32_array(ptr noundef %5, ptr noundef %resistance, ptr noundef nonnull %res, i32 noundef 1) #8
  %call.i24 = call i32 @fwnode_property_read_u32_array(ptr noundef %led, ptr noundef %max_ua_prop, ptr noundef nonnull %ua, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not = icmp eq i32 %call.i24, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.28, ptr noundef %resistance, ptr noundef %max_ua_prop) #11
  br label %do.end12

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 5500000, %7
  %10 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ua, align 4
  %div3 = udiv i32 %11, 10
  %div4 = udiv i32 %div3, %div
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %div9 = udiv i32 %11, 1000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.31, i32 noundef %div, i32 noundef %div9, i32 noundef %div4) #11
  br label %do.end12

do.end12:                                         ; preds = %if.end, %do.end
  %max_intensity.0 = phi i32 [ %hw_max, %do.end ], [ %div4, %if.end ]
  %max_ma.0 = phi i32 [ 700, %do.end ], [ %div, %if.end ]
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef %max_intensity.0, i32 noundef %hw_max, i32 noundef %max_ma.0) #11
  %16 = ptrtoint ptr %max_intensity_setting to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %max_intensity.0, ptr %max_intensity_setting, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ua) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt8515_powerdown_timer(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_flash.i = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %enable_flash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_flash.i, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #8
  %enable_torch.i = getelementptr i8, ptr %t, i32 -8
  %2 = ptrtoint ptr %enable_torch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_torch.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt8515_led_brightness_set(ptr noundef %led, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rt8515, ptr %led, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %enable_flash.i = getelementptr inbounds %struct.rt8515, ptr %led, i32 0, i32 6
  %0 = ptrtoint ptr %enable_flash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_flash.i, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #8
  %enable_torch.i = getelementptr inbounds %struct.rt8515, ptr %led, i32 0, i32 5
  %2 = ptrtoint ptr %enable_torch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_torch.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #8
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %brightness)
  %cmp2 = icmp ult i32 %brightness, 100
  %enable_torch = getelementptr inbounds %struct.rt8515, ptr %led, i32 0, i32 5
  %4 = ptrtoint ptr %enable_torch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_torch, align 4
  br i1 %cmp2, label %if.else.for.body.i_crit_edge, label %if.else4

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #8
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #8
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %brightness
  br i1 %exitcond.not.i, label %for.body.i.if.end6_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end6_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %for.body.i.if.end6_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_flash_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_flash_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt8515_led_flash_strobe_set(ptr noundef %fled, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flash_max_intensity = getelementptr inbounds %struct.rt8515, ptr %fled, i32 0, i32 9
  %0 = ptrtoint ptr %flash_max_intensity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash_max_intensity, align 4
  %lock = getelementptr inbounds %struct.rt8515, ptr %fled, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %enable_flash = getelementptr inbounds %struct.rt8515, ptr %fled, i32 0, i32 6
  %2 = ptrtoint ptr %enable_flash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_flash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.i = icmp sgt i32 %1, 0
  br i1 %cmp3.i, label %if.then.for.body.i_crit_edge, label %if.then.rt8515_gpio_brightness_commit.exit_crit_edge

if.then.rt8515_gpio_brightness_commit.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt8515_gpio_brightness_commit.exit

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #8
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.body.i.rt8515_gpio_brightness_commit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.rt8515_gpio_brightness_commit.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt8515_gpio_brightness_commit.exit

rt8515_gpio_brightness_commit.exit:               ; preds = %for.body.i.rt8515_gpio_brightness_commit.exit_crit_edge, %if.then.rt8515_gpio_brightness_commit.exit_crit_edge
  %powerdown_timer = getelementptr inbounds %struct.rt8515, ptr %fled, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %val = getelementptr inbounds %struct.led_classdev_flash, ptr %fled, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %8) #8
  %add = add i32 %call3.i, %6
  %call3 = tail call i32 @mod_timer(ptr noundef %powerdown_timer, i32 noundef %add) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %powerdown_timer4 = getelementptr inbounds %struct.rt8515, ptr %fled, i32 0, i32 7
  %call5 = tail call i32 @del_timer_sync(ptr noundef %powerdown_timer4) #8
  %enable_flash.i = getelementptr inbounds %struct.rt8515, ptr %fled, i32 0, i32 6
  %9 = ptrtoint ptr %enable_flash.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_flash.i, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #8
  %enable_torch.i = getelementptr inbounds %struct.rt8515, ptr %fled, i32 0, i32 5
  %11 = ptrtoint ptr %enable_torch.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enable_torch.i, align 4
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %rt8515_gpio_brightness_commit.exit
  %brightness6 = getelementptr inbounds %struct.led_classdev, ptr %fled, i32 0, i32 1
  %13 = ptrtoint ptr %brightness6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %brightness6, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt8515_led_flash_strobe_get(ptr noundef %fled, ptr nocapture noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.rt8515, ptr %fled, i32 0, i32 7, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %1, null
  %frombool = zext i1 %tobool.not.i.i to i8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %state, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt8515_led_flash_timeout_set(ptr nocapture noundef readnone %fled, i32 noundef %timeout) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_flash_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_leds_rt8515__294_395_rt8515_driver_init6, !1, !"__initcall__kmod_leds_rt8515__294_395_rt8515_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 395, i32 1}
!2 = !{ptr @__exitcall_rt8515_driver_exit, !1, !"__exitcall_rt8515_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 397, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 398, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 399, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 389, i32 12}
!12 = !{ptr @rt8515_driver, !13, !"rt8515_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 387, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 296, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 299, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 302, i32 41}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 305, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 309, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rt8515_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rt8515_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 315, i32 44}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 316, i32 12}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 319, i32 44}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 320, i32 12}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 324, i32 40}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 328, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rt8515_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @rt8515_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @rt8515_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 331, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rt8515_probe.__key.20, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 340, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 348, i32 3}
!53 = !{ptr @rt8515_probe._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rt8515_probe._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 358, i32 3}
!57 = !{ptr @rt8515_probe._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rt8515_probe._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 247, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @rt8515_determine_max_intensity._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @rt8515_determine_max_intensity._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 266, i32 2}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rt8515_determine_max_intensity._entry.30, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @rt8515_determine_max_intensity._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 271, i32 2}
!71 = !{ptr @rt8515_determine_max_intensity._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rt8515_determine_max_intensity._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @rt8515_flash_ops, !74, !"rt8515_flash_ops", i1 false, i1 false}
!74 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 160, i32 35}
!75 = !{ptr @rt8515_match, !76, !"rt8515_match", i1 false, i1 false}
!76 = !{!"../drivers/leds/flash/leds-rt8515.c", i32 381, i32 34}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
