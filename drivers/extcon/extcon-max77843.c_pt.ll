; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-max77843.c_pt.bc'
source_filename = "../drivers/extcon/extcon-max77843.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.max77843_muic_irq = type { i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.max77843_muic_info = type { ptr, ptr, ptr, %struct.mutex, %struct.work_struct, %struct.delayed_work, [3 x i8], i32, i32, i32, i8, i8 }
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__initcall__kmod_extcon_max77843__294_963_max77843_muic_init4 = internal global ptr @max77843_muic_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description295 = internal constant [57 x i8] c"extcon_max77843.description=Maxim MAX77843 Extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [61 x i8] c"extcon_max77843.author=Jaewon Kim <jaewon02.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [52 x i8] c"extcon_max77843.file=drivers/extcon/extcon-max77843\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"extcon_max77843.license=GPL\00", section ".modinfo", align 1
@max77843_muic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77843_muic_probe, ptr @max77843_muic_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77843_muic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77843-muic\00", [18 x i8] zeroinitializer }, align 32
@max77843_muic_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77843-muic\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max77843_muic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&info->mutex\00", [19 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 832, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to init MUIC regmap\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max77843_muic_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/extcon/extcon-max77843.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry_ptr = internal global ptr @max77843_muic_probe._entry, section ".printk_index", align 4
@max77843_extcon_cable = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 2, i32 5, i32 6, i32 7, i32 9, i32 10, i32 41, i32 60, i32 61, i32 0], [52 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 847, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate memory for extcon\0A\00", [58 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry_ptr.9 = internal global ptr @max77843_muic_probe._entry.7, section ".printk_index", align 4
@max77843_muic_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 854, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry_ptr.12 = internal global ptr @max77843_muic_probe._entry.10, section ".printk_index", align 4
@max77843_muic_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 866, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot read STATUS registers\0A\00", [34 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry_ptr.15 = internal global ptr @max77843_muic_probe._entry.13, section ".printk_index", align 4
@max77843_muic_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 878, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read revision number\0A\00", [32 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry_ptr.18 = internal global ptr @max77843_muic_probe._entry.16, section ".printk_index", align 4
@max77843_muic_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 881, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MUIC device ID : 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry_ptr.22 = internal global ptr @max77843_muic_probe._entry.19, section ".printk_index", align 4
@max77843_muic_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&info->irq_work)\00", [61 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 891, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to Clear IRQ bits\0A\00", [38 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry_ptr.27 = internal global ptr @max77843_muic_probe._entry.25, section ".printk_index", align 4
@max77843_muic_irqs = internal global { [16 x %struct.max77843_muic_irq], [32 x i8] } { [16 x %struct.max77843_muic_irq] [%struct.max77843_muic_irq { i32 0, ptr @.str.81, i32 0 }, %struct.max77843_muic_irq { i32 1, ptr @.str.82, i32 0 }, %struct.max77843_muic_irq { i32 2, ptr @.str.83, i32 0 }, %struct.max77843_muic_irq { i32 3, ptr @.str.84, i32 0 }, %struct.max77843_muic_irq { i32 4, ptr @.str.85, i32 0 }, %struct.max77843_muic_irq { i32 5, ptr @.str.86, i32 0 }, %struct.max77843_muic_irq { i32 6, ptr @.str.87, i32 0 }, %struct.max77843_muic_irq { i32 7, ptr @.str.88, i32 0 }, %struct.max77843_muic_irq { i32 8, ptr @.str.89, i32 0 }, %struct.max77843_muic_irq { i32 9, ptr @.str.90, i32 0 }, %struct.max77843_muic_irq { i32 10, ptr @.str.91, i32 0 }, %struct.max77843_muic_irq { i32 11, ptr @.str.92, i32 0 }, %struct.max77843_muic_irq { i32 12, ptr @.str.93, i32 0 }, %struct.max77843_muic_irq { i32 13, ptr @.str.94, i32 0 }, %struct.max77843_muic_irq { i32 14, ptr @.str.95, i32 0 }, %struct.max77843_muic_irq { i32 15, ptr @.str.96, i32 0 }], [32 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 913, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to request irq (IRQ: %d, error: %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@max77843_muic_probe._entry_ptr.30 = internal global ptr @max77843_muic_probe._entry.28, section ".printk_index", align 4
@max77843_muic_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&info->wq_detcable)->work)\00", [49 x i8] zeroinitializer }, align 32
@max77843_muic_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&info->wq_detcable)->timer\00", [35 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@max77843_init_muic_regmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 781, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot allocate I2C device for MUIC\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77843_init_muic_regmap\00", [38 x i8] zeroinitializer }, align 32
@max77843_init_muic_regmap._entry_ptr = internal global ptr @max77843_init_muic_regmap._entry, section ".printk_index", align 4
@max77843_init_muic_regmap._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max77843_muic_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 25, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"extcon_max77843:788:(&max77843_muic_regmap_config)->lock\00", [39 x i8] zeroinitializer }, align 32
@max77843_init_muic_regmap._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.4, i32 798, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot add MUIC IRQ chip\0A\00", [38 x i8] zeroinitializer }, align 32
@max77843_init_muic_regmap._entry_ptr.40 = internal global ptr @max77843_init_muic_regmap._entry.38, section ".printk_index", align 4
@max77843_muic_irq = internal constant { [16 x %struct.regmap_irq], [128 x i8] } { [16 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }], [128 x i8] zeroinitializer }, align 32
@max77843_muic_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 32, i8 0, i32 3, ptr @max77843_muic_irq, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@max77843_muic_set_debounce_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 761, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot write MUIC regmap\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"max77843_muic_set_debounce_time\00", [32 x i8] zeroinitializer }, align 32
@max77843_muic_set_debounce_time._entry_ptr = internal global ptr @max77843_muic_set_debounce_time._entry, section ".printk_index", align 4
@max77843_muic_set_debounce_time._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 766, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid ADC debounce time\0A\00", [37 x i8] zeroinitializer }, align 32
@max77843_muic_set_debounce_time._entry_ptr.46 = internal global ptr @max77843_muic_set_debounce_time._entry.44, section ".printk_index", align 4
@max77843_muic_get_cable_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 361, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown cable group (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max77843_muic_get_cable_type\00", [35 x i8] zeroinitializer }, align 32
@max77843_muic_get_cable_type._entry_ptr = internal global ptr @max77843_muic_get_cable_type._entry, section ".printk_index", align 4
@max77843_muic_set_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot switch MUIC port\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77843_muic_set_path\00", [41 x i8] zeroinitializer }, align 32
@max77843_muic_set_path._entry_ptr = internal global ptr @max77843_muic_set_path._entry, section ".printk_index", align 4
@max77843_muic_set_path._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.4, i32 235, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot update lowpower mode\0A\00", [35 x i8] zeroinitializer }, align 32
@max77843_muic_set_path._entry_ptr.53 = internal global ptr @max77843_muic_set_path._entry.51, section ".printk_index", align 4
@max77843_muic_set_path.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.50, ptr @.str.4, ptr @.str.55, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"extcon_max77843\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"attached\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"detached\00", [23 x i8] zeroinitializer }, align 32
@max77843_muic_irq_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.58, ptr @.str.4, i32 640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77843_muic_irq_work\00", [41 x i8] zeroinitializer }, align 32
@max77843_muic_irq_work._entry_ptr = internal global ptr @max77843_muic_irq_work._entry, section ".printk_index", align 4
@max77843_muic_irq_work._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.4, i32 648, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown cable type\0A\00", [44 x i8] zeroinitializer }, align 32
@max77843_muic_irq_work._entry_ptr.61 = internal global ptr @max77843_muic_irq_work._entry.59, section ".printk_index", align 4
@max77843_muic_irq_work._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.4, i32 655, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown charger type\0A\00", [42 x i8] zeroinitializer }, align 32
@max77843_muic_irq_work._entry_ptr.64 = internal global ptr @max77843_muic_irq_work._entry.62, section ".printk_index", align 4
@max77843_muic_adc_handler.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.65, ptr @.str.4, ptr @.str.66, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77843_muic_adc_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"external connector is %s (adc:0x%02x, prev_adc:0x%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@max77843_muic_adc_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.4, i32 520, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"accessory is %s but it isn't used (adc:0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@max77843_muic_adc_handler._entry_ptr = internal global ptr @max77843_muic_adc_handler._entry, section ".printk_index", align 4
@max77843_muic_adc_handler._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.65, ptr @.str.4, i32 525, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to detect %s accessory (adc:0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@max77843_muic_adc_handler._entry_ptr.70 = internal global ptr @max77843_muic_adc_handler._entry.68, section ".printk_index", align 4
@max77843_muic_dock_handler.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.71, ptr @.str.4, ptr @.str.72, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max77843_muic_dock_handler\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"external connector is %s (adc: 0x10)\0A\00", [58 x i8] zeroinitializer }, align 32
@max77843_muic_adc_gnd_handler.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.73, ptr @.str.4, ptr @.str.74, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max77843_muic_adc_gnd_handler\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"external connector is %s (gnd:0x%02x)\0A\00", [57 x i8] zeroinitializer }, align 32
@max77843_muic_adc_gnd_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.4, i32 403, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to detect %s accessory(gnd:0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@max77843_muic_adc_gnd_handler._entry_ptr = internal global ptr @max77843_muic_adc_gnd_handler._entry, section ".printk_index", align 4
@max77843_muic_jig_handler.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.76, ptr @.str.4, ptr @.str.77, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77843_muic_jig_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"external connector is %s (adc:0x%02x)\0A\00", [57 x i8] zeroinitializer }, align 32
@max77843_muic_chg_handler.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.78, ptr @.str.4, ptr @.str.79, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77843_muic_chg_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@max77843_muic_chg_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.4, i32 617, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to detect %s accessory (chg_type:0x%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@max77843_muic_chg_handler._entry_ptr = internal global ptr @max77843_muic_chg_handler._entry, section ".printk_index", align 4
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MUIC-ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MUIC-ADC_ERROR\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MUIC-ADC1K\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MUIC-CHGTYP\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MUIC-CHGDETRUN\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MUIC-DCDTMR\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MUIC-DXOVP\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MUIC-VBVOLT\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MUIC-VBADC\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MUIC-VDNMON\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MUIC-DNRES\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MUIC-MPNACK\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MUIC-MRXBUFOW\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MUIC-MRXTRF\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MUIC-MRXPERR\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MUIC-MRXRDY\00", [20 x i8] zeroinitializer }, align 32
@max77843_muic_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.4, i32 694, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot recognize IRQ(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77843_muic_irq_handler\00", [38 x i8] zeroinitializer }, align 32
@max77843_muic_irq_handler._entry_ptr = internal global ptr @max77843_muic_irq_handler._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@max77843_muic_detect_cable_wq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.99, ptr @.str.4, i32 717, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max77843_muic_detect_cable_wq\00", [34 x i8] zeroinitializer }, align 32
@max77843_muic_detect_cable_wq._entry_ptr = internal global ptr @max77843_muic_detect_cable_wq._entry, section ".printk_index", align 4
@max77843_muic_detect_cable_wq._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.4, i32 726, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot detect accessory\0A\00", [39 x i8] zeroinitializer }, align 32
@max77843_muic_detect_cable_wq._entry_ptr.102 = internal global ptr @max77843_muic_detect_cable_wq._entry.100, section ".printk_index", align 4
@max77843_muic_detect_cable_wq._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.4, i32 736, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot detect charger accessory\0A\00", [63 x i8] zeroinitializer }, align 32
@max77843_muic_detect_cable_wq._entry_ptr.105 = internal global ptr @max77843_muic_detect_cable_wq._entry.103, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 5, i64 0, i64 16]
@__sancov_gen_cov_switch_values.107 = internal global [34 x i64] [i64 32, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 24, i64 25, i64 28]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 5, i64 0, i64 16]
@__sancov_gen_cov_switch_values.110 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 9]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 258, i64 259]
@__sancov_gen_cov_switch_values.112 = internal global [6 x i64] [i64 4, i64 32, i64 256, i64 257, i64 258, i64 259]
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"max77843_muic_driver\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 950, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 952, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"max77843_muic_id\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 944, i32 40 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 827, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 832, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"max77843_extcon_cable\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 120, i32 27 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 847, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 854, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 866, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 878, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 881, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 884, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 891, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"max77843_muic_irqs\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 140, i32 33 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 911, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 919, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 780, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [28 x i8] c"max77843_muic_regmap_config\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 159, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 787, i32 26 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 798, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [18 x i8] c"max77843_muic_irq\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 165, i32 32 }
@___asan_gen_.242 = private unnamed_addr constant [23 x i8] c"max77843_muic_irq_chip\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 189, i32 37 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 761, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 766, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 361, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 221, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 235, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 239, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 640, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 648, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 655, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 468, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 518, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 523, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 445, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 376, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 402, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 416, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 540, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 615, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 141, i32 33 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 142, i32 37 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 143, i32 35 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 144, i32 35 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 145, i32 38 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 146, i32 35 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 147, i32 35 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 148, i32 35 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 149, i32 35 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 150, i32 35 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 151, i32 35 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 152, i32 35 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 153, i32 37 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 154, i32 35 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 155, i32 36 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 156, i32 35 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 694, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 717, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 726, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.441 = private constant [36 x i8] c"../drivers/extcon/extcon-max77843.c\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 736, i32 4 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__initcall__kmod_extcon_max77843__294_963_max77843_muic_init4, ptr @max77843_init_muic_regmap._entry, ptr @max77843_init_muic_regmap._entry.38, ptr @max77843_init_muic_regmap._entry_ptr, ptr @max77843_init_muic_regmap._entry_ptr.40, ptr @max77843_muic_adc_gnd_handler._entry, ptr @max77843_muic_adc_gnd_handler._entry_ptr, ptr @max77843_muic_adc_handler._entry, ptr @max77843_muic_adc_handler._entry.68, ptr @max77843_muic_adc_handler._entry_ptr, ptr @max77843_muic_adc_handler._entry_ptr.70, ptr @max77843_muic_chg_handler._entry, ptr @max77843_muic_chg_handler._entry_ptr, ptr @max77843_muic_detect_cable_wq._entry, ptr @max77843_muic_detect_cable_wq._entry.100, ptr @max77843_muic_detect_cable_wq._entry.103, ptr @max77843_muic_detect_cable_wq._entry_ptr, ptr @max77843_muic_detect_cable_wq._entry_ptr.102, ptr @max77843_muic_detect_cable_wq._entry_ptr.105, ptr @max77843_muic_get_cable_type._entry, ptr @max77843_muic_get_cable_type._entry_ptr, ptr @max77843_muic_irq_handler._entry, ptr @max77843_muic_irq_handler._entry_ptr, ptr @max77843_muic_irq_work._entry, ptr @max77843_muic_irq_work._entry.59, ptr @max77843_muic_irq_work._entry.62, ptr @max77843_muic_irq_work._entry_ptr, ptr @max77843_muic_irq_work._entry_ptr.61, ptr @max77843_muic_irq_work._entry_ptr.64, ptr @max77843_muic_probe._entry, ptr @max77843_muic_probe._entry.10, ptr @max77843_muic_probe._entry.13, ptr @max77843_muic_probe._entry.16, ptr @max77843_muic_probe._entry.19, ptr @max77843_muic_probe._entry.25, ptr @max77843_muic_probe._entry.28, ptr @max77843_muic_probe._entry.7, ptr @max77843_muic_probe._entry_ptr, ptr @max77843_muic_probe._entry_ptr.12, ptr @max77843_muic_probe._entry_ptr.15, ptr @max77843_muic_probe._entry_ptr.18, ptr @max77843_muic_probe._entry_ptr.22, ptr @max77843_muic_probe._entry_ptr.27, ptr @max77843_muic_probe._entry_ptr.30, ptr @max77843_muic_probe._entry_ptr.9, ptr @max77843_muic_set_debounce_time._entry, ptr @max77843_muic_set_debounce_time._entry.44, ptr @max77843_muic_set_debounce_time._entry_ptr, ptr @max77843_muic_set_debounce_time._entry_ptr.46, ptr @max77843_muic_set_path._entry, ptr @max77843_muic_set_path._entry.51, ptr @max77843_muic_set_path._entry_ptr, ptr @max77843_muic_set_path._entry_ptr.53, ptr @max77843_muic_driver, ptr @.str, ptr @max77843_muic_id, ptr @max77843_muic_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @max77843_extcon_cable, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @max77843_muic_probe.__key.23, ptr @.str.24, ptr @.str.26, ptr @max77843_muic_irqs, ptr @.str.29, ptr @max77843_muic_probe.__key.31, ptr @.str.32, ptr @max77843_muic_probe.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @max77843_init_muic_regmap._key, ptr @max77843_muic_regmap_config, ptr @.str.37, ptr @.str.39, ptr @max77843_muic_irq, ptr @max77843_muic_irq_chip, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_extcon_cable to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_irqs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_init_muic_regmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_init_muic_regmap._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_init_muic_regmap._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_irq to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_set_debounce_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_set_debounce_time._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_get_cable_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_set_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_set_path._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_irq_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_irq_work._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_irq_work._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_adc_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_adc_handler._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_adc_gnd_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_chg_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_detect_cable_wq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_detect_cable_wq._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_muic_detect_cable_wq._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77843_muic_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77843_muic_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77843_muic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #5
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %id, align 4, !annotation !220
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 268, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup130_crit_edge, label %if.end

entry.cleanup130_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup130

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %max778435 = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %max778435 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %max778435, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @max77843_muic_probe.__key) #5
  %i2c.i = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  %call.i202 = tail call ptr @i2c_new_dummy_device(ptr noundef %11, i16 noundef zeroext 37) #5
  %i2c_muic.i = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %i2c_muic.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i202, ptr %i2c_muic.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i202, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.35) #8
  %15 = ptrtoint ptr %i2c_muic.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_muic.i, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %max77843_init_muic_regmap.exit

if.end.i:                                         ; preds = %if.end
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %call.i202, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %3, ptr %driver_data.i.i.i, align 4
  %19 = ptrtoint ptr %i2c_muic.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_muic.i, align 4
  %call8.i = tail call ptr @__devm_regmap_init_i2c(ptr noundef %20, ptr noundef nonnull @max77843_muic_regmap_config, ptr noundef nonnull @max77843_init_muic_regmap._key, ptr noundef nonnull @.str.37) #5
  %regmap_muic.i = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %regmap_muic.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i, ptr %regmap_muic.i, align 4
  %cmp.i41.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %call8.i to i32
  br label %err_muic_i2c.i

if.end14.i:                                       ; preds = %if.end.i
  %irq.i = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 14
  %23 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i, align 4
  %irq_data_muic.i = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 13
  %call16.i = tail call i32 @regmap_add_irq_chip(ptr noundef %call8.i, i32 noundef %24, i32 noundef 8328, i32 noundef 0, ptr noundef nonnull @max77843_muic_irq_chip, ptr noundef %irq_data_muic.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i = icmp slt i32 %call16.i, 0
  br i1 %cmp.i, label %do.end20.i, label %if.end14.i.if.end13_crit_edge

if.end14.i.if.end13_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c.i, align 4
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.39) #8
  br label %err_muic_i2c.i

err_muic_i2c.i:                                   ; preds = %do.end20.i, %if.then11.i
  %ret.0.i = phi i32 [ %22, %if.then11.i ], [ %call16.i, %do.end20.i ]
  %27 = ptrtoint ptr %i2c_muic.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_muic.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %28) #5
  br label %max77843_init_muic_regmap.exit

max77843_init_muic_regmap.exit:                   ; preds = %err_muic_i2c.i, %do.end.i
  %retval.0.i = phi i32 [ %17, %do.end.i ], [ %ret.0.i, %err_muic_i2c.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %max77843_init_muic_regmap.exit.if.end13_crit_edge, label %do.end11

max77843_init_muic_regmap.exit.if.end13_crit_edge: ; preds = %max77843_init_muic_regmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end11:                                         ; preds = %max77843_init_muic_regmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup130

if.end13:                                         ; preds = %max77843_init_muic_regmap.exit.if.end13_crit_edge, %if.end14.i.if.end13_crit_edge
  %regmap_muic = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 7
  %29 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap_muic, align 4
  %call.i203 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 22, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call16 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev, ptr noundef nonnull @max77843_extcon_cable) #5
  %edev = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call16, ptr %edev, align 4
  %cmp.i204 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %do.end22, label %if.end26

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  %32 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %edev, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %err_muic_irq

if.end26:                                         ; preds = %if.end13
  %call29 = tail call i32 @devm_extcon_dev_register(ptr noundef %dev, ptr noundef %call16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %err_muic_irq

if.end36:                                         ; preds = %if.end26
  tail call fastcc void @max77843_muic_set_debounce_time(ptr noundef nonnull %call.i)
  %35 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap_muic, align 4
  %status = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 6
  %call39 = tail call i32 @regmap_bulk_read(ptr noundef %36, i32 noundef 4, ptr noundef %status, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.14) #8
  br label %err_muic_irq

if.end46:                                         ; preds = %if.end36
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %status, align 4
  %41 = and i8 %40, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %41)
  %cmp.i205 = icmp eq i8 %41, 31
  br i1 %cmp.i205, label %max77843_muic_get_cable_type.exit.thread, label %max77843_muic_get_cable_type.exit

max77843_muic_get_cable_type.exit.thread:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %prev_cable_type.i = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 7
  %42 = ptrtoint ptr %prev_cable_type.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 31, ptr %prev_cable_type.i, align 4
  br label %if.end51

max77843_muic_get_cable_type.exit:                ; preds = %if.end46
  %and.i = zext i8 %41 to i32
  %prev_cable_type3.i = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 7
  %43 = ptrtoint ptr %prev_cable_type3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and.i, ptr %prev_cable_type3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %41)
  %cmp = icmp eq i8 %41, 28
  br i1 %cmp, label %if.then49, label %max77843_muic_get_cable_type.exit.if.end51_crit_edge

max77843_muic_get_cable_type.exit.if.end51_crit_edge: ; preds = %max77843_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then49:                                        ; preds = %max77843_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call50 = tail call fastcc i32 @max77843_muic_set_path(ptr noundef nonnull %call.i, i8 noundef zeroext 27, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %max77843_muic_get_cable_type.exit.if.end51_crit_edge, %max77843_muic_get_cable_type.exit.thread
  %44 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap_muic, align 4
  %call53 = call i32 @regmap_read(ptr noundef %45, i32 noundef 0, ptr noundef nonnull %id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end58, label %do.end63

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %err_muic_irq

do.end63:                                         ; preds = %if.end51
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.20, i32 noundef %49) #8
  %irq_work = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 4
  call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #5
  %50 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @max77843_muic_probe.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry69 = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %entry69 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %entry69, ptr %entry69, align 4
  %prev.i = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %entry69, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 4, i32 2
  %53 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @max77843_muic_irq_work, ptr %func, align 4
  %54 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap_muic, align 4
  %call76 = call i32 @regmap_bulk_read(ptr noundef %55, i32 noundef 1, ptr noundef %status, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %for.cond.preheader, label %do.end81

for.cond.preheader:                               ; preds = %do.end63
  %irq_data_muic = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 13
  br label %for.body

do.end81:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #8
  br label %err_muic_irq

for.cond:                                         ; preds = %if.end88
  %inc = add nuw nsw i32 %i.0219, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body102, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0219 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 %i.0219
  %56 = ptrtoint ptr %irq_data_muic to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %irq_data_muic, align 4
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx, align 4
  %call85 = call i32 @regmap_irq_get_virq(ptr noundef %57, i32 noundef %59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 1
  br i1 %cmp86, label %for.body.err_muic_irq_crit_edge, label %if.end88

for.body.err_muic_irq_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_muic_irq

if.end88:                                         ; preds = %for.body
  %virq89 = getelementptr [16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 %i.0219, i32 2
  %60 = ptrtoint ptr %virq89 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call85, ptr %virq89, align 4
  %name = getelementptr [16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 %i.0219, i32 1
  %61 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name, align 4
  %call91 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call85, ptr noundef null, ptr noundef nonnull @max77843_muic_irq_handler, i32 noundef 16384, ptr noundef %62, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %for.cond, label %do.end96

do.end96:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %64, i32 noundef %call91) #8
  br label %err_muic_irq

do.body102:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %wq_detcable = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 5
  call void @__init_work(ptr noundef %wq_detcable, i32 noundef 0) #5
  %65 = ptrtoint ptr %wq_detcable to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -64, ptr %wq_detcable, align 4
  %lockdep_map110 = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map110, ptr noundef nonnull @.str.32, ptr noundef nonnull @max77843_muic_probe.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry113 = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %66 = ptrtoint ptr %entry113 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %entry113, ptr %entry113, align 4
  %prev.i206 = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %prev.i206 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %entry113, ptr %prev.i206, align 4
  %func116 = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %68 = ptrtoint ptr %func116 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @max77843_muic_detect_cable_wq, ptr %func116, align 4
  %timer = getelementptr inbounds %struct.max77843_muic_info, ptr %call.i, i32 0, i32 5, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.34, ptr noundef nonnull @max77843_muic_probe.__key.33) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %69 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i207 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %69, ptr noundef %wq_detcable, i32 noundef 1500) #5
  br label %cleanup130

err_muic_irq:                                     ; preds = %do.end96, %for.body.err_muic_irq_crit_edge, %do.end81, %do.end58, %do.end44, %do.end34, %do.end22
  %ret.1 = phi i32 [ %34, %do.end22 ], [ %call29, %do.end34 ], [ %call39, %do.end44 ], [ %call53, %do.end58 ], [ %call76, %do.end81 ], [ %call91, %do.end96 ], [ -22, %for.body.err_muic_irq_crit_edge ]
  %irq128 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 14
  %70 = ptrtoint ptr %irq128 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq128, align 4
  %irq_data_muic129 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 13
  %72 = ptrtoint ptr %irq_data_muic129 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %irq_data_muic129, align 4
  call void @regmap_del_irq_chip(i32 noundef %71, ptr noundef %73) #5
  %74 = ptrtoint ptr %i2c_muic.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i2c_muic.i, align 4
  call void @i2c_unregister_device(ptr noundef %75) #5
  br label %cleanup130

cleanup130:                                       ; preds = %err_muic_irq, %do.body102, %do.end11, %entry.cleanup130_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end11 ], [ %ret.1, %err_muic_irq ], [ 0, %do.body102 ], [ -12, %entry.cleanup130_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77843_muic_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %max778431 = getelementptr inbounds %struct.max77843_muic_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %max778431 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %max778431, align 4
  %irq_work = getelementptr inbounds %struct.max77843_muic_info, ptr %1, i32 0, i32 4
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %irq_work) #5
  %irq = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq_data_muic = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %irq_data_muic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_data_muic, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %5, ptr noundef %7) #5
  %i2c_muic = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %i2c_muic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_muic, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max77843_muic_set_debounce_time(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %max778431 = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %max778431 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max778431, align 4
  %regmap_muic = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_muic, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 22, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.42) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77843_muic_set_path(ptr nocapture noundef readonly %info, i8 noundef zeroext %val, i1 noundef zeroext %attached, i1 noundef zeroext %nobccomp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %max778432 = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %max778432 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max778432, align 4
  %conv = zext i8 %val to i32
  %ctrl1.0 = select i1 %attached, i32 %conv, i32 0
  %or = or i32 %ctrl1.0, 64
  %ctrl1.1 = select i1 %nobccomp, i32 %or, i32 %ctrl1.0
  %regmap_muic = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_muic, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 127, i32 noundef %ctrl1.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.49) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %. = select i1 %attached, i32 4, i32 1
  %6 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_muic, align 4
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 13, i32 noundef 5, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp15 = icmp slt i32 %call.i51, 0
  br i1 %cmp15, label %do.end20, label %do.body23

do.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.52) #8
  br label %cleanup

do.body23:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77843_muic_set_path.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max77843_muic_set_path, %if.then29)) #5
          to label %cleanup [label %if.then29], !srcloc !221

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %cond = select i1 %attached, ptr @.str.56, ptr @.str.57
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77843_muic_set_path.__UNIQUE_ID_ddebug288, ptr noundef %11, ptr noundef nonnull @.str.55, i32 noundef %ctrl1.1, i32 noundef %., ptr noundef nonnull %cond) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body23, %do.end20, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i51, %do.end20 ], [ 0, %if.then29 ], [ 0, %do.body23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77843_muic_irq_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %max778431 = getelementptr i8, ptr %work, i32 -100
  %0 = ptrtoint ptr %max778431 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max778431, align 4
  %mutex = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %regmap_muic = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_muic, align 4
  %status = getelementptr i8, ptr %work, i32 144
  %call = tail call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 4, ptr noundef %status, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_adc = getelementptr i8, ptr %work, i32 160
  %6 = ptrtoint ptr %irq_adc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %irq_adc, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %if.then4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc i32 @max77843_muic_adc_handler(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.if.end12_crit_edge, label %do.end10

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.60) #8
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.then4.if.end12_crit_edge
  %10 = ptrtoint ptr %irq_adc to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %irq_adc, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end.if.end14_crit_edge
  %irq_chg = getelementptr i8, ptr %work, i32 161
  %11 = ptrtoint ptr %irq_chg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %irq_chg, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  %call17 = tail call fastcc i32 @max77843_muic_chg_handler(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end24_crit_edge, label %do.end22

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.63) #8
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %if.then16.if.end24_crit_edge
  %15 = ptrtoint ptr %irq_chg to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %irq_chg, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end14.cleanup_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77843_muic_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %irq)
  %cmp1 = icmp eq i32 %0, %irq
  br i1 %cmp1, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = load i32, ptr @max77843_muic_irqs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %irq_type.1 = phi i32 [ %1, %if.then ], [ -1, %entry.for.inc_crit_edge ]
  %2 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %irq)
  %cmp1.1 = icmp eq i32 %2, %irq
  br i1 %cmp1.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %3 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 1), align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %irq_type.1.1 = phi i32 [ %3, %if.then.1 ], [ %irq_type.1, %for.inc.for.inc.1_crit_edge ]
  %4 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %irq)
  %cmp1.2 = icmp eq i32 %4, %irq
  br i1 %cmp1.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %5 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 2), align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %irq_type.1.2 = phi i32 [ %5, %if.then.2 ], [ %irq_type.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %6 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %irq)
  %cmp1.3 = icmp eq i32 %6, %irq
  br i1 %cmp1.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %7 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 3), align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %irq_type.1.3 = phi i32 [ %7, %if.then.3 ], [ %irq_type.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %8 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %irq)
  %cmp1.4 = icmp eq i32 %8, %irq
  br i1 %cmp1.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %9 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 4), align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %irq_type.1.4 = phi i32 [ %9, %if.then.4 ], [ %irq_type.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %10 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %irq)
  %cmp1.5 = icmp eq i32 %10, %irq
  br i1 %cmp1.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %11 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 5), align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %irq_type.1.5 = phi i32 [ %11, %if.then.5 ], [ %irq_type.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %12 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %irq)
  %cmp1.6 = icmp eq i32 %12, %irq
  br i1 %cmp1.6, label %if.then.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %13 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 6), align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %irq_type.1.6 = phi i32 [ %13, %if.then.6 ], [ %irq_type.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %14 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %irq)
  %cmp1.7 = icmp eq i32 %14, %irq
  br i1 %cmp1.7, label %if.then.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %15 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 7), align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %irq_type.1.7 = phi i32 [ %15, %if.then.7 ], [ %irq_type.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %16 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 8, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %irq)
  %cmp1.8 = icmp eq i32 %16, %irq
  br i1 %cmp1.8, label %if.then.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 8), align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7.for.inc.8_crit_edge
  %irq_type.1.8 = phi i32 [ %17, %if.then.8 ], [ %irq_type.1.7, %for.inc.7.for.inc.8_crit_edge ]
  %18 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 9, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %irq)
  %cmp1.9 = icmp eq i32 %18, %irq
  br i1 %cmp1.9, label %if.then.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  %19 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 9), align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8.for.inc.9_crit_edge
  %irq_type.1.9 = phi i32 [ %19, %if.then.9 ], [ %irq_type.1.8, %for.inc.8.for.inc.9_crit_edge ]
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 10, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %irq)
  %cmp1.10 = icmp eq i32 %20, %irq
  br i1 %cmp1.10, label %if.then.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.10

if.then.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  %21 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 10), align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then.10, %for.inc.9.for.inc.10_crit_edge
  %irq_type.1.10 = phi i32 [ %21, %if.then.10 ], [ %irq_type.1.9, %for.inc.9.for.inc.10_crit_edge ]
  %22 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 11, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %irq)
  %cmp1.11 = icmp eq i32 %22, %irq
  br i1 %cmp1.11, label %if.then.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.11

if.then.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  %23 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 11), align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then.11, %for.inc.10.for.inc.11_crit_edge
  %irq_type.1.11 = phi i32 [ %23, %if.then.11 ], [ %irq_type.1.10, %for.inc.10.for.inc.11_crit_edge ]
  %24 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 12, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %irq)
  %cmp1.12 = icmp eq i32 %24, %irq
  br i1 %cmp1.12, label %if.then.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.12

if.then.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  %25 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 12), align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then.12, %for.inc.11.for.inc.12_crit_edge
  %irq_type.1.12 = phi i32 [ %25, %if.then.12 ], [ %irq_type.1.11, %for.inc.11.for.inc.12_crit_edge ]
  %26 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 13, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %irq)
  %cmp1.13 = icmp eq i32 %26, %irq
  br i1 %cmp1.13, label %if.then.13, label %for.inc.12.for.inc.13_crit_edge

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.13

if.then.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #7
  %27 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 13), align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then.13, %for.inc.12.for.inc.13_crit_edge
  %irq_type.1.13 = phi i32 [ %27, %if.then.13 ], [ %irq_type.1.12, %for.inc.12.for.inc.13_crit_edge ]
  %28 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 14, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %irq)
  %cmp1.14 = icmp eq i32 %28, %irq
  br i1 %cmp1.14, label %if.then.14, label %for.inc.13.for.inc.14_crit_edge

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.14

if.then.14:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  %29 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 14), align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then.14, %for.inc.13.for.inc.14_crit_edge
  %irq_type.1.14 = phi i32 [ %29, %if.then.14 ], [ %irq_type.1.13, %for.inc.13.for.inc.14_crit_edge ]
  %30 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 15, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %irq)
  %cmp1.15 = icmp eq i32 %30, %irq
  br i1 %cmp1.15, label %if.then.15, label %for.inc.14.for.inc.15_crit_edge

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.15

if.then.15:                                       ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #7
  %31 = load i32, ptr getelementptr inbounds ([16 x %struct.max77843_muic_irq], ptr @max77843_muic_irqs, i32 0, i32 15), align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.then.15, %for.inc.14.for.inc.15_crit_edge
  %irq_type.1.15 = phi i32 [ %31, %if.then.15 ], [ %irq_type.1.14, %for.inc.14.for.inc.15_crit_edge ]
  %32 = zext i32 %irq_type.1.15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %irq_type.1.15, label %do.end [
    i32 0, label %for.inc.15.sw.bb_crit_edge
    i32 1, label %for.inc.15.sw.bb_crit_edge16
    i32 2, label %for.inc.15.sw.bb_crit_edge17
    i32 3, label %for.inc.15.sw.bb4_crit_edge
    i32 4, label %for.inc.15.sw.bb4_crit_edge18
    i32 5, label %for.inc.15.sw.bb4_crit_edge19
    i32 6, label %for.inc.15.sw.bb4_crit_edge20
    i32 7, label %for.inc.15.sw.bb4_crit_edge21
    i32 8, label %for.inc.15.sw.epilog_crit_edge
    i32 9, label %for.inc.15.sw.epilog_crit_edge22
    i32 10, label %for.inc.15.sw.epilog_crit_edge23
    i32 11, label %for.inc.15.sw.epilog_crit_edge24
    i32 12, label %for.inc.15.sw.epilog_crit_edge25
    i32 13, label %for.inc.15.sw.epilog_crit_edge26
    i32 14, label %for.inc.15.sw.epilog_crit_edge27
    i32 15, label %for.inc.15.sw.epilog_crit_edge28
  ]

for.inc.15.sw.epilog_crit_edge28:                 ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.15.sw.epilog_crit_edge27:                 ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.15.sw.epilog_crit_edge26:                 ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.15.sw.epilog_crit_edge25:                 ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.15.sw.epilog_crit_edge24:                 ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.15.sw.epilog_crit_edge23:                 ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.15.sw.epilog_crit_edge22:                 ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.15.sw.epilog_crit_edge:                   ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.inc.15.sw.bb4_crit_edge21:                    ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

for.inc.15.sw.bb4_crit_edge20:                    ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

for.inc.15.sw.bb4_crit_edge19:                    ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

for.inc.15.sw.bb4_crit_edge18:                    ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

for.inc.15.sw.bb4_crit_edge:                      ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

for.inc.15.sw.bb_crit_edge17:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.inc.15.sw.bb_crit_edge16:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.inc.15.sw.bb_crit_edge:                       ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %for.inc.15.sw.bb_crit_edge, %for.inc.15.sw.bb_crit_edge16, %for.inc.15.sw.bb_crit_edge17
  %irq_adc = getelementptr inbounds %struct.max77843_muic_info, ptr %data, i32 0, i32 10
  %33 = ptrtoint ptr %irq_adc to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %irq_adc, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.inc.15.sw.bb4_crit_edge, %for.inc.15.sw.bb4_crit_edge18, %for.inc.15.sw.bb4_crit_edge19, %for.inc.15.sw.bb4_crit_edge20, %for.inc.15.sw.bb4_crit_edge21
  %irq_chg = getelementptr inbounds %struct.max77843_muic_info, ptr %data, i32 0, i32 11
  %34 = ptrtoint ptr %irq_chg to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %irq_chg, align 1
  br label %sw.epilog

do.end:                                           ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.97, i32 noundef %irq_type.1.15) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb4, %sw.bb, %for.inc.15.sw.epilog_crit_edge, %for.inc.15.sw.epilog_crit_edge22, %for.inc.15.sw.epilog_crit_edge23, %for.inc.15.sw.epilog_crit_edge24, %for.inc.15.sw.epilog_crit_edge25, %for.inc.15.sw.epilog_crit_edge26, %for.inc.15.sw.epilog_crit_edge27, %for.inc.15.sw.epilog_crit_edge28
  %irq_work = getelementptr inbounds %struct.max77843_muic_info, ptr %data, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %irq_work) #5
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77843_muic_detect_cable_wq(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -148
  %max778431 = getelementptr i8, ptr %work, i32 -144
  %0 = ptrtoint ptr %max778431 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max778431, align 4
  %mutex = getelementptr i8, ptr %work, i32 -136
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %regmap_muic = getelementptr inbounds %struct.max77693_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regmap_muic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_muic, align 4
  %status = getelementptr i8, ptr %work, i32 100
  %call2 = tail call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 4, ptr noundef %status, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #8
  br label %err_cable_wq

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 4
  %8 = and i8 %7, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %8)
  %cmp.i = icmp eq i8 %8, 31
  br i1 %cmp.i, label %max77843_muic_get_cable_type.exit.thread, label %max77843_muic_get_cable_type.exit

max77843_muic_get_cable_type.exit.thread:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev_cable_type.i = getelementptr i8, ptr %work, i32 104
  %9 = ptrtoint ptr %prev_cable_type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 31, ptr %prev_cable_type.i, align 4
  br label %if.end14

max77843_muic_get_cable_type.exit:                ; preds = %if.end
  %and.i = zext i8 %8 to i32
  %prev_cable_type3.i = getelementptr i8, ptr %work, i32 104
  %10 = ptrtoint ptr %prev_cable_type3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i, ptr %prev_cable_type3.i, align 4
  %call6 = tail call fastcc i32 @max77843_muic_adc_handler(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %max77843_muic_get_cable_type.exit.if.end14_crit_edge

max77843_muic_get_cable_type.exit.if.end14_crit_edge: ; preds = %max77843_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.end11:                                         ; preds = %max77843_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.101) #8
  br label %err_cable_wq

if.end14:                                         ; preds = %max77843_muic_get_cable_type.exit.if.end14_crit_edge, %max77843_muic_get_cable_type.exit.thread
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status, align 4
  %arrayidx6.i = getelementptr i8, ptr %work, i32 101
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx6.i, align 1
  %17 = and i8 %16, 7
  %and8.i = zext i8 %17 to i32
  %trunc.i = trunc i8 %14 to i5
  %18 = zext i5 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.106)
  switch i5 %trunc.i, label %if.end31.i [
    i5 0, label %if.then11.i
    i5 -16, label %if.then22.i
  ]

if.then11.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp12.i = icmp eq i8 %17, 0
  %prev_chg_type.i = getelementptr i8, ptr %work, i32 108
  br i1 %cmp12.i, label %if.then14.i, label %if.else16.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %prev_chg_type.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %prev_chg_type.i, align 4
  br label %err_cable_wq

if.else16.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %prev_chg_type.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %prev_chg_type.i, align 4
  br label %if.then19

if.then22.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp23.i = icmp eq i8 %17, 0
  %prev_chg_type26.i = getelementptr i8, ptr %work, i32 108
  br i1 %cmp23.i, label %if.then25.i, label %if.else28.i

if.then25.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %prev_chg_type26.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %prev_chg_type26.i, align 4
  br label %err_cable_wq

if.else28.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %prev_chg_type26.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 9, ptr %prev_chg_type26.i, align 4
  br label %if.then19

if.end31.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp32.i = icmp eq i8 %17, 0
  %prev_chg_type35.i = getelementptr i8, ptr %work, i32 108
  br i1 %cmp32.i, label %if.then34.i, label %if.else37.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %prev_chg_type35.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %prev_chg_type35.i, align 4
  br label %err_cable_wq

if.else37.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %prev_chg_type35.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and8.i, ptr %prev_chg_type35.i, align 4
  br label %if.then19

if.then19:                                        ; preds = %if.else37.i, %if.else28.i, %if.else16.i
  %call20 = tail call fastcc i32 @max77843_muic_chg_handler(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.then19.err_cable_wq_crit_edge

if.then19.err_cable_wq_crit_edge:                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_cable_wq

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.104) #8
  br label %err_cable_wq

err_cable_wq:                                     ; preds = %do.end25, %if.then19.err_cable_wq_crit_edge, %if.then34.i, %if.then25.i, %if.then14.i, %do.end11, %do.end
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77843_muic_adc_handler(ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status.i, align 4
  %2 = and i8 %1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %2)
  %cmp.i = icmp eq i8 %2, 31
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_cable_type.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 7
  %3 = ptrtoint ptr %prev_cable_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prev_cable_type.i, align 4
  store i32 31, ptr %prev_cable_type.i, align 4
  br label %max77843_muic_get_cable_type.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = zext i8 %2 to i32
  %prev_cable_type3.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 7
  %5 = ptrtoint ptr %prev_cable_type3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %prev_cable_type3.i, align 4
  br label %max77843_muic_get_cable_type.exit

max77843_muic_get_cable_type.exit:                ; preds = %if.else.i, %if.then.i
  %cable_type.0.i = phi i32 [ %4, %if.then.i ], [ %and.i, %if.else.i ]
  %6 = xor i1 %cmp.i, true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77843_muic_adc_handler.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max77843_muic_adc_handler, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !221

if.then:                                          ; preds = %max77843_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %cond = select i1 %cmp.i, ptr @.str.57, ptr @.str.56
  %prev_cable_type = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 7
  %9 = ptrtoint ptr %prev_cable_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prev_cable_type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77843_muic_adc_handler.__UNIQUE_ID_ddebug292, ptr noundef %8, ptr noundef nonnull @.str.66, ptr noundef nonnull %cond, i32 noundef %cable_type.0.i, i32 noundef %10) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %max77843_muic_get_cable_type.exit
  %11 = zext i32 %cable_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %cable_type.0.i, label %do.end29 [
    i32 16, label %sw.bb
    i32 0, label %sw.bb9
    i32 24, label %do.end.sw.bb14_crit_edge
    i32 25, label %do.end.sw.bb14_crit_edge61
    i32 28, label %do.end.sw.bb14_crit_edge62
    i32 1, label %do.end.do.end23_crit_edge
    i32 2, label %do.end.do.end23_crit_edge63
    i32 3, label %do.end.do.end23_crit_edge64
    i32 4, label %do.end.do.end23_crit_edge65
    i32 5, label %do.end.do.end23_crit_edge66
    i32 6, label %do.end.do.end23_crit_edge67
    i32 7, label %do.end.do.end23_crit_edge68
    i32 8, label %do.end.do.end23_crit_edge69
    i32 9, label %do.end.do.end23_crit_edge70
    i32 10, label %do.end.do.end23_crit_edge71
    i32 11, label %do.end.do.end23_crit_edge72
    i32 12, label %do.end.do.end23_crit_edge73
    i32 13, label %do.end.do.end23_crit_edge74
    i32 14, label %do.end.do.end23_crit_edge75
    i32 15, label %do.end.do.end23_crit_edge76
    i32 17, label %do.end.do.end23_crit_edge77
    i32 18, label %do.end.do.end23_crit_edge78
    i32 19, label %do.end.do.end23_crit_edge79
    i32 20, label %do.end.do.end23_crit_edge80
    i32 21, label %do.end.do.end23_crit_edge81
    i32 22, label %do.end.do.end23_crit_edge82
    i32 23, label %do.end.do.end23_crit_edge83
    i32 26, label %do.end.do.end23_crit_edge84
    i32 27, label %do.end.do.end23_crit_edge85
    i32 29, label %do.end.do.end23_crit_edge86
    i32 30, label %do.end.do.end23_crit_edge87
    i32 31, label %do.end.do.end23_crit_edge88
  ]

do.end.do.end23_crit_edge88:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge87:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge86:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge85:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge84:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge83:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge82:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge81:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge80:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge79:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge78:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge77:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge76:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge75:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge74:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge73:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge72:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge71:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge70:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge69:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge68:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge67:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge66:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge65:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge64:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge63:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.do.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end.sw.bb14_crit_edge62:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14

do.end.sw.bb14_crit_edge61:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14

do.end.sw.bb14_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14

sw.bb:                                            ; preds = %do.end
  %call6 = tail call fastcc i32 @max77843_muic_dock_handler(ptr noundef %info, i1 noundef zeroext %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb9:                                           ; preds = %do.end
  %call10 = tail call fastcc i32 @max77843_muic_adc_gnd_handler(ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %sw.bb9.cleanup_crit_edge, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb14:                                          ; preds = %do.end.sw.bb14_crit_edge, %do.end.sw.bb14_crit_edge61, %do.end.sw.bb14_crit_edge62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77843_muic_jig_handler.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max77843_muic_adc_handler, %if.then.i51)) #5
          to label %do.end.i [label %if.then.i51], !srcloc !221

if.then.i51:                                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %cond.i = select i1 %cmp.i, ptr @.str.57, ptr @.str.56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77843_muic_jig_handler.__UNIQUE_ID_ddebug290, ptr noundef %13, ptr noundef nonnull @.str.77, ptr noundef nonnull %cond.i, i32 noundef %cable_type.0.i) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i51, %sw.bb14
  %14 = zext i32 %cable_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %cable_type.0.i, label %do.end.i.cleanup_crit_edge [
    i32 24, label %do.end.i.sw.epilog.i_crit_edge
    i32 25, label %do.end.i.sw.epilog.i_crit_edge89
    i32 28, label %sw.bb5.i
  ]

do.end.i.sw.epilog.i_crit_edge89:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end.i.sw.epilog.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb5.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %do.end.i.sw.epilog.i_crit_edge, %do.end.i.sw.epilog.i_crit_edge89
  %path.0.i = phi i8 [ 27, %sw.bb5.i ], [ 9, %do.end.i.sw.epilog.i_crit_edge ], [ 9, %do.end.i.sw.epilog.i_crit_edge89 ]
  %call7.i = tail call fastcc i32 @max77843_muic_set_path(ptr noundef %info, i8 noundef zeroext %path.0.i, i1 noundef zeroext %6, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i52 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i52, label %sw.epilog.i.cleanup_crit_edge, label %max77843_muic_jig_handler.exit

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

max77843_muic_jig_handler.exit:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %edev.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edev.i, align 4
  %call11.i = tail call i32 @extcon_set_state_sync(ptr noundef %16, i32 noundef 61, i1 noundef zeroext %6) #5
  br label %sw.epilog

do.end23:                                         ; preds = %do.end.do.end23_crit_edge, %do.end.do.end23_crit_edge63, %do.end.do.end23_crit_edge64, %do.end.do.end23_crit_edge65, %do.end.do.end23_crit_edge66, %do.end.do.end23_crit_edge67, %do.end.do.end23_crit_edge68, %do.end.do.end23_crit_edge69, %do.end.do.end23_crit_edge70, %do.end.do.end23_crit_edge71, %do.end.do.end23_crit_edge72, %do.end.do.end23_crit_edge73, %do.end.do.end23_crit_edge74, %do.end.do.end23_crit_edge75, %do.end.do.end23_crit_edge76, %do.end.do.end23_crit_edge77, %do.end.do.end23_crit_edge78, %do.end.do.end23_crit_edge79, %do.end.do.end23_crit_edge80, %do.end.do.end23_crit_edge81, %do.end.do.end23_crit_edge82, %do.end.do.end23_crit_edge83, %do.end.do.end23_crit_edge84, %do.end.do.end23_crit_edge85, %do.end.do.end23_crit_edge86, %do.end.do.end23_crit_edge87, %do.end.do.end23_crit_edge88
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 4
  %cond26 = select i1 %cmp.i, ptr @.str.57, ptr @.str.56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.67, ptr noundef nonnull %cond26, i32 noundef %cable_type.0.i) #8
  br label %cleanup

do.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 4
  %cond32 = select i1 %cmp.i, ptr @.str.57, ptr @.str.56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.69, ptr noundef nonnull %cond32, i32 noundef %cable_type.0.i) #8
  br label %cleanup

sw.epilog:                                        ; preds = %max77843_muic_jig_handler.exit, %sw.bb9.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end29, %do.end23, %sw.epilog.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end29 ], [ -11, %do.end23 ], [ 0, %sw.epilog ], [ %call6, %sw.bb.cleanup_crit_edge ], [ %call10, %sw.bb9.cleanup_crit_edge ], [ %call7.i, %sw.epilog.i.cleanup_crit_edge ], [ -22, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77843_muic_chg_handler(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status.i, align 4
  %arrayidx6.i = getelementptr %struct.max77843_muic_info, ptr %info, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6.i, align 1
  %4 = and i8 %3, 7
  %and8.i = zext i8 %4 to i32
  %trunc.i = trunc i8 %1 to i5
  %5 = zext i5 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.109)
  switch i5 %trunc.i, label %if.end31.i [
    i5 0, label %if.then11.i
    i5 -16, label %if.then22.i
  ]

if.then11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp12.i = icmp eq i8 %4, 0
  %prev_chg_type.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 8
  br i1 %cmp12.i, label %if.then14.i, label %if.else16.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %prev_chg_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prev_chg_type.i, align 4
  store i32 0, ptr %prev_chg_type.i, align 4
  br label %max77843_muic_get_cable_type.exit

if.else16.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %prev_chg_type.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %prev_chg_type.i, align 4
  br label %max77843_muic_get_cable_type.exit

if.then22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp23.i = icmp eq i8 %4, 0
  %prev_chg_type26.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 8
  br i1 %cmp23.i, label %if.then25.i, label %if.else28.i

if.then25.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %prev_chg_type26.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prev_chg_type26.i, align 4
  store i32 0, ptr %prev_chg_type26.i, align 4
  br label %max77843_muic_get_cable_type.exit

if.else28.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %prev_chg_type26.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 9, ptr %prev_chg_type26.i, align 4
  br label %max77843_muic_get_cable_type.exit

if.end31.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp32.i = icmp eq i8 %4, 0
  %prev_chg_type35.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 8
  br i1 %cmp32.i, label %if.then34.i, label %if.else37.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev_chg_type35.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prev_chg_type35.i, align 4
  store i32 0, ptr %prev_chg_type35.i, align 4
  br label %max77843_muic_get_cable_type.exit

if.else37.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %prev_chg_type35.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and8.i, ptr %prev_chg_type35.i, align 4
  br label %max77843_muic_get_cable_type.exit

max77843_muic_get_cable_type.exit:                ; preds = %if.else37.i, %if.then34.i, %if.else28.i, %if.then25.i, %if.else16.i, %if.then14.i
  %tobool4.not = phi ptr [ @.str.57, %if.then14.i ], [ @.str.56, %if.else16.i ], [ @.str.57, %if.then25.i ], [ @.str.56, %if.else28.i ], [ @.str.57, %if.then34.i ], [ @.str.56, %if.else37.i ]
  %tobool64 = phi i1 [ false, %if.then14.i ], [ true, %if.else16.i ], [ false, %if.then25.i ], [ true, %if.else28.i ], [ false, %if.then34.i ], [ true, %if.else37.i ]
  %cable_type.0.i = phi i32 [ %7, %if.then14.i ], [ 8, %if.else16.i ], [ %10, %if.then25.i ], [ 9, %if.else28.i ], [ %13, %if.then34.i ], [ %and8.i, %if.else37.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77843_muic_chg_handler.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max77843_muic_chg_handler, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !221

if.then:                                          ; preds = %max77843_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  %prev_chg_type = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 8
  %17 = ptrtoint ptr %prev_chg_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prev_chg_type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77843_muic_chg_handler.__UNIQUE_ID_ddebug293, ptr noundef %16, ptr noundef nonnull @.str.79, ptr noundef nonnull %tobool4.not, i32 noundef %cable_type.0.i, i32 noundef %18) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %max77843_muic_get_cable_type.exit
  %19 = zext i32 %cable_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %cable_type.0.i, label %do.end68 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb23
    i32 4, label %sw.bb32
    i32 5, label %sw.bb41
    i32 8, label %sw.bb50
    i32 9, label %sw.bb62
    i32 0, label %do.end.cleanup_crit_edge
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %call6 = tail call fastcc i32 @max77843_muic_set_path(ptr noundef %info, i8 noundef zeroext 9, i1 noundef zeroext %tobool64, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end8

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %edev = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edev, align 4
  %call10 = tail call i32 @extcon_set_state_sync(ptr noundef %21, i32 noundef 1, i1 noundef zeroext %tobool64) #5
  %22 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edev, align 4
  %call13 = tail call i32 @extcon_set_state_sync(ptr noundef %23, i32 noundef 5, i1 noundef zeroext %tobool64) #5
  br label %cleanup

sw.bb14:                                          ; preds = %do.end
  %call16 = tail call fastcc i32 @max77843_muic_set_path(ptr noundef %info, i8 noundef zeroext 0, i1 noundef zeroext %tobool64, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %sw.bb14.cleanup_crit_edge, label %if.end19

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  %edev20 = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %24 = ptrtoint ptr %edev20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edev20, align 4
  %call22 = tail call i32 @extcon_set_state_sync(ptr noundef %25, i32 noundef 7, i1 noundef zeroext %tobool64) #5
  br label %cleanup

sw.bb23:                                          ; preds = %do.end
  %call25 = tail call fastcc i32 @max77843_muic_set_path(ptr noundef %info, i8 noundef zeroext 0, i1 noundef zeroext %tobool64, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %sw.bb23.cleanup_crit_edge, label %if.end28

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  %edev29 = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %26 = ptrtoint ptr %edev29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %edev29, align 4
  %call31 = tail call i32 @extcon_set_state_sync(ptr noundef %27, i32 noundef 6, i1 noundef zeroext %tobool64) #5
  br label %cleanup

sw.bb32:                                          ; preds = %do.end
  %call34 = tail call fastcc i32 @max77843_muic_set_path(ptr noundef %info, i8 noundef zeroext 0, i1 noundef zeroext %tobool64, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %sw.bb32.cleanup_crit_edge, label %if.end37

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  %edev38 = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %28 = ptrtoint ptr %edev38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %edev38, align 4
  %call40 = tail call i32 @extcon_set_state_sync(ptr noundef %29, i32 noundef 10, i1 noundef zeroext %tobool64) #5
  br label %cleanup

sw.bb41:                                          ; preds = %do.end
  %call43 = tail call fastcc i32 @max77843_muic_set_path(ptr noundef %info, i8 noundef zeroext 0, i1 noundef zeroext %tobool64, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %sw.bb41.cleanup_crit_edge, label %if.end46

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #7
  %edev47 = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %30 = ptrtoint ptr %edev47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %edev47, align 4
  %call49 = tail call i32 @extcon_set_state_sync(ptr noundef %31, i32 noundef 9, i1 noundef zeroext %tobool64) #5
  br label %cleanup

sw.bb50:                                          ; preds = %do.end
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %status.i, align 4
  %34 = and i8 %33, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %34)
  %cmp41.i = icmp eq i8 %34, 31
  br i1 %cmp41.i, label %if.then43.i, label %if.else45.i

if.then43.i:                                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  %prev_gnd_type.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 9
  %35 = ptrtoint ptr %prev_gnd_type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prev_gnd_type.i, align 4
  store i32 31, ptr %prev_gnd_type.i, align 4
  br label %max77843_muic_get_cable_type.exit111

if.else45.i:                                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  %37 = and i8 %33, -128
  %38 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx6.i, align 1
  %40 = and i8 %39, 64
  %or98.i = or i8 %40, %37
  %41 = lshr exact i8 %or98.i, 6
  %42 = zext i8 %41 to i32
  %or55.i = or i32 %42, 256
  %prev_gnd_type56.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 9
  %43 = ptrtoint ptr %prev_gnd_type56.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or55.i, ptr %prev_gnd_type56.i, align 4
  br label %max77843_muic_get_cable_type.exit111

max77843_muic_get_cable_type.exit111:             ; preds = %if.else45.i, %if.then43.i
  %cable_type.0.i110 = phi i32 [ %36, %if.then43.i ], [ %or55.i, %if.else45.i ]
  %44 = zext i32 %cable_type.0.i110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %cable_type.0.i110, label %max77843_muic_get_cable_type.exit111.cleanup_crit_edge [
    i32 259, label %if.then53
    i32 258, label %if.then57
  ]

max77843_muic_get_cable_type.exit111.cleanup_crit_edge: ; preds = %max77843_muic_get_cable_type.exit111
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then53:                                        ; preds = %max77843_muic_get_cable_type.exit111
  call void @__sanitizer_cov_trace_pc() #7
  %edev54 = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %45 = ptrtoint ptr %edev54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %edev54, align 4
  %call55 = tail call i32 @extcon_set_state_sync(ptr noundef %46, i32 noundef 6, i1 noundef zeroext true) #5
  br label %cleanup

if.then57:                                        ; preds = %max77843_muic_get_cable_type.exit111
  call void @__sanitizer_cov_trace_pc() #7
  %edev58 = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %47 = ptrtoint ptr %edev58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %edev58, align 4
  %call59 = tail call i32 @extcon_set_state_sync(ptr noundef %48, i32 noundef 6, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb62:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %edev63 = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %49 = ptrtoint ptr %edev63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %edev63, align 4
  %call65 = tail call i32 @extcon_set_state_sync(ptr noundef %50, i32 noundef 6, i1 noundef zeroext %tobool64) #5
  br label %cleanup

do.end68:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.80, ptr noundef nonnull %tobool4.not, i32 noundef %cable_type.0.i) #8
  %call73 = tail call fastcc i32 @max77843_muic_set_path(ptr noundef %info, i8 noundef zeroext 0, i1 noundef zeroext %tobool64, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %sw.bb62, %if.then57, %if.then53, %max77843_muic_get_cable_type.exit111.cleanup_crit_edge, %if.end46, %sw.bb41.cleanup_crit_edge, %if.end37, %sw.bb32.cleanup_crit_edge, %if.end28, %sw.bb23.cleanup_crit_edge, %if.end19, %sw.bb14.cleanup_crit_edge, %if.end8, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end68 ], [ %call6, %sw.bb.cleanup_crit_edge ], [ %call16, %sw.bb14.cleanup_crit_edge ], [ %call25, %sw.bb23.cleanup_crit_edge ], [ %call34, %sw.bb32.cleanup_crit_edge ], [ %call43, %sw.bb41.cleanup_crit_edge ], [ 0, %max77843_muic_get_cable_type.exit111.cleanup_crit_edge ], [ 0, %if.then53 ], [ 0, %if.then57 ], [ %cable_type.0.i, %do.end.cleanup_crit_edge ], [ 0, %sw.bb62 ], [ 0, %if.end46 ], [ 0, %if.end37 ], [ 0, %if.end28 ], [ 0, %if.end19 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77843_muic_dock_handler(ptr nocapture noundef readonly %info, i1 noundef zeroext %attached) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77843_muic_dock_handler.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max77843_muic_dock_handler, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !221

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %cond = select i1 %attached, ptr @.str.56, ptr @.str.57
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77843_muic_dock_handler.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.72, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call7 = tail call fastcc i32 @max77843_muic_set_path(ptr noundef %info, i8 noundef zeroext 9, i1 noundef zeroext %attached, i1 noundef zeroext %attached)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %edev = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edev, align 4
  %call11 = tail call i32 @extcon_set_state_sync(ptr noundef %3, i32 noundef 41, i1 noundef zeroext %attached) #5
  %4 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev, align 4
  %call14 = tail call i32 @extcon_set_state_sync(ptr noundef %5, i32 noundef 2, i1 noundef zeroext %attached) #5
  %6 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edev, align 4
  %call17 = tail call i32 @extcon_set_state_sync(ptr noundef %7, i32 noundef 60, i1 noundef zeroext %attached) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call7, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77843_muic_adc_gnd_handler(ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status.i, align 4
  %2 = and i8 %1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %2)
  %cmp41.i = icmp eq i8 %2, 31
  br i1 %cmp41.i, label %if.then43.i, label %if.else45.i

if.then43.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_gnd_type.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 9
  %3 = ptrtoint ptr %prev_gnd_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prev_gnd_type.i, align 4
  store i32 31, ptr %prev_gnd_type.i, align 4
  br label %max77843_muic_get_cable_type.exit

if.else45.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = and i8 %1, -128
  %arrayidx51.i = getelementptr %struct.max77843_muic_info, ptr %info, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx51.i, align 1
  %8 = and i8 %7, 64
  %or98.i = or i8 %8, %5
  %9 = lshr exact i8 %or98.i, 6
  %10 = zext i8 %9 to i32
  %or55.i = or i32 %10, 256
  %prev_gnd_type56.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 9
  %11 = ptrtoint ptr %prev_gnd_type56.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or55.i, ptr %prev_gnd_type56.i, align 4
  br label %max77843_muic_get_cable_type.exit

max77843_muic_get_cable_type.exit:                ; preds = %if.else45.i, %if.then43.i
  %cable_type.0.i = phi i32 [ %4, %if.then43.i ], [ %or55.i, %if.else45.i ]
  %12 = xor i1 %cmp41.i, true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77843_muic_adc_gnd_handler.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max77843_muic_adc_gnd_handler, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !221

if.then:                                          ; preds = %max77843_muic_get_cable_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %cond = select i1 %cmp41.i, ptr @.str.57, ptr @.str.56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77843_muic_adc_gnd_handler.__UNIQUE_ID_ddebug289, ptr noundef %14, ptr noundef nonnull @.str.74, ptr noundef nonnull %cond, i32 noundef %cable_type.0.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %max77843_muic_get_cable_type.exit
  %15 = zext i32 %cable_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %cable_type.0.i, label %do.end23 [
    i32 256, label %do.end.sw.bb_crit_edge
    i32 257, label %do.end.sw.bb_crit_edge48
    i32 259, label %do.end.sw.bb12_crit_edge
    i32 258, label %do.end.sw.bb12_crit_edge49
  ]

do.end.sw.bb12_crit_edge49:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

do.end.sw.bb12_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

do.end.sw.bb_crit_edge48:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge48
  %call6 = tail call fastcc i32 @max77843_muic_set_path(ptr noundef %info, i8 noundef zeroext 9, i1 noundef zeroext %12, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end8

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %edev = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edev, align 4
  %call10 = tail call i32 @extcon_set_state_sync(ptr noundef %17, i32 noundef 2, i1 noundef zeroext %12) #5
  %max778431.i = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 1
  %18 = ptrtoint ptr %max778431.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %max778431.i, align 4
  %..i = select i1 %cmp41.i, i32 5, i32 10
  %regmap_chg.i = getelementptr inbounds %struct.max77693_dev, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %regmap_chg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap_chg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 183, i32 noundef 15, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb12:                                          ; preds = %do.end.sw.bb12_crit_edge, %do.end.sw.bb12_crit_edge49
  %call14 = tail call fastcc i32 @max77843_muic_set_path(ptr noundef %info, i8 noundef zeroext 0, i1 noundef zeroext %12, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %sw.bb12.cleanup_crit_edge, label %if.end17

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %edev18 = getelementptr inbounds %struct.max77843_muic_info, ptr %info, i32 0, i32 2
  %22 = ptrtoint ptr %edev18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edev18, align 4
  %call20 = tail call i32 @extcon_set_state_sync(ptr noundef %23, i32 noundef 41, i1 noundef zeroext %12) #5
  br label %cleanup

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  %cond26 = select i1 %cmp41.i, ptr @.str.57, ptr @.str.56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.75, ptr noundef nonnull %cond26, i32 noundef %cable_type.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end17, %sw.bb12.cleanup_crit_edge, %if.end8, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end23 ], [ %call6, %sw.bb.cleanup_crit_edge ], [ %call14, %sw.bb12.cleanup_crit_edge ], [ 0, %if.end17 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @__initcall__kmod_extcon_max77843__294_963_max77843_muic_init4, !1, !"__initcall__kmod_extcon_max77843__294_963_max77843_muic_init4", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-max77843.c", i32 963, i32 1}
!2 = !{ptr @__UNIQUE_ID_description295, !3, !"__UNIQUE_ID_description295", i1 false, i1 false}
!3 = !{!"../drivers/extcon/extcon-max77843.c", i32 965, i32 1}
!4 = !{ptr @__UNIQUE_ID_author296, !5, !"__UNIQUE_ID_author296", i1 false, i1 false}
!5 = !{!"../drivers/extcon/extcon-max77843.c", i32 966, i32 1}
!6 = !{ptr @__UNIQUE_ID_file297, !7, !"__UNIQUE_ID_file297", i1 false, i1 false}
!7 = !{!"../drivers/extcon/extcon-max77843.c", i32 967, i32 1}
!8 = !{ptr @__UNIQUE_ID_license298, !7, !"__UNIQUE_ID_license298", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/extcon/extcon-max77843.c", i32 952, i32 12}
!11 = !{ptr @max77843_muic_driver, !12, !"max77843_muic_driver", i1 false, i1 false}
!12 = !{!"../drivers/extcon/extcon-max77843.c", i32 950, i32 31}
!13 = !{ptr @max77843_muic_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/extcon/extcon-max77843.c", i32 827, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/extcon/extcon-max77843.c", i32 832, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @max77843_muic_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @max77843_muic_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/extcon/extcon-max77843.c", i32 847, i32 3}
!26 = !{ptr @max77843_muic_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @max77843_muic_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/extcon/extcon-max77843.c", i32 854, i32 3}
!30 = !{ptr @max77843_muic_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @max77843_muic_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/extcon/extcon-max77843.c", i32 866, i32 3}
!34 = !{ptr @max77843_muic_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @max77843_muic_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/extcon/extcon-max77843.c", i32 878, i32 3}
!38 = !{ptr @max77843_muic_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @max77843_muic_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/extcon/extcon-max77843.c", i32 881, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @max77843_muic_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @max77843_muic_probe._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @max77843_muic_probe.__key.23, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/extcon/extcon-max77843.c", i32 884, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/extcon/extcon-max77843.c", i32 891, i32 3}
!50 = !{ptr @max77843_muic_probe._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @max77843_muic_probe._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/extcon/extcon-max77843.c", i32 911, i32 4}
!54 = !{ptr @max77843_muic_probe._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @max77843_muic_probe._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @max77843_muic_probe.__key.31, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/extcon/extcon-max77843.c", i32 919, i32 2}
!58 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @max77843_muic_probe.__key.33, !57, !"__key", i1 false, i1 false}
!60 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/extcon/extcon-max77843.c", i32 780, i32 3}
!63 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @max77843_init_muic_regmap._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @max77843_init_muic_regmap._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @max77843_init_muic_regmap._key, !67, !"_key", i1 false, i1 false}
!67 = !{!"../drivers/extcon/extcon-max77843.c", i32 787, i32 26}
!68 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/extcon/extcon-max77843.c", i32 798, i32 3}
!71 = !{ptr @max77843_init_muic_regmap._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @max77843_init_muic_regmap._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @max77843_muic_regmap_config, !74, !"max77843_muic_regmap_config", i1 false, i1 false}
!74 = !{!"../drivers/extcon/extcon-max77843.c", i32 159, i32 35}
!75 = !{ptr @max77843_muic_irq_chip, !76, !"max77843_muic_irq_chip", i1 false, i1 false}
!76 = !{!"../drivers/extcon/extcon-max77843.c", i32 189, i32 37}
!77 = !{ptr @max77843_muic_irq, !78, !"max77843_muic_irq", i1 false, i1 false}
!78 = !{!"../drivers/extcon/extcon-max77843.c", i32 165, i32 32}
!79 = !{ptr @max77843_extcon_cable, !80, !"max77843_extcon_cable", i1 false, i1 false}
!80 = !{!"../drivers/extcon/extcon-max77843.c", i32 120, i32 27}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/extcon/extcon-max77843.c", i32 761, i32 4}
!83 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @max77843_muic_set_debounce_time._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @max77843_muic_set_debounce_time._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/extcon/extcon-max77843.c", i32 766, i32 3}
!88 = !{ptr @max77843_muic_set_debounce_time._entry.44, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @max77843_muic_set_debounce_time._entry_ptr.46, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/extcon/extcon-max77843.c", i32 361, i32 3}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @max77843_muic_get_cable_type._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @max77843_muic_get_cable_type._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/extcon/extcon-max77843.c", i32 221, i32 3}
!97 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @max77843_muic_set_path._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @max77843_muic_set_path._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/extcon/extcon-max77843.c", i32 235, i32 3}
!102 = !{ptr @max77843_muic_set_path._entry.51, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @max77843_muic_set_path._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/extcon/extcon-max77843.c", i32 239, i32 2}
!106 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @max77843_muic_set_path.__UNIQUE_ID_ddebug288, !105, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!108 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/extcon/extcon-max77843.c", i32 640, i32 3}
!112 = !{ptr @max77843_muic_irq_work._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @max77843_muic_irq_work._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/extcon/extcon-max77843.c", i32 648, i32 4}
!116 = !{ptr @max77843_muic_irq_work._entry.59, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @max77843_muic_irq_work._entry_ptr.61, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/extcon/extcon-max77843.c", i32 655, i32 4}
!120 = !{ptr @max77843_muic_irq_work._entry.62, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @max77843_muic_irq_work._entry_ptr.64, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/extcon/extcon-max77843.c", i32 468, i32 2}
!124 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @max77843_muic_adc_handler.__UNIQUE_ID_ddebug292, !123, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/extcon/extcon-max77843.c", i32 518, i32 3}
!128 = !{ptr @max77843_muic_adc_handler._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @max77843_muic_adc_handler._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/extcon/extcon-max77843.c", i32 523, i32 3}
!132 = !{ptr @max77843_muic_adc_handler._entry.68, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @max77843_muic_adc_handler._entry_ptr.70, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/extcon/extcon-max77843.c", i32 445, i32 2}
!136 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @max77843_muic_dock_handler.__UNIQUE_ID_ddebug291, !135, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/extcon/extcon-max77843.c", i32 376, i32 2}
!140 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @max77843_muic_adc_gnd_handler.__UNIQUE_ID_ddebug289, !139, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!142 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/extcon/extcon-max77843.c", i32 402, i32 3}
!144 = !{ptr @max77843_muic_adc_gnd_handler._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @max77843_muic_adc_gnd_handler._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/extcon/extcon-max77843.c", i32 416, i32 2}
!148 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @max77843_muic_jig_handler.__UNIQUE_ID_ddebug290, !147, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/extcon/extcon-max77843.c", i32 540, i32 2}
!152 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @max77843_muic_chg_handler.__UNIQUE_ID_ddebug293, !151, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/extcon/extcon-max77843.c", i32 615, i32 3}
!156 = !{ptr @max77843_muic_chg_handler._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @max77843_muic_chg_handler._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/extcon/extcon-max77843.c", i32 141, i32 33}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/extcon/extcon-max77843.c", i32 142, i32 37}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/extcon/extcon-max77843.c", i32 143, i32 35}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/extcon/extcon-max77843.c", i32 144, i32 35}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/extcon/extcon-max77843.c", i32 145, i32 38}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/extcon/extcon-max77843.c", i32 146, i32 35}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/extcon/extcon-max77843.c", i32 147, i32 35}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/extcon/extcon-max77843.c", i32 148, i32 35}
!174 = !{ptr @.str.89, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/extcon/extcon-max77843.c", i32 149, i32 35}
!176 = !{ptr @.str.90, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/extcon/extcon-max77843.c", i32 150, i32 35}
!178 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/extcon/extcon-max77843.c", i32 151, i32 35}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/extcon/extcon-max77843.c", i32 152, i32 35}
!182 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/extcon/extcon-max77843.c", i32 153, i32 37}
!184 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/extcon/extcon-max77843.c", i32 154, i32 35}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/extcon/extcon-max77843.c", i32 155, i32 36}
!188 = !{ptr @.str.96, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/extcon/extcon-max77843.c", i32 156, i32 35}
!190 = !{ptr @max77843_muic_irqs, !191, !"max77843_muic_irqs", i1 false, i1 false}
!191 = !{!"../drivers/extcon/extcon-max77843.c", i32 140, i32 33}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/extcon/extcon-max77843.c", i32 694, i32 3}
!194 = !{ptr @.str.98, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @max77843_muic_irq_handler._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @max77843_muic_irq_handler._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/extcon/extcon-max77843.c", i32 717, i32 3}
!199 = !{ptr @max77843_muic_detect_cable_wq._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @max77843_muic_detect_cable_wq._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/extcon/extcon-max77843.c", i32 726, i32 4}
!203 = !{ptr @max77843_muic_detect_cable_wq._entry.100, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @max77843_muic_detect_cable_wq._entry_ptr.102, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/extcon/extcon-max77843.c", i32 736, i32 4}
!207 = !{ptr @max77843_muic_detect_cable_wq._entry.103, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @max77843_muic_detect_cable_wq._entry_ptr.105, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @max77843_muic_id, !210, !"max77843_muic_id", i1 false, i1 false}
!210 = !{!"../drivers/extcon/extcon-max77843.c", i32 944, i32 40}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{!"auto-init"}
!221 = !{i64 2148316824, i64 2148316829, i64 2148316842, i64 2148316886, i64 2148316920, i64 2148316941}
!222 = !{i8 0, i8 2}
