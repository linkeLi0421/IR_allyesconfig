; ModuleID = '/llk/IR_all_yes/drivers/leds/flash/leds-aat1290.c_pt.bc'
source_filename = "../drivers/leds/flash/leds-aat1290.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.led_flash_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_flash_ops = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.aat1290_led_config_data = type { i32, i32, i32, i8, i32 }
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
%struct.aat1290_led = type { ptr, %struct.mutex, %struct.led_classdev_flash, ptr, ptr, ptr, ptr, i8, i32 }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_aat1290__292_552_aat1290_led_driver_init6 = internal global ptr @aat1290_led_driver_init, section ".initcall6.init", align 4
@aat1290_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aat1290_led_probe, ptr @aat1290_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aat1290_led_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aat1290_led_driver_exit = internal global ptr @aat1290_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [64 x i8] c"leds_aat1290.author=Jacek Anaszewski <j.anaszewski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [67 x i8] c"leds_aat1290.description=Skyworks Current Regulator for Flash LEDs\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [50 x i8] c"leds_aat1290.file=drivers/leds/flash/leds-aat1290\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [28 x i8] c"leds_aat1290.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aat1290\00", [24 x i8] zeroinitializer }, align 32
@aat1290_led_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"skyworks,aat1290\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@flash_ops = internal constant { %struct.led_flash_ops, [40 x i8] } { %struct.led_flash_ops { ptr null, ptr null, ptr @aat1290_led_flash_strobe_set, ptr null, ptr @aat1290_led_flash_timeout_set, ptr null }, [40 x i8] zeroinitializer }, align 32
@aat1290_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&led->lock\00", [21 x i8] zeroinitializer }, align 32
@v4l2_flash_ops = internal constant { %struct.v4l2_flash_ops, [20 x i8] } { %struct.v4l2_flash_ops { ptr @aat1290_led_external_strobe_set, ptr @aat1290_intensity_to_brightness, ptr @aat1290_brightness_to_intensity }, [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"flen\00", [27 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 229, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to claim gpio \22flen\22.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aat1290_led_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/leds/flash/leds-aat1290.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry_ptr = internal global ptr @aat1290_led_parse_dt._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"enset\00", [26 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 236, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to claim gpio \22enset\22.\0A\00", [33 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry_ptr.11 = internal global ptr @aat1290_led_parse_dt._entry.9, section ".printk_index", align 4
@aat1290_led_parse_dt._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 245, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"No support for external strobe detected.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry_ptr.15 = internal global ptr @aat1290_led_parse_dt._entry.12, section ".printk_index", align 4
@aat1290_led_parse_dt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 253, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No DT child node found for connected LED.\0A\00", [53 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry_ptr.18 = internal global ptr @aat1290_led_parse_dt._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 265, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"led-max-microamp DT property missing\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry_ptr.23 = internal global ptr @aat1290_led_parse_dt._entry.20, section ".printk_index", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flash-max-microamp\00", [45 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 271, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"flash-max-microamp DT property missing\0A\00", [56 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry_ptr.27 = internal global ptr @aat1290_led_parse_dt._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flash-max-timeout-us\00", [43 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 279, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"flash-max-timeout-us DT property missing\0A\00", [54 x i8] zeroinitializer }, align 32
@aat1290_led_parse_dt._entry_ptr.31 = internal global ptr @aat1290_led_parse_dt._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@aat1290_led_external_strobe_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 414, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to switch strobe source.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"aat1290_led_external_strobe_set\00", [32 x i8] zeroinitializer }, align 32
@aat1290_led_external_strobe_set._entry_ptr = internal global ptr @aat1290_led_external_strobe_set._entry, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"aat1290_led_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 543, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 547, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"aat1290_led_dt_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 537, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"flash_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 454, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 486, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"v4l2_flash_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 440, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 226, i32 40 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 229, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 233, i32 41 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 236, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 244, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 253, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 257, i32 41 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 264, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 267, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 270, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 275, i32 41 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 278, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [36 x i8] c"../include/linux/pinctrl/consumer.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 209, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 412, i32 16 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 412, i32 24 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [37 x i8] c"../drivers/leds/flash/leds-aat1290.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 414, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_aat1290_led_driver_exit, ptr @__initcall__kmod_leds_aat1290__292_552_aat1290_led_driver_init6, ptr @aat1290_led_driver_exit, ptr @aat1290_led_external_strobe_set._entry, ptr @aat1290_led_external_strobe_set._entry_ptr, ptr @aat1290_led_parse_dt._entry, ptr @aat1290_led_parse_dt._entry.12, ptr @aat1290_led_parse_dt._entry.16, ptr @aat1290_led_parse_dt._entry.20, ptr @aat1290_led_parse_dt._entry.25, ptr @aat1290_led_parse_dt._entry.29, ptr @aat1290_led_parse_dt._entry.9, ptr @aat1290_led_parse_dt._entry_ptr, ptr @aat1290_led_parse_dt._entry_ptr.11, ptr @aat1290_led_parse_dt._entry_ptr.15, ptr @aat1290_led_parse_dt._entry_ptr.18, ptr @aat1290_led_parse_dt._entry_ptr.23, ptr @aat1290_led_parse_dt._entry_ptr.27, ptr @aat1290_led_parse_dt._entry_ptr.31, ptr @aat1290_led_driver, ptr @.str, ptr @aat1290_led_dt_match, ptr @flash_ops, ptr @aat1290_led_probe.__key, ptr @.str.1, ptr @v4l2_flash_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat1290_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat1290_led_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat1290_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_flash_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat1290_led_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat1290_led_parse_dt._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat1290_led_parse_dt._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat1290_led_parse_dt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat1290_led_parse_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat1290_led_parse_dt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat1290_led_parse_dt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat1290_led_external_strobe_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aat1290_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aat1290_led_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aat1290_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @aat1290_led_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat1290_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init_data = alloca %struct.led_init_data, align 4
  %led_cfg = alloca %struct.aat1290_led_config_data, align 4
  %v4l2_sd_cfg = alloca %struct.v4l2_flash_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #9
  %0 = call ptr @memset(ptr %init_data, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %led_cfg) #9
  %1 = call ptr @memset(ptr %led_cfg, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %v4l2_sd_cfg) #9
  %2 = call ptr @memset(ptr %v4l2_sd_cfg, i32 0, i32 56)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 576, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %fled_cdev3 = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @flash_ops, ptr %ops, align 4
  %call.i.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 0) #9
  %gpio_fl_en.i.i = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %gpio_fl_en.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %gpio_fl_en.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #12
  br label %aat1290_led_parse_dt.exit.i

if.end.i.i:                                       ; preds = %if.end
  %call6.i.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 0) #9
  %gpio_en_set.i.i = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %gpio_en_set.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6.i.i, ptr %gpio_en_set.i.i, align 4
  %cmp.i86.i.i = icmp ugt ptr %call6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86.i.i, label %if.then9.i.i, label %if.end15.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call6.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  br label %aat1290_led_parse_dt.exit.i

if.end15.i.i:                                     ; preds = %if.end.i.i
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %dev17.i.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %call.i.i.i.i = tail call ptr @devm_pinctrl_get(ptr noundef %dev17.i.i) #9
  %cmp.i.i.i.i.i = icmp ugt ptr %call.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i, label %if.end15.i.i.devm_pinctrl_get_select_default.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.end15.i.i.devm_pinctrl_get_select_default.exit.i.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_pinctrl_get_select_default.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end15.i.i
  %call2.i.i.i.i = tail call ptr @pinctrl_lookup_state(ptr noundef %call.i.i.i.i, ptr noundef nonnull @.str.32) #9
  %cmp.i22.i.i.i.i = icmp ugt ptr %call2.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i.i.i.i, label %if.then4.i.i.i.i, label %if.end6.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_pinctrl_put(ptr noundef %call.i.i.i.i) #9
  br label %devm_pinctrl_get_select_default.exit.i.i

if.end6.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %call7.i.i.i.i = tail call i32 @pinctrl_select_state(ptr noundef %call.i.i.i.i, ptr noundef %call2.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call7.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then8.i.i.i.i, label %if.end6.i.i.i.i.devm_pinctrl_get_select_default.exit.i.i_crit_edge

if.end6.i.i.i.i.devm_pinctrl_get_select_default.exit.i.i_crit_edge: ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_pinctrl_get_select_default.exit.i.i

if.then8.i.i.i.i:                                 ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_pinctrl_put(ptr noundef %call.i.i.i.i) #9
  %12 = inttoptr i32 %call7.i.i.i.i to ptr
  br label %devm_pinctrl_get_select_default.exit.i.i

devm_pinctrl_get_select_default.exit.i.i:         ; preds = %if.then8.i.i.i.i, %if.end6.i.i.i.i.devm_pinctrl_get_select_default.exit.i.i_crit_edge, %if.then4.i.i.i.i, %if.end15.i.i.devm_pinctrl_get_select_default.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %call2.i.i.i.i, %if.then4.i.i.i.i ], [ %12, %if.then8.i.i.i.i ], [ %call.i.i.i.i, %if.end15.i.i.devm_pinctrl_get_select_default.exit.i.i_crit_edge ], [ %call.i.i.i.i, %if.end6.i.i.i.i.devm_pinctrl_get_select_default.exit.i.i_crit_edge ]
  %cmp.i87.i.i = icmp ugt ptr %retval.0.i.i.i.i, inttoptr (i32 -4096 to ptr)
  %has_external_strobe.i.i = getelementptr inbounds %struct.aat1290_led_config_data, ptr %led_cfg, i32 0, i32 3
  br i1 %cmp.i87.i.i, label %if.then20.i.i, label %if.else.i.i

if.then20.i.i:                                    ; preds = %devm_pinctrl_get_select_default.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %has_external_strobe.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %has_external_strobe.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13) #12
  br label %if.end25.i.i

if.else.i.i:                                      ; preds = %devm_pinctrl_get_select_default.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %has_external_strobe.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %has_external_strobe.i.i, align 4
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.else.i.i, %if.then20.i.i
  %of_node.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i.i.i, align 8
  %call27.i.i = tail call ptr @of_get_next_available_child(ptr noundef %16, ptr noundef null) #9
  %tobool.not.i.i = icmp eq ptr %call27.i.i, null
  br i1 %tobool.not.i.i, label %aat1290_led_parse_dt.exit.thread.i, label %if.end32.i.i

aat1290_led_parse_dt.exit.thread.i:               ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end32.i.i:                                     ; preds = %if.end25.i.i
  %call.i.i88.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call27.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %led_cfg, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i88.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i88.i.i, 0
  br i1 %cmp.i.i, label %do.end37.i.i, label %if.end32.i.i.if.end38.i.i_crit_edge

if.end32.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i

do.end37.i.i:                                     ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.21) #12
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %do.end37.i.i, %if.end32.i.i.if.end38.i.i_crit_edge
  %max_flash_current.i.i = getelementptr inbounds %struct.aat1290_led_config_data, ptr %led_cfg, i32 0, i32 1
  %call.i.i89.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call27.i.i, ptr noundef nonnull @.str.24, ptr noundef %max_flash_current.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89.i.i)
  %cmp40.i.i = icmp slt i32 %call.i.i89.i.i, 0
  br i1 %cmp40.i.i, label %if.end38.i.i.err_parse_dt.i.i.sink.split_crit_edge, label %if.end45.i.i

if.end38.i.i.err_parse_dt.i.i.sink.split_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_parse_dt.i.i.sink.split

if.end45.i.i:                                     ; preds = %if.end38.i.i
  %max_flash_tm.i.i = getelementptr inbounds %struct.aat1290_led_config_data, ptr %led_cfg, i32 0, i32 2
  %call.i.i90.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call27.i.i, ptr noundef nonnull @.str.28, ptr noundef %max_flash_tm.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90.i.i)
  %cmp47.i.i = icmp slt i32 %call.i.i90.i.i, 0
  br i1 %cmp47.i.i, label %if.end45.i.i.err_parse_dt.i.i.sink.split_crit_edge, label %if.end45.i.i.err_parse_dt.i.i_crit_edge

if.end45.i.i.err_parse_dt.i.i_crit_edge:          ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_parse_dt.i.i

if.end45.i.i.err_parse_dt.i.i.sink.split_crit_edge: ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_parse_dt.i.i.sink.split

err_parse_dt.i.i.sink.split:                      ; preds = %if.end45.i.i.err_parse_dt.i.i.sink.split_crit_edge, %if.end38.i.i.err_parse_dt.i.i.sink.split_crit_edge
  %.str.30.sink = phi ptr [ @.str.26, %if.end38.i.i.err_parse_dt.i.i.sink.split_crit_edge ], [ @.str.30, %if.end45.i.i.err_parse_dt.i.i.sink.split_crit_edge ]
  %ret.0.i.i.ph = phi i32 [ %call.i.i89.i.i, %if.end38.i.i.err_parse_dt.i.i.sink.split_crit_edge ], [ %call.i.i90.i.i, %if.end45.i.i.err_parse_dt.i.i.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.30.sink) #12
  br label %err_parse_dt.i.i

err_parse_dt.i.i:                                 ; preds = %err_parse_dt.i.i.sink.split, %if.end45.i.i.err_parse_dt.i.i_crit_edge
  %sub_node.0 = phi ptr [ %call27.i.i, %if.end45.i.i.err_parse_dt.i.i_crit_edge ], [ null, %err_parse_dt.i.i.sink.split ]
  %ret.0.i.i = phi i32 [ 0, %if.end45.i.i.err_parse_dt.i.i_crit_edge ], [ %ret.0.i.i.ph, %err_parse_dt.i.i.sink.split ]
  call void @of_node_put(ptr noundef nonnull %call27.i.i) #9
  br label %aat1290_led_parse_dt.exit.i

aat1290_led_parse_dt.exit.i:                      ; preds = %err_parse_dt.i.i, %if.then9.i.i, %if.then.i.i
  %sub_node.1 = phi ptr [ null, %if.then.i.i ], [ null, %if.then9.i.i ], [ %sub_node.0, %err_parse_dt.i.i ]
  %retval.0.i.i = phi i32 [ %7, %if.then.i.i ], [ %9, %if.then9.i.i ], [ %ret.0.i.i, %err_parse_dt.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %aat1290_led_parse_dt.exit.i.cleanup_crit_edge, label %if.end.i

aat1290_led_parse_dt.exit.i.cleanup_crit_edge:    ; preds = %aat1290_led_parse_dt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %aat1290_led_parse_dt.exit.i
  %max_flash_current.i12.i = getelementptr inbounds %struct.aat1290_led_config_data, ptr %led_cfg, i32 0, i32 1
  %17 = ptrtoint ptr %max_flash_current.i12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_flash_current.i12.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef 60, i32 noundef 3520) #9
  %mm_current_scale.i.i = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %mm_current_scale.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i.i, ptr %mm_current_scale.i.i, align 4
  %tobool.not.i13.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i13.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %mul.i.i = mul i32 %18, 1000
  %div.i.i = udiv i32 %mul.i.i, 1920
  %div3.i.i = udiv i32 %mul.i.i, 9600
  %22 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div3.i.i, ptr %call.i.i.i, align 4
  %mul2.1.i.i = mul nuw nsw i32 %div.i.i, 22
  %div3.1.i.i = udiv i32 %mul2.1.i.i, 100
  %arrayidx5.1.i.i = getelementptr i32, ptr %call.i.i.i, i32 1
  %23 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div3.1.i.i, ptr %arrayidx5.1.i.i, align 4
  %div3.2.i.i = udiv i32 %mul.i.i, 7680
  %arrayidx5.2.i.i = getelementptr i32, ptr %call.i.i.i, i32 2
  %24 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div3.2.i.i, ptr %arrayidx5.2.i.i, align 4
  %mul2.3.i.i = mul nuw nsw i32 %div.i.i, 28
  %div3.3.i.i = udiv i32 %mul2.3.i.i, 100
  %arrayidx5.3.i.i = getelementptr i32, ptr %call.i.i.i, i32 3
  %25 = ptrtoint ptr %arrayidx5.3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div3.3.i.i, ptr %arrayidx5.3.i.i, align 4
  %mul2.4.i.i = shl nuw nsw i32 %div.i.i, 5
  %div3.4.i.i = udiv i32 %mul2.4.i.i, 100
  %arrayidx5.4.i.i = getelementptr i32, ptr %call.i.i.i, i32 4
  %26 = ptrtoint ptr %arrayidx5.4.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div3.4.i.i, ptr %arrayidx5.4.i.i, align 4
  %mul2.5.i.i = mul nuw nsw i32 %div.i.i, 36
  %div3.5.i.i = udiv i32 %mul2.5.i.i, 100
  %arrayidx5.5.i.i = getelementptr i32, ptr %call.i.i.i, i32 5
  %27 = ptrtoint ptr %arrayidx5.5.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div3.5.i.i, ptr %arrayidx5.5.i.i, align 4
  %mul2.6.i.i = mul nuw nsw i32 %div.i.i, 40
  %div3.6.i.i = udiv i32 %mul2.6.i.i, 100
  %arrayidx5.6.i.i = getelementptr i32, ptr %call.i.i.i, i32 6
  %28 = ptrtoint ptr %arrayidx5.6.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div3.6.i.i, ptr %arrayidx5.6.i.i, align 4
  %mul2.7.i.i = mul nuw nsw i32 %div.i.i, 45
  %div3.7.i.i = udiv i32 %mul2.7.i.i, 100
  %arrayidx5.7.i.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %29 = ptrtoint ptr %arrayidx5.7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div3.7.i.i, ptr %arrayidx5.7.i.i, align 4
  %div3.8.i.i = udiv i32 %mul.i.i, 3840
  %arrayidx5.8.i.i = getelementptr i32, ptr %call.i.i.i, i32 8
  %30 = ptrtoint ptr %arrayidx5.8.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div3.8.i.i, ptr %arrayidx5.8.i.i, align 4
  %mul2.9.i.i = mul nuw nsw i32 %div.i.i, 56
  %div3.9.i.i = udiv i32 %mul2.9.i.i, 100
  %arrayidx5.9.i.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %31 = ptrtoint ptr %arrayidx5.9.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div3.9.i.i, ptr %arrayidx5.9.i.i, align 4
  %mul2.10.i.i = mul nuw nsw i32 %div.i.i, 63
  %div3.10.i.i = udiv i32 %mul2.10.i.i, 100
  %arrayidx5.10.i.i = getelementptr i32, ptr %call.i.i.i, i32 10
  %32 = ptrtoint ptr %arrayidx5.10.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div3.10.i.i, ptr %arrayidx5.10.i.i, align 4
  %mul2.11.i.i = mul nuw nsw i32 %div.i.i, 71
  %div3.11.i.i = udiv i32 %mul2.11.i.i, 100
  %arrayidx5.11.i.i = getelementptr i32, ptr %call.i.i.i, i32 11
  %33 = ptrtoint ptr %arrayidx5.11.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div3.11.i.i, ptr %arrayidx5.11.i.i, align 4
  %mul2.12.i.i = mul nuw nsw i32 %div.i.i, 79
  %div3.12.i.i = udiv i32 %mul2.12.i.i, 100
  %arrayidx5.12.i.i = getelementptr i32, ptr %call.i.i.i, i32 12
  %34 = ptrtoint ptr %arrayidx5.12.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div3.12.i.i, ptr %arrayidx5.12.i.i, align 4
  %mul2.13.i.i = mul nuw nsw i32 %div.i.i, 89
  %div3.13.i.i = udiv i32 %mul2.13.i.i, 100
  %arrayidx5.13.i.i = getelementptr i32, ptr %call.i.i.i, i32 13
  %35 = ptrtoint ptr %arrayidx5.13.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div3.13.i.i, ptr %arrayidx5.13.i.i, align 4
  %arrayidx5.14.i.i = getelementptr i32, ptr %call.i.i.i, i32 14
  %36 = ptrtoint ptr %arrayidx5.14.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div.i.i, ptr %arrayidx5.14.i.i, align 4
  %37 = ptrtoint ptr %led_cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %led_cfg, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end4.i
  %sub21.i.i = phi i32 [ 15, %if.end4.i ], [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %e.020.i.i = phi i32 [ 15, %if.end4.i ], [ %add.e.0.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %b.019.i.i = phi i32 [ 0, %if.end4.i ], [ %b.0.add.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %div1718.i.i = lshr i32 %sub21.i.i, 1
  %add.i.i = add i32 %b.019.i.i, %div1718.i.i
  %arrayidx.i.i = getelementptr i32, ptr %call.i.i.i, i32 %add.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp2.i.i = icmp ult i32 %38, %40
  %b.0.add.i.i = select i1 %cmp2.i.i, i32 %b.019.i.i, i32 %add.i.i
  %add.e.0.i.i = select i1 %cmp2.i.i, i32 %add.i.i, i32 %e.020.i.i
  %sub.i.i = sub i32 %add.e.0.i.i, %b.0.add.i.i
  %cmp.i16.i = icmp sgt i32 %sub.i.i, 1
  br i1 %cmp.i16.i, label %while.body.i.i.while.body.i.i_crit_edge, label %do.body

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

do.body:                                          ; preds = %while.body.i.i
  %arrayidx4.i.i = getelementptr i32, ptr %call.i.i.i, i32 %b.0.add.i.i
  %41 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx4.i.i, align 4
  %43 = ptrtoint ptr %led_cfg to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %led_cfg, align 4
  %add6.i.i = add i32 %b.0.add.i.i, 1
  %max_brightness.i.i = getelementptr inbounds %struct.aat1290_led_config_data, ptr %led_cfg, i32 0, i32 4
  %44 = ptrtoint ptr %max_brightness.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add6.i.i, ptr %max_brightness.i.i, align 4
  %lock = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @aat1290_led_probe.__key) #9
  %brightness_set_blocking = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 2, i32 0, i32 6
  %45 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @aat1290_led_brightness_set, ptr %brightness_set_blocking, align 4
  %46 = ptrtoint ptr %max_brightness.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_brightness.i.i, align 4
  %max_brightness8 = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %48 = ptrtoint ptr %max_brightness8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %max_brightness8, align 4
  %flags = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %or = or i32 %50, 262144
  store i32 %or, ptr %flags, align 4
  %timeout.i = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 2, i32 3
  %max_flash_tm.i = getelementptr inbounds %struct.aat1290_led_config_data, ptr %led_cfg, i32 0, i32 2
  %51 = ptrtoint ptr %max_flash_tm.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_flash_tm.i, align 4
  %div11.i = lshr i32 %52, 4
  %53 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div11.i, ptr %timeout.i, align 4
  %max.i = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 2, i32 3, i32 1
  %54 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %max.i, align 4
  %step.i = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 2, i32 3, i32 2
  %55 = ptrtoint ptr %step.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div11.i, ptr %step.i, align 4
  %val.i = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 2, i32 3, i32 3
  %56 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %52, ptr %val.i, align 4
  %tobool9.not = icmp eq ptr %sub_node.1, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %sub_node.1, i32 0, i32 3
  %spec.select = select i1 %tobool9.not, ptr null, ptr %fwnode
  %57 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %spec.select, ptr %init_data, align 4
  %devicename = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 2
  %58 = ptrtoint ptr %devicename to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str, ptr %devicename, align 4
  %call12 = call i32 @led_classdev_flash_register_ext(ptr noundef %dev1, ptr noundef %fled_cdev3, ptr noundef nonnull %init_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.body.err_flash_register_crit_edge, label %if.end15

do.body.err_flash_register_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_flash_register

if.end15:                                         ; preds = %do.body
  %dev.i = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 2, i32 0, i32 11
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %call.i68 = call i32 @strlcpy(ptr noundef nonnull %v4l2_sd_cfg, ptr noundef %62, i32 noundef 32) #9
  %intensity.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1
  %63 = ptrtoint ptr %mm_current_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mm_current_scale.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %67 = ptrtoint ptr %intensity.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %intensity.i, align 4
  %68 = ptrtoint ptr %led_cfg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %led_cfg, align 4
  %max.i69 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %max.i69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %max.i69, align 4
  %step.i70 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %step.i70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %step.i70, align 4
  %val.i71 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 1, i32 3
  %72 = ptrtoint ptr %val.i71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %val.i71, align 4
  %has_external_strobe.i = getelementptr inbounds %struct.aat1290_led_config_data, ptr %led_cfg, i32 0, i32 3
  %73 = ptrtoint ptr %has_external_strobe.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %has_external_strobe.i, align 4, !range !89
  %has_external_strobe3.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg, i32 0, i32 3
  %75 = ptrtoint ptr %has_external_strobe3.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i = load i8, ptr %has_external_strobe3.i, align 4
  %bf.shl.i = shl nuw i8 %74, 7
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %has_external_strobe3.i, align 4
  %call24 = call ptr @v4l2_flash_init(ptr noundef %dev1, ptr noundef %spec.select, ptr noundef %fled_cdev3, ptr noundef nonnull @v4l2_flash_ops, ptr noundef nonnull %v4l2_sd_cfg) #9
  %v4l2_flash = getelementptr inbounds %struct.aat1290_led, ptr %call.i, i32 0, i32 3
  %76 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call24, ptr %v4l2_flash, align 4
  %cmp.i72 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then27, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %call24 to i32
  call void @led_classdev_flash_unregister(ptr noundef %fled_cdev3) #9
  br label %err_flash_register

err_flash_register:                               ; preds = %if.then27, %do.body.err_flash_register_crit_edge
  %ret.0 = phi i32 [ %call12, %do.body.err_flash_register_crit_edge ], [ %77, %if.then27 ]
  call void @mutex_destroy(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %err_flash_register, %if.end15.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %aat1290_led_parse_dt.exit.i.cleanup_crit_edge, %aat1290_led_parse_dt.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_flash_register ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -22, %aat1290_led_parse_dt.exit.thread.i ], [ %retval.0.i.i, %aat1290_led_parse_dt.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %v4l2_sd_cfg) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %led_cfg) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat1290_led_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %v4l2_flash = getelementptr inbounds %struct.aat1290_led, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_flash, align 4
  tail call void @v4l2_flash_release(ptr noundef %3) #9
  %fled_cdev = getelementptr inbounds %struct.aat1290_led, ptr %1, i32 0, i32 2
  tail call void @led_classdev_flash_unregister(ptr noundef %fled_cdev) #9
  %lock = getelementptr inbounds %struct.aat1290_led, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat1290_led_brightness_set(ptr noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %led_cdev, i32 -96
  %lock = getelementptr i8, ptr %led_cdev, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gpio_fl_en = getelementptr i8, ptr %led_cdev, i32 460
  %0 = ptrtoint ptr %gpio_fl_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_fl_en, align 4
  %call2 = tail call i32 @gpiod_direction_output(ptr noundef %1, i32 noundef 0) #9
  %gpio_en_set = getelementptr i8, ptr %led_cdev, i32 464
  %2 = ptrtoint ptr %gpio_en_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_en_set, align 4
  %call3 = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef 0) #9
  %movie_mode = getelementptr i8, ptr %led_cdev, i32 472
  %4 = ptrtoint ptr %movie_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %movie_mode, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  %movie_mode4 = getelementptr i8, ptr %led_cdev, i32 472
  %5 = ptrtoint ptr %movie_mode4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %movie_mode4, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then5, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @aat1290_as2cwire_write(ptr noundef %add.ptr.i, i32 noundef 20, i32 noundef 1)
  %7 = ptrtoint ptr %movie_mode4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %movie_mode4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else.if.end_crit_edge
  %sub = sub i32 16, %brightness
  tail call fastcc void @aat1290_as2cwire_write(ptr noundef %add.ptr.i, i32 noundef 17, i32 noundef %sub)
  tail call fastcc void @aat1290_as2cwire_write(ptr noundef %add.ptr.i, i32 noundef 19, i32 noundef 3)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_flash_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_flash_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_flash_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat1290_led_flash_strobe_set(ptr noundef %fled_cdev, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %fled_cdev, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %fled_cdev, i32 -96
  %val = getelementptr inbounds %struct.led_classdev_flash, ptr %fled_cdev, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %step.i = getelementptr i8, ptr %fled_cdev, i32 428
  %2 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %step.i, align 4
  %div.i = udiv i32 %1, %3
  %add.i = sub i32 17, %div.i
  tail call fastcc void @aat1290_as2cwire_write(ptr noundef %add.ptr.i, i32 noundef 18, i32 noundef %add.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gpio_fl_en4 = getelementptr i8, ptr %fled_cdev, i32 460
  %4 = ptrtoint ptr %gpio_fl_en4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_fl_en4, align 4
  %call5 = tail call i32 @gpiod_direction_output(ptr noundef %5, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 464, %if.else ], [ 460, %if.then ]
  %.sink16 = phi i32 [ 0, %if.else ], [ 1, %if.then ]
  %gpio_en_set = getelementptr i8, ptr %fled_cdev, i32 %.sink
  %6 = ptrtoint ptr %gpio_en_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_en_set, align 4
  %call6 = tail call i32 @gpiod_direction_output(ptr noundef %7, i32 noundef %.sink16) #9
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %fled_cdev, i32 0, i32 1
  %8 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %brightness, align 4
  %movie_mode = getelementptr i8, ptr %fled_cdev, i32 472
  %9 = ptrtoint ptr %movie_mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %movie_mode, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aat1290_led_flash_timeout_set(ptr nocapture noundef readnone %fled_cdev, i32 noundef %timeout) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aat1290_as2cwire_write(ptr nocapture noundef readonly %led, i32 noundef %addr, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_fl_en = getelementptr inbounds %struct.aat1290_led, ptr %led, i32 0, i32 4
  %0 = ptrtoint ptr %gpio_fl_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_fl_en, align 4
  %call = tail call i32 @gpiod_direction_output(ptr noundef %1, i32 noundef 0) #9
  %gpio_en_set = getelementptr inbounds %struct.aat1290_led, ptr %led, i32 0, i32 5
  %2 = ptrtoint ptr %gpio_en_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_en_set, align 4
  %call1 = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %cmp24 = icmp sgt i32 %addr, 0
  br i1 %cmp24, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #9
  %6 = ptrtoint ptr %gpio_en_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_en_set, align 4
  %call3 = tail call i32 @gpiod_direction_output(ptr noundef %7, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #9
  %9 = ptrtoint ptr %gpio_en_set to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpio_en_set, align 4
  %call5 = tail call i32 @gpiod_direction_output(ptr noundef %10, i32 noundef 1) #9
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %addr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp726 = icmp sgt i32 %value, 0
  br i1 %cmp726, label %for.end.for.body8_crit_edge, label %for.end.for.end15_crit_edge

for.end.for.end15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end15

for.end.for.body8_crit_edge:                      ; preds = %for.end
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.end.for.body8_crit_edge
  %i.127 = phi i32 [ %inc14, %for.body8.for.body8_crit_edge ], [ 0, %for.end.for.body8_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #9
  %12 = ptrtoint ptr %gpio_en_set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_en_set, align 4
  %call10 = tail call i32 @gpiod_direction_output(ptr noundef %13, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #9
  %15 = ptrtoint ptr %gpio_en_set to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpio_en_set, align 4
  %call12 = tail call i32 @gpiod_direction_output(ptr noundef %16, i32 noundef 1) #9
  %inc14 = add nuw nsw i32 %i.127, 1
  %exitcond28.not = icmp eq i32 %inc14, %value
  br i1 %exitcond28.not, label %for.body8.for.end15_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8

for.body8.for.end15_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end15

for.end15:                                        ; preds = %for.body8.for.end15_crit_edge, %for.end.for.end15_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat1290_led_external_strobe_set(ptr nocapture noundef readonly %v4l2_flash, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_flash, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -96
  %gpio_fl_en = getelementptr i8, ptr %1, i32 460
  %2 = ptrtoint ptr %gpio_fl_en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_fl_en, align 4
  %call4 = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef 0) #9
  %gpio_en_set = getelementptr i8, ptr %1, i32 464
  %4 = ptrtoint ptr %gpio_en_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_en_set, align 4
  %call5 = tail call i32 @gpiod_direction_output(ptr noundef %5, i32 noundef 0) #9
  %movie_mode = getelementptr i8, ptr %1, i32 472
  %6 = ptrtoint ptr %movie_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %movie_mode, align 4
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %brightness, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call.i = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.devm_pinctrl_get_select.exit_crit_edge, label %if.end.i

entry.devm_pinctrl_get_select.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_pinctrl_get_select.exit

if.end.i:                                         ; preds = %entry
  %cond = select i1 %enable, ptr @.str.33, ptr @.str.34
  %call2.i = tail call ptr @pinctrl_lookup_state(ptr noundef %call.i, ptr noundef nonnull %cond) #9
  %cmp.i22.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_pinctrl_put(ptr noundef %call.i) #9
  br label %devm_pinctrl_get_select.exit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @pinctrl_select_state(ptr noundef %call.i, ptr noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.then8.i, label %if.end6.i.devm_pinctrl_get_select.exit_crit_edge

if.end6.i.devm_pinctrl_get_select.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_pinctrl_get_select.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_pinctrl_put(ptr noundef %call.i) #9
  %10 = inttoptr i32 %call7.i to ptr
  br label %devm_pinctrl_get_select.exit

devm_pinctrl_get_select.exit:                     ; preds = %if.then8.i, %if.end6.i.devm_pinctrl_get_select.exit_crit_edge, %if.then4.i, %entry.devm_pinctrl_get_select.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.then4.i ], [ %10, %if.then8.i ], [ %call.i, %entry.devm_pinctrl_get_select.exit_crit_edge ], [ %call.i, %if.end6.i.devm_pinctrl_get_select.exit_crit_edge ]
  %cmp.i20 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20, label %do.end, label %devm_pinctrl_get_select.exit.cleanup_crit_edge

devm_pinctrl_get_select.exit.cleanup_crit_edge:   ; preds = %devm_pinctrl_get_select.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %devm_pinctrl_get_select.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull @.str.35) #12
  %13 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %devm_pinctrl_get_select.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %do.end ], [ 0, %devm_pinctrl_get_select.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @aat1290_intensity_to_brightness(ptr nocapture noundef readonly %v4l2_flash, i32 noundef %intensity) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_flash, align 4
  %mm_current_scale = getelementptr i8, ptr %1, i32 468
  %2 = ptrtoint ptr %mm_current_scale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm_current_scale, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %intensity)
  %cmp2.not = icmp sgt i32 %5, %intensity
  br i1 %cmp2.not, label %for.inc, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr i32, ptr %3, i32 13
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %intensity)
  %cmp2.not.1 = icmp sgt i32 %7, %intensity
  br i1 %cmp2.not.1, label %for.inc.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr i32, ptr %3, i32 12
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %intensity)
  %cmp2.not.2 = icmp sgt i32 %9, %intensity
  br i1 %cmp2.not.2, label %for.inc.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr i32, ptr %3, i32 11
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %intensity)
  %cmp2.not.3 = icmp sgt i32 %11, %intensity
  br i1 %cmp2.not.3, label %for.inc.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr i32, ptr %3, i32 10
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %intensity)
  %cmp2.not.4 = icmp sgt i32 %13, %intensity
  br i1 %cmp2.not.4, label %for.inc.4, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr i32, ptr %3, i32 9
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %intensity)
  %cmp2.not.5 = icmp sgt i32 %15, %intensity
  br i1 %cmp2.not.5, label %for.inc.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr i32, ptr %3, i32 8
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %intensity)
  %cmp2.not.6 = icmp sgt i32 %17, %intensity
  br i1 %cmp2.not.6, label %for.inc.6, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr i32, ptr %3, i32 7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %intensity)
  %cmp2.not.7 = icmp sgt i32 %19, %intensity
  br i1 %cmp2.not.7, label %for.inc.7, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr i32, ptr %3, i32 6
  %20 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %intensity)
  %cmp2.not.8 = icmp sgt i32 %21, %intensity
  br i1 %cmp2.not.8, label %for.inc.8, label %for.inc.7.cleanup_crit_edge

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr i32, ptr %3, i32 5
  %22 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %intensity)
  %cmp2.not.9 = icmp sgt i32 %23, %intensity
  br i1 %cmp2.not.9, label %for.inc.9, label %for.inc.8.cleanup_crit_edge

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr i32, ptr %3, i32 4
  %24 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %intensity)
  %cmp2.not.10 = icmp sgt i32 %25, %intensity
  br i1 %cmp2.not.10, label %for.inc.10, label %for.inc.9.cleanup_crit_edge

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr i32, ptr %3, i32 3
  %26 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %intensity)
  %cmp2.not.11 = icmp sgt i32 %27, %intensity
  br i1 %cmp2.not.11, label %for.inc.11, label %for.inc.10.cleanup_crit_edge

for.inc.10.cleanup_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr i32, ptr %3, i32 2
  %28 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %intensity)
  %cmp2.not.12 = icmp sgt i32 %29, %intensity
  br i1 %cmp2.not.12, label %for.inc.12, label %for.inc.11.cleanup_crit_edge

for.inc.11.cleanup_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.13 = getelementptr i32, ptr %3, i32 1
  %30 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %intensity)
  %cmp2.not.13 = icmp sgt i32 %31, %intensity
  %spec.select = select i1 %cmp2.not.13, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %for.inc.12, %for.inc.11.cleanup_crit_edge, %for.inc.10.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 15, %entry.cleanup_crit_edge ], [ 14, %for.inc.cleanup_crit_edge ], [ 13, %for.inc.1.cleanup_crit_edge ], [ 12, %for.inc.2.cleanup_crit_edge ], [ 11, %for.inc.3.cleanup_crit_edge ], [ 10, %for.inc.4.cleanup_crit_edge ], [ 9, %for.inc.5.cleanup_crit_edge ], [ 8, %for.inc.6.cleanup_crit_edge ], [ 7, %for.inc.7.cleanup_crit_edge ], [ 6, %for.inc.8.cleanup_crit_edge ], [ 5, %for.inc.9.cleanup_crit_edge ], [ 4, %for.inc.10.cleanup_crit_edge ], [ 3, %for.inc.11.cleanup_crit_edge ], [ %spec.select, %for.inc.12 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aat1290_brightness_to_intensity(ptr nocapture noundef readonly %v4l2_flash, i32 noundef %brightness) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_flash, align 4
  %mm_current_scale = getelementptr i8, ptr %1, i32 468
  %2 = ptrtoint ptr %mm_current_scale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm_current_scale, align 4
  %sub = add i32 %brightness, -1
  %arrayidx = getelementptr i32, ptr %3, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_flash_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !55, !56, !57, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_leds_aat1290__292_552_aat1290_led_driver_init6, !1, !"__initcall__kmod_leds_aat1290__292_552_aat1290_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 552, i32 1}
!2 = !{ptr @__exitcall_aat1290_led_driver_exit, !1, !"__exitcall_aat1290_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 554, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 555, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 556, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 547, i32 11}
!12 = !{ptr @aat1290_led_driver, !13, !"aat1290_led_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 543, i32 31}
!14 = !{ptr @aat1290_led_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 486, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @flash_ops, !18, !"flash_ops", i1 false, i1 false}
!18 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 454, i32 35}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 226, i32 40}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 229, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @aat1290_led_parse_dt._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @aat1290_led_parse_dt._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 233, i32 41}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 236, i32 3}
!33 = !{ptr @aat1290_led_parse_dt._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @aat1290_led_parse_dt._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 244, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @aat1290_led_parse_dt._entry.12, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @aat1290_led_parse_dt._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 253, i32 3}
!42 = !{ptr @aat1290_led_parse_dt._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @aat1290_led_parse_dt._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 257, i32 41}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 264, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @aat1290_led_parse_dt._entry.20, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @aat1290_led_parse_dt._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 267, i32 41}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 270, i32 3}
!55 = !{ptr @aat1290_led_parse_dt._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @aat1290_led_parse_dt._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 275, i32 41}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 278, i32 3}
!61 = !{ptr @aat1290_led_parse_dt._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @aat1290_led_parse_dt._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/pinctrl/consumer.h", i32 209, i32 38}
!65 = distinct !{null, !66, !"max_mm_current_percent", i1 false, i1 false}
!66 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 311, i32 19}
!67 = !{ptr @v4l2_flash_ops, !68, !"v4l2_flash_ops", i1 false, i1 false}
!68 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 440, i32 36}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 412, i32 16}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 412, i32 24}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 414, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @aat1290_led_external_strobe_set._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @aat1290_led_external_strobe_set._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @aat1290_led_dt_match, !79, !"aat1290_led_dt_match", i1 false, i1 false}
!79 = !{!"../drivers/leds/flash/leds-aat1290.c", i32 537, i32 34}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i8 0, i8 2}
