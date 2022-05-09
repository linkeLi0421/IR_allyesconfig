; ModuleID = '/llk/IR_all_yes/drivers/mfd/da9062-core.c_pt.bc'
source_filename = "../drivers/mfd/da9062-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.da9062 = type { ptr, ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_da9062_core__296_753_da9062_i2c_driver_init6 = internal global ptr @da9062_i2c_driver_init, section ".initcall6.init", align 4
@da9062_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @da9062_i2c_probe, ptr @da9062_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9062_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da9062_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_da9062_i2c_driver_exit = internal global ptr @da9062_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [72 x i8] c"da9062_core.description=Core device driver for Dialog DA9061 and DA9062\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [63 x i8] c"da9062_core.author=Steve Twiss <stwiss.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [41 x i8] c"da9062_core.file=drivers/mfd/da9062-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [24 x i8] c"da9062_core.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da9062\00", [25 x i8] zeroinitializer }, align 32
@da9062_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9061\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9062\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@da9062_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da9061\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"da9062\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 648, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No IRQ configured\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9062_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/da9062-core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry_ptr = internal global ptr @da9062_i2c_probe._entry, section ".printk_index", align 4
@da9061_devs = internal constant { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @da9061_core_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @da9061_regulators_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.36, i64 0, i8 0, ptr null, i32 1, ptr @da9061_wdt_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.38, i64 0, i8 0, ptr null, i32 1, ptr @da9061_thermal_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.40, i64 0, i8 0, ptr null, i32 1, ptr @da9061_onkey_resources, i8 0, i8 0, ptr null, i32 0 }], [104 x i8] zeroinitializer }, align 32
@da9061_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 388, ptr @da9061_aa_writeable_table, ptr @da9061_aa_readable_table, ptr @da9061_aa_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @da9061_range_cfg, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@da9062_devs = internal constant { [7 x %struct.mfd_cell], [152 x i8] } { [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.48, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @da9062_core_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @da9062_regulators_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.49, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.50, i64 0, i8 0, ptr null, i32 1, ptr @da9062_wdt_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.51, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.52, i64 0, i8 0, ptr null, i32 1, ptr @da9062_thermal_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.53, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.54, i64 0, i8 0, ptr null, i32 2, ptr @da9062_rtc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.55, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.56, i64 0, i8 0, ptr null, i32 1, ptr @da9062_onkey_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.57, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.58, i64 0, i8 0, ptr null, i32 5, ptr @da9062_gpio_resources, i8 0, i8 0, ptr null, i32 0 }], [152 x i8] zeroinitializer }, align 32
@da9062_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 388, ptr @da9062_aa_writeable_table, ptr @da9062_aa_readable_table, ptr @da9062_aa_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @da9062_range_cfg, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 666, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unrecognised chip type\0A\00", [40 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry_ptr.8 = internal global ptr @da9062_i2c_probe._entry.6, section ".printk_index", align 4
@da9062_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"da9062_core:670:(config)->lock\00", [33 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 674, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry_ptr.12 = internal global ptr @da9062_i2c_probe._entry.10, section ".printk_index", align 4
@da9062_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 680, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Entering I2C mode!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry_ptr.16 = internal global ptr @da9062_i2c_probe._entry.13, section ".printk_index", align 4
@da9062_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 684, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set Two-Wire Bus Mode.\0A\00", [62 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry_ptr.19 = internal global ptr @da9062_i2c_probe._entry.17, section ".printk_index", align 4
@da9062_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 691, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot clear fault log\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry_ptr.23 = internal global ptr @da9062_i2c_probe._entry.20, section ".printk_index", align 4
@da9062_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 699, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to configure IRQ type\0A\00", [34 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry_ptr.26 = internal global ptr @da9062_i2c_probe._entry.24, section ".printk_index", align 4
@da9062_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 708, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry_ptr.29 = internal global ptr @da9062_i2c_probe._entry.27, section ".printk_index", align 4
@da9062_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 718, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot register child devices\0A\00", [33 x i8] zeroinitializer }, align 32
@da9062_i2c_probe._entry_ptr.32 = internal global ptr @da9062_i2c_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9061-core\00", [20 x i8] zeroinitializer }, align 32
@da9061_core_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 6, i32 6, ptr @.str.41, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da9062-regulators\00", [46 x i8] zeroinitializer }, align 32
@da9061_regulators_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 4, i32 4, ptr @.str.42, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9061-watchdog\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlg,da9061-watchdog\00", [44 x i8] zeroinitializer }, align 32
@da9061_wdt_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 1, i32 1, ptr @.str.43, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da9061-thermal\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlg,da9061-thermal\00", [45 x i8] zeroinitializer }, align 32
@da9061_thermal_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 3, i32 3, ptr @.str.44, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9061-onkey\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlg,da9061-onkey\00", [47 x i8] zeroinitializer }, align 32
@da9061_onkey_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.45, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VDD_WARN\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO_LIM\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WD_WARN\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"THERMAL\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ONKEY\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9061-irq\00", [21 x i8] zeroinitializer }, align 32
@da9061_irqs = internal global { [12 x %struct.regmap_irq], [112 x i8] } { [12 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }], [112 x i8] zeroinitializer }, align 32
@da9061_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.46, i32 0, i32 0, ptr null, i32 0, i32 6, i32 10, i32 0, i32 6, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 3, ptr @da9061_irqs, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@da9061_aa_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9061_aa_writeable_ranges, i32 23, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9061_aa_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9061_aa_readable_ranges, i32 27, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9061_aa_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9061_aa_volatile_ranges, i32 9, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9061_range_cfg = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 388, i32 0, i32 2, i32 1, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@da9061_aa_writeable_ranges = internal constant { [23 x %struct.regmap_range], [40 x i8] } { [23 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 8 }, %struct.regmap_range { i32 10, i32 12 }, %struct.regmap_range { i32 14, i32 23 }, %struct.regmap_range { i32 28, i32 31 }, %struct.regmap_range { i32 33, i32 34 }, %struct.regmap_range { i32 36, i32 36 }, %struct.regmap_range { i32 38, i32 41 }, %struct.regmap_range { i32 50, i32 50 }, %struct.regmap_range { i32 129, i32 132 }, %struct.regmap_range { i32 136, i32 138 }, %struct.regmap_range { i32 141, i32 146 }, %struct.regmap_range { i32 149, i32 151 }, %struct.regmap_range { i32 153, i32 156 }, %struct.regmap_range { i32 158, i32 160 }, %struct.regmap_range { i32 164, i32 165 }, %struct.regmap_range { i32 167, i32 167 }, %struct.regmap_range { i32 169, i32 172 }, %struct.regmap_range { i32 262, i32 262 }, %struct.regmap_range { i32 181, i32 182 }, %struct.regmap_range { i32 184, i32 184 }, %struct.regmap_range { i32 186, i32 189 }, %struct.regmap_range { i32 289, i32 308 }], [40 x i8] zeroinitializer }, align 32
@da9061_aa_readable_ranges = internal constant { [27 x %struct.regmap_range], [40 x i8] } { [27 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 4, i32 8 }, %struct.regmap_range { i32 10, i32 12 }, %struct.regmap_range { i32 14, i32 23 }, %struct.regmap_range { i32 28, i32 31 }, %struct.regmap_range { i32 33, i32 34 }, %struct.regmap_range { i32 36, i32 36 }, %struct.regmap_range { i32 38, i32 41 }, %struct.regmap_range { i32 50, i32 50 }, %struct.regmap_range { i32 129, i32 132 }, %struct.regmap_range { i32 136, i32 138 }, %struct.regmap_range { i32 141, i32 146 }, %struct.regmap_range { i32 149, i32 151 }, %struct.regmap_range { i32 153, i32 156 }, %struct.regmap_range { i32 158, i32 160 }, %struct.regmap_range { i32 164, i32 165 }, %struct.regmap_range { i32 167, i32 167 }, %struct.regmap_range { i32 169, i32 172 }, %struct.regmap_range { i32 262, i32 262 }, %struct.regmap_range { i32 181, i32 182 }, %struct.regmap_range { i32 184, i32 184 }, %struct.regmap_range { i32 186, i32 189 }, %struct.regmap_range { i32 261, i32 266 }, %struct.regmap_range { i32 268, i32 272 }, %struct.regmap_range { i32 274, i32 274 }, %struct.regmap_range { i32 289, i32 308 }, %struct.regmap_range { i32 385, i32 388 }], [40 x i8] zeroinitializer }, align 32
@da9061_aa_volatile_ranges = internal constant { [9 x %struct.regmap_range], [56 x i8] } { [9 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 4, i32 8 }, %struct.regmap_range { i32 14, i32 15 }, %struct.regmap_range { i32 18, i32 19 }, %struct.regmap_range { i32 33, i32 34 }, %struct.regmap_range { i32 36, i32 36 }, %struct.regmap_range { i32 38, i32 41 }, %struct.regmap_range { i32 50, i32 50 }, %struct.regmap_range { i32 129, i32 129 }], [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9062-core\00", [20 x i8] zeroinitializer }, align 32
@da9062_core_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 8, i32 8, ptr @.str.41, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@da9062_regulators_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 6, i32 6, ptr @.str.42, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9062-watchdog\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlg,da9062-watchdog\00", [44 x i8] zeroinitializer }, align 32
@da9062_wdt_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 3, i32 3, ptr @.str.43, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da9062-thermal\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlg,da9062-thermal\00", [45 x i8] zeroinitializer }, align 32
@da9062_thermal_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr @.str.44, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9062-rtc\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlg,da9062-rtc\00", [17 x i8] zeroinitializer }, align 32
@da9062_rtc_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 1, i32 1, ptr @.str.59, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 2, i32 2, ptr @.str.60, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9062-onkey\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlg,da9062-onkey\00", [47 x i8] zeroinitializer }, align 32
@da9062_onkey_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.45, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9062-gpio\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlg,da9062-gpio\00", [16 x i8] zeroinitializer }, align 32
@da9062_gpio_resources = internal constant { [5 x %struct.resource], [32 x i8] } { [5 x %struct.resource] [%struct.resource { i32 9, i32 9, ptr @.str.61, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 10, i32 10, ptr @.str.62, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 11, i32 11, ptr @.str.63, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 12, i32 12, ptr @.str.64, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 13, i32 13, ptr @.str.65, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ALARM\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TICK\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPI0\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPI1\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPI2\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPI3\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPI4\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9062-irq\00", [21 x i8] zeroinitializer }, align 32
@da9062_irqs = internal global { [14 x %struct.regmap_irq], [104 x i8] } { [14 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }], [104 x i8] zeroinitializer }, align 32
@da9062_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.66, i32 0, i32 0, ptr null, i32 0, i32 6, i32 10, i32 0, i32 6, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 3, ptr @da9062_irqs, i32 14, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@da9062_aa_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9062_aa_writeable_ranges, i32 22, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9062_aa_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9062_aa_readable_ranges, i32 25, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9062_aa_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9062_aa_volatile_ranges, i32 11, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9062_range_cfg = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 388, i32 0, i32 2, i32 1, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@da9062_aa_writeable_ranges = internal constant { [22 x %struct.regmap_range], [48 x i8] } { [22 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 8 }, %struct.regmap_range { i32 10, i32 12 }, %struct.regmap_range { i32 14, i32 23 }, %struct.regmap_range { i32 28, i32 34 }, %struct.regmap_range { i32 36, i32 36 }, %struct.regmap_range { i32 38, i32 41 }, %struct.regmap_range { i32 50, i32 50 }, %struct.regmap_range { i32 64, i32 75 }, %struct.regmap_range { i32 129, i32 132 }, %struct.regmap_range { i32 136, i32 138 }, %struct.regmap_range { i32 141, i32 146 }, %struct.regmap_range { i32 149, i32 160 }, %struct.regmap_range { i32 163, i32 165 }, %struct.regmap_range { i32 167, i32 167 }, %struct.regmap_range { i32 169, i32 172 }, %struct.regmap_range { i32 180, i32 182 }, %struct.regmap_range { i32 184, i32 184 }, %struct.regmap_range { i32 186, i32 189 }, %struct.regmap_range { i32 197, i32 197 }, %struct.regmap_range { i32 271, i32 271 }, %struct.regmap_range { i32 289, i32 308 }], [48 x i8] zeroinitializer }, align 32
@da9062_aa_readable_ranges = internal constant { [25 x %struct.regmap_range], [56 x i8] } { [25 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 4, i32 8 }, %struct.regmap_range { i32 10, i32 12 }, %struct.regmap_range { i32 14, i32 23 }, %struct.regmap_range { i32 28, i32 34 }, %struct.regmap_range { i32 36, i32 36 }, %struct.regmap_range { i32 38, i32 41 }, %struct.regmap_range { i32 50, i32 50 }, %struct.regmap_range { i32 64, i32 79 }, %struct.regmap_range { i32 129, i32 132 }, %struct.regmap_range { i32 136, i32 138 }, %struct.regmap_range { i32 141, i32 146 }, %struct.regmap_range { i32 149, i32 160 }, %struct.regmap_range { i32 163, i32 165 }, %struct.regmap_range { i32 167, i32 167 }, %struct.regmap_range { i32 169, i32 172 }, %struct.regmap_range { i32 180, i32 182 }, %struct.regmap_range { i32 184, i32 184 }, %struct.regmap_range { i32 186, i32 189 }, %struct.regmap_range { i32 197, i32 197 }, %struct.regmap_range { i32 261, i32 266 }, %struct.regmap_range { i32 268, i32 272 }, %struct.regmap_range { i32 274, i32 274 }, %struct.regmap_range { i32 288, i32 308 }, %struct.regmap_range { i32 385, i32 388 }], [56 x i8] zeroinitializer }, align 32
@da9062_aa_volatile_ranges = internal constant { [11 x %struct.regmap_range], [40 x i8] } { [11 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 4, i32 8 }, %struct.regmap_range { i32 14, i32 15 }, %struct.regmap_range { i32 18, i32 19 }, %struct.regmap_range { i32 32, i32 34 }, %struct.regmap_range { i32 36, i32 36 }, %struct.regmap_range { i32 38, i32 41 }, %struct.regmap_range { i32 50, i32 50 }, %struct.regmap_range { i32 64, i32 79 }, %struct.regmap_range { i32 129, i32 129 }, %struct.regmap_range { i32 152, i32 152 }], [40 x i8] zeroinitializer }, align 32
@da9062_clear_fault_log.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9062_core\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9062_clear_fault_log\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: TWD_ERROR\0A\00", [59 x i8] zeroinitializer }, align 32
@da9062_clear_fault_log.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.3, ptr @.str.71, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Fault log entry detected: POR\0A\00", [33 x i8] zeroinitializer }, align 32
@da9062_clear_fault_log.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.3, ptr @.str.72, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: VDD_FAULT\0A\00", [59 x i8] zeroinitializer }, align 32
@da9062_clear_fault_log.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.3, ptr @.str.73, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: VDD_START\0A\00", [59 x i8] zeroinitializer }, align 32
@da9062_clear_fault_log.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.3, ptr @.str.74, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: TEMP_CRIT\0A\00", [59 x i8] zeroinitializer }, align 32
@da9062_clear_fault_log.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.3, ptr @.str.75, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: KEY_RESET\0A\00", [59 x i8] zeroinitializer }, align 32
@da9062_clear_fault_log.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.3, ptr @.str.76, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: NSHUTDOWN\0A\00", [59 x i8] zeroinitializer }, align 32
@da9062_clear_fault_log.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.3, ptr @.str.77, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fault log entry detected: WAIT_SHUT\0A\00", [59 x i8] zeroinitializer }, align 32
@da9062_get_device_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot read chip ID.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9062_get_device_type\00", [41 x i8] zeroinitializer }, align 32
@da9062_get_device_type._entry_ptr = internal global ptr @da9062_get_device_type._entry, section ".printk_index", align 4
@da9062_get_device_type._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid device ID: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@da9062_get_device_type._entry_ptr.82 = internal global ptr @da9062_get_device_type._entry.80, section ".printk_index", align 4
@da9062_get_device_type._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot read chip variant id.\0A\00", [34 x i8] zeroinitializer }, align 32
@da9062_get_device_type._entry_ptr.85 = internal global ptr @da9062_get_device_type._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9061\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9062\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@da9062_get_device_type._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.79, ptr @.str.3, i32 363, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Device detected (device-ID: 0x%02X, var-ID: 0x%02X, %s)\0A\00", [39 x i8] zeroinitializer }, align 32
@da9062_get_device_type._entry_ptr.91 = internal global ptr @da9062_get_device_type._entry.89, section ".printk_index", align 4
@da9062_get_device_type._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.79, ptr @.str.3, i32 369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot support variant MRC: 0x%02X\0A\00", [60 x i8] zeroinitializer }, align 32
@da9062_get_device_type._entry_ptr.94 = internal global ptr @da9062_get_device_type._entry.92, section ".printk_index", align 4
@da9062_configure_irq_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid IRQ: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"da9062_configure_irq_type\00", [38 x i8] zeroinitializer }, align 32
@da9062_configure_irq_type._entry_ptr = internal global ptr @da9062_configure_irq_type._entry, section ".printk_index", align 4
@da9062_configure_irq_type._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.3, i32 395, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported IRQ type: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@da9062_configure_irq_type._entry_ptr.99 = internal global ptr @da9062_configure_irq_type._entry.97, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"da9062_i2c_driver\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 743, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 745, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"da9062_dt_ids\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 616, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"da9062_i2c_id\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 736, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 648, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"da9061_devs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 184, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant [21 x i8] c"da9061_regmap_config\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 498, i32 29 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"da9062_devs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 248, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"da9062_regmap_config\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 604, i32 29 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 666, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 670, i32 17 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 673, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 680, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 684, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 691, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 699, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 707, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 718, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 186, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant [22 x i8] c"da9061_core_resources\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 164, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 191, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant [28 x i8] c"da9061_regulators_resources\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 168, i32 30 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 196, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 199, i32 21 }
@___asan_gen_.221 = private unnamed_addr constant [21 x i8] c"da9061_wdt_resources\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 176, i32 30 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 202, i32 12 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 205, i32 21 }
@___asan_gen_.230 = private unnamed_addr constant [25 x i8] c"da9061_thermal_resources\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 172, i32 30 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 208, i32 12 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 211, i32 20 }
@___asan_gen_.239 = private unnamed_addr constant [23 x i8] c"da9061_onkey_resources\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 180, i32 30 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 165, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 169, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 177, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 173, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 181, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 83, i32 10 }
@___asan_gen_.260 = private unnamed_addr constant [12 x i8] c"da9061_irqs\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 28, i32 26 }
@___asan_gen_.263 = private unnamed_addr constant [16 x i8] c"da9061_irq_chip\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 82, i32 31 }
@___asan_gen_.266 = private unnamed_addr constant [26 x i8] c"da9061_aa_writeable_table\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 476, i32 41 }
@___asan_gen_.269 = private unnamed_addr constant [25 x i8] c"da9061_aa_readable_table\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 471, i32 41 }
@___asan_gen_.272 = private unnamed_addr constant [25 x i8] c"da9061_aa_volatile_table\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 481, i32 41 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"da9061_range_cfg\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 486, i32 38 }
@___asan_gen_.278 = private unnamed_addr constant [27 x i8] c"da9061_aa_writeable_ranges\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 433, i32 34 }
@___asan_gen_.281 = private unnamed_addr constant [26 x i8] c"da9061_aa_readable_ranges\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 403, i32 34 }
@___asan_gen_.284 = private unnamed_addr constant [26 x i8] c"da9061_aa_volatile_ranges\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 459, i32 34 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 250, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant [22 x i8] c"da9062_core_resources\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 215, i32 30 }
@___asan_gen_.293 = private unnamed_addr constant [28 x i8] c"da9062_regulators_resources\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 219, i32 30 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 260, i32 12 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 263, i32 21 }
@___asan_gen_.302 = private unnamed_addr constant [21 x i8] c"da9062_wdt_resources\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 227, i32 30 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 266, i32 12 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 269, i32 21 }
@___asan_gen_.311 = private unnamed_addr constant [25 x i8] c"da9062_thermal_resources\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 223, i32 30 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 272, i32 12 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 275, i32 21 }
@___asan_gen_.320 = private unnamed_addr constant [21 x i8] c"da9062_rtc_resources\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 231, i32 30 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 278, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 281, i32 20 }
@___asan_gen_.329 = private unnamed_addr constant [23 x i8] c"da9062_onkey_resources\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 236, i32 30 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 284, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 287, i32 20 }
@___asan_gen_.338 = private unnamed_addr constant [22 x i8] c"da9062_gpio_resources\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 240, i32 30 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 232, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 233, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 241, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 242, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 243, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 244, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 245, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 155, i32 10 }
@___asan_gen_.365 = private unnamed_addr constant [12 x i8] c"da9062_irqs\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 92, i32 26 }
@___asan_gen_.368 = private unnamed_addr constant [16 x i8] c"da9062_irq_chip\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 154, i32 31 }
@___asan_gen_.371 = private unnamed_addr constant [26 x i8] c"da9062_aa_writeable_table\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 582, i32 41 }
@___asan_gen_.374 = private unnamed_addr constant [25 x i8] c"da9062_aa_readable_table\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 577, i32 41 }
@___asan_gen_.377 = private unnamed_addr constant [25 x i8] c"da9062_aa_volatile_table\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 587, i32 41 }
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"da9062_range_cfg\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 592, i32 38 }
@___asan_gen_.383 = private unnamed_addr constant [27 x i8] c"da9062_aa_writeable_ranges\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 538, i32 34 }
@___asan_gen_.386 = private unnamed_addr constant [26 x i8] c"da9062_aa_readable_ranges\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 510, i32 34 }
@___asan_gen_.389 = private unnamed_addr constant [26 x i8] c"da9062_aa_volatile_ranges\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 563, i32 34 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 302, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 304, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 306, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 308, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 310, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 312, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 314, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 316, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 333, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 337, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 343, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 351, i32 10 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 354, i32 10 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 357, i32 10 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 361, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 368, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 382, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.477 = private constant [29 x i8] c"../drivers/mfd/da9062-core.c\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 395, i32 3 }
@llvm.compiler.used = appending global [149 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_da9062_i2c_driver_exit, ptr @__initcall__kmod_da9062_core__296_753_da9062_i2c_driver_init6, ptr @da9062_configure_irq_type._entry, ptr @da9062_configure_irq_type._entry.97, ptr @da9062_configure_irq_type._entry_ptr, ptr @da9062_configure_irq_type._entry_ptr.99, ptr @da9062_get_device_type._entry, ptr @da9062_get_device_type._entry.80, ptr @da9062_get_device_type._entry.83, ptr @da9062_get_device_type._entry.89, ptr @da9062_get_device_type._entry.92, ptr @da9062_get_device_type._entry_ptr, ptr @da9062_get_device_type._entry_ptr.82, ptr @da9062_get_device_type._entry_ptr.85, ptr @da9062_get_device_type._entry_ptr.91, ptr @da9062_get_device_type._entry_ptr.94, ptr @da9062_i2c_driver_exit, ptr @da9062_i2c_probe._entry, ptr @da9062_i2c_probe._entry.10, ptr @da9062_i2c_probe._entry.13, ptr @da9062_i2c_probe._entry.17, ptr @da9062_i2c_probe._entry.20, ptr @da9062_i2c_probe._entry.24, ptr @da9062_i2c_probe._entry.27, ptr @da9062_i2c_probe._entry.30, ptr @da9062_i2c_probe._entry.6, ptr @da9062_i2c_probe._entry_ptr, ptr @da9062_i2c_probe._entry_ptr.12, ptr @da9062_i2c_probe._entry_ptr.16, ptr @da9062_i2c_probe._entry_ptr.19, ptr @da9062_i2c_probe._entry_ptr.23, ptr @da9062_i2c_probe._entry_ptr.26, ptr @da9062_i2c_probe._entry_ptr.29, ptr @da9062_i2c_probe._entry_ptr.32, ptr @da9062_i2c_probe._entry_ptr.8, ptr @da9062_i2c_driver, ptr @.str, ptr @da9062_dt_ids, ptr @da9062_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @da9061_devs, ptr @da9061_regmap_config, ptr @da9062_devs, ptr @da9062_regmap_config, ptr @.str.7, ptr @da9062_i2c_probe._key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @da9061_core_resources, ptr @.str.34, ptr @da9061_regulators_resources, ptr @.str.35, ptr @.str.36, ptr @da9061_wdt_resources, ptr @.str.37, ptr @.str.38, ptr @da9061_thermal_resources, ptr @.str.39, ptr @.str.40, ptr @da9061_onkey_resources, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @da9061_irqs, ptr @da9061_irq_chip, ptr @da9061_aa_writeable_table, ptr @da9061_aa_readable_table, ptr @da9061_aa_volatile_table, ptr @da9061_range_cfg, ptr @da9061_aa_writeable_ranges, ptr @da9061_aa_readable_ranges, ptr @da9061_aa_volatile_ranges, ptr @.str.48, ptr @da9062_core_resources, ptr @da9062_regulators_resources, ptr @.str.49, ptr @.str.50, ptr @da9062_wdt_resources, ptr @.str.51, ptr @.str.52, ptr @da9062_thermal_resources, ptr @.str.53, ptr @.str.54, ptr @da9062_rtc_resources, ptr @.str.55, ptr @.str.56, ptr @da9062_onkey_resources, ptr @.str.57, ptr @.str.58, ptr @da9062_gpio_resources, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @da9062_irqs, ptr @da9062_irq_chip, ptr @da9062_aa_writeable_table, ptr @da9062_aa_readable_table, ptr @da9062_aa_volatile_table, ptr @da9062_range_cfg, ptr @da9062_aa_writeable_ranges, ptr @da9062_aa_readable_ranges, ptr @da9062_aa_volatile_ranges, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_devs to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_devs to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_core_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_regulators_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_wdt_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_thermal_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_onkey_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_irqs to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_aa_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_aa_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_aa_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_range_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_aa_writeable_ranges to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_aa_readable_ranges to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9061_aa_volatile_ranges to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_core_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_regulators_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_wdt_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_rtc_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_onkey_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_gpio_resources to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_irqs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_aa_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_aa_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_aa_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_range_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_aa_writeable_ranges to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_aa_readable_ranges to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_aa_volatile_ranges to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_get_device_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_get_device_type._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_get_device_type._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_get_device_type._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_get_device_type._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_configure_irq_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_configure_irq_type._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da9062_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9062_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @da9062_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %device_id.i = alloca i32, align 4
  %variant_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %2 = ptrtoint ptr %call5 to i32
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %.sink = phi i32 [ %4, %if.else ], [ %2, %if.then3 ]
  %5 = getelementptr inbounds %struct.da9062, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.end18 [
    i32 1, label %if.end13.sw.epilog_crit_edge
    i32 2, label %sw.bb15
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb15, %if.end13.sw.epilog_crit_edge
  %cell.0 = phi ptr [ @da9062_devs, %sw.bb15 ], [ @da9061_devs, %if.end13.sw.epilog_crit_edge ]
  %irq_chip.0 = phi ptr [ @da9062_irq_chip, %sw.bb15 ], [ @da9061_irq_chip, %if.end13.sw.epilog_crit_edge ]
  %config.0 = phi ptr [ @da9062_regmap_config, %sw.bb15 ], [ @da9061_regmap_config, %if.end13.sw.epilog_crit_edge ]
  %cell_num.0 = phi i32 [ 7, %sw.bb15 ], [ 5, %if.end13.sw.epilog_crit_edge ]
  %call20 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull %config.0, ptr noundef nonnull @da9062_i2c_probe._key, ptr noundef nonnull @.str.9) #5
  %regmap = getelementptr inbounds %struct.da9062, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call20, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end30

if.then23:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call20 to i32
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef %15) #8
  br label %cleanup

if.end30:                                         ; preds = %sw.epilog
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %23(ptr noundef %19) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not = icmp eq i32 %and.i, 0
  br i1 %tobool32.not, label %if.end30.if.end46_crit_edge, label %do.end36

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.end36:                                         ; preds = %if.end30
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.14) #8
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i151 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 271, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %cmp = icmp slt i32 %call.i151, 0
  br i1 %cmp, label %do.end43, label %do.end36.if.end46_crit_edge

do.end36.if.end46_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.end43:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end46:                                         ; preds = %do.end36.if.end46_crit_edge, %if.end30.if.end46_crit_edge
  %call47 = tail call fastcc i32 @da9062_clear_fault_log(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end52, label %if.end46.if.end54_crit_edge

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.21) #8
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %if.end46.if.end54_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_id.i) #5
  %32 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %device_id.i, align 4, !annotation !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %variant_id.i) #5
  %33 = ptrtoint ptr %variant_id.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %variant_id.i, align 4, !annotation !268
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i152 = call i32 @regmap_read(ptr noundef %35, i32 noundef 385, ptr noundef nonnull %device_id.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp.i153 = icmp slt i32 %call.i152, 0
  br i1 %cmp.i153, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.78) #8
  br label %da9062_get_device_type.exit.thread

if.end.i:                                         ; preds = %if.end54
  %38 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %39)
  %cmp1.not.i = icmp eq i32 %39, 98
  br i1 %cmp1.not.i, label %if.end7.i, label %do.end5.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.81, i32 noundef %39) #8
  br label %da9062_get_device_type.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call9.i = call i32 @regmap_read(ptr noundef %43, i32 noundef 386, ptr noundef nonnull %variant_id.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end14.i, label %if.end16.i

do.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.84) #8
  br label %da9062_get_device_type.exit.thread

if.end16.i:                                       ; preds = %if.end7.i
  %46 = ptrtoint ptr %variant_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %variant_id.i, align 4
  %and.i154 = and i32 %47, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i154)
  %switch.selectcmp.i = icmp eq i32 %and.i154, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.87, ptr @.str.88
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i154)
  %switch.selectcmp45.i = icmp eq i32 %and.i154, 1
  %switch.select46.i = select i1 %switch.selectcmp45.i, ptr @.str.86, ptr %switch.select.i
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %50 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %device_id.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.90, i32 noundef %51, i32 noundef %47, ptr noundef nonnull %switch.select46.i) #8
  %52 = ptrtoint ptr %variant_id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %variant_id.i, align 4
  %54 = and i32 %53, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp24.i = icmp eq i32 %54, 0
  br i1 %cmp24.i, label %do.end28.i, label %da9062_get_device_type.exit

do.end28.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.93, i32 noundef 0) #8
  br label %da9062_get_device_type.exit.thread

da9062_get_device_type.exit.thread:               ; preds = %do.end28.i, %do.end14.i, %do.end5.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -19, %do.end28.i ], [ -5, %do.end14.i ], [ -19, %do.end5.i ], [ -5, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %variant_id.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_id.i) #5
  br label %cleanup

da9062_get_device_type.exit:                      ; preds = %if.end16.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %variant_id.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_id.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool56.not = icmp eq i32 %call9.i, 0
  br i1 %tobool56.not, label %if.end58, label %da9062_get_device_type.exit.cleanup_crit_edge

da9062_get_device_type.exit.cleanup_crit_edge:    ; preds = %da9062_get_device_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end58:                                         ; preds = %da9062_get_device_type.exit
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 4
  %call.i155 = call ptr @irq_get_irq_data(i32 noundef %58) #5
  %tobool.not.i = icmp eq ptr %call.i155, null
  br i1 %tobool.not.i, label %do.end.i156, label %if.end.i157

do.end.i156:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.95, i32 noundef %58) #8
  br label %do.end65

if.end.i157:                                      ; preds = %if.end58
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i155, i32 0, i32 3
  %61 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %common.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %and.i.i = and i32 %64, 15
  %65 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %and.i.i, label %do.end5.i158 [
    i32 4, label %if.end.i157.da9062_configure_irq_type.exit_crit_edge
    i32 8, label %sw.bb2.i
  ]

if.end.i157.da9062_configure_irq_type.exit_crit_edge: ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9062_configure_irq_type.exit

sw.bb2.i:                                         ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9062_configure_irq_type.exit

do.end5.i158:                                     ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.98, i32 noundef %and.i.i) #8
  br label %do.end65

da9062_configure_irq_type.exit:                   ; preds = %sw.bb2.i, %if.end.i157.da9062_configure_irq_type.exit_crit_edge
  %irq_type.0.i = phi i32 [ 0, %sw.bb2.i ], [ 8, %if.end.i157.da9062_configure_irq_type.exit_crit_edge ]
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call.i.i160 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 262, i32 noundef 8, i32 noundef %irq_type.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160)
  %cmp61 = icmp slt i32 %call.i.i160, 0
  br i1 %cmp61, label %da9062_configure_irq_type.exit.do.end65_crit_edge, label %if.end67

da9062_configure_irq_type.exit.do.end65_crit_edge: ; preds = %da9062_configure_irq_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

do.end65:                                         ; preds = %da9062_configure_irq_type.exit.do.end65_crit_edge, %do.end5.i158, %do.end.i156
  %retval.0.i161167 = phi i32 [ %call.i.i160, %da9062_configure_irq_type.exit.do.end65_crit_edge ], [ -22, %do.end5.i158 ], [ -22, %do.end.i156 ]
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end67:                                         ; preds = %da9062_configure_irq_type.exit
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  %or70 = or i32 %and.i.i, 8320
  %regmap_irq = getelementptr inbounds %struct.da9062, ptr %call.i, i32 0, i32 2
  %call71 = call i32 @regmap_add_irq_chip(ptr noundef %73, i32 noundef %75, i32 noundef %or70, i32 noundef -1, ptr noundef nonnull %irq_chip.0, ptr noundef %regmap_irq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end79, label %do.end76

do.end76:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %78 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.28, i32 noundef %79, i32 noundef %call71) #8
  br label %cleanup

if.end79:                                         ; preds = %if.end67
  %80 = ptrtoint ptr %regmap_irq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap_irq, align 4
  %call81 = call i32 @regmap_irq_chip_get_base(ptr noundef %81) #5
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 4
  %call83 = call i32 @mfd_add_devices(ptr noundef %83, i32 noundef -1, ptr noundef nonnull %cell.0, i32 noundef %cell_num.0, ptr noundef null, i32 noundef %call81, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end79.cleanup_crit_edge, label %do.end88

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end88:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.31) #8
  %86 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %irq, align 4
  %88 = ptrtoint ptr %regmap_irq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap_irq, align 4
  call void @regmap_del_irq_chip(i32 noundef %87, ptr noundef %89) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %if.end79.cleanup_crit_edge, %do.end76, %do.end65, %da9062_get_device_type.exit.cleanup_crit_edge, %da9062_get_device_type.exit.thread, %do.end43, %if.then23, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end18 ], [ %15, %if.then23 ], [ %call.i151, %do.end43 ], [ %retval.0.i161167, %do.end65 ], [ %call71, %do.end76 ], [ %call83, %do.end88 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call9.i, %da9062_get_device_type.exit.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ], [ %retval.0.i.ph, %da9062_get_device_type.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_i2c_remove(ptr nocapture noundef readonly %i2c) #2 align 64 {
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
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %regmap_irq = getelementptr inbounds %struct.da9062, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_irq, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %5, ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da9062_clear_fault_log(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  %fault_log = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fault_log) #5
  %0 = ptrtoint ptr %fault_log to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fault_log, align 4, !annotation !268
  %regmap = getelementptr inbounds %struct.da9062, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %fault_log) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fault_log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then1.if.end10_crit_edge, label %do.body

if.then1.if.end10_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9062_clear_fault_log, %if.then8)) #5
          to label %if.end10 [label %if.then8], !srcloc !269

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9062_clear_fault_log.__UNIQUE_ID_ddebug288, ptr noundef %6, ptr noundef nonnull @.str.70) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %if.then1.if.end10_crit_edge
  %7 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fault_log, align 4
  %and11 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end31_crit_edge, label %do.body14

if.end10.if.end31_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

do.body14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9062_clear_fault_log, %if.then26)) #5
          to label %if.end31 [label %if.then26], !srcloc !269

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9062_clear_fault_log.__UNIQUE_ID_ddebug289, ptr noundef %10, ptr noundef nonnull @.str.71) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %do.body14, %if.end10.if.end31_crit_edge
  %11 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fault_log, align 4
  %and32 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end52_crit_edge, label %do.body35

if.end31.if.end52_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.body35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9062_clear_fault_log, %if.then47)) #5
          to label %if.end52 [label %if.then47], !srcloc !269

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9062_clear_fault_log.__UNIQUE_ID_ddebug290, ptr noundef %14, ptr noundef nonnull @.str.72) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %do.body35, %if.end31.if.end52_crit_edge
  %15 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fault_log, align 4
  %and53 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end73_crit_edge, label %do.body56

if.end52.if.end73_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

do.body56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9062_clear_fault_log, %if.then68)) #5
          to label %if.end73 [label %if.then68], !srcloc !269

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9062_clear_fault_log.__UNIQUE_ID_ddebug291, ptr noundef %18, ptr noundef nonnull @.str.73) #5
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %do.body56, %if.end52.if.end73_crit_edge
  %19 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fault_log, align 4
  %and74 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end94_crit_edge, label %do.body77

if.end73.if.end94_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

do.body77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9062_clear_fault_log, %if.then89)) #5
          to label %if.end94 [label %if.then89], !srcloc !269

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9062_clear_fault_log.__UNIQUE_ID_ddebug292, ptr noundef %22, ptr noundef nonnull @.str.74) #5
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %do.body77, %if.end73.if.end94_crit_edge
  %23 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fault_log, align 4
  %and95 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end115_crit_edge, label %do.body98

if.end94.if.end115_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

do.body98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9062_clear_fault_log, %if.then110)) #5
          to label %if.end115 [label %if.then110], !srcloc !269

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9062_clear_fault_log.__UNIQUE_ID_ddebug293, ptr noundef %26, ptr noundef nonnull @.str.75) #5
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %do.body98, %if.end94.if.end115_crit_edge
  %27 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fault_log, align 4
  %and116 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end136_crit_edge, label %do.body119

if.end115.if.end136_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

do.body119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9062_clear_fault_log, %if.then131)) #5
          to label %if.end136 [label %if.then131], !srcloc !269

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9062_clear_fault_log.__UNIQUE_ID_ddebug294, ptr noundef %30, ptr noundef nonnull @.str.76) #5
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %do.body119, %if.end115.if.end136_crit_edge
  %31 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fault_log, align 4
  %and137 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.if.end157_crit_edge, label %do.body140

if.end136.if.end157_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157

do.body140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9062_clear_fault_log, %if.then152)) #5
          to label %if.end157 [label %if.then152], !srcloc !269

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9062_clear_fault_log.__UNIQUE_ID_ddebug295, ptr noundef %34, ptr noundef nonnull @.str.77) #5
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %do.body140, %if.end136.if.end157_crit_edge
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %37 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fault_log, align 4
  %call159 = call i32 @regmap_write(ptr noundef %36, i32 noundef 5, i32 noundef %38) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call159, %if.end157 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fault_log) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_chip_get_base(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !196, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !236, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257}
!llvm.module.flags = !{!259, !260, !261, !262, !263, !264, !265, !266}
!llvm.ident = !{!267}

!0 = !{ptr @__initcall__kmod_da9062_core__296_753_da9062_i2c_driver_init6, !1, !"__initcall__kmod_da9062_core__296_753_da9062_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/da9062-core.c", i32 753, i32 1}
!2 = !{ptr @__exitcall_da9062_i2c_driver_exit, !1, !"__exitcall_da9062_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../drivers/mfd/da9062-core.c", i32 755, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/mfd/da9062-core.c", i32 756, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/mfd/da9062-core.c", i32 757, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/da9062-core.c", i32 745, i32 11}
!12 = !{ptr @da9062_i2c_driver, !13, !"da9062_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/mfd/da9062-core.c", i32 743, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/da9062-core.c", i32 648, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @da9062_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @da9062_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/da9062-core.c", i32 666, i32 3}
!24 = !{ptr @da9062_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @da9062_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @da9062_i2c_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/mfd/da9062-core.c", i32 670, i32 17}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/da9062-core.c", i32 673, i32 3}
!31 = !{ptr @da9062_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @da9062_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/da9062-core.c", i32 680, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @da9062_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @da9062_i2c_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/da9062-core.c", i32 684, i32 4}
!40 = !{ptr @da9062_i2c_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @da9062_i2c_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/da9062-core.c", i32 691, i32 3}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @da9062_i2c_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @da9062_i2c_probe._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/da9062-core.c", i32 699, i32 3}
!49 = !{ptr @da9062_i2c_probe._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @da9062_i2c_probe._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/da9062-core.c", i32 707, i32 3}
!53 = !{ptr @da9062_i2c_probe._entry.27, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @da9062_i2c_probe._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/da9062-core.c", i32 718, i32 3}
!57 = !{ptr @da9062_i2c_probe._entry.30, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @da9062_i2c_probe._entry_ptr.32, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/da9062-core.c", i32 186, i32 12}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/da9062-core.c", i32 191, i32 12}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/da9062-core.c", i32 196, i32 12}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/da9062-core.c", i32 199, i32 21}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/da9062-core.c", i32 202, i32 12}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mfd/da9062-core.c", i32 205, i32 21}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/da9062-core.c", i32 208, i32 12}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/da9062-core.c", i32 211, i32 20}
!75 = !{ptr @da9061_devs, !76, !"da9061_devs", i1 false, i1 false}
!76 = !{!"../drivers/mfd/da9062-core.c", i32 184, i32 30}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mfd/da9062-core.c", i32 165, i32 2}
!79 = !{ptr @da9061_core_resources, !80, !"da9061_core_resources", i1 false, i1 false}
!80 = !{!"../drivers/mfd/da9062-core.c", i32 164, i32 30}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mfd/da9062-core.c", i32 169, i32 2}
!83 = !{ptr @da9061_regulators_resources, !84, !"da9061_regulators_resources", i1 false, i1 false}
!84 = !{!"../drivers/mfd/da9062-core.c", i32 168, i32 30}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/da9062-core.c", i32 177, i32 2}
!87 = !{ptr @da9061_wdt_resources, !88, !"da9061_wdt_resources", i1 false, i1 false}
!88 = !{!"../drivers/mfd/da9062-core.c", i32 176, i32 30}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mfd/da9062-core.c", i32 173, i32 2}
!91 = !{ptr @da9061_thermal_resources, !92, !"da9061_thermal_resources", i1 false, i1 false}
!92 = !{!"../drivers/mfd/da9062-core.c", i32 172, i32 30}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mfd/da9062-core.c", i32 181, i32 2}
!95 = !{ptr @da9061_onkey_resources, !96, !"da9061_onkey_resources", i1 false, i1 false}
!96 = !{!"../drivers/mfd/da9062-core.c", i32 180, i32 30}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/da9062-core.c", i32 83, i32 10}
!99 = !{ptr @da9061_irq_chip, !100, !"da9061_irq_chip", i1 false, i1 false}
!100 = !{!"../drivers/mfd/da9062-core.c", i32 82, i32 31}
!101 = !{ptr @da9061_irqs, !102, !"da9061_irqs", i1 false, i1 false}
!102 = !{!"../drivers/mfd/da9062-core.c", i32 28, i32 26}
!103 = !{ptr @da9061_regmap_config, !104, !"da9061_regmap_config", i1 false, i1 false}
!104 = !{!"../drivers/mfd/da9062-core.c", i32 498, i32 29}
!105 = !{ptr @da9061_aa_writeable_table, !106, !"da9061_aa_writeable_table", i1 false, i1 false}
!106 = !{!"../drivers/mfd/da9062-core.c", i32 476, i32 41}
!107 = !{ptr @da9061_aa_writeable_ranges, !108, !"da9061_aa_writeable_ranges", i1 false, i1 false}
!108 = !{!"../drivers/mfd/da9062-core.c", i32 433, i32 34}
!109 = !{ptr @da9061_aa_readable_table, !110, !"da9061_aa_readable_table", i1 false, i1 false}
!110 = !{!"../drivers/mfd/da9062-core.c", i32 471, i32 41}
!111 = !{ptr @da9061_aa_readable_ranges, !112, !"da9061_aa_readable_ranges", i1 false, i1 false}
!112 = !{!"../drivers/mfd/da9062-core.c", i32 403, i32 34}
!113 = !{ptr @da9061_aa_volatile_table, !114, !"da9061_aa_volatile_table", i1 false, i1 false}
!114 = !{!"../drivers/mfd/da9062-core.c", i32 481, i32 41}
!115 = !{ptr @da9061_aa_volatile_ranges, !116, !"da9061_aa_volatile_ranges", i1 false, i1 false}
!116 = !{!"../drivers/mfd/da9062-core.c", i32 459, i32 34}
!117 = !{ptr @da9061_range_cfg, !118, !"da9061_range_cfg", i1 false, i1 false}
!118 = !{!"../drivers/mfd/da9062-core.c", i32 486, i32 38}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mfd/da9062-core.c", i32 250, i32 12}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mfd/da9062-core.c", i32 260, i32 12}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mfd/da9062-core.c", i32 263, i32 21}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mfd/da9062-core.c", i32 266, i32 12}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mfd/da9062-core.c", i32 269, i32 21}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mfd/da9062-core.c", i32 272, i32 12}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mfd/da9062-core.c", i32 275, i32 21}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mfd/da9062-core.c", i32 278, i32 12}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mfd/da9062-core.c", i32 281, i32 20}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mfd/da9062-core.c", i32 284, i32 12}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mfd/da9062-core.c", i32 287, i32 20}
!141 = !{ptr @da9062_devs, !142, !"da9062_devs", i1 false, i1 false}
!142 = !{!"../drivers/mfd/da9062-core.c", i32 248, i32 30}
!143 = !{ptr @da9062_core_resources, !144, !"da9062_core_resources", i1 false, i1 false}
!144 = !{!"../drivers/mfd/da9062-core.c", i32 215, i32 30}
!145 = !{ptr @da9062_regulators_resources, !146, !"da9062_regulators_resources", i1 false, i1 false}
!146 = !{!"../drivers/mfd/da9062-core.c", i32 219, i32 30}
!147 = !{ptr @da9062_wdt_resources, !148, !"da9062_wdt_resources", i1 false, i1 false}
!148 = !{!"../drivers/mfd/da9062-core.c", i32 227, i32 30}
!149 = !{ptr @da9062_thermal_resources, !150, !"da9062_thermal_resources", i1 false, i1 false}
!150 = !{!"../drivers/mfd/da9062-core.c", i32 223, i32 30}
!151 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mfd/da9062-core.c", i32 232, i32 2}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mfd/da9062-core.c", i32 233, i32 2}
!155 = !{ptr @da9062_rtc_resources, !156, !"da9062_rtc_resources", i1 false, i1 false}
!156 = !{!"../drivers/mfd/da9062-core.c", i32 231, i32 30}
!157 = !{ptr @da9062_onkey_resources, !158, !"da9062_onkey_resources", i1 false, i1 false}
!158 = !{!"../drivers/mfd/da9062-core.c", i32 236, i32 30}
!159 = !{ptr @.str.61, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mfd/da9062-core.c", i32 241, i32 2}
!161 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mfd/da9062-core.c", i32 242, i32 2}
!163 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mfd/da9062-core.c", i32 243, i32 2}
!165 = !{ptr @.str.64, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mfd/da9062-core.c", i32 244, i32 2}
!167 = !{ptr @.str.65, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mfd/da9062-core.c", i32 245, i32 2}
!169 = !{ptr @da9062_gpio_resources, !170, !"da9062_gpio_resources", i1 false, i1 false}
!170 = !{!"../drivers/mfd/da9062-core.c", i32 240, i32 30}
!171 = !{ptr @.str.66, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/mfd/da9062-core.c", i32 155, i32 10}
!173 = !{ptr @da9062_irq_chip, !174, !"da9062_irq_chip", i1 false, i1 false}
!174 = !{!"../drivers/mfd/da9062-core.c", i32 154, i32 31}
!175 = !{ptr @da9062_irqs, !176, !"da9062_irqs", i1 false, i1 false}
!176 = !{!"../drivers/mfd/da9062-core.c", i32 92, i32 26}
!177 = !{ptr @da9062_regmap_config, !178, !"da9062_regmap_config", i1 false, i1 false}
!178 = !{!"../drivers/mfd/da9062-core.c", i32 604, i32 29}
!179 = !{ptr @da9062_aa_writeable_table, !180, !"da9062_aa_writeable_table", i1 false, i1 false}
!180 = !{!"../drivers/mfd/da9062-core.c", i32 582, i32 41}
!181 = !{ptr @da9062_aa_writeable_ranges, !182, !"da9062_aa_writeable_ranges", i1 false, i1 false}
!182 = !{!"../drivers/mfd/da9062-core.c", i32 538, i32 34}
!183 = !{ptr @da9062_aa_readable_table, !184, !"da9062_aa_readable_table", i1 false, i1 false}
!184 = !{!"../drivers/mfd/da9062-core.c", i32 577, i32 41}
!185 = !{ptr @da9062_aa_readable_ranges, !186, !"da9062_aa_readable_ranges", i1 false, i1 false}
!186 = !{!"../drivers/mfd/da9062-core.c", i32 510, i32 34}
!187 = !{ptr @da9062_aa_volatile_table, !188, !"da9062_aa_volatile_table", i1 false, i1 false}
!188 = !{!"../drivers/mfd/da9062-core.c", i32 587, i32 41}
!189 = !{ptr @da9062_aa_volatile_ranges, !190, !"da9062_aa_volatile_ranges", i1 false, i1 false}
!190 = !{!"../drivers/mfd/da9062-core.c", i32 563, i32 34}
!191 = !{ptr @da9062_range_cfg, !192, !"da9062_range_cfg", i1 false, i1 false}
!192 = !{!"../drivers/mfd/da9062-core.c", i32 592, i32 38}
!193 = !{ptr @.str.68, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mfd/da9062-core.c", i32 302, i32 4}
!195 = !{ptr @.str.69, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.70, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug288, !194, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!198 = !{ptr @.str.71, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/mfd/da9062-core.c", i32 304, i32 4}
!200 = !{ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug289, !199, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!201 = !{ptr @.str.72, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mfd/da9062-core.c", i32 306, i32 4}
!203 = !{ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug290, !202, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!204 = !{ptr @.str.73, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mfd/da9062-core.c", i32 308, i32 4}
!206 = !{ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug291, !205, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!207 = !{ptr @.str.74, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/mfd/da9062-core.c", i32 310, i32 4}
!209 = !{ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug292, !208, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!210 = !{ptr @.str.75, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mfd/da9062-core.c", i32 312, i32 4}
!212 = !{ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug293, !211, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!213 = !{ptr @.str.76, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/mfd/da9062-core.c", i32 314, i32 4}
!215 = !{ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug294, !214, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!216 = !{ptr @.str.77, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mfd/da9062-core.c", i32 316, i32 4}
!218 = !{ptr @da9062_clear_fault_log.__UNIQUE_ID_ddebug295, !217, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!219 = !{ptr @.str.78, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mfd/da9062-core.c", i32 333, i32 3}
!221 = !{ptr @.str.79, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @da9062_get_device_type._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @da9062_get_device_type._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.81, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mfd/da9062-core.c", i32 337, i32 3}
!226 = !{ptr @da9062_get_device_type._entry.80, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @da9062_get_device_type._entry_ptr.82, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.84, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/mfd/da9062-core.c", i32 343, i32 3}
!230 = !{ptr @da9062_get_device_type._entry.83, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @da9062_get_device_type._entry_ptr.85, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.86, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/mfd/da9062-core.c", i32 351, i32 10}
!234 = !{ptr @.str.87, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/mfd/da9062-core.c", i32 354, i32 10}
!236 = !{ptr @.str.88, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mfd/da9062-core.c", i32 357, i32 10}
!238 = !{ptr @.str.90, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/mfd/da9062-core.c", i32 361, i32 2}
!240 = !{ptr @da9062_get_device_type._entry.89, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @da9062_get_device_type._entry_ptr.91, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.93, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/mfd/da9062-core.c", i32 368, i32 3}
!244 = !{ptr @da9062_get_device_type._entry.92, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @da9062_get_device_type._entry_ptr.94, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.95, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/mfd/da9062-core.c", i32 382, i32 3}
!248 = !{ptr @.str.96, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @da9062_configure_irq_type._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @da9062_configure_irq_type._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.98, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mfd/da9062-core.c", i32 395, i32 3}
!253 = !{ptr @da9062_configure_irq_type._entry.97, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @da9062_configure_irq_type._entry_ptr.99, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @da9062_dt_ids, !256, !"da9062_dt_ids", i1 false, i1 false}
!256 = !{!"../drivers/mfd/da9062-core.c", i32 616, i32 34}
!257 = !{ptr @da9062_i2c_id, !258, !"da9062_i2c_id", i1 false, i1 false}
!258 = !{!"../drivers/mfd/da9062-core.c", i32 736, i32 35}
!259 = !{i32 1, !"wchar_size", i32 2}
!260 = !{i32 1, !"min_enum_size", i32 4}
!261 = !{i32 8, !"branch-target-enforcement", i32 0}
!262 = !{i32 8, !"sign-return-address", i32 0}
!263 = !{i32 8, !"sign-return-address-all", i32 0}
!264 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!265 = !{i32 7, !"uwtable", i32 1}
!266 = !{i32 7, !"frame-pointer", i32 2}
!267 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!268 = !{!"auto-init"}
!269 = !{i64 2148713512, i64 2148713517, i64 2148713530, i64 2148713574, i64 2148713608, i64 2148713629}
