; ModuleID = '/llk/IR_all_yes/drivers/leds/flash/leds-mt6360.c_pt.bc'
source_filename = "../drivers/leds/flash/leds-mt6360.c"
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
%struct.v4l2_flash_ops = type { ptr, ptr, ptr }
%struct.v4l2_flash_config = type { [32 x i8], %struct.led_flash_setting, i32, i8 }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
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
%struct.mt6360_priv = type { ptr, ptr, %struct.mutex, i32, i32, i32, i32, [0 x %struct.mt6360_led] }
%struct.mt6360_led = type { %union.anon.84, ptr, ptr, i32, i32 }
%union.anon.84 = type { %struct.led_classdev_flash }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mc_subled = type { i32, i32, i32, i32 }
%struct.led_classdev_mc = type { %struct.led_classdev, i32, ptr }

@__initcall__kmod_leds_mt6360__302_906_mt6360_led_driver_init6 = internal global ptr @mt6360_led_driver_init, section ".initcall6.init", align 4
@mt6360_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6360_led_probe, ptr @mt6360_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt6360_led_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6360_led_driver_exit = internal global ptr @mt6360_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [53 x i8] c"leds_mt6360.author=Gene Chen <gene_chen@richtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [42 x i8] c"leds_mt6360.description=MT6360 LED Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [48 x i8] c"leds_mt6360.file=drivers/leds/flash/leds-mt6360\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [27 x i8] c"leds_mt6360.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt6360-led\00", [21 x i8] zeroinitializer }, align 32
@mt6360_led_of_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6360-led\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt6360_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"No child node or node count over max led number %zu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt6360_led_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/leds/flash/leds-mt6360.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6360_led_probe._entry_ptr = internal global ptr @mt6360_led_probe._entry, section ".printk_index", align 4
@mt6360_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@mt6360_led_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 820, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get parent regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@mt6360_led_probe._entry_ptr.9 = internal global ptr @mt6360_led_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"color\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@__const.mt6360_init_common_properties.states = private unnamed_addr constant [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default-state\00", [18 x i8] zeroinitializer }, align 32
@mt6360_init_isnk_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"led %d, no color specified\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt6360_init_isnk_properties\00", [36 x i8] zeroinitializer }, align 32
@mt6360_init_isnk_properties._entry_ptr = internal global ptr @mt6360_init_isnk_properties._entry, section ".printk_index", align 4
@mt6360_init_isnk_properties._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 659, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Multicolor must include 2 or more led channel\0A\00", [49 x i8] zeroinitializer }, align 32
@mt6360_init_isnk_properties._entry_ptr.20 = internal global ptr @mt6360_init_isnk_properties._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@mt6360_init_isnk_properties._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.3, i32 682, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Not specified led-max-microamp, config to the minimum\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt6360_init_isnk_properties._entry_ptr.25 = internal global ptr @mt6360_init_isnk_properties._entry.22, section ".printk_index", align 4
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"linux,default-trigger\00", [42 x i8] zeroinitializer }, align 32
@mt6360_init_flash_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.27, ptr @.str.3, i32 709, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt6360_init_flash_properties\00", [35 x i8] zeroinitializer }, align 32
@mt6360_init_flash_properties._entry_ptr = internal global ptr @mt6360_init_flash_properties._entry, section ".printk_index", align 4
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flash-max-microamp\00", [45 x i8] zeroinitializer }, align 32
@mt6360_init_flash_properties._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 724, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Not specified flash-max-microamp, config to the minimum\0A\00", [39 x i8] zeroinitializer }, align 32
@mt6360_init_flash_properties._entry_ptr.31 = internal global ptr @mt6360_init_flash_properties._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flash-max-timeout-us\00", [43 x i8] zeroinitializer }, align 32
@mt6360_init_flash_properties._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.3, i32 747, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Not specified flash-max-timeout-us, config to the minimum\0A\00", [37 x i8] zeroinitializer }, align 32
@mt6360_init_flash_properties._entry_ptr.35 = internal global ptr @mt6360_init_flash_properties._entry.33, section ".printk_index", align 4
@mt6360_flash_ops = internal constant { %struct.led_flash_ops, [40 x i8] } { %struct.led_flash_ops { ptr @mt6360_flash_brightness_set, ptr null, ptr @mt6360_strobe_set, ptr @mt6360_strobe_get, ptr @mt6360_timeout_set, ptr @mt6360_fault_get }, [40 x i8] zeroinitializer }, align 32
@mt6360_torch_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 179, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Please disable strobe first [%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt6360_torch_brightness_set\00", [36 x i8] zeroinitializer }, align 32
@mt6360_torch_brightness_set._entry_ptr = internal global ptr @mt6360_torch_brightness_set._entry, section ".printk_index", align 4
@mt6360_strobe_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 258, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Please disable torch first [0x%x]\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt6360_strobe_set\00", [46 x i8] zeroinitializer }, align 32
@mt6360_strobe_set._entry_ptr = internal global ptr @mt6360_strobe_set._entry, section ".printk_index", align 4
@mt6360_strobe_set._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%d] control current source %d fail\0A\00", [59 x i8] zeroinitializer }, align 32
@mt6360_strobe_set._entry_ptr.42 = internal global ptr @mt6360_strobe_set._entry.40, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt6360_led_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 538, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to config ISNK1 to SW mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt6360_led_register\00", [44 x i8] zeroinitializer }, align 32
@mt6360_led_register._entry_ptr = internal global ptr @mt6360_led_register._entry, section ".printk_index", align 4
@mt6360_led_register._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 548, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to init multicolor brightness\0A\00", [58 x i8] zeroinitializer }, align 32
@mt6360_led_register._entry_ptr.47 = internal global ptr @mt6360_led_register._entry.45, section ".printk_index", align 4
@mt6360_led_register._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 555, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't register multicolor\0A\00", [34 x i8] zeroinitializer }, align 32
@mt6360_led_register._entry_ptr.50 = internal global ptr @mt6360_led_register._entry.48, section ".printk_index", align 4
@mt6360_led_register._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.3, i32 563, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to init %d isnk state\0A\00", [34 x i8] zeroinitializer }, align 32
@mt6360_led_register._entry_ptr.53 = internal global ptr @mt6360_led_register._entry.51, section ".printk_index", align 4
@mt6360_led_register._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.3, i32 571, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't register isink %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mt6360_led_register._entry_ptr.56 = internal global ptr @mt6360_led_register._entry.54, section ".printk_index", align 4
@mt6360_led_register._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.44, ptr @.str.3, i32 579, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to init %d flash state\0A\00", [33 x i8] zeroinitializer }, align 32
@mt6360_led_register._entry_ptr.59 = internal global ptr @mt6360_led_register._entry.57, section ".printk_index", align 4
@mt6360_led_register._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.44, ptr @.str.3, i32 587, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't register flash %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mt6360_led_register._entry_ptr.62 = internal global ptr @mt6360_led_register._entry.60, section ".printk_index", align 4
@v4l2_flash_ops = internal constant { %struct.v4l2_flash_ops, [20 x i8] } { %struct.v4l2_flash_ops { ptr @mt6360_flash_external_strobe_set, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@mt6360_led_register._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.44, ptr @.str.3, i32 598, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register %d v4l2 sd\0A\00", [33 x i8] zeroinitializer }, align 32
@mt6360_led_register._entry_ptr.65 = internal global ptr @mt6360_led_register._entry.63, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"mt6360_led_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 898, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 900, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"mt6360_led_of_id\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 892, i32 49 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 803, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 816, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 820, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 829, i32 41 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 837, i32 42 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 766, i32 33 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 766, i32 40 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 766, i32 48 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 771, i32 7 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 645, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 658, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 678, i32 52 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 681, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 689, i32 49 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 708, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 720, i32 52 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 723, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 744, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 746, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"mt6360_flash_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 380, i32 35 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 178, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 257, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 274, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 538, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 547, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 555, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 562, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 570, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 578, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 586, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant [15 x i8] c"v4l2_flash_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 488, i32 36 }
@___asan_gen_.257 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.261 = private constant [36 x i8] c"../drivers/leds/flash/leds-mt6360.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 597, i32 4 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_mt6360_led_driver_exit, ptr @__initcall__kmod_leds_mt6360__302_906_mt6360_led_driver_init6, ptr @mt6360_init_flash_properties._entry, ptr @mt6360_init_flash_properties._entry.29, ptr @mt6360_init_flash_properties._entry.33, ptr @mt6360_init_flash_properties._entry_ptr, ptr @mt6360_init_flash_properties._entry_ptr.31, ptr @mt6360_init_flash_properties._entry_ptr.35, ptr @mt6360_init_isnk_properties._entry, ptr @mt6360_init_isnk_properties._entry.18, ptr @mt6360_init_isnk_properties._entry.22, ptr @mt6360_init_isnk_properties._entry_ptr, ptr @mt6360_init_isnk_properties._entry_ptr.20, ptr @mt6360_init_isnk_properties._entry_ptr.25, ptr @mt6360_led_driver_exit, ptr @mt6360_led_probe._entry, ptr @mt6360_led_probe._entry.7, ptr @mt6360_led_probe._entry_ptr, ptr @mt6360_led_probe._entry_ptr.9, ptr @mt6360_led_register._entry, ptr @mt6360_led_register._entry.45, ptr @mt6360_led_register._entry.48, ptr @mt6360_led_register._entry.51, ptr @mt6360_led_register._entry.54, ptr @mt6360_led_register._entry.57, ptr @mt6360_led_register._entry.60, ptr @mt6360_led_register._entry.63, ptr @mt6360_led_register._entry_ptr, ptr @mt6360_led_register._entry_ptr.47, ptr @mt6360_led_register._entry_ptr.50, ptr @mt6360_led_register._entry_ptr.53, ptr @mt6360_led_register._entry_ptr.56, ptr @mt6360_led_register._entry_ptr.59, ptr @mt6360_led_register._entry_ptr.62, ptr @mt6360_led_register._entry_ptr.65, ptr @mt6360_strobe_set._entry, ptr @mt6360_strobe_set._entry.40, ptr @mt6360_strobe_set._entry_ptr, ptr @mt6360_strobe_set._entry_ptr.42, ptr @mt6360_torch_brightness_set._entry, ptr @mt6360_torch_brightness_set._entry_ptr, ptr @mt6360_led_driver, ptr @.str, ptr @mt6360_led_of_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mt6360_led_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @mt6360_flash_ops, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @v4l2_flash_ops, ptr @.str.64], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_of_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_init_isnk_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_init_isnk_properties._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_init_isnk_properties._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_init_flash_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_init_flash_properties._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_init_flash_properties._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_flash_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_torch_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_strobe_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_strobe_set._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_register._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_register._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_register._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_register._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_register._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_register._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_flash_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_led_register._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6360_led_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6360_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6360_led_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regval.i116.i = alloca i32, align 4
  %regval.i.i = alloca i32, align 4
  %v4l2_config.i = alloca %struct.v4l2_flash_config, align 4
  %val.i124 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %color.i = alloca i32, align 4
  %states.i = alloca [3 x ptr], align 4
  %str.i = alloca ptr, align 4
  %init_data = alloca %struct.led_init_data, align 4
  %reg = alloca i32, align 4
  %led_color = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @device_get_child_node_count(ptr noundef %dev) #7
  %0 = add i32 %call, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %0)
  %1 = icmp ult i32 %0, -6
  br i1 %1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call) #10
  br label %cleanup73

if.end:                                           ; preds = %entry
  %2 = mul nuw nsw i32 %call, 472
  %3 = add nuw nsw i32 %2, 116
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %3, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup73_crit_edge, label %if.end7

if.end.cleanup73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup73

if.end7:                                          ; preds = %if.end
  %leds_count = getelementptr inbounds %struct.mt6360_priv, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %leds_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %leds_count, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.mt6360_priv, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mt6360_led_probe.__key) #7
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call14 = tail call ptr @dev_get_regmap(ptr noundef %7, ptr noundef null) #7
  %regmap = getelementptr inbounds %struct.mt6360_priv, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %regmap, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup73

if.end22:                                         ; preds = %if.end7
  %call24 = tail call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef null) #7
  %tobool25.not215 = icmp eq ptr %call24, null
  br i1 %tobool25.not215, label %if.end22.for.end_crit_edge, label %for.body.lr.ph

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  %leds = getelementptr inbounds %struct.mt6360_priv, ptr %call.i, i32 0, i32 7
  %default_label = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 1
  %devicename = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 2
  %devname_mandatory = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 3
  %leds_active = getelementptr inbounds %struct.mt6360_priv, ptr %call.i, i32 0, i32 5
  %intensity.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config.i, i32 0, i32 1
  %step.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config.i, i32 0, i32 1, i32 2
  %max.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config.i, i32 0, i32 1, i32 1
  %val.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config.i, i32 0, i32 1, i32 3
  %has_external_strobe.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config.i, i32 0, i32 3
  %flash_faults.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_config.i, i32 0, i32 2
  %9 = getelementptr inbounds i8, ptr %init_data, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0218 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %child.0216 = phi ptr [ %call24, %for.body.lr.ph ], [ %call72, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.mt6360_led, ptr %leds, i32 %i.0218
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %11 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %child.0216, ptr %init_data, align 4
  %12 = ptrtoint ptr %default_label to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %default_label, align 4
  %13 = ptrtoint ptr %devicename to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %devicename, align 4
  %14 = ptrtoint ptr %devname_mandatory to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %devname_mandatory, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %reg, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %led_color) #7
  %16 = ptrtoint ptr %led_color to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %led_color, align 4, !annotation !137
  %call.i119 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0216, ptr noundef nonnull @.str.10, ptr noundef nonnull %led_color, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool27.not = icmp eq i32 %call.i119, 0
  br i1 %tobool27.not, label %if.end29, label %for.body.out_flash_release_crit_edge

for.body.out_flash_release_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_flash_release

if.end29:                                         ; preds = %for.body
  %17 = ptrtoint ptr %led_color to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %led_color, align 4
  %19 = and i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %switch = icmp eq i32 %19, 8
  br i1 %switch, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %reg, align 4
  br label %if.end41

if.else:                                          ; preds = %if.end29
  %call.i120 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0216, ptr noundef nonnull @.str.11, ptr noundef nonnull %reg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool35.not = icmp eq i32 %call.i120, 0
  br i1 %tobool35.not, label %if.end37, label %if.else.out_flash_release_crit_edge

if.else.out_flash_release_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_flash_release

if.end37:                                         ; preds = %if.else
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp38 = icmp ugt i32 %22, 5
  br i1 %cmp38, label %if.end37.out_flash_release_crit_edge, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end37.out_flash_release_crit_edge:             ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_flash_release

if.end41:                                         ; preds = %if.end37.if.end41_crit_edge, %if.then33
  %23 = ptrtoint ptr %leds_active to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %leds_active, align 4
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg, align 4
  %shl = shl nuw i32 1, %26
  %and = and i32 %shl, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end44, label %if.end41.out_flash_release_crit_edge

if.end41.out_flash_release_crit_edge:             ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_flash_release

if.end44:                                         ; preds = %if.end41
  %or = or i32 %shl, %24
  %27 = ptrtoint ptr %leds_active to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %leds_active, align 4
  %led_no = getelementptr %struct.mt6360_led, ptr %leds, i32 %i.0218, i32 3
  %28 = ptrtoint ptr %led_no to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %led_no, align 4
  %priv47 = getelementptr %struct.mt6360_led, ptr %leds, i32 %i.0218, i32 2
  %29 = ptrtoint ptr %priv47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %priv47, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %states.i) #7
  %30 = call ptr @memcpy(ptr %states.i, ptr @__const.mt6360_init_common_properties.states, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str.i) #7
  %31 = ptrtoint ptr %str.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %str.i, align 4, !annotation !137
  %32 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_data, align 4
  %call.i121 = call i32 @fwnode_property_read_string(ptr noundef %33, ptr noundef nonnull @.str.15, ptr noundef nonnull %str.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool.not.i = icmp eq i32 %call.i121, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end44.mt6360_init_common_properties.exit_crit_edge

if.end44.mt6360_init_common_properties.exit_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_init_common_properties.exit

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %str.i, align 4
  %call1.i = call i32 @match_string(ptr noundef nonnull %states.i, i32 noundef 3, ptr noundef %35) #7
  %36 = call i32 @llvm.smax.i32(i32 %call1.i, i32 0) #7
  %default_state.i = getelementptr %struct.mt6360_led, ptr %leds, i32 %i.0218, i32 4
  %37 = ptrtoint ptr %default_state.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %default_state.i, align 4
  br label %mt6360_init_common_properties.exit

mt6360_init_common_properties.exit:               ; preds = %if.then.i, %if.end44.mt6360_init_common_properties.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %states.i) #7
  %38 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %if.else57 [
    i32 7, label %mt6360_init_common_properties.exit.if.then55_crit_edge
    i32 3, label %mt6360_init_common_properties.exit.if.then55_crit_edge313
    i32 2, label %mt6360_init_common_properties.exit.if.then55_crit_edge314
    i32 1, label %mt6360_init_common_properties.exit.if.then55_crit_edge315
    i32 0, label %mt6360_init_common_properties.exit.if.then55_crit_edge316
  ]

mt6360_init_common_properties.exit.if.then55_crit_edge316: ; preds = %mt6360_init_common_properties.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

mt6360_init_common_properties.exit.if.then55_crit_edge315: ; preds = %mt6360_init_common_properties.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

mt6360_init_common_properties.exit.if.then55_crit_edge314: ; preds = %mt6360_init_common_properties.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

mt6360_init_common_properties.exit.if.then55_crit_edge313: ; preds = %mt6360_init_common_properties.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

mt6360_init_common_properties.exit.if.then55_crit_edge: ; preds = %mt6360_init_common_properties.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

if.then55:                                        ; preds = %mt6360_init_common_properties.exit.if.then55_crit_edge, %mt6360_init_common_properties.exit.if.then55_crit_edge313, %mt6360_init_common_properties.exit.if.then55_crit_edge314, %mt6360_init_common_properties.exit.if.then55_crit_edge315, %mt6360_init_common_properties.exit.if.then55_crit_edge316
  %41 = ptrtoint ptr %priv47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv47, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %val.i, align 4, !annotation !137
  %44 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %led_no, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %45, label %if.then55.if.end39.i_crit_edge [
    i32 7, label %if.then.i123
    i32 3, label %if.then36.i
  ]

if.then55.if.end39.i_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then.i123:                                     ; preds = %if.then55
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %42, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef 48, i32 noundef 3520) #7
  %tobool.not.i122 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i122, label %if.then.i123.mt6360_init_isnk_properties.exit_crit_edge, label %if.end.i

if.then.i123.mt6360_init_isnk_properties.exit_crit_edge: ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_init_isnk_properties.exit

if.end.i:                                         ; preds = %if.then.i123
  %49 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_data, align 4
  %call3.i = call ptr @fwnode_get_next_child_node(ptr noundef %50, ptr noundef null) #7
  %tobool4.not108.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not108.i, label %if.end.i.do.end28.i_crit_edge, label %for.body.lr.ph.i

if.end.i.do.end28.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %leds_active.i = getelementptr inbounds %struct.mt6360_priv, ptr %42, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %num_color.0110.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %child.0109.i = phi ptr [ %call3.i, %for.body.lr.ph.i ], [ %call23.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %51 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %reg.i, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %color.i) #7
  %52 = ptrtoint ptr %color.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %color.i, align 4, !annotation !137
  %call.i97.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0109.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %reg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool6.not.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %for.body.i.cleanup.thread.i_crit_edge

for.body.i.cleanup.thread.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %53 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp7.i = icmp ugt i32 %54, 2
  br i1 %cmp7.i, label %lor.lhs.false.i.cleanup.thread.i_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.cleanup.thread.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %55 = ptrtoint ptr %leds_active.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %leds_active.i, align 4
  %shl.i = shl nuw nsw i32 1, %54
  %and.i = and i32 %56, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %lor.lhs.false8.i.cleanup.thread.i_crit_edge

lor.lhs.false8.i.cleanup.thread.i_crit_edge:      ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end11.i:                                       ; preds = %lor.lhs.false8.i
  %call.i98.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0109.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %color.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i)
  %tobool13.not.i = icmp eq i32 %call.i98.i, 0
  br i1 %tobool13.not.i, label %for.inc.i, label %do.end.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %42, align 4
  %59 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %led_no, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.16, i32 noundef %60) #10
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end.i, %lor.lhs.false8.i.cleanup.thread.i_crit_edge, %lor.lhs.false.i.cleanup.thread.i_crit_edge, %for.body.i.cleanup.thread.i_crit_edge
  %retval.1.ph.i = phi i32 [ %call.i98.i, %do.end.i ], [ -22, %for.body.i.cleanup.thread.i_crit_edge ], [ -22, %lor.lhs.false.i.cleanup.thread.i_crit_edge ], [ -22, %lor.lhs.false8.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %color.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  br label %mt6360_init_isnk_properties.exit

for.inc.i:                                        ; preds = %if.end11.i
  %61 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reg.i, align 4
  %shl18.i = shl nuw i32 1, %62
  %63 = ptrtoint ptr %leds_active.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %leds_active.i, align 4
  %or.i = or i32 %64, %shl18.i
  store i32 %or.i, ptr %leds_active.i, align 4
  %65 = ptrtoint ptr %color.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %color.i, align 4
  %arrayidx.i = getelementptr %struct.mc_subled, ptr %call.i.i, i32 %num_color.0110.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx.i, align 4
  %channel.i = getelementptr %struct.mc_subled, ptr %call.i.i, i32 %num_color.0110.i, i32 3
  %68 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %62, ptr %channel.i, align 4
  %inc.i = add i32 %num_color.0110.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %color.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  %69 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_data, align 4
  %call23.i = call ptr @fwnode_get_next_child_node(ptr noundef %70, ptr noundef nonnull %child.0109.i) #7
  %tobool4.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool4.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp24.i = icmp slt i32 %inc.i, 2
  br i1 %cmp24.i, label %for.end.i.do.end28.i_crit_edge, label %cleanup31.i

for.end.i.do.end28.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i

do.end28.i:                                       ; preds = %for.end.i.do.end28.i_crit_edge, %if.end.i.do.end28.i_crit_edge
  %71 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.19) #10
  br label %mt6360_init_isnk_properties.exit

cleanup31.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %num_colors.i = getelementptr inbounds %struct.led_classdev_mc, ptr %add.ptr, i32 0, i32 1
  %73 = ptrtoint ptr %num_colors.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %inc.i, ptr %num_colors.i, align 4
  %subled_info.i = getelementptr inbounds %struct.led_classdev_mc, ptr %add.ptr, i32 0, i32 2
  %74 = ptrtoint ptr %subled_info.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i, ptr %subled_info.i, align 4
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %cleanup31.i, %if.then55.if.end39.i_crit_edge
  %mt6360_mc_brightness_set.sink.i = phi ptr [ @mt6360_mc_brightness_set, %cleanup31.i ], [ @mt6360_isnk_brightness_set, %if.then55.if.end39.i_crit_edge ], [ @mt6360_isnk_brightness_set, %if.then36.i ]
  %step_uA.1.i = phi i32 [ 2000, %cleanup31.i ], [ 2000, %if.then55.if.end39.i_crit_edge ], [ 5000, %if.then36.i ]
  %max_uA.1.i = phi i32 [ 24000, %cleanup31.i ], [ 24000, %if.then55.if.end39.i_crit_edge ], [ 150000, %if.then36.i ]
  %brightness_set_blocking.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 6
  %75 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %mt6360_mc_brightness_set.sink.i, ptr %brightness_set_blocking.i, align 4
  %76 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_data, align 4
  %call.i99.i = call i32 @fwnode_property_read_u32_array(ptr noundef %77, ptr noundef nonnull @.str.21, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %tobool42.not.i = icmp eq i32 %call.i99.i, 0
  br i1 %tobool42.not.i, label %if.else48.i, label %do.end46.i

do.end46.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %42, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str.23) #10
  br label %if.end50.i

if.else48.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val.i, align 4
  %82 = call i32 @llvm.umin.i32(i32 %81, i32 %max_uA.1.i) #7
  %rem.i.i = urem i32 %82, %step_uA.1.i
  %add.i.i = sub nsw i32 %82, %rem.i.i
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else48.i, %do.end46.i
  %storemerge.i = phi i32 [ %add.i.i, %if.else48.i ], [ %step_uA.1.i, %do.end46.i ]
  %83 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %storemerge.i, ptr %val.i, align 4
  %div.i = udiv i32 %storemerge.i, %step_uA.1.i
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 2
  %84 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div.i, ptr %max_brightness.i, align 4
  %85 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_data, align 4
  %default_trigger.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 14
  %call52.i = call i32 @fwnode_property_read_string(ptr noundef %86, ptr noundef nonnull @.str.26, ptr noundef %default_trigger.i) #7
  br label %mt6360_init_isnk_properties.exit

mt6360_init_isnk_properties.exit:                 ; preds = %if.end50.i, %do.end28.i, %cleanup.thread.i, %if.then.i123.mt6360_init_isnk_properties.exit_crit_edge
  %retval.3.i = phi i32 [ 0, %if.end50.i ], [ %retval.1.ph.i, %cleanup.thread.i ], [ -12, %if.then.i123.mt6360_init_isnk_properties.exit_crit_edge ], [ -22, %do.end28.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end59

if.else57:                                        ; preds = %mt6360_init_common_properties.exit
  %87 = ptrtoint ptr %priv47 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv47, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i124) #7
  %89 = ptrtoint ptr %val.i124 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %val.i124, align 4, !annotation !137
  %90 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %init_data, align 4
  %call.i.i126 = call i32 @fwnode_property_read_u32_array(ptr noundef %91, ptr noundef nonnull @.str.21, ptr noundef nonnull %val.i124, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126)
  %tobool.not.i127 = icmp eq i32 %call.i.i126, 0
  br i1 %tobool.not.i127, label %if.else.i, label %do.end.i128

do.end.i128:                                      ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %93, ptr noundef nonnull @.str.23) #10
  br label %if.end.i136

if.else.i:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %val.i124 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %val.i124, align 4
  %96 = call i32 @llvm.umax.i32(i32 %95, i32 25000) #7
  %97 = call i32 @llvm.umin.i32(i32 %96, i32 400000) #7
  %sub.i.i = add nsw i32 %97, -25000
  %rem.i.i129 = urem i32 %sub.i.i, 12500
  %add.i.i130 = sub nuw nsw i32 %97, %rem.i.i129
  br label %if.end.i136

if.end.i136:                                      ; preds = %if.else.i, %do.end.i128
  %storemerge.i131 = phi i32 [ %add.i.i130, %if.else.i ], [ 25000, %do.end.i128 ]
  %98 = ptrtoint ptr %val.i124 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %storemerge.i131, ptr %val.i124, align 4
  %sub.i = add nsw i32 %storemerge.i131, -25000
  %div.i132 = udiv i32 %sub.i, 12500
  %add.i = add nuw nsw i32 %div.i132, 1
  %max_brightness.i133 = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 2
  %99 = ptrtoint ptr %max_brightness.i133 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add.i, ptr %max_brightness.i133, align 4
  %brightness_set_blocking.i134 = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 6
  %100 = ptrtoint ptr %brightness_set_blocking.i134 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @mt6360_torch_brightness_set, ptr %brightness_set_blocking.i134, align 4
  %flags.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 3
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i, align 4
  %or.i135 = or i32 %102, 262144
  store i32 %or.i135, ptr %flags.i, align 4
  %103 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %init_data, align 4
  %call.i65.i = call i32 @fwnode_property_read_u32_array(ptr noundef %104, ptr noundef nonnull @.str.28, ptr noundef nonnull %val.i124, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %tobool5.not.i = icmp eq i32 %call.i65.i, 0
  br i1 %tobool5.not.i, label %if.else11.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.30) #10
  br label %if.end13.i

if.else11.i:                                      ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %val.i124 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %val.i124, align 4
  %109 = call i32 @llvm.umax.i32(i32 %108, i32 50000) #7
  %110 = call i32 @llvm.umin.i32(i32 %109, i32 1500000) #7
  %sub.i66.i = add nsw i32 %110, -50000
  %rem.i67.i = urem i32 %sub.i66.i, 12500
  %add.i68.i = sub nuw nsw i32 %110, %rem.i67.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else11.i, %do.end9.i
  %storemerge63.i = phi i32 [ %add.i68.i, %if.else11.i ], [ 50000, %do.end9.i ]
  %111 = ptrtoint ptr %val.i124 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %storemerge63.i, ptr %val.i124, align 4
  %brightness.i = getelementptr inbounds %struct.led_classdev_flash, ptr %add.ptr, i32 0, i32 2
  %112 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 50000, ptr %brightness.i, align 4
  %step.i = getelementptr inbounds %struct.led_classdev_flash, ptr %add.ptr, i32 0, i32 2, i32 2
  %113 = ptrtoint ptr %step.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 12500, ptr %step.i, align 4
  %max.i = getelementptr inbounds %struct.led_classdev_flash, ptr %add.ptr, i32 0, i32 2, i32 1
  %114 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %storemerge63.i, ptr %max.i, align 4
  %val14.i = getelementptr inbounds %struct.led_classdev_flash, ptr %add.ptr, i32 0, i32 2, i32 3
  %115 = ptrtoint ptr %val14.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %storemerge63.i, ptr %val14.i, align 4
  %116 = ptrtoint ptr %priv47 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %priv47, align 4
  %regmap.i.i = getelementptr inbounds %struct.mt6360_priv, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regmap.i.i, align 4
  %120 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %led_no, align 4
  %sub3.i.i = shl i32 %121, 2
  %add4.i.i = add i32 %sub3.i.i, 868
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef %add4.i.i, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool17.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end13.i.mt6360_init_flash_properties.exit_crit_edge

if.end13.i.mt6360_init_flash_properties.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_init_flash_properties.exit

if.end19.i:                                       ; preds = %if.end13.i
  %122 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %init_data, align 4
  %call.i70.i = call i32 @fwnode_property_read_u32_array(ptr noundef %123, ptr noundef nonnull @.str.32, ptr noundef nonnull %val.i124, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool22.not.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool22.not.i, label %if.else28.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %125, ptr noundef nonnull @.str.34) #10
  br label %if.end30.i

if.else28.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %val.i124 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %val.i124, align 4
  %128 = call i32 @llvm.umax.i32(i32 %127, i32 64000) #7
  %129 = call i32 @llvm.umin.i32(i32 %128, i32 2432000) #7
  %sub.i71.i = add nsw i32 %129, -64000
  %rem.i72.i = urem i32 %sub.i71.i, 32000
  %add.i73.i = sub nuw nsw i32 %129, %rem.i72.i
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else28.i, %do.end26.i
  %storemerge64.i = phi i32 [ %add.i73.i, %if.else28.i ], [ 64000, %do.end26.i ]
  %timeout.i = getelementptr inbounds %struct.led_classdev_flash, ptr %add.ptr, i32 0, i32 3
  %130 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 64000, ptr %timeout.i, align 4
  %step32.i = getelementptr inbounds %struct.led_classdev_flash, ptr %add.ptr, i32 0, i32 3, i32 2
  %131 = ptrtoint ptr %step32.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 32000, ptr %step32.i, align 4
  %max33.i = getelementptr inbounds %struct.led_classdev_flash, ptr %add.ptr, i32 0, i32 3, i32 1
  %132 = ptrtoint ptr %max33.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %storemerge64.i, ptr %max33.i, align 4
  %val34.i = getelementptr inbounds %struct.led_classdev_flash, ptr %add.ptr, i32 0, i32 3, i32 3
  %133 = ptrtoint ptr %val34.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %storemerge64.i, ptr %val34.i, align 4
  %ops.i = getelementptr inbounds %struct.led_classdev_flash, ptr %add.ptr, i32 0, i32 1
  %134 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @mt6360_flash_ops, ptr %ops.i, align 4
  br label %mt6360_init_flash_properties.exit

mt6360_init_flash_properties.exit:                ; preds = %if.end30.i, %if.end13.i.mt6360_init_flash_properties.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i124) #7
  br label %if.end59

if.end59:                                         ; preds = %mt6360_init_flash_properties.exit, %mt6360_init_isnk_properties.exit
  %ret.0 = phi i32 [ %retval.3.i, %mt6360_init_isnk_properties.exit ], [ %call.i.i.i, %mt6360_init_flash_properties.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool60.not = icmp eq i32 %ret.0, 0
  br i1 %tobool60.not, label %if.end62, label %if.end59.out_flash_release_crit_edge

if.end59.out_flash_release_crit_edge:             ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_flash_release

if.end62:                                         ; preds = %if.end59
  %135 = ptrtoint ptr %priv47 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %priv47, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %v4l2_config.i) #7
  %137 = call ptr @memset(ptr %v4l2_config.i, i32 0, i32 56)
  %138 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %led_no, align 4
  %140 = zext i32 %139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %139, label %if.end62.if.end6.i_crit_edge [
    i32 0, label %if.end62.land.lhs.true.i_crit_edge
    i32 7, label %if.end62.land.lhs.true.i_crit_edge317
  ]

if.end62.land.lhs.true.i_crit_edge317:            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end62.land.lhs.true.i_crit_edge:               ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end62.if.end6.i_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end62.land.lhs.true.i_crit_edge, %if.end62.land.lhs.true.i_crit_edge317
  %leds_active.i139 = getelementptr inbounds %struct.mt6360_priv, ptr %136, i32 0, i32 5
  %141 = ptrtoint ptr %leds_active.i139 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %leds_active.i139, align 4
  %and.i140 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool.not.i141 = icmp eq i32 %and.i140, 0
  br i1 %tobool.not.i141, label %land.lhs.true.i.if.end6thread-pre-split.i_crit_edge, label %if.then.i144

land.lhs.true.i.if.end6thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6thread-pre-split.i

if.then.i144:                                     ; preds = %land.lhs.true.i
  %regmap.i = getelementptr inbounds %struct.mt6360_priv, ptr %136, i32 0, i32 1
  %143 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regmap.i, align 4
  %call.i.i142 = call i32 @regmap_update_bits_base(ptr noundef %144, i32 noundef 896, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %tobool4.not.i143 = icmp eq i32 %call.i.i142, 0
  br i1 %tobool4.not.i143, label %if.then.i144.if.end6thread-pre-split.i_crit_edge, label %do.end.i145

if.then.i144.if.end6thread-pre-split.i_crit_edge: ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6thread-pre-split.i

do.end.i145:                                      ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #10
  br label %mt6360_led_register.exit.thread

if.end6thread-pre-split.i:                        ; preds = %if.then.i144.if.end6thread-pre-split.i_crit_edge, %land.lhs.true.i.if.end6thread-pre-split.i_crit_edge
  %145 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pr.i = load i32, ptr %led_no, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6thread-pre-split.i, %if.end62.if.end6.i_crit_edge
  %146 = phi i32 [ %.pr.i, %if.end6thread-pre-split.i ], [ %139, %if.end62.if.end6.i_crit_edge ]
  %147 = zext i32 %146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %146, label %sw.default.i [
    i32 7, label %sw.bb.i
    i32 0, label %if.end6.i.sw.bb22.i_crit_edge
    i32 1, label %if.end6.i.sw.bb22.i_crit_edge318
    i32 2, label %if.end6.i.sw.bb22.i_crit_edge319
    i32 3, label %if.end6.i.sw.bb22.i_crit_edge320
  ]

if.end6.i.sw.bb22.i_crit_edge320:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22.i

if.end6.i.sw.bb22.i_crit_edge319:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22.i

if.end6.i.sw.bb22.i_crit_edge318:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22.i

if.end6.i.sw.bb22.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22.i

sw.bb.i:                                          ; preds = %if.end6.i
  %call8.i = call i32 @mt6360_mc_brightness_set(ptr noundef %add.ptr, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i146 = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i146, label %if.end14.i, label %do.end13.i

do.end13.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #10
  br label %mt6360_led_register.exit.thread

if.end14.i:                                       ; preds = %sw.bb.i
  %call15.i = call i32 @devm_led_classdev_multicolor_register_ext(ptr noundef %dev, ptr noundef %add.ptr, ptr noundef nonnull %init_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.mt6360_led_register.exit.thread166_crit_edge, label %do.end20.i

if.end14.i.mt6360_led_register.exit.thread166_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_led_register.exit.thread166

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #10
  br label %mt6360_led_register.exit.thread

sw.bb22.i:                                        ; preds = %if.end6.i.sw.bb22.i_crit_edge, %if.end6.i.sw.bb22.i_crit_edge318, %if.end6.i.sw.bb22.i_crit_edge319, %if.end6.i.sw.bb22.i_crit_edge320
  %148 = ptrtoint ptr %priv47 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %priv47, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #7
  %150 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !137
  %regmap.i.i147 = getelementptr inbounds %struct.mt6360_priv, ptr %149, i32 0, i32 1
  %151 = ptrtoint ptr %regmap.i.i147 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regmap.i.i147, align 4
  %add.i.i148 = add nuw nsw i32 %146, 897
  %call.i115.i = call i32 @regmap_read(ptr noundef %152, i32 noundef %add.i.i148, ptr noundef nonnull %regval.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i)
  %tobool.not.i.i = icmp eq i32 %call.i115.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb22.i.mt6360_isnk_init_default_state.exit.thread.i_crit_edge

sw.bb22.i.mt6360_isnk_init_default_state.exit.thread.i_crit_edge: ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_isnk_init_default_state.exit.thread.i

if.end.i.i:                                       ; preds = %sw.bb22.i
  %153 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %regval.i.i, align 4
  %155 = ptrtoint ptr %regmap.i.i147 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regmap.i.i147, align 4
  %call3.i.i = call i32 @regmap_read(ptr noundef %156, i32 noundef 896, ptr noundef nonnull %regval.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i.mt6360_isnk_init_default_state.exit.thread.i_crit_edge

if.end.i.i.mt6360_isnk_init_default_state.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_isnk_init_default_state.exit.thread.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %default_state.i.i = getelementptr %struct.mt6360_led, ptr %leds, i32 %i.0218, i32 4
  %157 = ptrtoint ptr %default_state.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %default_state.i.i, align 4
  %159 = zext i32 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %158, label %if.end6.i.i.mt6360_isnk_init_default_state.exit.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb12.i.i
  ]

if.end6.i.i.mt6360_isnk_init_default_state.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_isnk_init_default_state.exit.i

sw.bb.i.i:                                        ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_brightness.i.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 2
  %160 = ptrtoint ptr %max_brightness.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %max_brightness.i.i, align 4
  br label %mt6360_isnk_init_default_state.exit.i

sw.bb12.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %regval.i.i, align 4
  %164 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %led_no, align 4
  %sub.i.i149 = sub i32 7, %165
  %shl.i.i = shl nuw i32 1, %sub.i.i149
  %and8.i.i = and i32 %shl.i.i, %163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %and.i.i = and i32 %154, 31
  %spec.select.i.i = select i1 %tobool9.not.i.i, i32 0, i32 %and.i.i
  %max_brightness13.i.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 2
  %166 = ptrtoint ptr %max_brightness13.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %max_brightness13.i.i, align 4
  %168 = call i32 @llvm.umin.i32(i32 %spec.select.i.i, i32 %167) #7
  br label %mt6360_isnk_init_default_state.exit.i

mt6360_isnk_init_default_state.exit.thread.i:     ; preds = %if.end.i.i.mt6360_isnk_init_default_state.exit.thread.i_crit_edge, %sw.bb22.i.mt6360_isnk_init_default_state.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call3.i.i, %if.end.i.i.mt6360_isnk_init_default_state.exit.thread.i_crit_edge ], [ %call.i115.i, %sw.bb22.i.mt6360_isnk_init_default_state.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #7
  br label %do.end28.i150

mt6360_isnk_init_default_state.exit.i:            ; preds = %sw.bb12.i.i, %sw.bb.i.i, %if.end6.i.i.mt6360_isnk_init_default_state.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %168, %sw.bb12.i.i ], [ %161, %sw.bb.i.i ], [ 0, %if.end6.i.i.mt6360_isnk_init_default_state.exit.i_crit_edge ]
  %brightness15.i.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 1
  %169 = ptrtoint ptr %brightness15.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %.sink.i.i, ptr %brightness15.i.i, align 4
  %call17.i.i = call i32 @mt6360_isnk_brightness_set(ptr noundef %add.ptr, i32 noundef %.sink.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool24.not.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool24.not.i, label %if.end30.i151, label %mt6360_isnk_init_default_state.exit.i.do.end28.i150_crit_edge

mt6360_isnk_init_default_state.exit.i.do.end28.i150_crit_edge: ; preds = %mt6360_isnk_init_default_state.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i150

do.end28.i150:                                    ; preds = %mt6360_isnk_init_default_state.exit.i.do.end28.i150_crit_edge, %mt6360_isnk_init_default_state.exit.thread.i
  %retval.0.i138.i = phi i32 [ %retval.0.i.ph.i, %mt6360_isnk_init_default_state.exit.thread.i ], [ %call17.i.i, %mt6360_isnk_init_default_state.exit.i.do.end28.i150_crit_edge ]
  %170 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %led_no, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %171) #10
  br label %mt6360_led_register.exit.thread

if.end30.i151:                                    ; preds = %mt6360_isnk_init_default_state.exit.i
  %call31.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %add.ptr, ptr noundef nonnull %init_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i151.mt6360_led_register.exit.thread166_crit_edge, label %do.end36.i

if.end30.i151.mt6360_led_register.exit.thread166_crit_edge: ; preds = %if.end30.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_led_register.exit.thread166

do.end36.i:                                       ; preds = %if.end30.i151
  call void @__sanitizer_cov_trace_pc() #9
  %172 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %led_no, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %173) #10
  br label %mt6360_led_register.exit.thread

sw.default.i:                                     ; preds = %if.end6.i
  %174 = ptrtoint ptr %priv47 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %priv47, align 4
  %sub.i119.i = sub i32 5, %146
  %shl.i120.i = shl nuw i32 1, %sub.i119.i
  %or.i.i = or i32 %shl.i120.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i116.i) #7
  %176 = ptrtoint ptr %regval.i116.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %regval.i116.i, align 4, !annotation !137
  %regmap.i121.i = getelementptr inbounds %struct.mt6360_priv, ptr %175, i32 0, i32 1
  %177 = ptrtoint ptr %regmap.i121.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regmap.i121.i, align 4
  %sub3.i.i152 = shl i32 %146, 2
  %add4.i.i153 = add i32 %sub3.i.i152, 869
  %call.i122.i = call i32 @regmap_read(ptr noundef %178, i32 noundef %add4.i.i153, ptr noundef nonnull %regval.i116.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool.not.i123.i = icmp eq i32 %call.i122.i, 0
  br i1 %tobool.not.i123.i, label %if.end.i124.i, label %sw.default.i.mt6360_flash_init_default_state.exit.thread.i_crit_edge

sw.default.i.mt6360_flash_init_default_state.exit.thread.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_flash_init_default_state.exit.thread.i

if.end.i124.i:                                    ; preds = %sw.default.i
  %179 = ptrtoint ptr %regval.i116.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %regval.i116.i, align 4
  %181 = ptrtoint ptr %regmap.i121.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regmap.i121.i, align 4
  %call6.i.i = call i32 @regmap_read(ptr noundef %182, i32 noundef 894, ptr noundef nonnull %regval.i116.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end.i124.i.mt6360_flash_init_default_state.exit.thread.i_crit_edge

if.end.i124.i.mt6360_flash_init_default_state.exit.thread.i_crit_edge: ; preds = %if.end.i124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_flash_init_default_state.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end.i124.i
  %default_state.i125.i = getelementptr %struct.mt6360_led, ptr %leds, i32 %i.0218, i32 4
  %183 = ptrtoint ptr %default_state.i125.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %default_state.i125.i, align 4
  %185 = zext i32 %184 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %184, label %if.end9.i.i.mt6360_flash_init_default_state.exit.i_crit_edge [
    i32 2, label %sw.bb.i127.i
    i32 1, label %sw.bb15.i.i
  ]

if.end9.i.i.mt6360_flash_init_default_state.exit.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_flash_init_default_state.exit.i

sw.bb.i127.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_brightness.i126.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 2
  %186 = ptrtoint ptr %max_brightness.i126.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %max_brightness.i126.i, align 4
  br label %mt6360_flash_init_default_state.exit.i

sw.bb15.i.i:                                      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %188 = ptrtoint ptr %regval.i116.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %regval.i116.i, align 4
  %and10.i.i = and i32 %189, %or.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and10.i.i, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %and10.i.i, %or.i.i
  %and.i128.i = and i32 %180, 31
  %add12.i.i = add nuw nsw i32 %and.i128.i, 1
  %level.0.i.i = select i1 %cmp.i.i, i32 %add12.i.i, i32 0
  %max_brightness17.i.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 2
  %190 = ptrtoint ptr %max_brightness17.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %max_brightness17.i.i, align 4
  %192 = call i32 @llvm.umin.i32(i32 %level.0.i.i, i32 %191) #7
  br label %mt6360_flash_init_default_state.exit.i

mt6360_flash_init_default_state.exit.thread.i:    ; preds = %if.end.i124.i.mt6360_flash_init_default_state.exit.thread.i_crit_edge, %sw.default.i.mt6360_flash_init_default_state.exit.thread.i_crit_edge
  %retval.0.i131.ph.i = phi i32 [ %call6.i.i, %if.end.i124.i.mt6360_flash_init_default_state.exit.thread.i_crit_edge ], [ %call.i122.i, %sw.default.i.mt6360_flash_init_default_state.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i116.i) #7
  br label %do.end44.i

mt6360_flash_init_default_state.exit.i:           ; preds = %sw.bb15.i.i, %sw.bb.i127.i, %if.end9.i.i.mt6360_flash_init_default_state.exit.i_crit_edge
  %.sink.i129.i = phi i32 [ %192, %sw.bb15.i.i ], [ %187, %sw.bb.i127.i ], [ 0, %if.end9.i.i.mt6360_flash_init_default_state.exit.i_crit_edge ]
  %brightness22.i.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 1
  %193 = ptrtoint ptr %brightness22.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %.sink.i129.i, ptr %brightness22.i.i, align 4
  %call26.i.i = call i32 @mt6360_torch_brightness_set(ptr noundef %add.ptr, i32 noundef %.sink.i129.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i116.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool40.not.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool40.not.i, label %if.end46.i, label %mt6360_flash_init_default_state.exit.i.do.end44.i_crit_edge

mt6360_flash_init_default_state.exit.i.do.end44.i_crit_edge: ; preds = %mt6360_flash_init_default_state.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44.i

do.end44.i:                                       ; preds = %mt6360_flash_init_default_state.exit.i.do.end44.i_crit_edge, %mt6360_flash_init_default_state.exit.thread.i
  %retval.0.i131141.i = phi i32 [ %retval.0.i131.ph.i, %mt6360_flash_init_default_state.exit.thread.i ], [ %call26.i.i, %mt6360_flash_init_default_state.exit.i.do.end44.i_crit_edge ]
  %194 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %led_no, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %195) #10
  br label %mt6360_led_register.exit.thread

if.end46.i:                                       ; preds = %mt6360_flash_init_default_state.exit.i
  %call47.i = call i32 @devm_led_classdev_flash_register_ext(ptr noundef %dev, ptr noundef %add.ptr, ptr noundef nonnull %init_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end54.i, label %do.end52.i

do.end52.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %196 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %led_no, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %197) #10
  br label %mt6360_led_register.exit.thread

if.end54.i:                                       ; preds = %if.end46.i
  %198 = ptrtoint ptr %intensity.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 25000, ptr %intensity.i.i, align 4
  %199 = ptrtoint ptr %step.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 12500, ptr %step.i.i, align 4
  %max_brightness.i132.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 2
  %200 = ptrtoint ptr %max_brightness.i132.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %max_brightness.i132.i, align 4
  %202 = mul i32 %201, 12500
  %add.i133.i = add i32 %202, 12500
  %203 = ptrtoint ptr %max.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %add.i133.i, ptr %max.i.i, align 4
  %204 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %add.i133.i, ptr %val.i.i, align 4
  %205 = ptrtoint ptr %has_external_strobe.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %bf.load.i.i = load i8, ptr %has_external_strobe.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %has_external_strobe.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.led_classdev, ptr %add.ptr, i32 0, i32 11
  %206 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev.i.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %207, align 8
  %call.i134.i = call i32 @strscpy(ptr noundef nonnull %v4l2_config.i, ptr noundef %209, i32 noundef 32) #7
  %210 = ptrtoint ptr %flash_faults.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 202, ptr %flash_faults.i.i, align 4
  %211 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %init_data, align 4
  %call55.i = call ptr @v4l2_flash_init(ptr noundef %dev, ptr noundef %212, ptr noundef %add.ptr, ptr noundef nonnull @v4l2_flash_ops, ptr noundef nonnull %v4l2_config.i) #7
  %v4l2_flash.i = getelementptr %struct.mt6360_led, ptr %leds, i32 %i.0218, i32 1
  %213 = ptrtoint ptr %v4l2_flash.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call55.i, ptr %v4l2_flash.i, align 4
  %cmp.i135.i = icmp ugt ptr %call55.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135.i, label %mt6360_led_register.exit, label %if.end54.i.mt6360_led_register.exit.thread166_crit_edge

if.end54.i.mt6360_led_register.exit.thread166_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_led_register.exit.thread166

mt6360_led_register.exit.thread:                  ; preds = %do.end52.i, %do.end44.i, %do.end36.i, %do.end28.i150, %do.end20.i, %do.end13.i, %do.end.i145
  %retval.0.i154.ph = phi i32 [ %call15.i, %do.end20.i ], [ %call8.i, %do.end13.i ], [ %call31.i, %do.end36.i ], [ %retval.0.i138.i, %do.end28.i150 ], [ %call47.i, %do.end52.i ], [ %retval.0.i131141.i, %do.end44.i ], [ %call.i.i142, %do.end.i145 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %v4l2_config.i) #7
  br label %out_flash_release

mt6360_led_register.exit.thread166:               ; preds = %if.end54.i.mt6360_led_register.exit.thread166_crit_edge, %if.end30.i151.mt6360_led_register.exit.thread166_crit_edge, %if.end14.i.mt6360_led_register.exit.thread166_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %v4l2_config.i) #7
  br label %for.inc

mt6360_led_register.exit:                         ; preds = %if.end54.i
  %214 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %led_no, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %215) #10
  %216 = ptrtoint ptr %v4l2_flash.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %v4l2_flash.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %v4l2_config.i) #7
  %tobool65.not = icmp eq ptr %217, null
  br i1 %tobool65.not, label %mt6360_led_register.exit.for.inc_crit_edge, label %out_flash_release.loopexit.split.loop.exit

mt6360_led_register.exit.for.inc_crit_edge:       ; preds = %mt6360_led_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %mt6360_led_register.exit.for.inc_crit_edge, %mt6360_led_register.exit.thread166
  %inc = add i32 %i.0218, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_color) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #7
  %call72 = call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef nonnull %child.0216) #7
  %tobool25.not = icmp eq ptr %call72, null
  br i1 %tobool25.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %218 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup73

out_flash_release.loopexit.split.loop.exit:       ; preds = %mt6360_led_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %219 = ptrtoint ptr %217 to i32
  br label %out_flash_release

out_flash_release:                                ; preds = %out_flash_release.loopexit.split.loop.exit, %mt6360_led_register.exit.thread, %if.end59.out_flash_release_crit_edge, %if.end41.out_flash_release_crit_edge, %if.end37.out_flash_release_crit_edge, %if.else.out_flash_release_crit_edge, %for.body.out_flash_release_crit_edge
  %ret.1.ph = phi i32 [ %retval.0.i154.ph, %mt6360_led_register.exit.thread ], [ %219, %out_flash_release.loopexit.split.loop.exit ], [ %ret.0, %if.end59.out_flash_release_crit_edge ], [ -22, %if.end41.out_flash_release_crit_edge ], [ -22, %if.end37.out_flash_release_crit_edge ], [ %call.i120, %if.else.out_flash_release_crit_edge ], [ %call.i119, %for.body.out_flash_release_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_color) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #7
  %220 = ptrtoint ptr %leds_count to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %leds_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp6.not.i = icmp eq i32 %221, 0
  br i1 %cmp6.not.i, label %out_flash_release.cleanup73_crit_edge, label %out_flash_release.for.body.i158_crit_edge

out_flash_release.for.body.i158_crit_edge:        ; preds = %out_flash_release
  br label %for.body.i158

out_flash_release.cleanup73_crit_edge:            ; preds = %out_flash_release
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup73

for.body.i158:                                    ; preds = %if.end.i161.for.body.i158_crit_edge, %out_flash_release.for.body.i158_crit_edge
  %i.07.i = phi i32 [ %inc.i160, %if.end.i161.for.body.i158_crit_edge ], [ 0, %out_flash_release.for.body.i158_crit_edge ]
  %v4l2_flash.i156 = getelementptr %struct.mt6360_led, ptr %leds, i32 %i.07.i, i32 1
  %222 = ptrtoint ptr %v4l2_flash.i156 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %v4l2_flash.i156, align 4
  %tobool.not.i157 = icmp eq ptr %223, null
  br i1 %tobool.not.i157, label %for.body.i158.if.end.i161_crit_edge, label %if.then.i159

for.body.i158.if.end.i161_crit_edge:              ; preds = %for.body.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i161

if.then.i159:                                     ; preds = %for.body.i158
  call void @__sanitizer_cov_trace_pc() #9
  call void @v4l2_flash_release(ptr noundef nonnull %223) #7
  br label %if.end.i161

if.end.i161:                                      ; preds = %if.then.i159, %for.body.i158.if.end.i161_crit_edge
  %inc.i160 = add nuw i32 %i.07.i, 1
  %224 = ptrtoint ptr %leds_count to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %leds_count, align 4
  %cmp.i = icmp ult i32 %inc.i160, %225
  br i1 %cmp.i, label %if.end.i161.for.body.i158_crit_edge, label %if.end.i161.cleanup73_crit_edge

if.end.i161.cleanup73_crit_edge:                  ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup73

if.end.i161.for.body.i158_crit_edge:              ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i158

cleanup73:                                        ; preds = %if.end.i161.cleanup73_crit_edge, %out_flash_release.cleanup73_crit_edge, %for.end, %do.end20, %if.end.cleanup73_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end ], [ -19, %do.end20 ], [ -12, %if.end.cleanup73_crit_edge ], [ %ret.1.ph, %out_flash_release.cleanup73_crit_edge ], [ %ret.1.ph, %if.end.i161.cleanup73_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_led_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %leds_count.i = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %leds_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leds_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not.i = icmp eq i32 %3, 0
  br i1 %cmp6.not.i, label %entry.mt6360_v4l2_flash_release.exit_crit_edge, label %for.body.lr.ph.i

entry.mt6360_v4l2_flash_release.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_v4l2_flash_release.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %leds.i = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %v4l2_flash.i = getelementptr %struct.mt6360_led, ptr %leds.i, i32 %i.07.i, i32 1
  %4 = ptrtoint ptr %v4l2_flash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_flash.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_flash_release(ptr noundef nonnull %5) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %i.07.i, 1
  %6 = ptrtoint ptr %leds_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leds_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.mt6360_v4l2_flash_release.exit_crit_edge

if.end.i.mt6360_v4l2_flash_release.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_v4l2_flash_release.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mt6360_v4l2_flash_release.exit:                   ; preds = %if.end.i.mt6360_v4l2_flash_release.exit_crit_edge, %entry.mt6360_v4l2_flash_release.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_mc_brightness_set(ptr noundef %lcdev, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mt6360_led, ptr %lcdev, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call2 = tail call i32 @led_mc_calc_color_components(ptr noundef %lcdev, i32 noundef %level) #7
  %num_colors = getelementptr inbounds %struct.led_classdev_mc, ptr %lcdev, i32 0, i32 1
  %2 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_colors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp52.not = icmp eq i32 %3, 0
  br i1 %cmp52.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %subled_info = getelementptr inbounds %struct.led_classdev_mc, ptr %lcdev, i32 0, i32 2
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %lcdev, i32 0, i32 2
  %regmap = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %enable.054 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %enable_mask.053 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %subled_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subled_info, align 4
  %6 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_brightness, align 4
  %brightness = getelementptr %struct.mc_subled, ptr %5, i32 %i.055, i32 1
  %8 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brightness, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %9)
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %add = add i32 %i.055, 897
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %add, i32 noundef 31, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup17_crit_edge

for.body.cleanup17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

for.inc:                                          ; preds = %for.body
  %channel = getelementptr %struct.mc_subled, ptr %5, i32 %i.055, i32 3
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 4
  %sub = sub i32 7, %14
  %shl = shl nuw i32 1, %sub
  %or = or i32 %shl, %enable_mask.053
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  %or12 = select i1 %tobool7.not, i32 0, i32 %shl
  %spec.select = or i32 %or12, %enable.054
  %inc = add nuw i32 %i.055, 1
  %15 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_colors, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %enable_mask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.inc.for.end_crit_edge ]
  %enable.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ]
  %regmap14 = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %regmap14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap14, align 4
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 896, i32 noundef %enable_mask.0.lcssa, i32 noundef %enable.0.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %for.body.cleanup17_crit_edge
  %ret.0 = phi i32 [ %call.i44, %for.end ], [ %call.i, %for.body.cleanup17_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_isnk_brightness_set(ptr nocapture noundef readonly %lcdev, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mt6360_led, ptr %lcdev, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %led_no = getelementptr inbounds %struct.mt6360_led, ptr %lcdev, i32 0, i32 3
  %2 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led_no, align 4
  %lock = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %led_no, align 4
  %add = add i32 %7, 897
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 31, i32 noundef %level, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %tobool.not = icmp eq i32 %level, 0
  %sub = sub i32 7, %3
  %shl = shl nuw i32 1, %sub
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 896, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %call.i18, %if.end ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_mc_calc_color_components(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_torch_brightness_set(ptr nocapture noundef readonly %lcdev, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mt6360_led, ptr %lcdev, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %led_no = getelementptr inbounds %struct.mt6360_led, ptr %lcdev, i32 0, i32 3
  %2 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led_no, align 4
  %sub = sub i32 5, %3
  %shl = shl nuw i32 1, %sub
  %or = or i32 %shl, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %tobool.not = icmp eq i32 %level, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %fled_torch_used = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %fled_torch_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fled_torch_used, align 4
  %lock = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %fled_strobe_used = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %fled_strobe_used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fled_strobe_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.led_classdev, ptr %lcdev, i32 0, i32 11
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.36, i32 noundef %7) #10
  br label %unlock

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %led_no, align 4
  %shl13 = shl nuw i32 1, %11
  br i1 %tobool.not, label %if.end14.thread, label %if.then20

if.end14.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl13, -1
  %and = and i32 %5, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not60 = icmp eq i32 %and, 0
  %or1761 = or i32 %spec.select, 8
  %spec.select5762 = select i1 %tobool15.not60, i32 %spec.select, i32 %or1761
  br label %if.end28

if.then20:                                        ; preds = %if.end
  %or11 = or i32 %shl13, %5
  %or17 = or i32 %spec.select, 8
  %regmap = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %sub22 = shl i32 %11, 2
  %add23 = add i32 %sub22, 869
  %sub24 = add i32 %level, -1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %add23, i32 noundef 31, i32 noundef %sub24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.then20.if.end28_crit_edge, label %if.then20.unlock_crit_edge

if.then20.unlock_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %if.then20.if.end28_crit_edge, %if.end14.thread
  %spec.select5764 = phi i32 [ %spec.select5762, %if.end14.thread ], [ %or17, %if.then20.if.end28_crit_edge ]
  %curr.063 = phi i32 [ %and, %if.end14.thread ], [ %or11, %if.then20.if.end28_crit_edge ]
  %regmap29 = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap29, align 4
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 894, i32 noundef %or, i32 noundef %spec.select5764, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool31.not = icmp eq i32 %call.i58, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.unlock_crit_edge

if.end28.unlock_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %fled_torch_used to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %curr.063, ptr %fled_torch_used, align 4
  br label %unlock

unlock:                                           ; preds = %if.end33, %if.end28.unlock_crit_edge, %if.then20.unlock_crit_edge, %do.end
  %ret.0 = phi i32 [ -16, %do.end ], [ %call.i, %if.then20.unlock_crit_edge ], [ %call.i58, %if.end28.unlock_crit_edge ], [ 0, %if.end33 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt6360_flash_brightness_set(ptr nocapture noundef readnone %fl_cdev, i32 noundef %brightness) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_strobe_set(ptr nocapture noundef readonly %fl_cdev, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mt6360_led, ptr %fl_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %brightness = getelementptr inbounds %struct.led_classdev_flash, ptr %fl_cdev, i32 0, i32 2
  %led_no = getelementptr inbounds %struct.mt6360_led, ptr %fl_cdev, i32 0, i32 3
  %2 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led_no, align 4
  %fled_strobe_used = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %fled_strobe_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fled_strobe_used, align 4
  %lock = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %fled_torch_used = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %fled_torch_used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fled_torch_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.led_classdev, ptr %fl_cdev, i32 0, i32 11
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.38, i32 noundef %7) #10
  br label %unlock

if.end:                                           ; preds = %entry
  %sub = sub i32 5, %3
  %shl = shl nuw i32 1, %sub
  %spec.select = select i1 %state, i32 %shl, i32 0
  %or = or i32 %shl, 4
  %10 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %led_no, align 4
  %shl10 = shl nuw i32 1, %11
  %or11 = or i32 %shl10, %5
  %neg = xor i32 %shl10, -1
  %and = and i32 %5, %neg
  %curr.0 = select i1 %state, i32 %or11, i32 %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %curr.0)
  %tobool15.not = icmp eq i32 %curr.0, 0
  %or17 = or i32 %spec.select, 4
  %spec.select79 = select i1 %tobool15.not, i32 %spec.select, i32 %or17
  %regmap = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 894, i32 noundef %or, i32 noundef %spec.select79, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end27, label %do.end23

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev24 = getelementptr inbounds %struct.led_classdev, ptr %fl_cdev, i32 0, i32 11
  %14 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev24, align 4
  %16 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %led_no, align 4
  %conv = zext i1 %state to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.41, i32 noundef %17, i32 noundef %conv) #10
  br label %unlock

if.end27:                                         ; preds = %if.end
  %val31 = getelementptr inbounds %struct.led_classdev_flash, ptr %fl_cdev, i32 0, i32 2, i32 3
  %cond34.in = select i1 %state, ptr %val31, ptr %brightness
  %18 = ptrtoint ptr %cond34.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %cond34 = load i32, ptr %cond34.in, align 4
  %19 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv1, align 4
  %21 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %brightness, align 4
  %sub.i = sub i32 %cond34, %22
  %step.i = getelementptr inbounds %struct.led_classdev_flash, ptr %fl_cdev, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %step.i, align 4
  %div.i = udiv i32 %sub.i, %24
  %regmap.i = getelementptr inbounds %struct.mt6360_priv, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %27 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %led_no, align 4
  %sub3.i = shl i32 %28, 2
  %add4.i = add i32 %sub3.i, 868
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %add4.i, i32 noundef 127, i32 noundef %div.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool36.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool36.not, label %if.end38, label %if.end27.unlock_crit_edge

if.end27.unlock_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end38:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool39.not = icmp eq i32 %5, 0
  %tobool39.not.not = xor i1 %tobool39.not, true
  %brmerge = select i1 %tobool39.not.not, i1 true, i1 %tobool15.not
  br i1 %brmerge, label %if.else42, label %if.then41

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  br label %if.end48

if.else42:                                        ; preds = %if.end38
  %tobool15.not.not = xor i1 %tobool15.not, true
  %brmerge80 = select i1 %tobool39.not, i1 true, i1 %tobool15.not.not
  br i1 %brmerge80, label %if.else42.if.end48_crit_edge, label %if.then46

if.else42.if.end48_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 107374000) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.else42.if.end48_crit_edge, %if.then41
  %30 = ptrtoint ptr %fled_strobe_used to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %curr.0, ptr %fled_strobe_used, align 4
  br label %unlock

unlock:                                           ; preds = %if.end48, %if.end27.unlock_crit_edge, %do.end23, %do.end
  %ret.0 = phi i32 [ -16, %do.end ], [ %call.i, %do.end23 ], [ %call.i.i, %if.end27.unlock_crit_edge ], [ 0, %if.end48 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_strobe_get(ptr nocapture noundef readonly %fl_cdev, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mt6360_led, ptr %fl_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %fled_strobe_used = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fled_strobe_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fled_strobe_used, align 4
  %led_no = getelementptr inbounds %struct.mt6360_led, ptr %fl_cdev, i32 0, i32 3
  %4 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %led_no, align 4
  %shl = shl nuw i32 1, %5
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool to i8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %state, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_timeout_set(ptr nocapture noundef readonly %fl_cdev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mt6360_led, ptr %fl_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %timeout2 = getelementptr inbounds %struct.led_classdev_flash, ptr %fl_cdev, i32 0, i32 3
  %2 = ptrtoint ptr %timeout2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout2, align 4
  %sub = sub i32 %timeout, %3
  %step = getelementptr inbounds %struct.led_classdev_flash, ptr %fl_cdev, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  %div = udiv i32 %sub, %5
  %lock = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 883, i32 noundef 127, i32 noundef %div, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_fault_get(ptr nocapture noundef readonly %fl_cdev, ptr nocapture noundef writeonly %fault) #2 align 64 {
entry:
  %fled_stat = alloca i16, align 2
  %chg_stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mt6360_led, ptr %fl_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fled_stat) #7
  %2 = ptrtoint ptr %fled_stat to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %fled_stat, align 2, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chg_stat) #7
  %3 = ptrtoint ptr %chg_stat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %chg_stat, align 4, !annotation !137
  %lock = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.mt6360_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 993, ptr noundef nonnull %chg_stat) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_raw_read(ptr noundef %7, i32 noundef 1001, ptr noundef nonnull %fled_stat, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %led_no = getelementptr inbounds %struct.mt6360_led, ptr %fl_cdev, i32 0, i32 3
  %8 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %led_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp eq i32 %9, 4
  %. = select i1 %cmp, i32 2048, i32 1024
  %.40 = select i1 %cmp, i32 128, i32 64
  %10 = ptrtoint ptr %chg_stat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chg_stat, align 4
  %and = shl i32 %11, 4
  %12 = and i32 %and, 128
  %13 = ptrtoint ptr %fled_stat to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fled_stat, align 2
  %conv = zext i16 %14 to i32
  %and12 = and i32 %., %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or15 = or i32 %12, 2
  %rfault.1 = select i1 %tobool13.not, i32 %12, i32 %or15
  %and18 = and i32 %.40, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %or21 = or i32 %rfault.1, 8
  %rfault.2 = select i1 %tobool19.not, i32 %rfault.1, i32 %or21
  %15 = shl i16 %14, 3
  %16 = and i16 %15, 64
  %17 = zext i16 %16 to i32
  %18 = or i32 %rfault.2, %17
  %19 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %fault, align 4
  br label %unlock

unlock:                                           ; preds = %if.end6, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %call, %entry.unlock_crit_edge ], [ %call3, %if.end.unlock_crit_edge ], [ 0, %if.end6 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chg_stat) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fled_stat) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_multicolor_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_flash_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_flash_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_flash_external_strobe_set(ptr nocapture noundef readonly %v4l2_flash, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_flash, align 4
  %priv1 = getelementptr inbounds %struct.mt6360_led, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %led_no = getelementptr inbounds %struct.mt6360_led, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %led_no, align 4
  %sub = sub i32 5, %5
  %shl = shl nuw i32 1, %sub
  %spec.select = select i1 %enable, i32 %shl, i32 0
  %lock = getelementptr inbounds %struct.mt6360_priv, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.mt6360_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 894, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %led_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %led_no, align 4
  %shl6 = shl nuw i32 1, %9
  br i1 %enable, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fled_strobe_used = getelementptr inbounds %struct.mt6360_priv, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %fled_strobe_used to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fled_strobe_used, align 4
  %or = or i32 %11, %shl6
  store i32 %or, ptr %fled_strobe_used, align 4
  br label %unlock

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl6, -1
  %fled_strobe_used9 = getelementptr inbounds %struct.mt6360_priv, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %fled_strobe_used9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fled_strobe_used9, align 4
  %and = and i32 %13, %neg
  store i32 %and, ptr %fled_strobe_used9, align 4
  br label %unlock

unlock:                                           ; preds = %if.else, %if.then4, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_flash_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65, !67, !68, !69, !71, !73, !74, !75, !77, !78, !79, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_leds_mt6360__302_906_mt6360_led_driver_init6, !1, !"__initcall__kmod_leds_mt6360__302_906_mt6360_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 906, i32 1}
!2 = !{ptr @__exitcall_mt6360_led_driver_exit, !1, !"__exitcall_mt6360_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 908, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 909, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 910, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 900, i32 11}
!12 = !{ptr @mt6360_led_driver, !13, !"mt6360_led_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 898, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 803, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt6360_led_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt6360_led_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mt6360_led_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 816, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 820, i32 3}
!27 = !{ptr @mt6360_led_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mt6360_led_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 829, i32 41}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 837, i32 42}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 766, i32 33}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 766, i32 40}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 766, i32 48}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 771, i32 7}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 645, i32 5}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mt6360_init_isnk_properties._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @mt6360_init_isnk_properties._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 658, i32 4}
!48 = !{ptr @mt6360_init_isnk_properties._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mt6360_init_isnk_properties._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 678, i32 52}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 681, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mt6360_init_isnk_properties._entry.22, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @mt6360_init_isnk_properties._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 689, i32 49}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 708, i32 3}
!61 = !{ptr @mt6360_init_flash_properties._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mt6360_init_flash_properties._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 720, i32 52}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 723, i32 3}
!67 = !{ptr @mt6360_init_flash_properties._entry.29, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mt6360_init_flash_properties._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 744, i32 12}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 746, i32 3}
!73 = !{ptr @mt6360_init_flash_properties._entry.33, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mt6360_init_flash_properties._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 178, i32 3}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mt6360_torch_brightness_set._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @mt6360_torch_brightness_set._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @mt6360_flash_ops, !81, !"mt6360_flash_ops", i1 false, i1 false}
!81 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 380, i32 35}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 257, i32 3}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mt6360_strobe_set._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @mt6360_strobe_set._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 274, i32 3}
!89 = !{ptr @mt6360_strobe_set._entry.40, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @mt6360_strobe_set._entry_ptr.42, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 538, i32 4}
!93 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mt6360_led_register._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mt6360_led_register._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 547, i32 4}
!98 = !{ptr @mt6360_led_register._entry.45, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mt6360_led_register._entry_ptr.47, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 555, i32 4}
!102 = !{ptr @mt6360_led_register._entry.48, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mt6360_led_register._entry_ptr.50, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 562, i32 4}
!106 = !{ptr @mt6360_led_register._entry.51, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mt6360_led_register._entry_ptr.53, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 570, i32 4}
!110 = !{ptr @mt6360_led_register._entry.54, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mt6360_led_register._entry_ptr.56, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 578, i32 4}
!114 = !{ptr @mt6360_led_register._entry.57, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mt6360_led_register._entry_ptr.59, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 586, i32 4}
!118 = !{ptr @mt6360_led_register._entry.60, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mt6360_led_register._entry_ptr.62, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 597, i32 4}
!122 = !{ptr @mt6360_led_register._entry.63, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mt6360_led_register._entry_ptr.65, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @v4l2_flash_ops, !125, !"v4l2_flash_ops", i1 false, i1 false}
!125 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 488, i32 36}
!126 = !{ptr @mt6360_led_of_id, !127, !"mt6360_led_of_id", i1 false, i1 false}
!127 = !{!"../drivers/leds/flash/leds-mt6360.c", i32 892, i32 49}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"auto-init"}
