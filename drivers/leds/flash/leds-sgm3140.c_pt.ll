; ModuleID = '/llk/IR_all_yes/drivers/leds/flash/leds-sgm3140.c_pt.bc'
source_filename = "../drivers/leds/flash/leds-sgm3140.c"
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
%struct.sgm3140 = type { %struct.led_classdev_flash, ptr, %struct.timer_list, ptr, ptr, ptr, i8, i32, i32 }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_leds_sgm3140__294_307_sgm3140_driver_init6 = internal global ptr @sgm3140_driver_init, section ".initcall6.init", align 4
@sgm3140_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sgm3140_probe, ptr @sgm3140_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sgm3140_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sgm3140_driver_exit = internal global ptr @sgm3140_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [48 x i8] c"leds_sgm3140.author=Luca Weiss <luca@z3ntu.xyz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [65 x i8] c"leds_sgm3140.description=SG Micro SGM3140 charge pump LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [50 x i8] c"leds_sgm3140.file=drivers/leds/flash/leds-sgm3140\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"leds_sgm3140.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sgm3140\00", [24 x i8] zeroinitializer }, align 32
@sgm3140_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sgmicro,sgm3140\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request flash gpio\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request enable gpio\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@sgm3140_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 218, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"No fwnode child node found for connected LED.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sgm3140_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/leds/flash/leds-sgm3140.c\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sgm3140_probe._entry_ptr = internal global ptr @sgm3140_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flash-max-timeout-us\00", [43 x i8] zeroinitializer }, align 32
@sgm3140_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.9, i32 227, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"flash-max-timeout-us property missing\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sgm3140_probe._entry_ptr.16 = internal global ptr @sgm3140_probe._entry.13, section ".printk_index", align 4
@sgm3140_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&priv->powerdown_timer)\00", [39 x i8] zeroinitializer }, align 32
@sgm3140_flash_ops = internal constant { %struct.led_flash_ops, [40 x i8] } { %struct.led_flash_ops { ptr null, ptr null, ptr @sgm3140_strobe_set, ptr @sgm3140_strobe_get, ptr @sgm3140_timeout_set, ptr null }, [40 x i8] zeroinitializer }, align 32
@sgm3140_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.9, i32 258, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register flash device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sgm3140_probe._entry_ptr.20 = internal global ptr @sgm3140_probe._entry.18, section ".printk_index", align 4
@sgm3140_strobe_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.9, i32 50, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sgm3140_strobe_set\00", [45 x i8] zeroinitializer }, align 32
@sgm3140_strobe_set._entry_ptr = internal global ptr @sgm3140_strobe_set._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sgm3140_strobe_set._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.9, i32 64, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sgm3140_strobe_set._entry_ptr.25 = internal global ptr @sgm3140_strobe_set._entry.23, section ".printk_index", align 4
@sgm3140_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.26, ptr @.str.9, i32 114, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sgm3140_brightness_set\00", [41 x i8] zeroinitializer }, align 32
@sgm3140_brightness_set._entry_ptr = internal global ptr @sgm3140_brightness_set._entry, section ".printk_index", align 4
@sgm3140_brightness_set._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.9, i32 123, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@sgm3140_brightness_set._entry_ptr.28 = internal global ptr @sgm3140_brightness_set._entry.27, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"sgm3140_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 298, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 302, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"sgm3140_dt_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 292, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 196, i32 48 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 200, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 202, i32 49 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 206, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 208, i32 55 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 212, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 217, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 222, i32 45 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 226, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 236, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"sgm3140_flash_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 93, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 257, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 49, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 63, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 113, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private constant [37 x i8] c"../drivers/leds/flash/leds-sgm3140.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 122, i32 4 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_sgm3140_driver_exit, ptr @__initcall__kmod_leds_sgm3140__294_307_sgm3140_driver_init6, ptr @sgm3140_brightness_set._entry, ptr @sgm3140_brightness_set._entry.27, ptr @sgm3140_brightness_set._entry_ptr, ptr @sgm3140_brightness_set._entry_ptr.28, ptr @sgm3140_driver_exit, ptr @sgm3140_probe._entry, ptr @sgm3140_probe._entry.13, ptr @sgm3140_probe._entry.18, ptr @sgm3140_probe._entry_ptr, ptr @sgm3140_probe._entry_ptr.16, ptr @sgm3140_probe._entry_ptr.20, ptr @sgm3140_strobe_set._entry, ptr @sgm3140_strobe_set._entry.23, ptr @sgm3140_strobe_set._entry_ptr, ptr @sgm3140_strobe_set._entry_ptr.25, ptr @sgm3140_driver, ptr @.str, ptr @sgm3140_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @sgm3140_probe.__key, ptr @.str.17, ptr @sgm3140_flash_ops, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgm3140_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgm3140_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgm3140_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgm3140_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgm3140_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgm3140_flash_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgm3140_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgm3140_strobe_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgm3140_strobe_set._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgm3140_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgm3140_brightness_set._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sgm3140_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sgm3140_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sgm3140_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sgm3140_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgm3140_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init_data = alloca %struct.led_init_data, align 4
  %v4l2_sd_cfg = alloca %struct.v4l2_flash_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #8
  %0 = getelementptr inbounds i8, ptr %init_data, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %v4l2_sd_cfg) #8
  %2 = call ptr @memset(ptr %v4l2_sd_cfg, i32 0, i32 56)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 532, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 3) #8
  %flash_gpio = getelementptr inbounds %struct.sgm3140, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %flash_gpio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %flash_gpio, align 4
  %cmp.i.i.not = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call2 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 3) #8
  %enable_gpio = getelementptr inbounds %struct.sgm3140, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %enable_gpio, align 4
  %cmp.i.i125.not = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i125.not, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call11 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call20 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #8
  %vin_regulator = getelementptr inbounds %struct.sgm3140, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %vin_regulator to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call20, ptr %vin_regulator, align 4
  %cmp.i.i127.not = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i127.not, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call20 to i32
  %call26 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %8, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %fwnode = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 28
  %9 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fwnode, align 4
  %call29 = tail call ptr @fwnode_get_next_available_child_node(ptr noundef %10, ptr noundef null) #8
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end, label %if.end33

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %max_timeout = getelementptr inbounds %struct.sgm3140, ptr %call.i, i32 0, i32 8
  %call.i129 = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call29, ptr noundef nonnull @.str.12, ptr noundef %max_timeout, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool35.not = icmp eq i32 %call.i129, 0
  br i1 %tobool35.not, label %if.end33.if.end42_crit_edge, label %if.then36

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 300000, ptr %max_timeout, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end33.if.end42_crit_edge
  %12 = ptrtoint ptr %max_timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_timeout, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 250000)
  %timeout = getelementptr inbounds %struct.sgm3140, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %timeout, align 4
  %powerdown_timer = getelementptr inbounds %struct.sgm3140, ptr %call.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %powerdown_timer, ptr noundef nonnull @sgm3140_powerdown_timer, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @sgm3140_probe.__key) #8
  %ops = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sgm3140_flash_ops, ptr %ops, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sgm3140_brightness_set, ptr %brightness_set_blocking, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %max_brightness, align 4
  %flags = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %or = or i32 %20, 262144
  store i32 %or, ptr %flags, align 4
  %timeout.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %timeout.i, align 4
  %22 = ptrtoint ptr %max_timeout to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_timeout, align 4
  %max.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max.i, align 4
  %step.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %step.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %step.i, align 4
  %val.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 250000, ptr %val.i, align 4
  %27 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call29, ptr %init_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call51 = call i32 @devm_led_classdev_flash_register_ext(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %init_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call51) #11
  br label %err

if.end58:                                         ; preds = %if.end42
  %dev.i = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 11
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %call.i130 = call i32 @strscpy(ptr noundef nonnull %v4l2_sd_cfg, ptr noundef %32, i32 noundef 32) #8
  %intensity.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1
  %33 = ptrtoint ptr %intensity.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %intensity.i, align 4
  %max.i131 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %max.i131 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %max.i131, align 4
  %step.i132 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %step.i132 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %step.i132, align 4
  %val.i133 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %val.i133 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %val.i133, align 4
  %call60 = call ptr @v4l2_flash_init(ptr noundef %dev, ptr noundef nonnull %call29, ptr noundef nonnull %call.i, ptr noundef null, ptr noundef nonnull %v4l2_sd_cfg) #8
  %v4l2_flash = getelementptr inbounds %struct.sgm3140, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call60, ptr %v4l2_flash, align 4
  %cmp.i = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then63, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call60 to i32
  br label %err

err:                                              ; preds = %if.then63, %do.end56
  %ret.0 = phi i32 [ %call51, %do.end56 ], [ %38, %if.then63 ]
  call void @fwnode_handle_put(ptr noundef nonnull %call29) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end58.cleanup_crit_edge, %do.end, %if.then24, %if.then15, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then6 ], [ %call17, %if.then15 ], [ %call26, %if.then24 ], [ %ret.0, %err ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %v4l2_sd_cfg) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgm3140_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %powerdown_timer = getelementptr inbounds %struct.sgm3140, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @del_timer_sync(ptr noundef %powerdown_timer) #8
  %v4l2_flash = getelementptr inbounds %struct.sgm3140, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_flash, align 4
  tail call void @v4l2_flash_release(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_available_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sgm3140_powerdown_timer(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_gpio = getelementptr i8, ptr %t, i32 52
  %0 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #8
  %flash_gpio = getelementptr i8, ptr %t, i32 48
  %2 = ptrtoint ptr %flash_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flash_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #8
  %vin_regulator = getelementptr i8, ptr %t, i32 56
  %4 = ptrtoint ptr %vin_regulator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vin_regulator, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %5) #8
  %enabled = getelementptr i8, ptr %t, i32 60
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgm3140_brightness_set(ptr nocapture noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 1
  %frombool = zext i1 %cmp to i8
  %enabled = getelementptr inbounds %struct.sgm3140, ptr %led_cdev, i32 0, i32 6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !77
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp4 = icmp eq i8 %1, %frombool
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %vin_regulator = getelementptr inbounds %struct.sgm3140, ptr %led_cdev, i32 0, i32 5
  %2 = ptrtoint ptr %vin_regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vin_regulator, align 4
  %call8 = tail call i32 @regulator_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %call8) #11
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %enable_gpio = getelementptr inbounds %struct.sgm3140, ptr %led_cdev, i32 0, i32 4
  %6 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #8
  br label %if.end22

if.else:                                          ; preds = %if.end
  %enable_gpio12 = getelementptr inbounds %struct.sgm3140, ptr %led_cdev, i32 0, i32 4
  %8 = ptrtoint ptr %enable_gpio12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_gpio12, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #8
  %vin_regulator13 = getelementptr inbounds %struct.sgm3140, ptr %led_cdev, i32 0, i32 5
  %10 = ptrtoint ptr %vin_regulator13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vin_regulator13, align 4
  %call14 = tail call i32 @regulator_disable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else.if.end22_crit_edge, label %do.end19

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %12 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.24, i32 noundef %call14) #11
  br label %cleanup

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %if.end11
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ 0, %if.end22 ], [ %call14, %do.end19 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_flash_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_flash_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgm3140_strobe_set(ptr noundef %fled_cdev, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %state to i8
  %enabled = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !77
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp = icmp eq i8 %1, %frombool
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %state, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %vin_regulator = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 5
  %2 = ptrtoint ptr %vin_regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vin_regulator, align 4
  %call6 = tail call i32 @regulator_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.led_classdev, ptr %fled_cdev, i32 0, i32 11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %call6) #11
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %flash_gpio = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 3
  %6 = ptrtoint ptr %flash_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flash_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #8
  %enable_gpio = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 4
  %8 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #8
  %powerdown_timer = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 7
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeout, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %12) #8
  %add = add i32 %call3.i, %10
  %call11 = tail call i32 @mod_timer(ptr noundef %powerdown_timer, i32 noundef %add) #8
  br label %if.end26

if.else:                                          ; preds = %if.end
  %powerdown_timer12 = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 2
  %call13 = tail call i32 @del_timer_sync(ptr noundef %powerdown_timer12) #8
  %enable_gpio14 = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 4
  %13 = ptrtoint ptr %enable_gpio14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enable_gpio14, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 0) #8
  %flash_gpio15 = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 3
  %15 = ptrtoint ptr %flash_gpio15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flash_gpio15, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 0) #8
  %vin_regulator16 = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 5
  %17 = ptrtoint ptr %vin_regulator16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vin_regulator16, align 4
  %call17 = tail call i32 @regulator_disable(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else.if.end26_crit_edge, label %do.end22

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.led_classdev, ptr %fled_cdev, i32 0, i32 11
  %19 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.24, i32 noundef %call17) #11
  br label %cleanup

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %if.end9
  %21 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end22, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %if.end26 ], [ %call17, %do.end22 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sgm3140_strobe_get(ptr noundef %fled_cdev, ptr nocapture noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 2, i32 0, i32 1
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sgm3140_timeout_set(ptr nocapture noundef writeonly %fled_cdev, i32 noundef %timeout) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout1 = getelementptr inbounds %struct.sgm3140, ptr %fled_cdev, i32 0, i32 7
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %timeout, ptr %timeout1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_leds_sgm3140__294_307_sgm3140_driver_init6, !1, !"__initcall__kmod_leds_sgm3140__294_307_sgm3140_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 307, i32 1}
!2 = !{ptr @__exitcall_sgm3140_driver_exit, !1, !"__exitcall_sgm3140_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 309, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 310, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 311, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 302, i32 11}
!12 = !{ptr @sgm3140_driver, !13, !"sgm3140_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 298, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 196, i32 48}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 200, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 202, i32 49}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 206, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 208, i32 55}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 212, i32 10}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 217, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sgm3140_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @sgm3140_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 222, i32 45}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 226, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sgm3140_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sgm3140_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @sgm3140_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 236, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 257, i32 3}
!46 = !{ptr @sgm3140_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sgm3140_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @sgm3140_flash_ops, !49, !"sgm3140_flash_ops", i1 false, i1 false}
!49 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 93, i32 35}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 49, i32 4}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sgm3140_strobe_set._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @sgm3140_strobe_set._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 63, i32 4}
!57 = !{ptr @sgm3140_strobe_set._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sgm3140_strobe_set._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 113, i32 4}
!61 = !{ptr @sgm3140_brightness_set._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sgm3140_brightness_set._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @sgm3140_brightness_set._entry.27, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 122, i32 4}
!65 = !{ptr @sgm3140_brightness_set._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @sgm3140_dt_match, !67, !"sgm3140_dt_match", i1 false, i1 false}
!67 = !{!"../drivers/leds/flash/leds-sgm3140.c", i32 292, i32 34}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
