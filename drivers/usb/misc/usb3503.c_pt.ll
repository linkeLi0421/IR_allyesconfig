; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/usb3503.c_pt.bc'
source_filename = "../drivers/usb/misc/usb3503.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb3503 = type { i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, i8 }
%struct.usb3503_platform_data = type { i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__initcall__kmod_usb3503__288_427_usb3503_init6 = internal global ptr @usb3503_init, section ".initcall6.init", align 4
@usb3503_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @usb3503_platform_probe, ptr @usb3503_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb3503_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb3503_platform_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@usb3503_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @usb3503_i2c_probe, ptr @usb3503_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb3503_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb3503_i2c_pm_ops, ptr null, ptr null }, ptr @usb3503_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_usb3503_exit = internal global ptr @usb3503_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [48 x i8] c"usb3503.author=Dongjin Kim <tobetter@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [43 x i8] c"usb3503.description=USB3503 USB HUB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [38 x i8] c"usb3503.file=drivers/usb/misc/usb3503\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"usb3503.license=GPL\00", section ".modinfo", align 1
@usb3503_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013usb3503: Failed to register I2C driver: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb3503_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/misc/usb3503.c\00", [37 x i8] zeroinitializer }, align 32
@usb3503_init._entry_ptr = internal global ptr @usb3503_init._entry, section ".printk_index", align 4
@usb3503_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013usb3503: Failed to register platform driver: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@usb3503_init._entry_ptr.5 = internal global ptr @usb3503_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb3503\00", [24 x i8] zeroinitializer }, align 32
@usb3503_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,usb3503\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,usb3503a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@usb3503_platform_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @usb3503_platform_suspend, ptr @usb3503_platform_resume, ptr @usb3503_platform_suspend, ptr @usb3503_platform_resume, ptr @usb3503_platform_suspend, ptr @usb3503_platform_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"refclk-frequency\00", [47 x i8] zeroinitializer }, align 32
@usb3503_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 192, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unsupported reference clock rate (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb3503_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb3503_probe._entry_ptr = internal global ptr @usb3503_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@usb3503_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 200, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to request refclk (%ld)\0A\00", [32 x i8] zeroinitializer }, align 32
@usb3503_probe._entry_ptr.15 = internal global ptr @usb3503_probe._entry.13, section ".printk_index", align 4
@usb3503_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 209, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to set reference clock rate to %d\0A\00", [54 x i8] zeroinitializer }, align 32
@usb3503_probe._entry_ptr.18 = internal global ptr @usb3503_probe._entry.16, section ".printk_index", align 4
@usb3503_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 216, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to enable reference clock\0A\00", [62 x i8] zeroinitializer }, align 32
@usb3503_probe._entry_ptr.21 = internal global ptr @usb3503_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disabled-ports\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"initial-mode\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intn\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb3503 intn\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"connect\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb3503 connect\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb3503 reset\00", [18 x i8] zeroinitializer }, align 32
@usb3503_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.9, ptr @.str.2, i32 260, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Ports disabled with no control interface\0A\00", [54 x i8] zeroinitializer }, align 32
@usb3503_probe._entry_ptr.32 = internal global ptr @usb3503_probe._entry.30, section ".printk_index", align 4
@usb3503_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.9, ptr @.str.2, i32 265, ptr @.str.35, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: probed in %s mode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usb3503_probe._entry_ptr.36 = internal global ptr @usb3503_probe._entry.33, section ".printk_index", align 4
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hub\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@usb3503_switch_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 138, ptr @.str.35, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"switched to STANDBY mode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb3503_switch_mode\00", [44 x i8] zeroinitializer }, align 32
@usb3503_switch_mode._entry_ptr = internal global ptr @usb3503_switch_mode._entry, section ".printk_index", align 4
@usb3503_switch_mode._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 142, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown mode is requested\0A\00", [37 x i8] zeroinitializer }, align 32
@usb3503_switch_mode._entry_ptr.43 = internal global ptr @usb3503_switch_mode._entry.41, section ".printk_index", align 4
@usb3503_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 83, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SP_ILOCK failed (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb3503_connect\00", [16 x i8] zeroinitializer }, align 32
@usb3503_connect._entry_ptr = internal global ptr @usb3503_connect._entry, section ".printk_index", align 4
@usb3503_connect._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 93, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PDS failed (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@usb3503_connect._entry_ptr.48 = internal global ptr @usb3503_connect._entry.46, section ".printk_index", align 4
@usb3503_connect._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 103, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CFG1 failed (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@usb3503_connect._entry_ptr.51 = internal global ptr @usb3503_connect._entry.49, section ".printk_index", align 4
@usb3503_connect._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 112, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usb3503_connect._entry_ptr.53 = internal global ptr @usb3503_connect._entry.52, section ".printk_index", align 4
@usb3503_connect._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.45, ptr @.str.2, i32 121, ptr @.str.35, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"switched to HUB mode\0A\00", [42 x i8] zeroinitializer }, align 32
@usb3503_connect._entry_ptr.56 = internal global ptr @usb3503_connect._entry.54, section ".printk_index", align 4
@usb3503_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @usb3503_i2c_suspend, ptr @usb3503_i2c_resume, ptr @usb3503_i2c_suspend, ptr @usb3503_i2c_resume, ptr @usb3503_i2c_suspend, ptr @usb3503_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@usb3503_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"usb3503\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@usb3503_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@usb3503_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"usb3503:281:(&usb3503_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@usb3503_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 284, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialise regmap: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb3503_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@usb3503_i2c_probe._entry_ptr = internal global ptr @usb3503_i2c_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 12000000, i64 19200000, i64 24000000, i64 25000000, i64 26000000, i64 27000000, i64 38400000, i64 50000000]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"usb3503_platform_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 397, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"usb3503_i2c_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 386, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 413, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 419, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 399, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"usb3503_of_match\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 378, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"usb3503_platform_pm_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 368, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 175, i32 33 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 190, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 197, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 199, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 207, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 216, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 220, i32 34 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 230, i32 28 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 238, i32 43 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 242, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 244, i32 46 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 248, i32 41 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 250, i32 44 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 256, i32 39 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 260, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 264, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 138, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 142, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 83, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 93, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 103, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 112, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 121, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [19 x i8] c"usb3503_i2c_pm_ops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 365, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant [11 x i8] c"usb3503_id\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 371, i32 35 }
@___asan_gen_.229 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"usb3503_regmap_config\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 150, i32 35 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 281, i32 16 }
@___asan_gen_.238 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [30 x i8] c"../drivers/usb/misc/usb3503.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 284, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_usb3503_exit, ptr @__initcall__kmod_usb3503__288_427_usb3503_init6, ptr @usb3503_connect._entry, ptr @usb3503_connect._entry.46, ptr @usb3503_connect._entry.49, ptr @usb3503_connect._entry.52, ptr @usb3503_connect._entry.54, ptr @usb3503_connect._entry_ptr, ptr @usb3503_connect._entry_ptr.48, ptr @usb3503_connect._entry_ptr.51, ptr @usb3503_connect._entry_ptr.53, ptr @usb3503_connect._entry_ptr.56, ptr @usb3503_exit, ptr @usb3503_i2c_probe._entry, ptr @usb3503_i2c_probe._entry_ptr, ptr @usb3503_init._entry, ptr @usb3503_init._entry.3, ptr @usb3503_init._entry_ptr, ptr @usb3503_init._entry_ptr.5, ptr @usb3503_probe._entry, ptr @usb3503_probe._entry.13, ptr @usb3503_probe._entry.16, ptr @usb3503_probe._entry.19, ptr @usb3503_probe._entry.30, ptr @usb3503_probe._entry.33, ptr @usb3503_probe._entry_ptr, ptr @usb3503_probe._entry_ptr.15, ptr @usb3503_probe._entry_ptr.18, ptr @usb3503_probe._entry_ptr.21, ptr @usb3503_probe._entry_ptr.32, ptr @usb3503_probe._entry_ptr.36, ptr @usb3503_switch_mode._entry, ptr @usb3503_switch_mode._entry.41, ptr @usb3503_switch_mode._entry_ptr, ptr @usb3503_switch_mode._entry_ptr.43, ptr @usb3503_platform_driver, ptr @usb3503_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @usb3503_of_match, ptr @usb3503_platform_pm_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.55, ptr @usb3503_i2c_pm_ops, ptr @usb3503_id, ptr @usb3503_i2c_probe._key, ptr @usb3503_regmap_config, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_platform_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_switch_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_switch_mode._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_connect._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_connect._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_connect._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_connect._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3503_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3503_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @usb3503_i2c_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @usb3503_platform_driver, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call2) #8
  tail call void @i2c_del_driver(ptr noundef nonnull @usb3503_i2c_driver) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb3503_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @usb3503_platform_driver) #5
  tail call void @i2c_del_driver(ptr noundef nonnull @usb3503_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3503_platform_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.usb3503, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call fastcc i32 @usb3503_probe(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3503_platform_remove(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb3503_probe(ptr nocapture noundef %hub) unnamed_addr #4 align 64 {
entry:
  %mode = alloca i32, align 4
  %len = alloca i32, align 4
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #5
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %len, align 4, !annotation !133
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %port_off_mask = getelementptr inbounds %struct.usb3503_platform_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %port_off_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_off_mask, align 4
  %port_off_mask2 = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 4
  %10 = ptrtoint ptr %port_off_mask2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %port_off_mask2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %13 = ptrtoint ptr %hub to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %hub, align 4
  br label %if.end59

if.else:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.else.if.end59_crit_edge, label %if.then5

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then5:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #5
  %14 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rate, align 4
  %port_off_mask6 = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 4
  %15 = ptrtoint ptr %port_off_mask6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %port_off_mask6, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.7, ptr noundef nonnull %rate, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool8.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool8.not, label %if.then9, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then9:                                         ; preds = %if.then5
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end [
    i32 38400000, label %if.then9.if.end.sink.split_crit_edge
    i32 26000000, label %if.then9.if.end.sink.split_crit_edge206
    i32 19200000, label %if.then9.if.end.sink.split_crit_edge207
    i32 12000000, label %if.then9.if.end.sink.split_crit_edge208
    i32 24000000, label %if.then9.sw.bb10_crit_edge
    i32 27000000, label %if.then9.sw.bb10_crit_edge209
    i32 25000000, label %if.then9.sw.bb10_crit_edge210
    i32 50000000, label %if.then9.sw.bb10_crit_edge211
  ]

if.then9.sw.bb10_crit_edge211:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

if.then9.sw.bb10_crit_edge210:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

if.then9.sw.bb10_crit_edge209:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

if.then9.sw.bb10_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

if.then9.if.end.sink.split_crit_edge208:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.then9.if.end.sink.split_crit_edge207:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.then9.if.end.sink.split_crit_edge206:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.then9.if.end.sink.split_crit_edge:             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

sw.bb10:                                          ; preds = %if.then9.sw.bb10_crit_edge, %if.then9.sw.bb10_crit_edge209, %if.then9.sw.bb10_crit_edge210, %if.then9.sw.bb10_crit_edge211
  br label %if.end.sink.split

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %17) #8
  br label %cleanup.thread

if.end.sink.split:                                ; preds = %sw.bb10, %if.then9.if.end.sink.split_crit_edge, %if.then9.if.end.sink.split_crit_edge206, %if.then9.if.end.sink.split_crit_edge207, %if.then9.if.end.sink.split_crit_edge208
  %.sink = phi i8 [ 1, %sw.bb10 ], [ 0, %if.then9.if.end.sink.split_crit_edge ], [ 0, %if.then9.if.end.sink.split_crit_edge206 ], [ 0, %if.then9.if.end.sink.split_crit_edge207 ], [ 0, %if.then9.if.end.sink.split_crit_edge208 ]
  %secondary_ref_clk = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 8
  %19 = ptrtoint ptr %secondary_ref_clk to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %secondary_ref_clk, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then5.if.end_crit_edge
  %call12 = call ptr @devm_clk_get_optional(ptr noundef %1, ptr noundef nonnull @.str.12) #5
  %clk = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 3
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call12, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end18, label %if.end23

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call12 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %21) #8
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup.thread

if.end23:                                         ; preds = %if.end
  %25 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not = icmp eq i32 %26, 0
  br i1 %cmp.not, label %if.end23.if.end33_crit_edge, label %if.then24

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then24:                                        ; preds = %if.end23
  %call26 = call i32 @clk_set_rate(ptr noundef %call12, i32 noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.if.end33_crit_edge, label %do.end31

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %28) #8
  br label %cleanup.thread

if.end33:                                         ; preds = %if.then24.if.end33_crit_edge, %if.end23.if.end33_crit_edge
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  %call.i = call i32 @clk_prepare(ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end33.do.end40_crit_edge

if.end33.do.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

if.end.i:                                         ; preds = %if.end33
  %call1.i = call i32 @clk_enable(ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end41, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %30) #5
  br label %do.end40

do.end40:                                         ; preds = %if.then3.i, %if.end33.do.end40_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end33.do.end40_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20) #8
  br label %cleanup.thread

if.end41:                                         ; preds = %if.end.i
  %call42 = call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, ptr noundef nonnull %len) #5
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %land.lhs.true

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end41
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp44.not = icmp ult i32 %32, 4
  br i1 %cmp44.not, label %land.lhs.true.cleanup_crit_edge, label %for.body.preheader

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %land.lhs.true
  %div46194 = lshr i32 %32, 2
  br label %for.body

for.body:                                         ; preds = %if.end54.for.body_crit_edge, %for.body.preheader
  %i.0205 = phi i32 [ %inc, %if.end54.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %call42, i32 %i.0205
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %35 = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %if.then51, label %for.body.if.end54_crit_edge

for.body.if.end54_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw nsw i32 1, %34
  %37 = ptrtoint ptr %port_off_mask6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %port_off_mask6, align 4
  %39 = trunc i32 %shl to i8
  %conv53 = or i8 %38, %39
  store i8 %conv53, ptr %port_off_mask6, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %for.body.if.end54_crit_edge
  %inc = add nuw nsw i32 %i.0205, 1
  %exitcond.not = icmp eq i32 %inc, %div46194
  br i1 %exitcond.not, label %if.end54.cleanup_crit_edge, label %if.end54.for.body_crit_edge

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.thread:                                   ; preds = %do.end40, %do.end31, %do.end18, %do.end
  %retval.0.ph = phi i32 [ -22, %do.end ], [ %retval.0.i.ph, %do.end40 ], [ %call26, %do.end31 ], [ %24, %do.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #5
  br label %cleanup122

cleanup:                                          ; preds = %if.end54.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end41.cleanup_crit_edge
  %call.i.i195 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.23, ptr noundef nonnull %mode, i32 noundef 1, i32 noundef 0) #5
  %40 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mode, align 4
  %42 = ptrtoint ptr %hub to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %hub, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #5
  br label %if.end59

if.end59:                                         ; preds = %cleanup, %if.else.if.end59_crit_edge, %if.then
  %secondary_ref_clk60 = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 8
  %43 = ptrtoint ptr %secondary_ref_clk60 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %secondary_ref_clk60, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool61.not = icmp eq i8 %44, 0
  %. = select i1 %tobool61.not, i32 7, i32 3
  %call65 = call ptr @devm_gpiod_get_optional(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %.) #5
  %intn = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 5
  %45 = ptrtoint ptr %intn to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call65, ptr %intn, align 4
  %cmp.i196 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %call65 to i32
  br label %cleanup122

if.end71:                                         ; preds = %if.end59
  %tobool73.not = icmp eq ptr %call65, null
  br i1 %tobool73.not, label %if.end71.if.end77_crit_edge, label %if.then74

if.end71.if.end77_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %call76 = call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call65, ptr noundef nonnull @.str.25) #5
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end71.if.end77_crit_edge
  %call78 = call ptr @devm_gpiod_get_optional(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 3) #5
  %connect = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 7
  %47 = ptrtoint ptr %connect to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call78, ptr %connect, align 4
  %cmp.i197 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then81, label %if.end84

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %call78 to i32
  br label %cleanup122

if.end84:                                         ; preds = %if.end77
  %tobool86.not = icmp eq ptr %call78, null
  br i1 %tobool86.not, label %if.end84.if.end90_crit_edge, label %if.then87

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  %call89 = call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call78, ptr noundef nonnull @.str.27) #5
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end84.if.end90_crit_edge
  %call91 = call ptr @devm_gpiod_get_optional(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef 7) #5
  %reset = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 6
  %49 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call91, ptr %reset, align 4
  %cmp.i198 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %if.then94, label %if.end97

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %call91 to i32
  br label %cleanup122

if.end97:                                         ; preds = %if.end90
  %tobool99.not = icmp eq ptr %call91, null
  br i1 %tobool99.not, label %if.end97.if.end103_crit_edge, label %if.then100

if.end97.if.end103_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 100, i32 noundef 10000, i32 noundef 2) #5
  %51 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reset, align 4
  %call102 = call i32 @gpiod_set_consumer_name(ptr noundef %52, ptr noundef nonnull @.str.29) #5
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end97.if.end103_crit_edge
  %port_off_mask104 = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 4
  %53 = ptrtoint ptr %port_off_mask104 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %port_off_mask104, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool106.not = icmp eq i8 %54, 0
  br i1 %tobool106.not, label %if.end103.if.end113_crit_edge, label %land.lhs.true107

if.end103.if.end113_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

land.lhs.true107:                                 ; preds = %if.end103
  %regmap = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 1
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %tobool108.not = icmp eq ptr %56, null
  br i1 %tobool108.not, label %do.end112, label %land.lhs.true107.if.end113_crit_edge

land.lhs.true107.if.end113_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

do.end112:                                        ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31) #8
  br label %if.end113

if.end113:                                        ; preds = %do.end112, %land.lhs.true107.if.end113_crit_edge, %if.end103.if.end113_crit_edge
  %57 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hub, align 4
  call fastcc void @usb3503_switch_mode(ptr noundef %hub, i32 noundef %58)
  %59 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp120 = icmp eq i32 %60, 1
  %cond = select i1 %cmp120, ptr @.str.37, ptr @.str.38
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond) #8
  br label %cleanup122

cleanup122:                                       ; preds = %if.end113, %if.then94, %if.then81, %if.then68, %cleanup.thread
  %retval.1 = phi i32 [ %46, %if.then68 ], [ %48, %if.then81 ], [ %50, %if.then94 ], [ 0, %if.end113 ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #5
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb3503_switch_mode(ptr nocapture noundef %hub, i32 noundef %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %mode, label %do.end6 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %reset.i.i = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 6
  %3 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %4, null
  br i1 %tobool3.not.i.i, label %sw.bb.usb3503_reset.exit.i_crit_edge, label %if.then4.i.i

sw.bb.usb3503_reset.exit.i_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb3503_reset.exit.i

if.then4.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %4, i32 noundef 0) #5
  br label %usb3503_reset.exit.i

usb3503_reset.exit.i:                             ; preds = %if.then4.i.i, %sw.bb.usb3503_reset.exit.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 10000, i32 noundef 2) #5
  %regmap.i = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %usb3503_reset.exit.i.if.end38.i_crit_edge, label %if.then.i

usb3503_reset.exit.i.if.end38.i_crit_edge:        ; preds = %usb3503_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then.i:                                        ; preds = %usb3503_reset.exit.i
  %call3.i = tail call i32 @regmap_write(ptr noundef nonnull %6, i32 noundef 231, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %call3.i) #8
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then.i
  %port_off_mask.i = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 4
  %7 = ptrtoint ptr %port_off_mask.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port_off_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not.i = icmp eq i8 %8, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then6.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then6.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %8 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 10, i32 noundef %conv.i, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %if.then6.i.if.end19.i_crit_edge

if.then6.i.if.end19.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

do.end17.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %call.i.i) #8
  br label %sw.epilog

if.end19.i:                                       ; preds = %if.then6.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i76.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 6, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %cmp22.i = icmp slt i32 %call.i76.i, 0
  br i1 %cmp22.i, label %do.end27.i, label %if.end28.i

do.end27.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %call.i76.i) #8
  br label %sw.epilog

if.end28.i:                                       ; preds = %if.end19.i
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i77.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 231, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %cmp31.i = icmp slt i32 %call.i77.i, 0
  br i1 %cmp31.i, label %do.end36.i, label %if.end28.i.if.end38.i_crit_edge

if.end28.i.if.end38.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

do.end36.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %call.i77.i) #8
  br label %sw.epilog

if.end38.i:                                       ; preds = %if.end28.i.if.end38.i_crit_edge, %usb3503_reset.exit.i.if.end38.i_crit_edge
  %connect.i = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 7
  %15 = ptrtoint ptr %connect.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connect.i, align 4
  %tobool39.not.i = icmp eq ptr %16, null
  br i1 %tobool39.not.i, label %if.end38.i.if.end42.i_crit_edge, label %if.then40.i

if.end38.i.if.end42.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %16, i32 noundef 1) #5
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %if.end38.i.if.end42.i_crit_edge
  %17 = ptrtoint ptr %hub to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %hub, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.55) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %connect.i1 = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 7
  %18 = ptrtoint ptr %connect.i1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %connect.i1, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %sw.bb2.if.end.i3_crit_edge, label %if.then.i2

sw.bb2.if.end.i3_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3

if.then.i2:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %19, i32 noundef 0) #5
  br label %if.end.i3

if.end.i3:                                        ; preds = %if.then.i2, %sw.bb2.if.end.i3_crit_edge
  %reset.i = getelementptr inbounds %struct.usb3503, ptr %hub, i32 0, i32 6
  %20 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset.i, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %if.end.i3.usb3503_reset.exit_crit_edge, label %if.then4.i

if.end.i3.usb3503_reset.exit_crit_edge:           ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb3503_reset.exit

if.then4.i:                                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %21, i32 noundef 1) #5
  br label %usb3503_reset.exit

usb3503_reset.exit:                               ; preds = %if.then4.i, %if.end.i3.usb3503_reset.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.39) #8
  br label %sw.epilog

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.42) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end6, %usb3503_reset.exit, %if.end42.i, %do.end36.i, %do.end27.i, %do.end17.i, %do.end.i
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3503_platform_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i.i, align 4
  %connect.i1.i.i = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %connect.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connect.i1.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i.i, label %entry.if.end.i3.i.i_crit_edge, label %if.then.i2.i.i

entry.if.end.i3.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3.i.i

if.then.i2.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 0) #5
  br label %if.end.i3.i.i

if.end.i3.i.i:                                    ; preds = %if.then.i2.i.i, %entry.if.end.i3.i.i_crit_edge
  %reset.i.i.i = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %reset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i.i.i, label %if.end.i3.i.i.usb3503_suspend.exit_crit_edge, label %if.then4.i.i.i

if.end.i3.i.i.usb3503_suspend.exit_crit_edge:     ; preds = %if.end.i3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb3503_suspend.exit

if.then4.i.i.i:                                   ; preds = %if.end.i3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 1) #5
  br label %usb3503_suspend.exit

usb3503_suspend.exit:                             ; preds = %if.then4.i.i.i, %if.end.i3.i.i.usb3503_suspend.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.39) #8
  %clk.i = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3503_platform_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk.i = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.usb3503_resume.exit_crit_edge

entry.usb3503_resume.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb3503_resume.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.usb3503_resume.exit_crit_edge, label %if.then3.i.i

if.end.i.i.usb3503_resume.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb3503_resume.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %usb3503_resume.exit

usb3503_resume.exit:                              ; preds = %if.then3.i.i, %if.end.i.i.usb3503_resume.exit_crit_edge, %entry.usb3503_resume.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call fastcc void @usb3503_switch_mode(ptr noundef %1, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3503_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @usb3503_regmap_config, ptr noundef nonnull @usb3503_i2c_probe._key, ptr noundef nonnull @.str.57) #5
  %regmap = getelementptr inbounds %struct.usb3503, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %2) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.usb3503, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev10, align 4
  %call11 = tail call fastcc i32 @usb3503_probe(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %call11, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3503_i2c_remove(ptr nocapture noundef readonly %i2c) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3503_i2c_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i.i, align 4
  %connect.i1.i.i = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %connect.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connect.i1.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i.i, label %entry.if.end.i3.i.i_crit_edge, label %if.then.i2.i.i

entry.if.end.i3.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3.i.i

if.then.i2.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 0) #5
  br label %if.end.i3.i.i

if.end.i3.i.i:                                    ; preds = %if.then.i2.i.i, %entry.if.end.i3.i.i_crit_edge
  %reset.i.i.i = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %reset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i.i.i, label %if.end.i3.i.i.usb3503_suspend.exit_crit_edge, label %if.then4.i.i.i

if.end.i3.i.i.usb3503_suspend.exit_crit_edge:     ; preds = %if.end.i3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb3503_suspend.exit

if.then4.i.i.i:                                   ; preds = %if.end.i3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 1) #5
  br label %usb3503_suspend.exit

usb3503_suspend.exit:                             ; preds = %if.then4.i.i.i, %if.end.i3.i.i.usb3503_suspend.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.39) #8
  %clk.i = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3503_i2c_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i = getelementptr inbounds %struct.usb3503, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.usb3503_resume.exit_crit_edge

entry.usb3503_resume.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb3503_resume.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.usb3503_resume.exit_crit_edge, label %if.then3.i.i

if.end.i.i.usb3503_resume.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb3503_resume.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %usb3503_resume.exit

usb3503_resume.exit:                              ; preds = %if.then3.i.i, %if.end.i.i.usb3503_resume.exit_crit_edge, %entry.usb3503_resume.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call fastcc void @usb3503_switch_mode(ptr noundef %1, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !108, !110, !112, !113, !115, !116, !117, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_usb3503__288_427_usb3503_init6, !1, !"__initcall__kmod_usb3503__288_427_usb3503_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/usb3503.c", i32 427, i32 1}
!2 = !{ptr @__exitcall_usb3503_exit, !3, !"__exitcall_usb3503_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/misc/usb3503.c", i32 434, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/usb/misc/usb3503.c", i32 436, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/usb/misc/usb3503.c", i32 437, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/usb/misc/usb3503.c", i32 438, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/usb3503.c", i32 413, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @usb3503_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @usb3503_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/misc/usb3503.c", i32 419, i32 3}
!19 = !{ptr @usb3503_init._entry.3, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @usb3503_init._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/misc/usb3503.c", i32 399, i32 11}
!23 = !{ptr @usb3503_platform_driver, !24, !"usb3503_platform_driver", i1 false, i1 false}
!24 = !{!"../drivers/usb/misc/usb3503.c", i32 397, i32 31}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/misc/usb3503.c", i32 175, i32 33}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/misc/usb3503.c", i32 190, i32 5}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @usb3503_probe._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @usb3503_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/misc/usb3503.c", i32 197, i32 41}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/misc/usb3503.c", i32 199, i32 4}
!38 = !{ptr @usb3503_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @usb3503_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/misc/usb3503.c", i32 207, i32 5}
!42 = !{ptr @usb3503_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @usb3503_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/misc/usb3503.c", i32 216, i32 4}
!46 = !{ptr @usb3503_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @usb3503_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/misc/usb3503.c", i32 220, i32 34}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/misc/usb3503.c", i32 230, i32 28}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/misc/usb3503.c", i32 238, i32 43}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/misc/usb3503.c", i32 242, i32 38}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/misc/usb3503.c", i32 244, i32 46}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/misc/usb3503.c", i32 248, i32 41}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/misc/usb3503.c", i32 250, i32 44}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/misc/usb3503.c", i32 256, i32 39}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/misc/usb3503.c", i32 260, i32 3}
!66 = !{ptr @usb3503_probe._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @usb3503_probe._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/misc/usb3503.c", i32 264, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @usb3503_probe._entry.33, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @usb3503_probe._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/misc/usb3503.c", i32 138, i32 3}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @usb3503_switch_mode._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @usb3503_switch_mode._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/misc/usb3503.c", i32 142, i32 3}
!82 = !{ptr @usb3503_switch_mode._entry.41, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @usb3503_switch_mode._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/misc/usb3503.c", i32 83, i32 4}
!86 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @usb3503_connect._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @usb3503_connect._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/misc/usb3503.c", i32 93, i32 5}
!91 = !{ptr @usb3503_connect._entry.46, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @usb3503_connect._entry_ptr.48, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/misc/usb3503.c", i32 103, i32 4}
!95 = !{ptr @usb3503_connect._entry.49, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @usb3503_connect._entry_ptr.51, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @usb3503_connect._entry.52, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/usb/misc/usb3503.c", i32 112, i32 4}
!99 = !{ptr @usb3503_connect._entry_ptr.53, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/misc/usb3503.c", i32 121, i32 2}
!102 = !{ptr @usb3503_connect._entry.54, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @usb3503_connect._entry_ptr.56, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @usb3503_of_match, !105, !"usb3503_of_match", i1 false, i1 false}
!105 = !{!"../drivers/usb/misc/usb3503.c", i32 378, i32 34}
!106 = !{ptr @usb3503_platform_pm_ops, !107, !"usb3503_platform_pm_ops", i1 false, i1 false}
!107 = !{!"../drivers/usb/misc/usb3503.c", i32 368, i32 8}
!108 = !{ptr @usb3503_i2c_driver, !109, !"usb3503_i2c_driver", i1 false, i1 false}
!109 = !{!"../drivers/usb/misc/usb3503.c", i32 386, i32 26}
!110 = !{ptr @usb3503_i2c_probe._key, !111, !"_key", i1 false, i1 false}
!111 = !{!"../drivers/usb/misc/usb3503.c", i32 281, i32 16}
!112 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/misc/usb3503.c", i32 284, i32 3}
!115 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @usb3503_i2c_probe._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @usb3503_i2c_probe._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @usb3503_regmap_config, !119, !"usb3503_regmap_config", i1 false, i1 false}
!119 = !{!"../drivers/usb/misc/usb3503.c", i32 150, i32 35}
!120 = !{ptr @usb3503_i2c_pm_ops, !121, !"usb3503_i2c_pm_ops", i1 false, i1 false}
!121 = !{!"../drivers/usb/misc/usb3503.c", i32 365, i32 8}
!122 = !{ptr @usb3503_id, !123, !"usb3503_id", i1 false, i1 false}
!123 = !{!"../drivers/usb/misc/usb3503.c", i32 371, i32 35}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
!134 = !{i8 0, i8 2}
