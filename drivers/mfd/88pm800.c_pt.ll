; ModuleID = '/llk/IR_all_yes/drivers/mfd/88pm800.c_pt.bc'
source_filename = "../drivers/mfd/88pm800.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.pm80x_subchip = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.pm80x_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock }
%struct.pm80x_rtc_pdata = type { i32, i32 }
%struct.pm80x_platform_data = type { ptr, [24 x ptr], i32, i32, i32, ptr }

@__initcall__kmod_88pm800__288_613_pm800_i2c_init4 = internal global ptr @pm800_i2c_init, section ".initcall4.init", align 4
@pm800_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pm800_probe, ptr @pm800_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm80x_pm_ops, ptr null, ptr null }, ptr @pm80x_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pm800_i2c_exit = internal global ptr @pm800_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [52 x i8] c"88pm800.description=PMIC Driver for Marvell 88PM800\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [48 x i8] c"88pm800.author=Qiao Zhou <zhouqiao@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [33 x i8] c"88pm800.file=drivers/mfd/88pm800\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"88pm800.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"88PM800\00", [24 x i8] zeroinitializer }, align 32
@pm80x_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@pm80x_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"88PM800\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pm800_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm800_init fail\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pm800_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/88pm800.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm800_probe._entry_ptr = internal global ptr @pm800_probe._entry, section ".printk_index", align 4
@pm800_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 563, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pm800_pages_init failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@pm800_probe._entry_ptr.8 = internal global ptr @pm800_probe._entry.6, section ".printk_index", align 4
@pm800_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 569, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to initialize 88pm800 devices\0A\00", [58 x i8] zeroinitializer }, align 32
@pm800_probe._entry_ptr.11 = internal global ptr @pm800_probe._entry.9, section ".printk_index", align 4
@pm800_pages_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pm80x_regmap_config = external dso_local constant %struct.regmap_config, align 4
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"88pm800:426:(&pm80x_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@pm800_pages_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate regmap_power: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm800_pages_init\00", [47 x i8] zeroinitializer }, align 32
@pm800_pages_init._entry_ptr = internal global ptr @pm800_pages_init._entry, section ".printk_index", align 4
@pm800_pages_init._key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"88pm800:445:(&pm80x_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@pm800_pages_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.3, i32 449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate regmap_gpadc: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pm800_pages_init._entry_ptr.19 = internal global ptr @pm800_pages_init._entry.17, section ".printk_index", align 4
@device_800_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read RTC register: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device_800_init\00", [16 x i8] zeroinitializer }, align 32
@device_800_init._entry_ptr = internal global ptr @device_800_init._entry, section ".printk_index", align 4
@device_800_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%s]Failed to init gpadc\0A\00", [38 x i8] zeroinitializer }, align 32
@device_800_init._entry_ptr.24 = internal global ptr @device_800_init._entry.22, section ".printk_index", align 4
@device_800_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s]Failed to init pm800 irq\0A\00", [34 x i8] zeroinitializer }, align 32
@device_800_init._entry_ptr.27 = internal global ptr @device_800_init._entry.25, section ".printk_index", align 4
@device_800_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.3, i32 507, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add onkey subdev\0A\00", [36 x i8] zeroinitializer }, align 32
@device_800_init._entry_ptr.30 = internal global ptr @device_800_init._entry.28, section ".printk_index", align 4
@device_800_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.3, i32 513, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to add rtc subdev\0A\00", [38 x i8] zeroinitializer }, align 32
@device_800_init._entry_ptr.33 = internal global ptr @device_800_init._entry.31, section ".printk_index", align 4
@device_800_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.3, i32 519, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to add regulators subdev\0A\00", [63 x i8] zeroinitializer }, align 32
@device_800_init._entry_ptr.36 = internal global ptr @device_800_init._entry.34, section ".printk_index", align 4
@device_gpadc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 247, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Warning: gpadc regmap is not available!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_gpadc_init\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@device_gpadc_init._entry_ptr = internal global ptr @device_gpadc_init._entry, section ".printk_index", align 4
@device_gpadc_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.3, i32 297, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pm800 device_gpadc_init: Done\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@device_gpadc_init._entry_ptr.43 = internal global ptr @device_gpadc_init._entry.40, section ".printk_index", align 4
@device_gpadc_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.3, i32 301, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pm800 device_gpadc_init: Failed!\0A\00", [62 x i8] zeroinitializer }, align 32
@device_gpadc_init._entry_ptr.46 = internal global ptr @device_gpadc_init._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"88pm800\00", [24 x i8] zeroinitializer }, align 32
@pm800_irqs = internal constant { [20 x %struct.regmap_irq], [176 x i8] } { [20 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 16, %struct.regmap_irq_type zeroinitializer }], [176 x i8] zeroinitializer }, align 32
@pm800_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.47, i32 0, i32 0, ptr null, i32 0, i32 5, i32 9, i32 0, i32 5, i32 0, i32 0, ptr null, i32 0, i8 32, i8 0, i32 4, ptr @pm800_irqs, i32 20, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@device_irq_init_800._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"incorrect parameters\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"device_irq_init_800\00", [44 x i8] zeroinitializer }, align 32
@device_irq_init_800._entry_ptr = internal global ptr @device_irq_init_800._entry, section ".printk_index", align 4
@onkey_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.52, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @onkey_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@onkey_resources = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.52, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@device_onkey_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.51, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_onkey_init\00", [46 x i8] zeroinitializer }, align 32
@device_onkey_init._entry_ptr = internal global ptr @device_onkey_init._entry, section ".printk_index", align 4
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"88pm80x-onkey\00", [18 x i8] zeroinitializer }, align 32
@rtc_devs = internal global { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.54, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@device_rtc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.53, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device_rtc_init\00", [16 x i8] zeroinitializer }, align 32
@device_rtc_init._entry_ptr = internal global ptr @device_rtc_init._entry, section ".printk_index", align 4
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"88pm80x-rtc\00", [20 x i8] zeroinitializer }, align 32
@rtc_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 4, i32 4, ptr @.str.54, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@regulator_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.57, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@device_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add regulator subdev\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device_regulator_init\00", [42 x i8] zeroinitializer }, align 32
@device_regulator_init._entry_ptr = internal global ptr @device_regulator_init._entry, section ".printk_index", align 4
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"88pm80x-regulator\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"pm800_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 599, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 601, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"pm80x_id_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 118, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 541, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 563, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 569, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 425, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 429, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 444, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 448, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 483, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 493, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 501, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 507, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 513, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 519, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 246, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 297, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 301, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 395, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant [11 x i8] c"pm800_irqs\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 157, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"pm800_irq_chip\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 394, i32 31 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 363, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [11 x i8] c"onkey_devs\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 141, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant [16 x i8] c"onkey_resources\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 137, i32 24 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 314, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 143, i32 11 }
@___asan_gen_.223 = private unnamed_addr constant [9 x i8] c"rtc_devs\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 128, i32 24 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 334, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 130, i32 11 }
@___asan_gen_.235 = private unnamed_addr constant [14 x i8] c"rtc_resources\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 124, i32 30 }
@___asan_gen_.238 = private unnamed_addr constant [15 x i8] c"regulator_devs\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 150, i32 30 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 349, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private constant [25 x i8] c"../drivers/mfd/88pm800.c\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 152, i32 11 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pm800_i2c_exit, ptr @__initcall__kmod_88pm800__288_613_pm800_i2c_init4, ptr @device_800_init._entry, ptr @device_800_init._entry.22, ptr @device_800_init._entry.25, ptr @device_800_init._entry.28, ptr @device_800_init._entry.31, ptr @device_800_init._entry.34, ptr @device_800_init._entry_ptr, ptr @device_800_init._entry_ptr.24, ptr @device_800_init._entry_ptr.27, ptr @device_800_init._entry_ptr.30, ptr @device_800_init._entry_ptr.33, ptr @device_800_init._entry_ptr.36, ptr @device_gpadc_init._entry, ptr @device_gpadc_init._entry.40, ptr @device_gpadc_init._entry.44, ptr @device_gpadc_init._entry_ptr, ptr @device_gpadc_init._entry_ptr.43, ptr @device_gpadc_init._entry_ptr.46, ptr @device_irq_init_800._entry, ptr @device_irq_init_800._entry_ptr, ptr @device_onkey_init._entry, ptr @device_onkey_init._entry_ptr, ptr @device_regulator_init._entry, ptr @device_regulator_init._entry_ptr, ptr @device_rtc_init._entry, ptr @device_rtc_init._entry_ptr, ptr @pm800_i2c_exit, ptr @pm800_pages_init._entry, ptr @pm800_pages_init._entry.17, ptr @pm800_pages_init._entry_ptr, ptr @pm800_pages_init._entry_ptr.19, ptr @pm800_probe._entry, ptr @pm800_probe._entry.6, ptr @pm800_probe._entry.9, ptr @pm800_probe._entry_ptr, ptr @pm800_probe._entry_ptr.11, ptr @pm800_probe._entry_ptr.8, ptr @pm800_driver, ptr @.str, ptr @pm80x_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @pm800_pages_init._key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @pm800_pages_init._key.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @pm800_irqs, ptr @pm800_irq_chip, ptr @.str.49, ptr @.str.50, ptr @onkey_devs, ptr @onkey_resources, ptr @.str.51, ptr @.str.52, ptr @rtc_devs, ptr @.str.53, ptr @.str.54, ptr @rtc_resources, ptr @regulator_devs, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_pages_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_pages_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_pages_init._key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_pages_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_800_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_800_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_800_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_800_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_800_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_800_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_gpadc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_gpadc_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_gpadc_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_irqs to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_irq_init_800._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onkey_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onkey_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_onkey_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_rtc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm800_i2c_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pm800_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm800_i2c_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @pm800_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm800_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call1 = tail call i32 @pm80x_init(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.err_subchip_alloc_crit_edge, label %lor.lhs.false.i

if.end.err_subchip_alloc_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_subchip_alloc

lor.lhs.false.i:                                  ; preds = %if.end
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %add = add i16 %5, 1
  %power_page_addr = getelementptr inbounds %struct.pm80x_subchip, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %power_page_addr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %add, ptr %power_page_addr, align 4
  %add12 = add i16 %5, 2
  %gpadc_page_addr = getelementptr inbounds %struct.pm80x_subchip, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %gpadc_page_addr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %add12, ptr %gpadc_page_addr, align 2
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %3, align 4
  %client1.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client1.i, align 4
  %11 = load i16, ptr %power_page_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3.not.i = icmp eq i16 %11, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.do.end20_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.do.end20_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %gpadc_page_addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %gpadc_page_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool5.not.i = icmp eq i16 %13, 0
  br i1 %tobool5.not.i, label %lor.lhs.false4.i.do.end20_crit_edge, label %if.end.i

lor.lhs.false4.i.do.end20_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

if.end.i:                                         ; preds = %lor.lhs.false4.i
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i63 = tail call ptr @i2c_new_dummy_device(ptr noundef %15, i16 noundef zeroext %11) #5
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i63, ptr %call.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.end12.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call.i63 to i32
  br label %do.end20

if.end12.i:                                       ; preds = %if.end.i
  %call14.i = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call.i63, ptr noundef nonnull @pm80x_regmap_config, ptr noundef nonnull @pm800_pages_init._key, ptr noundef nonnull @.str.12) #5
  %regmap_power.i = getelementptr inbounds %struct.pm80x_subchip, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %regmap_power.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call14.i, ptr %regmap_power.i, align 4
  %cmp.i76.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call14.i to i32
  %dev.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %19) #8
  br label %do.end20

if.end20.i:                                       ; preds = %if.end12.i
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %3, ptr %driver_data.i.i.i, align 4
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %27 = ptrtoint ptr %gpadc_page_addr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %gpadc_page_addr, align 2
  %call24.i = tail call ptr @i2c_new_dummy_device(ptr noundef %26, i16 noundef zeroext %28) #5
  %gpadc_page.i = getelementptr inbounds %struct.pm80x_subchip, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %gpadc_page.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call24.i, ptr %gpadc_page.i, align 4
  %cmp.i77.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77.i, label %if.then27.i, label %if.end30.i

if.then27.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call24.i to i32
  br label %do.end20

if.end30.i:                                       ; preds = %if.end20.i
  %call33.i = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call24.i, ptr noundef nonnull @pm80x_regmap_config, ptr noundef nonnull @pm800_pages_init._key.15, ptr noundef nonnull @.str.16) #5
  %regmap_gpadc.i = getelementptr inbounds %struct.pm80x_subchip, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %regmap_gpadc.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call33.i, ptr %regmap_gpadc.i, align 4
  %cmp.i78.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78.i, label %if.then36.i, label %pm800_pages_init.exit.thread78

if.then36.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %call33.i to i32
  %dev42.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev42.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.18, i32 noundef %32) #8
  br label %do.end20

pm800_pages_init.exit.thread78:                   ; preds = %if.end30.i
  %35 = ptrtoint ptr %gpadc_page.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpadc_page.i, align 4
  %driver_data.i.i79.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4, i32 8
  %37 = ptrtoint ptr %driver_data.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %3, ptr %driver_data.i.i79.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %val.i, align 4, !annotation !137
  %regmap.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 4
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %call.i64 = call i32 @regmap_read(ptr noundef %40, i32 noundef 208, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp.i = icmp slt i32 %call.i64, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i67

do.end20:                                         ; preds = %if.then36.i, %if.then27.i, %if.then17.i, %if.then9.i, %lor.lhs.false4.i.do.end20_crit_edge, %lor.lhs.false.i.do.end20_crit_edge
  %retval.0.i77 = phi i32 [ -19, %lor.lhs.false4.i.do.end20_crit_edge ], [ -19, %lor.lhs.false.i.do.end20_crit_edge ], [ %17, %if.then9.i ], [ %19, %if.then17.i ], [ %30, %if.then27.i ], [ %32, %if.then36.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %err_device_init

do.end.i:                                         ; preds = %pm800_pages_init.exit.thread78
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i65 = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 1
  %41 = ptrtoint ptr %dev.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.20, i32 noundef %call.i64) #8
  br label %do.end28

if.end.i67:                                       ; preds = %pm800_pages_init.exit.thread78
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  %and.i = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i66 = icmp eq i32 %and.i, 0
  %tobool2.not.i = icmp eq ptr %1, null
  %or.cond.i = or i1 %tobool2.not.i, %tobool.not.i66
  br i1 %or.cond.i, label %if.end.i67.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i67.if.end7.i_crit_edge:                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i67
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %tobool3.not.i68 = icmp eq ptr %46, null
  br i1 %tobool3.not.i68, label %land.lhs.true.i.if.end7.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %rtc_wakeup.i = getelementptr inbounds %struct.pm80x_rtc_pdata, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %rtc_wakeup.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %rtc_wakeup.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i67.if.end7.i_crit_edge
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %regmap_gpadc.i.i = getelementptr inbounds %struct.pm80x_subchip, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %regmap_gpadc.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap_gpadc.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 1
  %52 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.37) #8
  br label %do.end13.i

if.end.i.i:                                       ; preds = %if.end7.i
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef nonnull %51, i32 noundef 6, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i69 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i69, label %if.end.i.i.do.end26.i.i_crit_edge, label %if.end3.i.i

if.end.i.i.do.end26.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call.i44.i.i = call i32 @regmap_update_bits_base(ptr noundef nonnull %51, i32 noundef 1, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i)
  %cmp5.i.i = icmp slt i32 %call.i44.i.i, 0
  br i1 %cmp5.i.i, label %if.end3.i.i.do.end26.i.i_crit_edge, label %if.end7.i.i

if.end3.i.i.do.end26.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26.i.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %call.i45.i.i = call i32 @regmap_update_bits_base(ptr noundef nonnull %51, i32 noundef 2, i32 noundef 5, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i.i)
  %cmp9.i.i = icmp slt i32 %call.i45.i.i, 0
  br i1 %cmp9.i.i, label %if.end7.i.i.do.end26.i.i_crit_edge, label %if.end11.i.i

if.end7.i.i.do.end26.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26.i.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  br i1 %tobool2.not.i, label %if.end11.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end11.i.i.if.else.i.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end11.i.i
  %batt_det.i.i = getelementptr inbounds %struct.pm80x_platform_data, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %batt_det.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %batt_det.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp13.i.i = icmp eq i32 %55, 0
  br i1 %cmp13.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end11.i.i.if.else.i.i_crit_edge
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.else.i.i, %land.lhs.true.i.i.if.end15.i.i_crit_edge
  %data.0.i.i = phi i32 [ 13, %if.else.i.i ], [ 15, %land.lhs.true.i.i.if.end15.i.i_crit_edge ]
  %call.i46.i.i = call i32 @regmap_update_bits_base(ptr noundef nonnull %51, i32 noundef 20, i32 noundef 15, i32 noundef %data.0.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i.i)
  %cmp17.i.i = icmp slt i32 %call.i46.i.i, 0
  br i1 %cmp17.i.i, label %if.end15.i.i.do.end26.i.i_crit_edge, label %if.end15.i

if.end15.i.i.do.end26.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.end15.i.i.do.end26.i.i_crit_edge, %if.end7.i.i.do.end26.i.i_crit_edge, %if.end3.i.i.do.end26.i.i_crit_edge, %if.end.i.i.do.end26.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.do.end26.i.i_crit_edge ], [ %call.i44.i.i, %if.end3.i.i.do.end26.i.i_crit_edge ], [ %call.i45.i.i, %if.end7.i.i.do.end26.i.i_crit_edge ], [ %call.i46.i.i, %if.end15.i.i.do.end26.i.i_crit_edge ]
  %dev27.i.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 1
  %56 = ptrtoint ptr %dev27.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev27.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.45) #8
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end26.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %do.end.i.i ], [ %ret.0.i.i, %do.end26.i.i ]
  %dev14.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 1
  %58 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21) #8
  br label %do.end28

if.end15.i:                                       ; preds = %if.end15.i.i
  %dev23.i.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 1
  %60 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev23.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.41) #8
  %regmap_irq_chip.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 5
  %62 = ptrtoint ptr %regmap_irq_chip.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @pm800_irq_chip, ptr %regmap_irq_chip.i, align 4
  %63 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i, align 4
  %tobool.not.i77.i = icmp eq ptr %64, null
  br i1 %tobool.not.i77.i, label %if.end15.i.do.end.i79.i_crit_edge, label %lor.lhs.false.i.i

if.end15.i.do.end.i79.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i79.i

lor.lhs.false.i.i:                                ; preds = %if.end15.i
  %irq.i.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 8
  %65 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool1.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.end.i79.i_crit_edge, label %if.end.i82.i

lor.lhs.false.i.i.do.end.i79.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i79.i

do.end.i79.i:                                     ; preds = %lor.lhs.false.i.i.do.end.i79.i_crit_edge, %if.end15.i.do.end.i79.i_crit_edge
  %67 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev23.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.49) #8
  br label %do.end21.i

if.end.i82.i:                                     ; preds = %lor.lhs.false.i.i
  %call.i.i80.i = call i32 @regmap_update_bits_base(ptr noundef nonnull %64, i32 noundef 14, i32 noundef 7, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80.i)
  %cmp.i81.i = icmp slt i32 %call.i.i80.i, 0
  br i1 %cmp.i81.i, label %if.end.i82.i.do.end21.i_crit_edge, label %device_irq_init_800.exit.i

if.end.i82.i.do.end21.i_crit_edge:                ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21.i

device_irq_init_800.exit.i:                       ; preds = %if.end.i82.i
  %69 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i, align 4
  %71 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq.i.i, align 4
  %73 = ptrtoint ptr %regmap_irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap_irq_chip.i, align 4
  %irq_data.i.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 6
  %call6.i.i = call i32 @regmap_add_irq_chip(ptr noundef %70, i32 noundef %72, i32 noundef 8192, i32 noundef -1, ptr noundef %74, ptr noundef %irq_data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp17.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp17.i, label %device_irq_init_800.exit.i.do.end21.i_crit_edge, label %if.end23.i

device_irq_init_800.exit.i.do.end21.i_crit_edge:  ; preds = %device_irq_init_800.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21.i

do.end21.i:                                       ; preds = %device_irq_init_800.exit.i.do.end21.i_crit_edge, %if.end.i82.i.do.end21.i_crit_edge, %do.end.i79.i
  %retval.0.i84104.i = phi i32 [ %call6.i.i, %device_irq_init_800.exit.i.do.end21.i_crit_edge ], [ %call.i.i80.i, %if.end.i82.i.do.end21.i_crit_edge ], [ -22, %do.end.i79.i ]
  %75 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev23.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21) #8
  br label %do.end28

if.end23.i:                                       ; preds = %device_irq_init_800.exit.i
  %77 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev23.i.i, align 4
  %call.i.i = call i32 @mfd_add_devices(ptr noundef %78, i32 noundef 0, ptr noundef nonnull @onkey_devs, i32 noundef 1, ptr noundef nonnull @onkey_resources, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i86.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i86.i, label %if.end31.i, label %do.end29.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev23.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.29) #8
  %81 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev23.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.29) #8
  %83 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev23.i.i, align 4
  call void @mfd_remove_devices(ptr noundef %84) #5
  %85 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %irq.i.i, align 4
  %87 = ptrtoint ptr %irq_data.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %irq_data.i.i, align 4
  call void @regmap_del_irq_chip(i32 noundef %86, ptr noundef %88) #5
  br label %do.end28

if.end31.i:                                       ; preds = %if.end23.i
  br i1 %tobool2.not.i, label %if.end31.i.if.end.i93.i_crit_edge, label %if.then.i.i

if.end31.i.if.end.i93.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i93.i

if.then.i.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  store ptr %90, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @rtc_devs, i32 0, i32 0, i32 7), align 4
  %91 = load ptr, ptr %1, align 4
  %tobool2.not.i.i = icmp eq ptr %91, null
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 8
  store i32 %cond.i.i, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @rtc_devs, i32 0, i32 0, i32 8), align 8
  br label %if.end.i93.i

if.end.i93.i:                                     ; preds = %if.then.i.i, %if.end31.i.if.end.i93.i_crit_edge
  %92 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev23.i.i, align 4
  %call.i92.i = call i32 @mfd_add_devices(ptr noundef %93, i32 noundef 0, ptr noundef nonnull @rtc_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool3.not.i.i = icmp eq i32 %call.i92.i, 0
  %94 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev23.i.i, align 4
  br i1 %tobool3.not.i.i, label %if.end39.i, label %do.end37.i

do.end37.i:                                       ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.32) #8
  %96 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev23.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.32) #8
  br label %do.end28

if.end39.i:                                       ; preds = %if.end.i93.i
  %call.i96.i = call i32 @mfd_add_devices(ptr noundef %95, i32 noundef 0, ptr noundef nonnull @regulator_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool.not.i97.i = icmp eq i32 %call.i96.i, 0
  br i1 %tobool.not.i97.i, label %if.end30, label %do.end45.i

do.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev23.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.55) #8
  %100 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev23.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.35) #8
  br label %do.end28

do.end28:                                         ; preds = %do.end45.i, %do.end37.i, %do.end29.i, %do.end21.i, %do.end13.i, %do.end.i
  %retval.0.i70.ph = phi i32 [ %call.i96.i, %do.end45.i ], [ %call.i92.i, %do.end37.i ], [ %call.i.i, %do.end29.i ], [ %retval.0.i84104.i, %do.end21.i ], [ %retval.0.i.ph.i, %do.end13.i ], [ %call.i64, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %dev29 = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 1
  %102 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.10) #8
  br label %err_device_init

if.end30:                                         ; preds = %if.end39.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br i1 %tobool2.not.i, label %if.end30.cleanup_crit_edge, label %land.lhs.true

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end30
  %plat_config = getelementptr inbounds %struct.pm80x_platform_data, ptr %1, i32 0, i32 5
  %104 = ptrtoint ptr %plat_config to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %plat_config, align 4
  %tobool32.not = icmp eq ptr %105, null
  br i1 %tobool32.not, label %land.lhs.true.cleanup_crit_edge, label %if.then33

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = call i32 %105(ptr noundef %3, ptr noundef nonnull %1) #5
  br label %cleanup

err_device_init:                                  ; preds = %do.end28, %do.end20
  %ret.0 = phi i32 [ %retval.0.i77, %do.end20 ], [ %retval.0.i70.ph, %do.end28 ]
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %3, align 4
  %tobool.not.i71 = icmp eq ptr %107, null
  br i1 %tobool.not.i71, label %err_device_init.err_subchip_alloc_crit_edge, label %land.lhs.true.i73

err_device_init.err_subchip_alloc_crit_edge:      ; preds = %err_device_init
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_subchip_alloc

land.lhs.true.i73:                                ; preds = %err_device_init
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %tobool2.not.i72 = icmp eq ptr %109, null
  br i1 %tobool2.not.i72, label %land.lhs.true.i73.land.lhs.true5.i_crit_edge, label %if.then.i

land.lhs.true.i73.land.lhs.true5.i_crit_edge:     ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true5.i

if.then.i:                                        ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #7
  call void @i2c_unregister_device(ptr noundef nonnull %109) #5
  br label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %if.then.i, %land.lhs.true.i73.land.lhs.true5.i_crit_edge
  %gpadc_page.i74 = getelementptr inbounds %struct.pm80x_subchip, ptr %107, i32 0, i32 1
  %110 = ptrtoint ptr %gpadc_page.i74 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %gpadc_page.i74, align 4
  %tobool6.not.i = icmp eq ptr %111, null
  br i1 %tobool6.not.i, label %land.lhs.true5.i.err_subchip_alloc_crit_edge, label %if.then7.i

land.lhs.true5.i.err_subchip_alloc_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_subchip_alloc

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @i2c_unregister_device(ptr noundef nonnull %111) #5
  br label %err_subchip_alloc

err_subchip_alloc:                                ; preds = %if.then7.i, %land.lhs.true5.i.err_subchip_alloc_crit_edge, %err_device_init.err_subchip_alloc_crit_edge, %if.end.err_subchip_alloc_crit_edge
  %ret.1 = phi i32 [ -12, %if.end.err_subchip_alloc_crit_edge ], [ %ret.0, %err_device_init.err_subchip_alloc_crit_edge ], [ %ret.0, %land.lhs.true5.i.err_subchip_alloc_crit_edge ], [ %ret.0, %if.then7.i ]
  %call37 = call i32 @pm80x_deinit() #5
  br label %cleanup

cleanup:                                          ; preds = %err_subchip_alloc, %if.then33, %land.lhs.true.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.then33 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ %call1, %do.end ], [ %ret.1, %err_subchip_alloc ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm800_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pm80x_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @mfd_remove_devices(ptr noundef %3) #5
  %irq.i = getelementptr inbounds %struct.pm80x_chip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  %irq_data.i = getelementptr inbounds %struct.pm80x_chip, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_data.i, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %5, ptr noundef %7) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.pm800_pages_exit.exit_crit_edge, label %land.lhs.true.i

entry.pm800_pages_exit.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm800_pages_exit.exit

land.lhs.true.i:                                  ; preds = %entry
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.land.lhs.true5.i_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true5.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true5.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_unregister_device(ptr noundef nonnull %11) #5
  br label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true5.i_crit_edge
  %gpadc_page.i = getelementptr inbounds %struct.pm80x_subchip, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %gpadc_page.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpadc_page.i, align 4
  %tobool6.not.i = icmp eq ptr %13, null
  br i1 %tobool6.not.i, label %land.lhs.true5.i.pm800_pages_exit.exit_crit_edge, label %if.then7.i

land.lhs.true5.i.pm800_pages_exit.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm800_pages_exit.exit

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_unregister_device(ptr noundef nonnull %13) #5
  br label %pm800_pages_exit.exit

pm800_pages_exit.exit:                            ; preds = %if.then7.i, %land.lhs.true5.i.pm800_pages_exit.exit_crit_edge, %entry.pm800_pages_exit.exit_crit_edge
  %call1 = tail call i32 @pm80x_deinit() #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm80x_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm80x_deinit() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !110, !111, !113, !115, !117, !119, !120, !121, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_88pm800__288_613_pm800_i2c_init4, !1, !"__initcall__kmod_88pm800__288_613_pm800_i2c_init4", i1 false, i1 false}
!1 = !{!"../drivers/mfd/88pm800.c", i32 613, i32 1}
!2 = !{ptr @__exitcall_pm800_i2c_exit, !3, !"__exitcall_pm800_i2c_exit", i1 false, i1 false}
!3 = !{!"../drivers/mfd/88pm800.c", i32 619, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/mfd/88pm800.c", i32 621, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/mfd/88pm800.c", i32 622, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/mfd/88pm800.c", i32 623, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/88pm800.c", i32 601, i32 11}
!13 = !{ptr @pm800_driver, !14, !"pm800_driver", i1 false, i1 false}
!14 = !{!"../drivers/mfd/88pm800.c", i32 599, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/88pm800.c", i32 541, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pm800_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @pm800_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mfd/88pm800.c", i32 563, i32 3}
!25 = !{ptr @pm800_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @pm800_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/88pm800.c", i32 569, i32 3}
!29 = !{ptr @pm800_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @pm800_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @pm800_pages_init._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/mfd/88pm800.c", i32 425, i32 26}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/88pm800.c", i32 429, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pm800_pages_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pm800_pages_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @pm800_pages_init._key.15, !40, !"_key", i1 false, i1 false}
!40 = !{!"../drivers/mfd/88pm800.c", i32 444, i32 26}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/88pm800.c", i32 448, i32 3}
!44 = !{ptr @pm800_pages_init._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pm800_pages_init._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/88pm800.c", i32 483, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @device_800_init._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @device_800_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/88pm800.c", i32 493, i32 3}
!53 = !{ptr @device_800_init._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @device_800_init._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/88pm800.c", i32 501, i32 3}
!57 = !{ptr @device_800_init._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @device_800_init._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/88pm800.c", i32 507, i32 3}
!61 = !{ptr @device_800_init._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @device_800_init._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/88pm800.c", i32 513, i32 3}
!65 = !{ptr @device_800_init._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @device_800_init._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/88pm800.c", i32 519, i32 3}
!69 = !{ptr @device_800_init._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @device_800_init._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/88pm800.c", i32 246, i32 3}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @device_gpadc_init._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @device_gpadc_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mfd/88pm800.c", i32 297, i32 2}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @device_gpadc_init._entry.40, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @device_gpadc_init._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mfd/88pm800.c", i32 301, i32 2}
!84 = !{ptr @device_gpadc_init._entry.44, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @device_gpadc_init._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/88pm800.c", i32 395, i32 10}
!88 = !{ptr @pm800_irq_chip, !89, !"pm800_irq_chip", i1 false, i1 false}
!89 = !{!"../drivers/mfd/88pm800.c", i32 394, i32 31}
!90 = !{ptr @pm800_irqs, !91, !"pm800_irqs", i1 false, i1 false}
!91 = !{!"../drivers/mfd/88pm800.c", i32 157, i32 32}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mfd/88pm800.c", i32 363, i32 3}
!94 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @device_irq_init_800._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @device_irq_init_800._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/88pm800.c", i32 314, i32 3}
!99 = !{ptr @device_onkey_init._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @device_onkey_init._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mfd/88pm800.c", i32 143, i32 11}
!103 = !{ptr @onkey_devs, !104, !"onkey_devs", i1 false, i1 false}
!104 = !{!"../drivers/mfd/88pm800.c", i32 141, i32 30}
!105 = !{ptr @onkey_resources, !106, !"onkey_resources", i1 false, i1 false}
!106 = !{!"../drivers/mfd/88pm800.c", i32 137, i32 24}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mfd/88pm800.c", i32 334, i32 3}
!109 = !{ptr @device_rtc_init._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @device_rtc_init._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mfd/88pm800.c", i32 130, i32 11}
!113 = !{ptr @rtc_devs, !114, !"rtc_devs", i1 false, i1 false}
!114 = !{!"../drivers/mfd/88pm800.c", i32 128, i32 24}
!115 = !{ptr @rtc_resources, !116, !"rtc_resources", i1 false, i1 false}
!116 = !{!"../drivers/mfd/88pm800.c", i32 124, i32 30}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mfd/88pm800.c", i32 349, i32 3}
!119 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @device_regulator_init._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @device_regulator_init._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mfd/88pm800.c", i32 152, i32 11}
!124 = !{ptr @regulator_devs, !125, !"regulator_devs", i1 false, i1 false}
!125 = !{!"../drivers/mfd/88pm800.c", i32 150, i32 30}
!126 = !{ptr @pm80x_id_table, !127, !"pm80x_id_table", i1 false, i1 false}
!127 = !{!"../drivers/mfd/88pm800.c", i32 118, i32 35}
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
