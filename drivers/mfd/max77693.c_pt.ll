; ModuleID = '/llk/IR_all_yes/drivers/mfd/max77693.c_pt.bc'
source_filename = "../drivers/mfd/max77693.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_max77693__289_370_max77693_i2c_driver_init6 = internal global ptr @max77693_i2c_driver_init, section ".initcall6.init", align 4
@max77693_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max77693_i2c_probe, ptr @max77693_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max77693_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77693_pm, ptr null, ptr null }, ptr @max77693_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max77693_i2c_driver_exit = internal global ptr @max77693_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [60 x i8] c"max77693.description=MAXIM 77693 multi-function core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [55 x i8] c"max77693.author=SangYoung, Son <hello.son@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [35 x i8] c"max77693.file=drivers/mfd/max77693\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"max77693.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max77693\00", [23 x i8] zeroinitializer }, align 32
@max77693_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77693\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max77693_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max77693_suspend, ptr @max77693_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max77693_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max77693\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max77693_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 199, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"max77693:170:(&max77693_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max77693_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mfd/max77693.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr = internal global ptr @max77693_i2c_probe._entry, section ".printk_index", align 4
@max77693_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"device not found on this channel\0A\00", [62 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr.9 = internal global ptr @max77693_i2c_probe._entry.7, section ".printk_index", align 4
@max77693_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 184, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device ID: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr.13 = internal global ptr @max77693_i2c_probe._entry.10, section ".printk_index", align 4
@max77693_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate I2C device for MUIC\0A\00", [56 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr.16 = internal global ptr @max77693_i2c_probe._entry.14, section ".printk_index", align 4
@max77693_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 195, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to allocate I2C device for Haptic\0A\00", [54 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr.19 = internal global ptr @max77693_i2c_probe._entry.17, section ".printk_index", align 4
@max77693_i2c_probe._key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max77693_regmap_haptic_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 17, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"max77693:202:(&max77693_regmap_haptic_config)->lock\00", [44 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to initialize haptic register map: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr.24 = internal global ptr @max77693_i2c_probe._entry.22, section ".printk_index", align 4
@max77693_i2c_probe._key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max77693_regmap_muic_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"max77693:216:(&max77693_regmap_muic_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr.28 = internal global ptr @max77693_i2c_probe._entry.27, section ".printk_index", align 4
@max77693_i2c_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 229, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add irq chip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr.31 = internal global ptr @max77693_i2c_probe._entry.29, section ".printk_index", align 4
@max77693_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr.33 = internal global ptr @max77693_i2c_probe._entry.32, section ".printk_index", align 4
@max77693_i2c_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 247, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr.35 = internal global ptr @max77693_i2c_probe._entry.34, section ".printk_index", align 4
@max77693_i2c_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr.37 = internal global ptr @max77693_i2c_probe._entry.36, section ".printk_index", align 4
@max77693_i2c_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not unmask interrupts in INTSRC: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@max77693_i2c_probe._entry_ptr.40 = internal global ptr @max77693_i2c_probe._entry.38, section ".printk_index", align 4
@max77693_devs = internal constant { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.49, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.50, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.51, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.52, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.53, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.41, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.54, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [104 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77693-led\00", [19 x i8] zeroinitializer }, align 32
@max77693_led_irqs = internal constant { [5 x %struct.regmap_irq], [44 x i8] } { [5 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }], [44 x i8] zeroinitializer }, align 32
@max77693_led_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.41, i32 0, i32 0, ptr null, i32 0, i32 14, i32 15, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77693_led_irqs, i32 5, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max77693-topsys\00", [16 x i8] zeroinitializer }, align 32
@max77693_topsys_irqs = internal constant { [3 x %struct.regmap_irq], [52 x i8] } { [3 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }], [52 x i8] zeroinitializer }, align 32
@max77693_topsys_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.43, i32 0, i32 0, ptr null, i32 0, i32 36, i32 38, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77693_topsys_irqs, i32 3, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max77693-charger\00", [47 x i8] zeroinitializer }, align 32
@max77693_charger_irqs = internal constant { [5 x %struct.regmap_irq], [44 x i8] } { [5 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }], [44 x i8] zeroinitializer }, align 32
@max77693_charger_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.45, i32 0, i32 0, ptr null, i32 0, i32 176, i32 177, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77693_charger_irqs, i32 5, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77693-muic\00", [18 x i8] zeroinitializer }, align 32
@max77693_muic_irqs = internal constant { [16 x %struct.regmap_irq], [128 x i8] } { [16 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }], [128 x i8] zeroinitializer }, align 32
@max77693_muic_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.47, i32 0, i32 0, ptr null, i32 0, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 32, i8 0, i32 3, ptr @max77693_muic_irqs, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77693-pmic\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"maxim,max77693-charger\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"maxim,max77693-muic\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max77693-haptic\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"maxim,max77693-haptic\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maxim,max77693-led\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"max77693_i2c_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 359, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 361, i32 14 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"max77693_dt_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 352, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"max77693_pm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 346, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"max77693_i2c_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 314, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"max77693_regmap_config\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 51, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 170, i32 21 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 173, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 181, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 184, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 188, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 195, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [30 x i8] c"max77693_regmap_haptic_config\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 146, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 201, i32 28 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 205, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [28 x i8] c"max77693_regmap_muic_config\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 109, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 215, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 219, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 229, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 238, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 247, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 256, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 265, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [14 x i8] c"max77693_devs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 31, i32 30 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 66, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant [18 x i8] c"max77693_led_irqs\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 57, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant [22 x i8] c"max77693_led_irq_chip\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 65, i32 37 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 82, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant [21 x i8] c"max77693_topsys_irqs\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 75, i32 32 }
@___asan_gen_.190 = private unnamed_addr constant [25 x i8] c"max77693_topsys_irq_chip\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 81, i32 37 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 100, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [22 x i8] c"max77693_charger_irqs\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 91, i32 32 }
@___asan_gen_.199 = private unnamed_addr constant [26 x i8] c"max77693_charger_irq_chip\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 99, i32 37 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 137, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"max77693_muic_irqs\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 115, i32 32 }
@___asan_gen_.208 = private unnamed_addr constant [23 x i8] c"max77693_muic_irq_chip\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 136, i32 37 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 32, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 35, i32 20 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 39, i32 20 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 42, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 43, i32 20 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [26 x i8] c"../drivers/mfd/max77693.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 47, i32 20 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max77693_i2c_driver_exit, ptr @__initcall__kmod_max77693__289_370_max77693_i2c_driver_init6, ptr @max77693_i2c_driver_exit, ptr @max77693_i2c_probe._entry, ptr @max77693_i2c_probe._entry.10, ptr @max77693_i2c_probe._entry.14, ptr @max77693_i2c_probe._entry.17, ptr @max77693_i2c_probe._entry.22, ptr @max77693_i2c_probe._entry.27, ptr @max77693_i2c_probe._entry.29, ptr @max77693_i2c_probe._entry.32, ptr @max77693_i2c_probe._entry.34, ptr @max77693_i2c_probe._entry.36, ptr @max77693_i2c_probe._entry.38, ptr @max77693_i2c_probe._entry.7, ptr @max77693_i2c_probe._entry_ptr, ptr @max77693_i2c_probe._entry_ptr.13, ptr @max77693_i2c_probe._entry_ptr.16, ptr @max77693_i2c_probe._entry_ptr.19, ptr @max77693_i2c_probe._entry_ptr.24, ptr @max77693_i2c_probe._entry_ptr.28, ptr @max77693_i2c_probe._entry_ptr.31, ptr @max77693_i2c_probe._entry_ptr.33, ptr @max77693_i2c_probe._entry_ptr.35, ptr @max77693_i2c_probe._entry_ptr.37, ptr @max77693_i2c_probe._entry_ptr.40, ptr @max77693_i2c_probe._entry_ptr.9, ptr @max77693_i2c_driver, ptr @.str, ptr @max77693_dt_match, ptr @max77693_pm, ptr @max77693_i2c_id, ptr @max77693_i2c_probe._key, ptr @max77693_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @max77693_i2c_probe._key.20, ptr @max77693_regmap_haptic_config, ptr @.str.21, ptr @.str.23, ptr @max77693_i2c_probe._key.25, ptr @max77693_regmap_muic_config, ptr @.str.26, ptr @.str.30, ptr @.str.39, ptr @max77693_devs, ptr @.str.41, ptr @max77693_led_irqs, ptr @max77693_led_irq_chip, ptr @.str.43, ptr @max77693_topsys_irqs, ptr @max77693_topsys_irq_chip, ptr @.str.45, ptr @max77693_charger_irqs, ptr @max77693_charger_irq_chip, ptr @.str.47, ptr @max77693_muic_irqs, ptr @max77693_muic_irq_chip, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_regmap_haptic_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_regmap_muic_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_i2c_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_devs to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_irqs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_topsys_irqs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_topsys_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_charger_irqs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_charger_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_irqs to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_muic_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max77693_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77693_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @max77693_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %reg_data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data) #5
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_data, align 4, !annotation !131
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %i2c3 = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %i2c3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %i2c3, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 14
  %6 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq4, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %type, align 4
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @max77693_regmap_config, ptr noundef nonnull @max77693_i2c_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call5 to i32
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef %11) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = call i32 @regmap_read(ptr noundef %call5, i32 noundef 33, ptr noundef nonnull %reg_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  br i1 %cmp15, label %do.end19, label %do.end23

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.8) #8
  br label %cleanup

do.end23:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_data, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %17) #8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %call26 = call ptr @i2c_new_dummy_device(ptr noundef %19, i16 noundef zeroext 37) #5
  %i2c_muic = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %i2c_muic to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call26, ptr %i2c_muic, align 4
  %cmp.i235 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i235, label %do.end32, label %if.end36

do.end32:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.15) #8
  %23 = ptrtoint ptr %i2c_muic to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_muic, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end36:                                         ; preds = %do.end23
  %driver_data.i.i236 = getelementptr inbounds %struct.i2c_client, ptr %call26, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %driver_data.i.i236 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i236, align 4
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %call39 = call ptr @i2c_new_dummy_device(ptr noundef %28, i16 noundef zeroext 72) #5
  %i2c_haptic = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %i2c_haptic to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call39, ptr %i2c_haptic, align 4
  %cmp.i237 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %do.end45, label %if.end49

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.18) #8
  %32 = ptrtoint ptr %i2c_haptic to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_haptic, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %err_i2c_haptic

if.end49:                                         ; preds = %if.end36
  %driver_data.i.i238 = getelementptr inbounds %struct.i2c_client, ptr %call39, i32 0, i32 4, i32 8
  %35 = ptrtoint ptr %driver_data.i.i238 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i238, align 4
  %36 = ptrtoint ptr %i2c_haptic to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_haptic, align 4
  %call53 = call ptr @__devm_regmap_init_i2c(ptr noundef %37, ptr noundef nonnull @max77693_regmap_haptic_config, ptr noundef nonnull @max77693_i2c_probe._key.20, ptr noundef nonnull @.str.21) #5
  %regmap_haptic = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 8
  %38 = ptrtoint ptr %regmap_haptic to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call53, ptr %regmap_haptic, align 4
  %cmp.i239 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i239, label %if.then56, label %if.end63

if.then56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %call53 to i32
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.23, i32 noundef %39) #8
  br label %err_regmap

if.end63:                                         ; preds = %if.end49
  %42 = ptrtoint ptr %i2c_muic to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_muic, align 4
  %call66 = call ptr @__devm_regmap_init_i2c(ptr noundef %43, ptr noundef nonnull @max77693_regmap_muic_config, ptr noundef nonnull @max77693_i2c_probe._key.25, ptr noundef nonnull @.str.26) #5
  %regmap_muic = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 7
  %44 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call66, ptr %regmap_muic, align 4
  %cmp.i240 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.then69, label %if.end76

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %call66 to i32
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.2, i32 noundef %45) #8
  br label %err_regmap

if.end76:                                         ; preds = %if.end63
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %50 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq4, align 4
  %irq_data_led = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 10
  %call79 = call i32 @regmap_add_irq_chip(ptr noundef %49, i32 noundef %51, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull @max77693_led_irq_chip, ptr noundef %irq_data_led) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool.not = icmp eq i32 %call79, 0
  br i1 %tobool.not, label %if.end85, label %do.end83

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.30, i32 noundef %call79) #8
  br label %err_regmap

if.end85:                                         ; preds = %if.end76
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %56 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq4, align 4
  %irq_data_topsys = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 11
  %call88 = call i32 @regmap_add_irq_chip(ptr noundef %55, i32 noundef %57, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull @max77693_topsys_irq_chip, ptr noundef %irq_data_topsys) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end95, label %do.end93

do.end93:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.30, i32 noundef %call88) #8
  br label %err_irq_topsys

if.end95:                                         ; preds = %if.end85
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %62 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq4, align 4
  %irq_data_chg = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 12
  %call98 = call i32 @regmap_add_irq_chip(ptr noundef %61, i32 noundef %63, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull @max77693_charger_irq_chip, ptr noundef %irq_data_chg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end105, label %do.end103

do.end103:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.30, i32 noundef %call98) #8
  br label %err_irq_charger

if.end105:                                        ; preds = %if.end95
  %66 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap_muic, align 4
  %68 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq4, align 4
  %irq_data_muic = getelementptr inbounds %struct.max77693_dev, ptr %call.i, i32 0, i32 13
  %call108 = call i32 @regmap_add_irq_chip(ptr noundef %67, i32 noundef %69, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull @max77693_muic_irq_chip, ptr noundef %irq_data_muic) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end115, label %do.end113

do.end113:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.30, i32 noundef %call108) #8
  br label %err_irq_muic

if.end115:                                        ; preds = %if.end105
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call.i241 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 35, i32 noundef 15, i32 noundef -16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %cmp118 = icmp slt i32 %call.i241, 0
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  br i1 %cmp118, label %do.end122, label %if.end124

do.end122:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.39, i32 noundef %call.i241) #8
  br label %err_intsrc

if.end124:                                        ; preds = %if.end115
  %call.i242 = call i32 @__pm_runtime_set_status(ptr noundef %75, i32 noundef 0) #5
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %call128 = call i32 @mfd_add_devices(ptr noundef %77, i32 noundef -1, ptr noundef nonnull @max77693_devs, i32 noundef 5, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %err_mfd, label %if.end124.cleanup_crit_edge

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_mfd:                                          ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  call void @mfd_remove_devices(ptr noundef %79) #5
  br label %err_intsrc

err_intsrc:                                       ; preds = %err_mfd, %do.end122
  %ret.0 = phi i32 [ %call.i241, %do.end122 ], [ %call128, %err_mfd ]
  %80 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irq4, align 4
  %82 = ptrtoint ptr %irq_data_muic to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %irq_data_muic, align 4
  call void @regmap_del_irq_chip(i32 noundef %81, ptr noundef %83) #5
  br label %err_irq_muic

err_irq_muic:                                     ; preds = %err_intsrc, %do.end113
  %ret.1 = phi i32 [ %call108, %do.end113 ], [ %ret.0, %err_intsrc ]
  %84 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq4, align 4
  %86 = ptrtoint ptr %irq_data_chg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %irq_data_chg, align 4
  call void @regmap_del_irq_chip(i32 noundef %85, ptr noundef %87) #5
  br label %err_irq_charger

err_irq_charger:                                  ; preds = %err_irq_muic, %do.end103
  %ret.2 = phi i32 [ %call98, %do.end103 ], [ %ret.1, %err_irq_muic ]
  %88 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %irq4, align 4
  %90 = ptrtoint ptr %irq_data_topsys to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %irq_data_topsys, align 4
  call void @regmap_del_irq_chip(i32 noundef %89, ptr noundef %91) #5
  br label %err_irq_topsys

err_irq_topsys:                                   ; preds = %err_irq_charger, %do.end93
  %ret.3 = phi i32 [ %call88, %do.end93 ], [ %ret.2, %err_irq_charger ]
  %92 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq4, align 4
  %94 = ptrtoint ptr %irq_data_led to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %irq_data_led, align 4
  call void @regmap_del_irq_chip(i32 noundef %93, ptr noundef %95) #5
  br label %err_regmap

err_regmap:                                       ; preds = %err_irq_topsys, %do.end83, %if.then69, %if.then56
  %ret.4 = phi i32 [ %39, %if.then56 ], [ %45, %if.then69 ], [ %call79, %do.end83 ], [ %ret.3, %err_irq_topsys ]
  %96 = ptrtoint ptr %i2c_haptic to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i2c_haptic, align 4
  call void @i2c_unregister_device(ptr noundef %97) #5
  br label %err_i2c_haptic

err_i2c_haptic:                                   ; preds = %err_regmap, %do.end45
  %ret.5 = phi i32 [ %34, %do.end45 ], [ %ret.4, %err_regmap ]
  %98 = ptrtoint ptr %i2c_muic to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i2c_muic, align 4
  call void @i2c_unregister_device(ptr noundef %99) #5
  br label %cleanup

cleanup:                                          ; preds = %err_i2c_haptic, %if.end124.cleanup_crit_edge, %do.end32, %do.end19, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then8 ], [ %call14, %do.end19 ], [ %25, %do.end32 ], [ %ret.5, %err_i2c_haptic ], [ -12, %entry.cleanup_crit_edge ], [ %call128, %if.end124.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_i2c_remove(ptr nocapture noundef readonly %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @mfd_remove_devices(ptr noundef %3) #5
  %irq = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq_data_muic = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %irq_data_muic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_data_muic, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %5, ptr noundef %7) #5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq_data_chg = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %irq_data_chg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_data_chg, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %9, ptr noundef %11) #5
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %irq_data_topsys = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %irq_data_topsys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_data_topsys, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %13, ptr noundef %15) #5
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %irq_data_led = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %irq_data_led to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_data_led, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %17, ptr noundef %19) #5
  %i2c_muic = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %i2c_muic to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_muic, align 4
  tail call void @i2c_unregister_device(ptr noundef %21) #5
  %i2c_haptic = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %i2c_haptic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_haptic, align 4
  tail call void @i2c_unregister_device(ptr noundef %23) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #5
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #5
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_max77693__289_370_max77693_i2c_driver_init6, !1, !"__initcall__kmod_max77693__289_370_max77693_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/max77693.c", i32 370, i32 1}
!2 = !{ptr @__exitcall_max77693_i2c_driver_exit, !1, !"__exitcall_max77693_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/mfd/max77693.c", i32 372, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/mfd/max77693.c", i32 373, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/mfd/max77693.c", i32 374, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/max77693.c", i32 361, i32 14}
!12 = !{ptr @max77693_i2c_driver, !13, !"max77693_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/mfd/max77693.c", i32 359, i32 26}
!14 = !{ptr @max77693_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/mfd/max77693.c", i32 170, i32 21}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/max77693.c", i32 173, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max77693_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @max77693_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/max77693.c", i32 181, i32 3}
!27 = !{ptr @max77693_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max77693_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/max77693.c", i32 184, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @max77693_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @max77693_i2c_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/max77693.c", i32 188, i32 3}
!36 = !{ptr @max77693_i2c_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @max77693_i2c_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/max77693.c", i32 195, i32 3}
!40 = !{ptr @max77693_i2c_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @max77693_i2c_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @max77693_i2c_probe._key.20, !43, !"_key", i1 false, i1 false}
!43 = !{!"../drivers/mfd/max77693.c", i32 201, i32 28}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/max77693.c", i32 205, i32 3}
!47 = !{ptr @max77693_i2c_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @max77693_i2c_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @max77693_i2c_probe._key.25, !50, !"_key", i1 false, i1 false}
!50 = !{!"../drivers/mfd/max77693.c", i32 215, i32 26}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @max77693_i2c_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/mfd/max77693.c", i32 219, i32 3}
!54 = !{ptr @max77693_i2c_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/max77693.c", i32 229, i32 3}
!57 = !{ptr @max77693_i2c_probe._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @max77693_i2c_probe._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @max77693_i2c_probe._entry.32, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/mfd/max77693.c", i32 238, i32 3}
!61 = !{ptr @max77693_i2c_probe._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @max77693_i2c_probe._entry.34, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/mfd/max77693.c", i32 247, i32 3}
!64 = !{ptr @max77693_i2c_probe._entry_ptr.35, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @max77693_i2c_probe._entry.36, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/mfd/max77693.c", i32 256, i32 3}
!67 = !{ptr @max77693_i2c_probe._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/max77693.c", i32 265, i32 3}
!70 = !{ptr @max77693_i2c_probe._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @max77693_i2c_probe._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @max77693_regmap_config, !73, !"max77693_regmap_config", i1 false, i1 false}
!73 = !{!"../drivers/mfd/max77693.c", i32 51, i32 35}
!74 = !{ptr @max77693_regmap_haptic_config, !75, !"max77693_regmap_haptic_config", i1 false, i1 false}
!75 = !{!"../drivers/mfd/max77693.c", i32 146, i32 35}
!76 = !{ptr @max77693_regmap_muic_config, !77, !"max77693_regmap_muic_config", i1 false, i1 false}
!77 = !{!"../drivers/mfd/max77693.c", i32 109, i32 35}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mfd/max77693.c", i32 66, i32 12}
!80 = !{ptr @max77693_led_irq_chip, !81, !"max77693_led_irq_chip", i1 false, i1 false}
!81 = !{!"../drivers/mfd/max77693.c", i32 65, i32 37}
!82 = !{ptr @max77693_led_irqs, !83, !"max77693_led_irqs", i1 false, i1 false}
!83 = !{!"../drivers/mfd/max77693.c", i32 57, i32 32}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mfd/max77693.c", i32 82, i32 12}
!86 = !{ptr @max77693_topsys_irq_chip, !87, !"max77693_topsys_irq_chip", i1 false, i1 false}
!87 = !{!"../drivers/mfd/max77693.c", i32 81, i32 37}
!88 = !{ptr @max77693_topsys_irqs, !89, !"max77693_topsys_irqs", i1 false, i1 false}
!89 = !{!"../drivers/mfd/max77693.c", i32 75, i32 32}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/max77693.c", i32 100, i32 12}
!92 = !{ptr @max77693_charger_irq_chip, !93, !"max77693_charger_irq_chip", i1 false, i1 false}
!93 = !{!"../drivers/mfd/max77693.c", i32 99, i32 37}
!94 = !{ptr @max77693_charger_irqs, !95, !"max77693_charger_irqs", i1 false, i1 false}
!95 = !{!"../drivers/mfd/max77693.c", i32 91, i32 32}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mfd/max77693.c", i32 137, i32 12}
!98 = !{ptr @max77693_muic_irq_chip, !99, !"max77693_muic_irq_chip", i1 false, i1 false}
!99 = !{!"../drivers/mfd/max77693.c", i32 136, i32 37}
!100 = !{ptr @max77693_muic_irqs, !101, !"max77693_muic_irqs", i1 false, i1 false}
!101 = !{!"../drivers/mfd/max77693.c", i32 115, i32 32}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mfd/max77693.c", i32 32, i32 12}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mfd/max77693.c", i32 35, i32 20}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mfd/max77693.c", i32 39, i32 20}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mfd/max77693.c", i32 42, i32 11}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mfd/max77693.c", i32 43, i32 20}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mfd/max77693.c", i32 47, i32 20}
!114 = !{ptr @max77693_devs, !115, !"max77693_devs", i1 false, i1 false}
!115 = !{!"../drivers/mfd/max77693.c", i32 31, i32 30}
!116 = !{ptr @max77693_dt_match, !117, !"max77693_dt_match", i1 false, i1 false}
!117 = !{!"../drivers/mfd/max77693.c", i32 352, i32 34}
!118 = !{ptr @max77693_pm, !119, !"max77693_pm", i1 false, i1 false}
!119 = !{!"../drivers/mfd/max77693.c", i32 346, i32 32}
!120 = !{ptr @max77693_i2c_id, !121, !"max77693_i2c_id", i1 false, i1 false}
!121 = !{!"../drivers/mfd/max77693.c", i32 314, i32 35}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
