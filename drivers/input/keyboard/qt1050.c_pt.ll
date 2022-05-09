; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/qt1050.c_pt.bc'
source_filename = "../drivers/input/keyboard/qt1050.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.qt1050_key_regs = type { i32, i32, i32, i32 }
%struct.qt1050_key = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qt1050_priv = type { ptr, ptr, ptr, [5 x %struct.qt1050_key], [5 x i16], i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_qt1050__288_594_qt1050_driver_init6 = internal global ptr @qt1050_driver_init, section ".initcall6.init", align 4
@qt1050_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @qt1050_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qt1050_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qt1050_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_qt1050_driver_exit = internal global ptr @qt1050_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"qt1050.author=Marco Felsch <kernel@pengutronix.de\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [55 x i8] c"qt1050.description=Driver for AT42QT1050 QTouch sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"qt1050.file=drivers/input/keyboard/qt1050\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"qt1050.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qt1050\00", [25 x i8] zeroinitializer }, align 32
@qt1050_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,qt1050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qt1050_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @qt1050_suspend, ptr @qt1050_resume, ptr @qt1050_suspend, ptr @qt1050_resume, ptr @qt1050_suspend, ptr @qt1050_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qt1050_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s adapter not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qt1050_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/keyboard/qt1050.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qt1050_probe._entry_ptr = internal global ptr @qt1050_probe._entry, section ".printk_index", align 4
@qt1050_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"assign a irq line to this device\0A\00", [62 x i8] zeroinitializer }, align 32
@qt1050_probe._entry_ptr.8 = internal global ptr @qt1050_probe._entry.6, section ".printk_index", align 4
@qt1050_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@qt1050_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @qt1050_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 63, ptr @qt1050_writeable_table, ptr @qt1050_readable_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"qt1050:458:(&qt1050_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@qt1050_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to parse firmware: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@qt1050_probe._entry_ptr.12 = internal global ptr @qt1050_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AT42QT1050 QTouch Sensor\00", [39 x i8] zeroinitializer }, align 32
@qt1050_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Trigger calibration failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@qt1050_probe._entry_ptr.16 = internal global ptr @qt1050_probe._entry.14, section ".printk_index", align 4
@qt1050_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Calibration failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@qt1050_probe._entry_ptr.19 = internal global ptr @qt1050_probe._entry.17, section ".printk_index", align 4
@qt1050_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Trigger soft reset failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@qt1050_probe._entry_ptr.22 = internal global ptr @qt1050_probe._entry.20, section ".printk_index", align 4
@qt1050_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set firmware data: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@qt1050_probe._entry_ptr.25 = internal global ptr @qt1050_probe._entry.23, section ".printk_index", align 4
@qt1050_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 528, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qt1050_probe._entry_ptr.28 = internal global ptr @qt1050_probe._entry.26, section ".printk_index", align 4
@qt1050_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to clear #CHANGE line level: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@qt1050_probe._entry_ptr.31 = internal global ptr @qt1050_probe._entry.29, section ".printk_index", align 4
@qt1050_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 543, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@qt1050_probe._entry_ptr.34 = internal global ptr @qt1050_probe._entry.32, section ".printk_index", align 4
@qt1050_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @qt1050_writeable_ranges, i32 8, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@qt1050_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @qt1050_readable_ranges, i32 13, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@qt1050_writeable_ranges = internal constant { [8 x %struct.regmap_range], [32 x i8] } { [8 x %struct.regmap_range] [%struct.regmap_range { i32 33, i32 34 }, %struct.regmap_range { i32 36, i32 38 }, %struct.regmap_range { i32 40, i32 41 }, %struct.regmap_range { i32 43, i32 45 }, %struct.regmap_range { i32 47, i32 48 }, %struct.regmap_range { i32 50, i32 52 }, %struct.regmap_range { i32 54, i32 55 }, %struct.regmap_range { i32 57, i32 63 }], [32 x i8] zeroinitializer }, align 32
@qt1050_readable_ranges = internal constant { [13 x %struct.regmap_range], [56 x i8] } { [13 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 3 }, %struct.regmap_range { i32 6, i32 9 }, %struct.regmap_range { i32 12, i32 17 }, %struct.regmap_range { i32 20, i32 23 }, %struct.regmap_range { i32 26, i32 31 }, %struct.regmap_range { i32 33, i32 34 }, %struct.regmap_range { i32 36, i32 38 }, %struct.regmap_range { i32 40, i32 41 }, %struct.regmap_range { i32 43, i32 45 }, %struct.regmap_range { i32 47, i32 48 }, %struct.regmap_range { i32 50, i32 52 }, %struct.regmap_range { i32 54, i32 55 }, %struct.regmap_range { i32 57, i32 63 }], [56 x i8] zeroinitializer }, align 32
@qt1050_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ID %d not supported\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qt1050_identify\00", [16 x i8] zeroinitializer }, align 32
@qt1050_identify._entry_ptr = internal global ptr @qt1050_identify._entry, section ".printk_index", align 4
@qt1050_identify._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not read the firmware version\0A\00", [59 x i8] zeroinitializer }, align 32
@qt1050_identify._entry_ptr.39 = internal global ptr @qt1050_identify._entry.37, section ".printk_index", align 4
@qt1050_identify._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 243, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AT42QT1050 firmware version %1d.%1d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qt1050_identify._entry_ptr.43 = internal global ptr @qt1050_identify._entry.40, section ".printk_index", align 4
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"linux,code\00", [21 x i8] zeroinitializer }, align 32
@qt1050_parse_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Button without keycode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qt1050_parse_fw\00", [16 x i8] zeroinitializer }, align 32
@qt1050_parse_fw._entry_ptr = internal global ptr @qt1050_parse_fw._entry, section ".printk_index", align 4
@qt1050_parse_fw._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid keycode 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@qt1050_parse_fw._entry_ptr.49 = internal global ptr @qt1050_parse_fw._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@qt1050_parse_fw._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.46, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Button without pad number\0A\00", [37 x i8] zeroinitializer }, align 32
@qt1050_parse_fw._entry_ptr.53 = internal global ptr @qt1050_parse_fw._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"microchip,pre-charge-time-ns\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"microchip,average-samples\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"microchip,average-scaling\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"microchip,threshold\00", [44 x i8] zeroinitializer }, align 32
@qt1050_key_regs_data = internal constant { [5 x %struct.qt1050_key_regs], [48 x i8] } { [5 x %struct.qt1050_key_regs] [%struct.qt1050_key_regs { i32 33, i32 40, i32 47, i32 54 }, %struct.qt1050_key_regs { i32 34, i32 41, i32 48, i32 55 }, %struct.qt1050_key_regs { i32 36, i32 43, i32 50, i32 57 }, %struct.qt1050_key_regs { i32 37, i32 44, i32 51, i32 58 }, %struct.qt1050_key_regs { i32 38, i32 45, i32 52, i32 59 }], [48 x i8] zeroinitializer }, align 32
@qt1050_irq_threaded._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fail to read detection status: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qt1050_irq_threaded\00", [44 x i8] zeroinitializer }, align 32
@qt1050_irq_threaded._entry_ptr = internal global ptr @qt1050_irq_threaded._entry, section ".printk_index", align 4
@qt1050_irq_threaded._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Fail to determine the key status: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qt1050_irq_threaded._entry_ptr.62 = internal global ptr @qt1050_irq_threaded._entry.60, section ".printk_index", align 4
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"qt1050_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 585, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 587, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"qt1050_of_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 579, i32 49 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"qt1050_pm_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 577, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 440, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 446, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"qt1050_regmap_config\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 211, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 458, i32 8 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 475, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 479, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 498, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 504, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 512, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 520, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 528, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 535, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 542, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [23 x i8] c"qt1050_writeable_table\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 206, i32 41 }
@___asan_gen_.162 = private unnamed_addr constant [22 x i8] c"qt1050_readable_table\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 190, i32 41 }
@___asan_gen_.165 = private unnamed_addr constant [24 x i8] c"qt1050_writeable_ranges\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 195, i32 34 }
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"qt1050_readable_ranges\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 174, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 231, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 238, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 242, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 355, i32 39 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 357, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 361, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 366, i32 39 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 368, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 378, i32 11 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 389, i32 39 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 399, i32 39 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 410, i32 39 }
@___asan_gen_.234 = private unnamed_addr constant [21 x i8] c"qt1050_key_regs_data\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 124, i32 37 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 259, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [35 x i8] c"../drivers/input/keyboard/qt1050.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 267, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_qt1050_driver_exit, ptr @__initcall__kmod_qt1050__288_594_qt1050_driver_init6, ptr @qt1050_driver_exit, ptr @qt1050_identify._entry, ptr @qt1050_identify._entry.37, ptr @qt1050_identify._entry.40, ptr @qt1050_identify._entry_ptr, ptr @qt1050_identify._entry_ptr.39, ptr @qt1050_identify._entry_ptr.43, ptr @qt1050_irq_threaded._entry, ptr @qt1050_irq_threaded._entry.60, ptr @qt1050_irq_threaded._entry_ptr, ptr @qt1050_irq_threaded._entry_ptr.62, ptr @qt1050_parse_fw._entry, ptr @qt1050_parse_fw._entry.47, ptr @qt1050_parse_fw._entry.51, ptr @qt1050_parse_fw._entry_ptr, ptr @qt1050_parse_fw._entry_ptr.49, ptr @qt1050_parse_fw._entry_ptr.53, ptr @qt1050_probe._entry, ptr @qt1050_probe._entry.10, ptr @qt1050_probe._entry.14, ptr @qt1050_probe._entry.17, ptr @qt1050_probe._entry.20, ptr @qt1050_probe._entry.23, ptr @qt1050_probe._entry.26, ptr @qt1050_probe._entry.29, ptr @qt1050_probe._entry.32, ptr @qt1050_probe._entry.6, ptr @qt1050_probe._entry_ptr, ptr @qt1050_probe._entry_ptr.12, ptr @qt1050_probe._entry_ptr.16, ptr @qt1050_probe._entry_ptr.19, ptr @qt1050_probe._entry_ptr.22, ptr @qt1050_probe._entry_ptr.25, ptr @qt1050_probe._entry_ptr.28, ptr @qt1050_probe._entry_ptr.31, ptr @qt1050_probe._entry_ptr.34, ptr @qt1050_probe._entry_ptr.8, ptr @qt1050_driver, ptr @.str, ptr @qt1050_of_match, ptr @qt1050_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @qt1050_probe._key, ptr @qt1050_regmap_config, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @qt1050_writeable_table, ptr @qt1050_readable_table, ptr @qt1050_writeable_ranges, ptr @qt1050_readable_ranges, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @qt1050_key_regs_data, ptr @.str.58, ptr @.str.59, ptr @.str.61], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_writeable_ranges to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_readable_ranges to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_identify._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_identify._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_parse_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_parse_fw._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_parse_fw._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_key_regs_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_irq_threaded._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1050_irq_threaded._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1050_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @qt1050_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qt1050_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @qt1050_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1050_probe(ptr noundef %client) #2 align 64 {
entry:
  %button.i = alloca %struct.qt1050_key, align 4
  %val.i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !136
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #7
  %and.i = and i32 %call.i.i, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 393216
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %dev4 = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 9
  %call5 = tail call ptr @dev_driver_string(ptr noundef %dev4) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %call5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %do.end10, label %if.end11

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 144, i32 noundef 3520) #7
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @qt1050_regmap_config, ptr noundef nonnull @qt1050_probe._key, ptr noundef nonnull @.str.9) #7
  %cmp.i237 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %client, ptr %call.i, align 4
  %input26 = getelementptr inbounds %struct.qt1050_priv, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %input26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %input26, align 4
  %regmap = getelementptr inbounds %struct.qt1050_priv, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call20, ptr %regmap, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !136
  %call.i238 = call i32 @regmap_read(ptr noundef %call20, i32 noundef 0, ptr noundef nonnull %val.i) #7
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 70
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.35, i32 noundef %18) #10
  br label %qt1050_identify.exit.thread

if.end.i:                                         ; preds = %if.end24
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 1, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %dev14.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  br i1 %tobool.not.i, label %if.end29, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.38) #10
  br label %qt1050_identify.exit.thread

qt1050_identify.exit.thread:                      ; preds = %do.end6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end29:                                         ; preds = %if.end.i
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i, align 4
  %shr.i = lshr i32 %26, 4
  %and.i239 = and i32 %26, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14.i, ptr noundef nonnull @.str.41, i32 noundef %shr.i, i32 noundef %and.i239) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %call.i240 = call i32 @device_get_child_node_count(ptr noundef %dev1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %cmp.i241 = icmp eq i32 %call.i240, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i240)
  %cmp2.i = icmp sgt i32 %call.i240, 5
  %or.cond.i = or i1 %cmp.i241, %cmp2.i
  br i1 %or.cond.i, label %if.end29.do.end35_crit_edge, label %if.end.i242

if.end29.do.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.end.i242:                                      ; preds = %if.end29
  %call3.i = call ptr @device_get_next_child_node(ptr noundef %dev1.i, ptr noundef null) #7
  %tobool.not160.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not160.i, label %if.end.i242.if.end36_crit_edge, label %for.body.lr.ph.i

if.end.i242.if.end36_crit_edge:                   ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.body.lr.ph.i:                                 ; preds = %if.end.i242
  %29 = getelementptr inbounds %struct.qt1050_key, ptr %button.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.qt1050_key, ptr %button.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.qt1050_key, ptr %button.i, i32 0, i32 3
  %32 = getelementptr inbounds %struct.qt1050_key, ptr %button.i, i32 0, i32 4
  %33 = getelementptr inbounds %struct.qt1050_key, ptr %button.i, i32 0, i32 5
  %reg_keys.i = getelementptr inbounds %struct.qt1050_priv, ptr %call.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.0161.i = phi ptr [ %call3.i, %for.body.lr.ph.i ], [ %call115.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %button.i) #7
  %34 = call ptr @memset(ptr %button.i, i32 255, i32 24)
  %call.i.i243 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0161.i, ptr noundef nonnull @.str.44, ptr noundef %33, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i243)
  %tobool5.not.i = icmp eq i32 %call.i.i243, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end.i244

do.end.i244:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.45) #10
  br label %err.i

if.end7.i:                                        ; preds = %for.body.i
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 766, i32 %36)
  %cmp9.i = icmp ugt i32 %36, 766
  br i1 %cmp9.i, label %do.end13.i, label %if.end15.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.48, i32 noundef %36) #10
  br label %err.i

if.end15.i:                                       ; preds = %if.end7.i
  %call.i138.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0161.i, ptr noundef nonnull @.str.50, ptr noundef nonnull %button.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i)
  %tobool17.not.i = icmp eq i32 %call.i138.i, 0
  br i1 %tobool17.not.i, label %if.end22.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.52) #10
  br label %err.i

if.end22.i:                                       ; preds = %if.end15.i
  %37 = ptrtoint ptr %button.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %button.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp27.i = icmp ugt i32 %38, 4
  br i1 %cmp27.i, label %if.end22.i.err.i_crit_edge, label %if.end29.i

if.end22.i.err.i_crit_edge:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end29.i:                                       ; preds = %if.end22.i
  %shl.i245 = shl nuw nsw i32 1, %38
  %39 = ptrtoint ptr %reg_keys.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reg_keys.i, align 2
  %41 = trunc i32 %shl.i245 to i8
  %conv31.i = or i8 %40, %41
  store i8 %conv31.i, ptr %reg_keys.i, align 2
  %call.i139.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0161.i, ptr noundef nonnull @.str.54, ptr noundef %29, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.i)
  %tobool33.not.i = icmp eq i32 %call.i139.i, 0
  br i1 %tobool33.not.i, label %if.else.i, label %if.end29.i.if.end45.i_crit_edge

if.end29.i.if.end45.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.else.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %29, align 4
  %.frozen = freeze i32 %43
  %div.i = udiv i32 %.frozen, 2500
  %44 = mul i32 %div.i, 2500
  %rem.i246.decomposed = sub i32 %.frozen, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i246.decomposed)
  %cmp37.i = icmp eq i32 %rem.i246.decomposed, 0
  %spec.select.i = select i1 %cmp37.i, i32 %div.i, i32 0
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i, %if.end29.i.if.end45.i_crit_edge
  %div.sink.i = phi i32 [ 0, %if.end29.i.if.end45.i_crit_edge ], [ %spec.select.i, %if.else.i ]
  %45 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div.sink.i, ptr %29, align 4
  %call.i140.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0161.i, ptr noundef nonnull @.str.55, ptr noundef %31, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140.i)
  %tobool47.not.i = icmp eq i32 %call.i140.i, 0
  br i1 %tobool47.not.i, label %if.else50.i, label %if.end45.i.if.end70.i_crit_edge

if.end45.i.if.end70.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.else50.i:                                      ; preds = %if.end45.i
  %46 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %31, align 4
  %48 = call i32 @llvm.ctpop.i32(i32 %47) #7, !range !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %cond.false61.i, label %if.else50.i.if.end70.i_crit_edge

if.else50.i.if.end70.i_crit_edge:                 ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

cond.false61.i:                                   ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = call i32 @llvm.ctlz.i32(i32 %47, i1 true) #7, !range !137
  %sub.i.op.i.i = xor i32 %50, 31
  br label %if.end70.i

if.end70.i:                                       ; preds = %cond.false61.i, %if.else50.i.if.end70.i_crit_edge, %if.end45.i.if.end70.i_crit_edge
  %cond65.sink.i = phi i32 [ 0, %if.end45.i.if.end70.i_crit_edge ], [ %sub.i.op.i.i, %cond.false61.i ], [ 0, %if.else50.i.if.end70.i_crit_edge ]
  %51 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond65.sink.i, ptr %31, align 4
  %call.i141.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0161.i, ptr noundef nonnull @.str.56, ptr noundef %32, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.i)
  %tobool72.not.i = icmp eq i32 %call.i141.i, 0
  br i1 %tobool72.not.i, label %if.else75.i, label %if.end70.i.if.end101.i_crit_edge

if.end70.i.if.end101.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i

if.else75.i:                                      ; preds = %if.end70.i
  %52 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %32, align 4
  %54 = call i32 @llvm.ctpop.i32(i32 %53) #7, !range !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %cond.false92.i, label %if.else75.i.if.end101.i_crit_edge

if.else75.i.if.end101.i_crit_edge:                ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i

cond.false92.i:                                   ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = call i32 @llvm.ctlz.i32(i32 %53, i1 true) #7, !range !137
  %sub.i.op.i147.i = xor i32 %56, 31
  br label %if.end101.i

if.end101.i:                                      ; preds = %cond.false92.i, %if.else75.i.if.end101.i_crit_edge, %if.end70.i.if.end101.i_crit_edge
  %cond96.sink.i = phi i32 [ 0, %if.end70.i.if.end101.i_crit_edge ], [ %sub.i.op.i147.i, %cond.false92.i ], [ 0, %if.else75.i.if.end101.i_crit_edge ]
  %57 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond96.sink.i, ptr %32, align 4
  %call.i149.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0161.i, ptr noundef nonnull @.str.57, ptr noundef %30, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149.i)
  %tobool103.not.i = icmp eq i32 %call.i149.i, 0
  br i1 %tobool103.not.i, label %if.else106.i, label %if.end101.i.for.inc.sink.split.i_crit_edge

if.end101.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split.i

if.else106.i:                                     ; preds = %if.end101.i
  %58 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %59)
  %cmp108.i = icmp ugt i32 %59, 255
  br i1 %cmp108.i, label %if.else106.i.for.inc.sink.split.i_crit_edge, label %if.else106.i.for.inc.i_crit_edge

if.else106.i.for.inc.i_crit_edge:                 ; preds = %if.else106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else106.i.for.inc.sink.split.i_crit_edge:      ; preds = %if.else106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.else106.i.for.inc.sink.split.i_crit_edge, %if.end101.i.for.inc.sink.split.i_crit_edge
  %60 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 20, ptr %30, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else106.i.for.inc.i_crit_edge
  %61 = ptrtoint ptr %button.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %button.i, align 4
  %arrayidx.i = getelementptr %struct.qt1050_priv, ptr %call.i, i32 0, i32 3, i32 %62
  %63 = call ptr @memcpy(ptr %arrayidx.i, ptr %button.i, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %button.i) #7
  %call115.i = call ptr @device_get_next_child_node(ptr noundef %dev1.i, ptr noundef nonnull %child.0161.i) #7
  %tobool.not.i247 = icmp eq ptr %call115.i, null
  br i1 %tobool.not.i247, label %for.inc.i.if.end36_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end36_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

err.i:                                            ; preds = %if.end22.i.err.i_crit_edge, %do.end21.i, %do.end13.i, %do.end.i244
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %button.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %child.0161.i) #7
  br label %do.end35

do.end35:                                         ; preds = %err.i, %if.end29.do.end35_crit_edge
  %retval.0.i248 = phi i32 [ -22, %err.i ], [ -19, %if.end29.do.end35_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i248) #10
  br label %cleanup

if.end36:                                         ; preds = %for.inc.i.if.end36_crit_edge, %if.end.i242.if.end36_crit_edge
  %64 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.13, ptr %call16, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 40, i32 1
  %65 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %dev1, ptr %parent, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 3
  %66 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 24, ptr %id, align 4
  %keycodes = getelementptr %struct.qt1050_priv, ptr %call.i, i32 0, i32 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 17
  %67 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %keycodes, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 16
  %68 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 15
  %69 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 5, ptr %keycodemax, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 5
  %70 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %evbit, align 4
  %or.i = or i32 %71, 2
  store i32 %or.i, ptr %evbit, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 6
  %keycode40 = getelementptr %struct.qt1050_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 5
  %72 = ptrtoint ptr %keycode40 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %keycode40, align 4
  %conv = trunc i32 %73 to i16
  %74 = ptrtoint ptr %keycodes to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv, ptr %keycodes, align 2
  %rem.i = and i32 %73, 31
  %shl.i = shl nuw i32 1, %rem.i
  %conv45 = lshr i32 %73, 5
  %div2.i = and i32 %conv45, 2047
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i, align 4
  %or.i236 = or i32 %76, %shl.i
  store i32 %or.i236, ptr %add.ptr.i, align 4
  %keycode40.1 = getelementptr %struct.qt1050_priv, ptr %call.i, i32 0, i32 3, i32 1, i32 5
  %77 = ptrtoint ptr %keycode40.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %keycode40.1, align 4
  %conv.1 = trunc i32 %78 to i16
  %arrayidx42.1 = getelementptr %struct.qt1050_priv, ptr %call.i, i32 0, i32 4, i32 1
  %79 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.1, ptr %arrayidx42.1, align 2
  %rem.i.1 = and i32 %78, 31
  %shl.i.1 = shl nuw i32 1, %rem.i.1
  %conv45.1 = lshr i32 %78, 5
  %div2.i.1 = and i32 %conv45.1, 2047
  %add.ptr.i.1 = getelementptr i32, ptr %keybit, i32 %div2.i.1
  %80 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.1, align 4
  %or.i236.1 = or i32 %81, %shl.i.1
  store i32 %or.i236.1, ptr %add.ptr.i.1, align 4
  %keycode40.2 = getelementptr %struct.qt1050_priv, ptr %call.i, i32 0, i32 3, i32 2, i32 5
  %82 = ptrtoint ptr %keycode40.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %keycode40.2, align 4
  %conv.2 = trunc i32 %83 to i16
  %arrayidx42.2 = getelementptr %struct.qt1050_priv, ptr %call.i, i32 0, i32 4, i32 2
  %84 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.2, ptr %arrayidx42.2, align 2
  %rem.i.2 = and i32 %83, 31
  %shl.i.2 = shl nuw i32 1, %rem.i.2
  %conv45.2 = lshr i32 %83, 5
  %div2.i.2 = and i32 %conv45.2, 2047
  %add.ptr.i.2 = getelementptr i32, ptr %keybit, i32 %div2.i.2
  %85 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i.2, align 4
  %or.i236.2 = or i32 %86, %shl.i.2
  store i32 %or.i236.2, ptr %add.ptr.i.2, align 4
  %keycode40.3 = getelementptr %struct.qt1050_priv, ptr %call.i, i32 0, i32 3, i32 3, i32 5
  %87 = ptrtoint ptr %keycode40.3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %keycode40.3, align 4
  %conv.3 = trunc i32 %88 to i16
  %arrayidx42.3 = getelementptr %struct.qt1050_priv, ptr %call.i, i32 0, i32 4, i32 3
  %89 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.3, ptr %arrayidx42.3, align 2
  %rem.i.3 = and i32 %88, 31
  %shl.i.3 = shl nuw i32 1, %rem.i.3
  %conv45.3 = lshr i32 %88, 5
  %div2.i.3 = and i32 %conv45.3, 2047
  %add.ptr.i.3 = getelementptr i32, ptr %keybit, i32 %div2.i.3
  %90 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.3, align 4
  %or.i236.3 = or i32 %91, %shl.i.3
  store i32 %or.i236.3, ptr %add.ptr.i.3, align 4
  %keycode40.4 = getelementptr %struct.qt1050_priv, ptr %call.i, i32 0, i32 3, i32 4, i32 5
  %92 = ptrtoint ptr %keycode40.4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %keycode40.4, align 4
  %conv.4 = trunc i32 %93 to i16
  %arrayidx42.4 = getelementptr %struct.qt1050_priv, ptr %call.i, i32 0, i32 4, i32 4
  %94 = ptrtoint ptr %arrayidx42.4 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.4, ptr %arrayidx42.4, align 2
  %rem.i.4 = and i32 %93, 31
  %shl.i.4 = shl nuw i32 1, %rem.i.4
  %conv45.4 = lshr i32 %93, 5
  %div2.i.4 = and i32 %conv45.4, 2047
  %add.ptr.i.4 = getelementptr i32, ptr %keybit, i32 %div2.i.4
  %95 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i.4, align 4
  %or.i236.4 = or i32 %96, %shl.i.4
  store i32 %or.i236.4, ptr %add.ptr.i.4, align 4
  %97 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap, align 4
  %call.i249 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 63, i32 noundef 127, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %tobool49.not = icmp eq i32 %call.i249, 0
  br i1 %tobool49.not, label %if.end54, label %do.end53

do.end53:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call.i249) #10
  br label %cleanup

if.end54:                                         ; preds = %if.end36
  %call55 = call i64 @ktime_get() #7
  %add.i = add i64 %call55, 200000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 502) #7
  %99 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap, align 4
  %call72284 = call i32 @regmap_read(ptr noundef %100, i32 noundef 2, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72284)
  %tobool73.not285 = icmp eq i32 %call72284, 0
  br i1 %tobool73.not285, label %if.end54.lor.lhs.false_crit_edge, label %if.end54.do.end104_crit_edge

if.end54.do.end104_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104

if.end54.lor.lhs.false_crit_edge:                 ; preds = %if.end54
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then88.lor.lhs.false_crit_edge, %if.end54.lor.lhs.false_crit_edge
  %101 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %status, align 4
  %shr.mask = and i32 %102, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %shr.mask)
  %cmp74 = icmp eq i32 %shr.mask, 128
  br i1 %cmp74, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call79 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call79, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call79, %add.i
  br i1 %cmp3.i, label %for.end91, label %if.then88

if.then88:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %103 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap, align 4
  %call72 = call i32 @regmap_read(ptr noundef %104, i32 noundef 2, ptr noundef nonnull %status) #7
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then88.lor.lhs.false_crit_edge, label %if.then88.do.end104_crit_edge

if.then88.do.end104_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104

if.then88.lor.lhs.false_crit_edge:                ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end91:                                        ; preds = %land.lhs.true
  %105 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap, align 4
  %call85 = call i32 @regmap_read(ptr noundef %106, i32 noundef 2, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool93.not = icmp eq i32 %call85, 0
  br i1 %tobool93.not, label %for.end91.lor.rhs_crit_edge, label %for.end91.do.end104_crit_edge

for.end91.do.end104_crit_edge:                    ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104

for.end91.lor.rhs_crit_edge:                      ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end91.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %107 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %status, align 4
  %shr94.mask = and i32 %108, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %shr94.mask)
  %cmp95 = icmp eq i32 %shr94.mask, 128
  br i1 %cmp95, label %if.end105, label %lor.rhs.do.end104_crit_edge

lor.rhs.do.end104_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104

do.end104:                                        ; preds = %lor.rhs.do.end104_crit_edge, %for.end91.do.end104_crit_edge, %if.then88.do.end104_crit_edge, %if.end54.do.end104_crit_edge
  %tobool93.not265.ph = phi i32 [ %call72284, %if.end54.do.end104_crit_edge ], [ -110, %lor.rhs.do.end104_crit_edge ], [ %call85, %for.end91.do.end104_crit_edge ], [ %call72, %if.then88.do.end104_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %tobool93.not265.ph) #10
  br label %cleanup

if.end105:                                        ; preds = %lor.rhs
  %109 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap, align 4
  %call.i252 = call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef 63, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %tobool108.not = icmp eq i32 %call.i252, 0
  br i1 %tobool108.not, label %if.end113, label %do.end112

do.end112:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call.i252) #10
  br label %cleanup

if.end113:                                        ; preds = %if.end105
  call void @msleep(i32 noundef 255) #7
  %111 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap, align 4
  %keys.i = getelementptr inbounds %struct.qt1050_priv, ptr %call.i, i32 0, i32 3
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 47, i32 noundef 252, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i254 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i254, label %for.cond.i, label %if.end113.do.end119_crit_edge

if.end113.do.end119_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119

for.cond.i:                                       ; preds = %if.end113
  %call.i.i.1.i = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 48, i32 noundef 252, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i.i.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.do.end119_crit_edge

for.cond.i.do.end119_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.i.i.2.i = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 50, i32 noundef 252, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2.i)
  %tobool.not.2.i = icmp eq i32 %call.i.i.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.end119_crit_edge

for.cond.1.i.do.end119_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.i.i.3.i = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 51, i32 noundef 252, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3.i)
  %tobool.not.3.i = icmp eq i32 %call.i.i.3.i, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.end119_crit_edge

for.cond.2.i.do.end119_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.i.i.4.i = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 52, i32 noundef 252, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4.i)
  %tobool.not.4.i = icmp eq i32 %call.i.i.4.i, 0
  br i1 %tobool.not.4.i, label %for.cond.3.i.for.body3.i_crit_edge, label %for.cond.3.i.do.end119_crit_edge

for.cond.3.i.do.end119_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119

for.cond.3.i.for.body3.i_crit_edge:               ; preds = %for.cond.3.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc25.i.for.body3.i_crit_edge, %for.cond.3.i.for.body3.i_crit_edge
  %i.165.i = phi i32 [ %inc26.i, %for.inc25.i.for.body3.i_crit_edge ], [ 0, %for.cond.3.i.for.body3.i_crit_edge ]
  %button.063.i = phi ptr [ %incdec.ptr.i, %for.inc25.i.for.body3.i_crit_edge ], [ %keys.i, %for.cond.3.i.for.body3.i_crit_edge ]
  %keycode.i = getelementptr inbounds %struct.qt1050_key, ptr %button.063.i, i32 0, i32 5
  %113 = ptrtoint ptr %keycode.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %keycode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp4.i = icmp eq i32 %114, 0
  br i1 %cmp4.i, label %for.body3.i.for.inc25.i_crit_edge, label %if.end6.i

for.body3.i.for.inc25.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25.i

if.end6.i:                                        ; preds = %for.body3.i
  %115 = ptrtoint ptr %button.063.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %button.063.i, align 4
  %di_aks.i59.i = getelementptr [5 x %struct.qt1050_key_regs], ptr @qt1050_key_regs_data, i32 0, i32 %116, i32 2
  %117 = ptrtoint ptr %di_aks.i59.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %di_aks.i59.i, align 4
  %call.i.i60.i = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef %118, i32 noundef 252, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60.i)
  %tobool8.not.i = icmp eq i32 %call.i.i60.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i.do.end119_crit_edge

if.end6.i.do.end119_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119

if.end10.i:                                       ; preds = %if.end6.i
  %119 = ptrtoint ptr %button.063.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %button.063.i, align 4
  %arrayidx.i.i = getelementptr [5 x %struct.qt1050_key_regs], ptr @qt1050_key_regs_data, i32 0, i32 %120
  %pulse_scale.i = getelementptr [5 x %struct.qt1050_key_regs], ptr @qt1050_key_regs_data, i32 0, i32 %120, i32 1
  %121 = ptrtoint ptr %pulse_scale.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pulse_scale.i, align 4
  %samples.i = getelementptr inbounds %struct.qt1050_key, ptr %button.063.i, i32 0, i32 3
  %123 = ptrtoint ptr %samples.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %samples.i, align 4
  %shl.i255 = shl i32 %124, 4
  %scale.i = getelementptr inbounds %struct.qt1050_key, ptr %button.063.i, i32 0, i32 4
  %125 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %scale.i, align 4
  %or.i256 = or i32 %shl.i255, %126
  %call13.i = call i32 @regmap_write(ptr noundef %112, i32 noundef %122, i32 noundef %or.i256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end10.i.do.end119_crit_edge

if.end10.i.do.end119_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119

if.end16.i:                                       ; preds = %if.end10.i
  %csd.i = getelementptr [5 x %struct.qt1050_key_regs], ptr @qt1050_key_regs_data, i32 0, i32 %120, i32 3
  %127 = ptrtoint ptr %csd.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %csd.i, align 4
  %charge_delay.i = getelementptr inbounds %struct.qt1050_key, ptr %button.063.i, i32 0, i32 1
  %129 = ptrtoint ptr %charge_delay.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %charge_delay.i, align 4
  %call17.i = call i32 @regmap_write(ptr noundef %112, i32 noundef %128, i32 noundef %130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.do.end119_crit_edge

if.end16.i.do.end119_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119

if.end20.i:                                       ; preds = %if.end16.i
  %131 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i.i, align 4
  %thr_cnt.i = getelementptr inbounds %struct.qt1050_key, ptr %button.063.i, i32 0, i32 2
  %133 = ptrtoint ptr %thr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %thr_cnt.i, align 4
  %call21.i = call i32 @regmap_write(ptr noundef %112, i32 noundef %132, i32 noundef %134) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.for.inc25.i_crit_edge, label %if.end20.i.do.end119_crit_edge

if.end20.i.do.end119_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119

if.end20.i.for.inc25.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %if.end20.i.for.inc25.i_crit_edge, %for.body3.i.for.inc25.i_crit_edge
  %inc26.i = add nuw nsw i32 %i.165.i, 1
  %incdec.ptr.i = getelementptr %struct.qt1050_key, ptr %button.063.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc26.i, 5
  br i1 %exitcond.not.i, label %if.end120, label %for.inc25.i.for.body3.i_crit_edge

for.inc25.i.for.body3.i_crit_edge:                ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

do.end119:                                        ; preds = %if.end20.i.do.end119_crit_edge, %if.end16.i.do.end119_crit_edge, %if.end10.i.do.end119_crit_edge, %if.end6.i.do.end119_crit_edge, %for.cond.3.i.do.end119_crit_edge, %for.cond.2.i.do.end119_crit_edge, %for.cond.1.i.do.end119_crit_edge, %for.cond.i.do.end119_crit_edge, %if.end113.do.end119_crit_edge
  %retval.0.i257.ph = phi i32 [ %call.i.i.4.i, %for.cond.3.i.do.end119_crit_edge ], [ %call.i.i.3.i, %for.cond.2.i.do.end119_crit_edge ], [ %call.i.i.2.i, %for.cond.1.i.do.end119_crit_edge ], [ %call.i.i.1.i, %for.cond.i.do.end119_crit_edge ], [ %call.i.i.i, %if.end113.do.end119_crit_edge ], [ %call21.i, %if.end20.i.do.end119_crit_edge ], [ %call17.i, %if.end16.i.do.end119_crit_edge ], [ %call13.i, %if.end10.i.do.end119_crit_edge ], [ %call.i.i60.i, %if.end6.i.do.end119_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i257.ph) #10
  br label %cleanup

if.end120:                                        ; preds = %for.inc25.i
  %135 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %irq, align 4
  %call122 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %136, ptr noundef null, ptr noundef nonnull @qt1050_irq_threaded, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end129, label %do.end127

do.end127:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %call122) #10
  br label %cleanup

if.end129:                                        ; preds = %if.end120
  %137 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regmap, align 4
  %call131 = call i32 @regmap_read(ptr noundef %138, i32 noundef 2, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end137, label %do.end136

do.end136:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %call131) #10
  br label %cleanup

if.end137:                                        ; preds = %if.end129
  %139 = ptrtoint ptr %input26 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %input26, align 4
  %call139 = call i32 @input_register_device(ptr noundef %140) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end137.cleanup_crit_edge, label %do.end144

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end144:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %call139) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end144, %if.end137.cleanup_crit_edge, %do.end136, %do.end127, %do.end119, %do.end112, %do.end104, %do.end53, %do.end35, %qt1050_identify.exit.thread, %if.then22, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ %11, %if.then22 ], [ %retval.0.i248, %do.end35 ], [ %call.i249, %do.end53 ], [ %tobool93.not265.ph, %do.end104 ], [ %call.i252, %do.end112 ], [ %retval.0.i257.ph, %do.end119 ], [ %call122, %do.end127 ], [ %call131, %do.end136 ], [ %call139, %do.end144 ], [ -22, %do.end10 ], [ -19, %do.end ], [ -12, %if.end11.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ 0, %if.end137.cleanup_crit_edge ], [ -19, %qt1050_identify.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1050_irq_threaded(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  %new_keys = alloca i32, align 4
  %changed = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.qt1050_priv, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_keys)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %changed) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !136
  %regmap = getelementptr inbounds %struct.qt1050_priv, ptr %dev_id, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %8, i32 noundef 3, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.61, i32 noundef %call3) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = lshr i32 %12, 2
  %shr = and i32 %and, 28
  %and12 = lshr i32 %12, 1
  %shr13 = and i32 %and12, 3
  %or = or i32 %shr, %shr13
  %13 = ptrtoint ptr %new_keys to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %new_keys, align 4
  %last_keys = getelementptr inbounds %struct.qt1050_priv, ptr %dev_id, i32 0, i32 6
  %14 = ptrtoint ptr %last_keys to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %last_keys, align 1
  %conv = zext i8 %15 to i32
  %xor = xor i32 %or, %conv
  %reg_keys = getelementptr inbounds %struct.qt1050_priv, ptr %dev_id, i32 0, i32 5
  %16 = ptrtoint ptr %reg_keys to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_keys, align 2
  %conv14 = zext i8 %17 to i32
  %and15 = and i32 %xor, %conv14
  %18 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and15, ptr %changed, align 4
  %call16 = call i32 @_find_next_bit_be(ptr noundef nonnull %changed, i32 noundef 5, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call16)
  %cmp43 = icmp slt i32 %call16, 5
  br i1 %cmp43, label %if.end11.for.body_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end11.for.body_crit_edge
  %i.044 = phi i32 [ %call19, %for.body.for.body_crit_edge ], [ %call16, %if.end11.for.body_crit_edge ]
  %keycode = getelementptr %struct.qt1050_priv, ptr %dev_id, i32 0, i32 3, i32 %i.044, i32 5
  %19 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %keycode, align 4
  %21 = ptrtoint ptr %new_keys to i32
  call void @__asan_load4_noabort(i32 %21)
  %new_keys.0. = load volatile i32, ptr %new_keys, align 4
  %and.i = and i32 %i.044, 31
  %22 = lshr i32 %new_keys.0., %and.i
  %23 = and i32 %22, 1
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %20, i32 noundef %23) #7
  %add = add nsw i32 %i.044, 1
  %call19 = call i32 @_find_next_bit_be(ptr noundef nonnull %changed, i32 noundef 5, i32 noundef %add) #7
  %cmp = icmp slt i32 %call19, 5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end11.for.end_crit_edge
  %24 = ptrtoint ptr %new_keys to i32
  call void @__asan_load4_noabort(i32 %24)
  %new_keys.0.45 = load i32, ptr %new_keys, align 4
  %conv20 = trunc i32 %new_keys.0.45 to i8
  %25 = ptrtoint ptr %last_keys to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv20, ptr %last_keys, align 1
  call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end8 ], [ 1, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %changed) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_keys)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @qt1050_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 16
  %switch.cast = trunc i32 %switch.tableidx to i16
  %switch.downshift = lshr i16 -781, %switch.cast
  %1 = and i16 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.masked = icmp ne i16 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1050_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #7
  %regmap = getelementptr inbounds %struct.qt1050_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit.thread_crit_edge, label %device_may_wakeup.exit

entry.device_may_wakeup.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_may_wakeup.exit.thread

device_may_wakeup.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  %spec.select = select i1 %tobool2.i.not, i32 0, i32 125
  br label %device_may_wakeup.exit.thread

device_may_wakeup.exit.thread:                    ; preds = %device_may_wakeup.exit, %entry.device_may_wakeup.exit.thread_crit_edge
  %9 = phi i32 [ 0, %entry.device_may_wakeup.exit.thread_crit_edge ], [ %spec.select, %device_may_wakeup.exit ]
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 61, i32 noundef %9) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1050_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #7
  %regmap = getelementptr inbounds %struct.qt1050_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 61, i32 noundef 2) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_qt1050__288_594_qt1050_driver_init6, !1, !"__initcall__kmod_qt1050__288_594_qt1050_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/qt1050.c", i32 594, i32 1}
!2 = !{ptr @__exitcall_qt1050_driver_exit, !1, !"__exitcall_qt1050_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/qt1050.c", i32 596, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/qt1050.c", i32 597, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/qt1050.c", i32 598, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/qt1050.c", i32 587, i32 11}
!12 = !{ptr @qt1050_driver, !13, !"qt1050_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/qt1050.c", i32 585, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/qt1050.c", i32 440, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qt1050_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @qt1050_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/qt1050.c", i32 446, i32 3}
!24 = !{ptr @qt1050_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qt1050_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @qt1050_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/qt1050.c", i32 458, i32 8}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/keyboard/qt1050.c", i32 475, i32 3}
!31 = !{ptr @qt1050_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @qt1050_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/keyboard/qt1050.c", i32 479, i32 16}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/keyboard/qt1050.c", i32 498, i32 3}
!37 = !{ptr @qt1050_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @qt1050_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/keyboard/qt1050.c", i32 504, i32 3}
!41 = !{ptr @qt1050_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @qt1050_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/keyboard/qt1050.c", i32 512, i32 3}
!45 = !{ptr @qt1050_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @qt1050_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/keyboard/qt1050.c", i32 520, i32 3}
!49 = !{ptr @qt1050_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @qt1050_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/keyboard/qt1050.c", i32 528, i32 3}
!53 = !{ptr @qt1050_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @qt1050_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/qt1050.c", i32 535, i32 3}
!57 = !{ptr @qt1050_probe._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @qt1050_probe._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/keyboard/qt1050.c", i32 542, i32 3}
!61 = !{ptr @qt1050_probe._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @qt1050_probe._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @qt1050_regmap_config, !64, !"qt1050_regmap_config", i1 false, i1 false}
!64 = !{!"../drivers/input/keyboard/qt1050.c", i32 211, i32 29}
!65 = !{ptr @qt1050_writeable_table, !66, !"qt1050_writeable_table", i1 false, i1 false}
!66 = !{!"../drivers/input/keyboard/qt1050.c", i32 206, i32 41}
!67 = !{ptr @qt1050_writeable_ranges, !68, !"qt1050_writeable_ranges", i1 false, i1 false}
!68 = !{!"../drivers/input/keyboard/qt1050.c", i32 195, i32 34}
!69 = !{ptr @qt1050_readable_table, !70, !"qt1050_readable_table", i1 false, i1 false}
!70 = !{!"../drivers/input/keyboard/qt1050.c", i32 190, i32 41}
!71 = !{ptr @qt1050_readable_ranges, !72, !"qt1050_readable_ranges", i1 false, i1 false}
!72 = !{!"../drivers/input/keyboard/qt1050.c", i32 174, i32 34}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/keyboard/qt1050.c", i32 231, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @qt1050_identify._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @qt1050_identify._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/keyboard/qt1050.c", i32 238, i32 3}
!80 = !{ptr @qt1050_identify._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @qt1050_identify._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/keyboard/qt1050.c", i32 242, i32 2}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @qt1050_identify._entry.40, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @qt1050_identify._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/keyboard/qt1050.c", i32 355, i32 39}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/keyboard/qt1050.c", i32 357, i32 4}
!91 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qt1050_parse_fw._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qt1050_parse_fw._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/keyboard/qt1050.c", i32 361, i32 4}
!96 = !{ptr @qt1050_parse_fw._entry.47, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qt1050_parse_fw._entry_ptr.49, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/keyboard/qt1050.c", i32 366, i32 39}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/keyboard/qt1050.c", i32 368, i32 4}
!102 = !{ptr @qt1050_parse_fw._entry.51, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @qt1050_parse_fw._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/keyboard/qt1050.c", i32 378, i32 11}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/keyboard/qt1050.c", i32 389, i32 39}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/keyboard/qt1050.c", i32 399, i32 39}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/keyboard/qt1050.c", i32 410, i32 39}
!112 = !{ptr @qt1050_key_regs_data, !113, !"qt1050_key_regs_data", i1 false, i1 false}
!113 = !{!"../drivers/input/keyboard/qt1050.c", i32 124, i32 37}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/keyboard/qt1050.c", i32 259, i32 3}
!116 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @qt1050_irq_threaded._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @qt1050_irq_threaded._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/keyboard/qt1050.c", i32 267, i32 3}
!121 = !{ptr @qt1050_irq_threaded._entry.60, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @qt1050_irq_threaded._entry_ptr.62, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @qt1050_of_match, !124, !"qt1050_of_match", i1 false, i1 false}
!124 = !{!"../drivers/input/keyboard/qt1050.c", i32 579, i32 49}
!125 = !{ptr @qt1050_pm_ops, !126, !"qt1050_pm_ops", i1 false, i1 false}
!126 = !{!"../drivers/input/keyboard/qt1050.c", i32 577, i32 8}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"auto-init"}
!137 = !{i32 0, i32 33}
