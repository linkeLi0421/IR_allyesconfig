; ModuleID = '/llk/IR_all_yes/drivers/mfd/max77620.c_pt.bc'
source_filename = "../drivers/mfd/max77620.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.max77620_chip = type { ptr, ptr, i32, i32, i8, i8, [3 x i32], [3 x i32], ptr, ptr }

@__initcall__kmod_max77620__293_705_max77620_driver_init6 = internal global ptr @max77620_driver_init, section ".initcall6.init", align 4
@max77620_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max77620_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77620_pm_ops, ptr null, ptr null }, ptr @max77620_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max77620\00", [23 x i8] zeroinitializer }, align 32
@max77620_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max77620_i2c_suspend, ptr @max77620_i2c_resume, ptr @max77620_i2c_suspend, ptr @max77620_i2c_resume, ptr @max77620_i2c_suspend, ptr @max77620_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max77620_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max77620\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max20024\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max77663\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@max77620_children = internal constant { [8 x %struct.mfd_cell], [160 x i8] } { [8 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.18, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @gpio_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.22, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @power_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.23, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @thermal_resources, i8 0, i8 0, ptr null, i32 0 }], [160 x i8] zeroinitializer }, align 32
@max77620_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.24, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 95, ptr @max77620_writable_table, ptr @max77620_readable_table, ptr @max77620_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@max20024_children = internal constant { [7 x %struct.mfd_cell], [152 x i8] } { [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.25, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.26, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @gpio_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.27, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @power_resources, i8 0, i8 0, ptr null, i32 0 }], [152 x i8] zeroinitializer }, align 32
@max20024_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.24, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 113, ptr @max77620_writable_table, ptr @max20024_readable_table, ptr @max77620_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@max77663_children = internal constant { [7 x %struct.mfd_cell], [152 x i8] } { [7 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.28, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @gpio_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @rtc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.29, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @power_resources, i8 0, i8 0, ptr null, i32 0 }], [152 x i8] zeroinitializer }, align 32
@max77663_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.24, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 94, ptr @max77663_writable_table, ptr @max77663_readable_table, ptr @max77620_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@max77620_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ChipID is invalid %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max77620_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mfd/max77620.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77620_probe._entry_ptr = internal global ptr @max77620_probe._entry, section ".printk_index", align 4
@max77620_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"max77620:535:(rmap_config)->lock\00", [63 x i8] zeroinitializer }, align 32
@max77620_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 538, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialise regmap: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@max77620_probe._entry_ptr.9 = internal global ptr @max77620_probe._entry.7, section ".printk_index", align 4
@max77620_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 552, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add regmap irq: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max77620_probe._entry_ptr.12 = internal global ptr @max77620_probe._entry.10, section ".printk_index", align 4
@max77620_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add MFD children: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@max77620_probe._entry_ptr.15 = internal global ptr @max77620_probe._entry.13, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@max77620_scratch = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max77620-pinctrl\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max77620-clock\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-pmic\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max77620-watchdog\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-gpio\00", [18 x i8] zeroinitializer }, align 32
@gpio_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 3, i32 3, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77620-rtc\00", [19 x i8] zeroinitializer }, align 32
@rtc_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 4, i32 4, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max77620-power\00", [17 x i8] zeroinitializer }, align 32
@power_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 7, i32 7, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max77620-thermal\00", [47 x i8] zeroinitializer }, align 32
@thermal_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 8, i32 8, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 9, i32 9, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power-slave\00", [20 x i8] zeroinitializer }, align 32
@max77620_writable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @max77620_writable_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@max77620_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @max77620_readable_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@max77620_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr null, i32 0, ptr @max77620_cacheable_ranges, i32 2 }, [16 x i8] zeroinitializer }, align 32
@max77620_writable_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 94 }], [24 x i8] zeroinitializer }, align 32
@max77620_readable_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 94 }], [24 x i8] zeroinitializer }, align 32
@max77620_cacheable_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 29, i32 53 }, %struct.regmap_range { i32 67, i32 82 }], [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max20024-pinctrl\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max20024-pmic\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max20024-power\00", [17 x i8] zeroinitializer }, align 32
@max20024_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @max20024_readable_ranges, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@max20024_readable_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 94 }, %struct.regmap_range { i32 112, i32 112 }], [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77663-pmic\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max77663-power\00", [17 x i8] zeroinitializer }, align 32
@max77663_writable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @max77663_writable_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@max77663_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @max77663_readable_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@max77663_writable_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 93 }], [24 x i8] zeroinitializer }, align 32
@max77663_readable_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 93 }], [24 x i8] zeroinitializer }, align 32
@max77620_read_es_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to read CID: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max77620_read_es_version\00", [39 x i8] zeroinitializer }, align 32
@max77620_read_es_version._entry_ptr = internal global ptr @max77620_read_es_version._entry, section ".printk_index", align 4
@max77620_read_es_version.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CID%d: 0x%02x\0A\00", [17 x i8] zeroinitializer }, align 32
@max77620_read_es_version._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.3, i32 481, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PMIC Version OTP:0x%02X and ES:0x%X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max77620_read_es_version._entry_ptr.36 = internal global ptr @max77620_read_es_version._entry.33, section ".printk_index", align 4
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77620-top\00", [19 x i8] zeroinitializer }, align 32
@max77620_top_irqs = internal constant { [10 x %struct.regmap_irq], [88 x i8] } { [10 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }], [88 x i8] zeroinitializer }, align 32
@max77620_top_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.37, i32 0, i32 0, ptr null, i32 0, i32 5, i32 13, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 2, ptr @max77620_top_irqs, i32 10, i32 0, i32 0, i32 0, ptr @max77620_irq_global_mask, ptr @max77620_irq_global_unmask, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@max77620_irq_global_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set GLBLM: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max77620_irq_global_mask\00", [39 x i8] zeroinitializer }, align 32
@max77620_irq_global_mask._entry_ptr = internal global ptr @max77620_irq_global_mask._entry, section ".printk_index", align 4
@max77620_irq_global_unmask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 252, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to reset GLBLM: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max77620_irq_global_unmask\00", [37 x i8] zeroinitializer }, align 32
@max77620_irq_global_unmask._entry_ptr = internal global ptr @max77620_irq_global_unmask._entry, section ".printk_index", align 4
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fps\00", [28 x i8] zeroinitializer }, align 32
@max77620_initialise_fps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to update SLP_LPM: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max77620_initialise_fps\00", [40 x i8] zeroinitializer }, align 32
@max77620_initialise_fps._entry_ptr = internal global ptr @max77620_initialise_fps._entry, section ".printk_index", align 4
@max77620_initialise_fps._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to update WK_EN0: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@max77620_initialise_fps._entry_ptr.48 = internal global ptr @max77620_initialise_fps._entry.46, section ".printk_index", align 4
@max77620_initialise_fps._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.3, i32 453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to update SLPEN: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@max77620_initialise_fps._entry_ptr.51 = internal global ptr @max77620_initialise_fps._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fps%d\00", [26 x i8] zeroinitializer }, align 32
@max77620_config_fps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FPS node name %pOFn is not valid\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max77620_config_fps\00", [44 x i8] zeroinitializer }, align 32
@max77620_config_fps._entry_ptr = internal global ptr @max77620_config_fps._entry, section ".printk_index", align 4
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"maxim,shutdown-fps-time-period-us\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"maxim,suspend-fps-time-period-us\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"maxim,fps-event-source\00", [41 x i8] zeroinitializer }, align 32
@max77620_config_fps._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FPS%d event-source invalid\0A\00", [36 x i8] zeroinitializer }, align 32
@max77620_config_fps._entry_ptr.60 = internal global ptr @max77620_config_fps._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"maxim,device-state-on-disabled-event\00", [59 x i8] zeroinitializer }, align 32
@max77620_config_fps._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.54, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to update FPS CFG: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max77620_config_fps._entry_ptr.64 = internal global ptr @max77620_config_fps._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system-power-controller\00", [40 x i8] zeroinitializer }, align 32
@max77620_i2c_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 625, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to configure sleep in suspend: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max77620_i2c_suspend\00", [43 x i8] zeroinitializer }, align 32
@max77620_i2c_suspend._entry_ptr = internal global ptr @max77620_i2c_suspend._entry, section ".printk_index", align 4
@max77620_i2c_suspend._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to configure WK_EN in suspend: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@max77620_i2c_suspend._entry_ptr.70 = internal global ptr @max77620_i2c_suspend._entry.68, section ".printk_index", align 4
@max77620_set_fps_period._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 588, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to update FPS period: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max77620_set_fps_period\00", [40 x i8] zeroinitializer }, align 32
@max77620_set_fps_period._entry_ptr = internal global ptr @max77620_set_fps_period._entry, section ".printk_index", align 4
@max77620_i2c_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to configure WK_EN0 n resume: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max77620_i2c_resume\00", [44 x i8] zeroinitializer }, align 32
@max77620_i2c_resume._entry_ptr = internal global ptr @max77620_i2c_resume._entry, section ".printk_index", align 4
@switch.table.max77620_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @max77620_regmap_config, ptr @max20024_regmap_config, ptr @max77663_regmap_config], [20 x i8] zeroinitializer }, align 32
@switch.table.max77620_probe.75 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @max77620_children, ptr @max20024_children, ptr @max77663_children], [20 x i8] zeroinitializer }, align 32
@switch.table.max77620_probe.76 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 7, i32 7], [20 x i8] zeroinitializer }, align 32
@switch.table.max77620_probe.77 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 5120, i32 2560, i32 2560], [20 x i8] zeroinitializer }, align 32
@switch.table.max77620_probe.78 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 40, i32 20, i32 20], [20 x i8] zeroinitializer }, align 32
@switch.table.max77620_i2c_suspend = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 40, i32 20, i32 20], [20 x i8] zeroinitializer }, align 32
@switch.table.max77620_i2c_suspend.79 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 40, i32 20, i32 20], [20 x i8] zeroinitializer }, align 32
@switch.table.max77620_i2c_suspend.80 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 40, i32 20, i32 20], [20 x i8] zeroinitializer }, align 32
@switch.table.max77620_i2c_resume = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 40, i32 20, i32 20], [20 x i8] zeroinitializer }, align 32
@switch.table.max77620_i2c_resume.81 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 40, i32 20, i32 20], [20 x i8] zeroinitializer }, align 32
@switch.table.max77620_i2c_resume.82 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 40, i32 20, i32 20], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"max77620_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 697, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 699, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"max77620_pm_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 693, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"max77620_id\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 686, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"max77620_children\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 69, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"max77620_regmap_config\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 171, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"max20024_children\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 93, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant [23 x i8] c"max20024_regmap_config\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 183, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"max77663_children\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 113, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"max77663_regmap_config\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 212, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 531, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 535, i32 15 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 538, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 552, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 564, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"max77620_scratch\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 37, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 70, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 71, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 72, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 73, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 75, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant [15 x i8] c"gpio_resources\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 39, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 79, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"rtc_resources\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 47, i32 30 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 83, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant [16 x i8] c"power_resources\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 43, i32 30 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 87, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant [18 x i8] c"thermal_resources\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 51, i32 30 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 172, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant [24 x i8] c"max77620_writable_table\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 156, i32 41 }
@___asan_gen_.200 = private unnamed_addr constant [24 x i8] c"max77620_readable_table\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 137, i32 41 }
@___asan_gen_.203 = private unnamed_addr constant [24 x i8] c"max77620_volatile_table\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 166, i32 41 }
@___asan_gen_.206 = private unnamed_addr constant [25 x i8] c"max77620_writable_ranges\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 152, i32 34 }
@___asan_gen_.209 = private unnamed_addr constant [25 x i8] c"max77620_readable_ranges\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 133, i32 34 }
@___asan_gen_.212 = private unnamed_addr constant [26 x i8] c"max77620_cacheable_ranges\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 161, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 94, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 96, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 107, i32 11 }
@___asan_gen_.224 = private unnamed_addr constant [24 x i8] c"max20024_readable_table\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 147, i32 41 }
@___asan_gen_.227 = private unnamed_addr constant [25 x i8] c"max20024_readable_ranges\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 142, i32 34 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 116, i32 12 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 127, i32 11 }
@___asan_gen_.236 = private unnamed_addr constant [24 x i8] c"max77663_writable_table\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 207, i32 41 }
@___asan_gen_.239 = private unnamed_addr constant [24 x i8] c"max77663_readable_table\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 198, i32 41 }
@___asan_gen_.242 = private unnamed_addr constant [25 x i8] c"max77663_writable_ranges\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 203, i32 34 }
@___asan_gen_.245 = private unnamed_addr constant [25 x i8] c"max77663_readable_ranges\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 194, i32 34 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 471, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 474, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 480, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 258, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant [18 x i8] c"max77620_top_irqs\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 56, i32 32 }
@___asan_gen_.275 = private unnamed_addr constant [22 x i8] c"max77620_top_irq_chip\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 257, i32 31 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 239, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 252, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 414, i32 46 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 430, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 443, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 453, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 337, i32 21 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 343, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 347, i32 37 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 358, i32 37 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 364, i32 37 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 368, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 381, i32 5 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 394, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1548, i32 35 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 625, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 636, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 588, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.390 = private constant [26 x i8] c"../drivers/mfd/max77620.c\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 675, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant [28 x i8] c"switch.table.max77620_probe\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [31 x i8] c"switch.table.max77620_probe.75\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [31 x i8] c"switch.table.max77620_probe.76\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [31 x i8] c"switch.table.max77620_probe.77\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [31 x i8] c"switch.table.max77620_probe.78\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [34 x i8] c"switch.table.max77620_i2c_suspend\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [37 x i8] c"switch.table.max77620_i2c_suspend.79\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [37 x i8] c"switch.table.max77620_i2c_suspend.80\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [33 x i8] c"switch.table.max77620_i2c_resume\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [36 x i8] c"switch.table.max77620_i2c_resume.81\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [36 x i8] c"switch.table.max77620_i2c_resume.82\00", align 1
@llvm.compiler.used = appending global [133 x ptr] [ptr @__initcall__kmod_max77620__293_705_max77620_driver_init6, ptr @max77620_config_fps._entry, ptr @max77620_config_fps._entry.58, ptr @max77620_config_fps._entry.62, ptr @max77620_config_fps._entry_ptr, ptr @max77620_config_fps._entry_ptr.60, ptr @max77620_config_fps._entry_ptr.64, ptr @max77620_i2c_resume._entry, ptr @max77620_i2c_resume._entry_ptr, ptr @max77620_i2c_suspend._entry, ptr @max77620_i2c_suspend._entry.68, ptr @max77620_i2c_suspend._entry_ptr, ptr @max77620_i2c_suspend._entry_ptr.70, ptr @max77620_initialise_fps._entry, ptr @max77620_initialise_fps._entry.46, ptr @max77620_initialise_fps._entry.49, ptr @max77620_initialise_fps._entry_ptr, ptr @max77620_initialise_fps._entry_ptr.48, ptr @max77620_initialise_fps._entry_ptr.51, ptr @max77620_irq_global_mask._entry, ptr @max77620_irq_global_mask._entry_ptr, ptr @max77620_irq_global_unmask._entry, ptr @max77620_irq_global_unmask._entry_ptr, ptr @max77620_probe._entry, ptr @max77620_probe._entry.10, ptr @max77620_probe._entry.13, ptr @max77620_probe._entry.7, ptr @max77620_probe._entry_ptr, ptr @max77620_probe._entry_ptr.12, ptr @max77620_probe._entry_ptr.15, ptr @max77620_probe._entry_ptr.9, ptr @max77620_read_es_version._entry, ptr @max77620_read_es_version._entry.33, ptr @max77620_read_es_version._entry_ptr, ptr @max77620_read_es_version._entry_ptr.36, ptr @max77620_set_fps_period._entry, ptr @max77620_set_fps_period._entry_ptr, ptr @max77620_driver, ptr @.str, ptr @max77620_pm_ops, ptr @max77620_id, ptr @max77620_children, ptr @max77620_regmap_config, ptr @max20024_children, ptr @max20024_regmap_config, ptr @max77663_children, ptr @max77663_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max77620_probe._key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @max77620_scratch, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @gpio_resources, ptr @.str.21, ptr @rtc_resources, ptr @.str.22, ptr @power_resources, ptr @.str.23, ptr @thermal_resources, ptr @.str.24, ptr @max77620_writable_table, ptr @max77620_readable_table, ptr @max77620_volatile_table, ptr @max77620_writable_ranges, ptr @max77620_readable_ranges, ptr @max77620_cacheable_ranges, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @max20024_readable_table, ptr @max20024_readable_ranges, ptr @.str.28, ptr @.str.29, ptr @max77663_writable_table, ptr @max77663_readable_table, ptr @max77663_writable_ranges, ptr @max77663_readable_ranges, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @max77620_top_irqs, ptr @max77620_top_irq_chip, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @switch.table.max77620_probe, ptr @switch.table.max77620_probe.75, ptr @switch.table.max77620_probe.76, ptr @switch.table.max77620_probe.77, ptr @switch.table.max77620_probe.78, ptr @switch.table.max77620_i2c_suspend, ptr @switch.table.max77620_i2c_suspend.79, ptr @switch.table.max77620_i2c_suspend.80, ptr @switch.table.max77620_i2c_resume, ptr @switch.table.max77620_i2c_resume.81, ptr @switch.table.max77620_i2c_resume.82], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_children to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20024_children to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20024_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77663_children to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77663_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_scratch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_writable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_writable_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_readable_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_cacheable_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20024_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20024_readable_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77663_writable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77663_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77663_writable_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77663_readable_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_read_es_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_read_es_version._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_top_irqs to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_top_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_irq_global_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_irq_global_unmask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_initialise_fps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_initialise_fps._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_initialise_fps._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_config_fps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_config_fps._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_config_fps._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_i2c_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_i2c_suspend._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_set_fps_period._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_i2c_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_probe.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_probe.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_probe.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_probe.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_i2c_suspend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_i2c_suspend.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_i2c_suspend.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_i2c_resume to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_i2c_resume.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_i2c_resume.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max77620_driver) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %param_val.i.i = alloca i32, align 4
  %fps_name.i.i = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %chip_irq = getelementptr inbounds %struct.max77620_chip, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %chip_irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %chip_irq, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %chip_id = getelementptr inbounds %struct.max77620_chip, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %8 = icmp ult i32 %6, 3
  br i1 %8, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %6) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.max77620_probe, i32 0, i32 %6
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep150 = getelementptr inbounds [3 x ptr], ptr @switch.table.max77620_probe.75, i32 0, i32 %6
  %10 = ptrtoint ptr %switch.gep150 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load151 = load ptr, ptr %switch.gep150, align 4
  %switch.gep152 = getelementptr inbounds [3 x i32], ptr @switch.table.max77620_probe.76, i32 0, i32 %6
  %11 = ptrtoint ptr %switch.gep152 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load153 = load i32, ptr %switch.gep152, align 4
  %call8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull %switch.load, ptr noundef nonnull @max77620_probe._key, ptr noundef nonnull @.str.6) #7
  %rmap = getelementptr inbounds %struct.max77620_chip, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %rmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8, ptr %rmap, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end18

if.then11:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call8 to i32
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef %13) #10
  br label %cleanup

if.end18:                                         ; preds = %switch.lookup
  %call19 = tail call fastcc i32 @max77620_read_es_version(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  store ptr %call.i, ptr getelementptr inbounds ({ ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, ptr @max77620_top_irq_chip, i32 0, i32 24), align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %18 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmap, align 4
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %top_irq_data = getelementptr inbounds %struct.max77620_chip, ptr %call.i, i32 0, i32 8
  %call25 = tail call i32 @devm_regmap_add_irq_chip(ptr noundef %17, ptr noundef %19, i32 noundef %21, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull @max77620_top_irq_chip, ptr noundef %top_irq_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11, i32 noundef %call25) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %arrayidx.i = getelementptr %struct.max77620_chip, ptr %call.i, i32 0, i32 6, i32 0
  %of_node.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = call ptr @memset(ptr %arrayidx.i, i32 255, i32 24)
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  %call.i98 = tail call ptr @of_get_child_by_name(ptr noundef %26, ptr noundef nonnull @.str.43) #7
  %tobool.not.i = icmp eq ptr %call.i98, null
  br i1 %tobool.not.i, label %if.end32.skip_fps.i_crit_edge, label %if.end.i

if.end32.skip_fps.i_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_fps.i

if.end.i:                                         ; preds = %if.end32
  %call3.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i98, ptr noundef null) #7
  %cmp5.not106.i = icmp eq ptr %call3.i, null
  br i1 %cmp5.not106.i, label %if.end.i.for.end13.i_crit_edge, label %for.body6.lr.ph.i

if.end.i.for.end13.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13.i

for.body6.lr.ph.i:                                ; preds = %if.end.i
  %sleep_enable.i.i = getelementptr inbounds %struct.max77620_chip, ptr %call.i, i32 0, i32 4
  %enable_global_lpm.i.i = getelementptr inbounds %struct.max77620_chip, ptr %call.i, i32 0, i32 5
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc11.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %fps_child.0107.i = phi ptr [ %call3.i, %for.body6.lr.ph.i ], [ %call12.i, %for.inc11.i.for.body6.i_crit_edge ]
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param_val.i.i) #7
  %29 = ptrtoint ptr %param_val.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %param_val.i.i, align 4, !annotation !204
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %fps_name.i.i) #7
  %30 = call ptr @memset(ptr %fps_name.i.i, i32 255, i32 10)
  %31 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %33 = icmp ult i32 %32, 3
  br i1 %33, label %switch.lookup154, label %for.body6.i.if.then9.i_crit_edge

for.body6.i.if.then9.i_crit_edge:                 ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

switch.lookup154:                                 ; preds = %for.body6.i
  %switch.gep155 = getelementptr inbounds [3 x i32], ptr @switch.table.max77620_probe.77, i32 0, i32 %32
  %34 = ptrtoint ptr %switch.gep155 to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load156 = load i32, ptr %switch.gep155, align 4
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fps_name.i.i, ptr noundef nonnull @.str.52, i32 noundef 0) #7
  %call5.i.i = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %fps_child.0107.i, ptr noundef nonnull %fps_name.i.i) #7
  br i1 %call5.i.i, label %switch.lookup154.if.end8.i.i_crit_edge, label %for.inc.i.i

switch.lookup154.if.end8.i.i_crit_edge:           ; preds = %switch.lookup154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

for.inc.i.i:                                      ; preds = %switch.lookup154
  %call.1.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fps_name.i.i, ptr noundef nonnull @.str.52, i32 noundef 1) #7
  %call5.1.i.i = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %fps_child.0107.i, ptr noundef nonnull %fps_name.i.i) #7
  br i1 %call5.1.i.i, label %for.inc.i.i.if.end8.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.if.end8.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %call.2.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fps_name.i.i, ptr noundef nonnull @.str.52, i32 noundef 2) #7
  %call5.2.i.i = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %fps_child.0107.i, ptr noundef nonnull %fps_name.i.i) #7
  br i1 %call5.2.i.i, label %for.inc.1.i.i.if.end8.i.i_crit_edge, label %do.end.i.i

for.inc.1.i.i.if.end8.i.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

do.end.i.i:                                       ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.53, ptr noundef nonnull %fps_child.0107.i) #10
  br label %if.then9.i

if.end8.i.i:                                      ; preds = %for.inc.1.i.i.if.end8.i.i_crit_edge, %for.inc.i.i.if.end8.i.i_crit_edge, %switch.lookup154.if.end8.i.i_crit_edge
  %fps_id.0130.lcssa.i.i = phi i32 [ 0, %switch.lookup154.if.end8.i.i_crit_edge ], [ 1, %for.inc.i.i.if.end8.i.i_crit_edge ], [ 2, %for.inc.1.i.i.if.end8.i.i_crit_edge ]
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %fps_child.0107.i, ptr noundef nonnull @.str.55, ptr noundef nonnull %param_val.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.then10.i.i, label %if.end8.i.i.if.end16.i.i_crit_edge

if.end8.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  %35 = ptrtoint ptr %param_val.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %param_val.i.i, align 4
  %37 = call i32 @llvm.umin.i32(i32 %36, i32 %switch.load156) #7
  %arrayidx.i.i = getelementptr %struct.max77620_chip, ptr %call.i, i32 0, i32 6, i32 %fps_id.0130.lcssa.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx.i.i, align 4
  %39 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %switch.lookup157, label %if.then10.i.i.if.end16.i.i_crit_edge

if.then10.i.i.if.end16.i.i_crit_edge:             ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

switch.lookup157:                                 ; preds = %if.then10.i.i
  %switch.gep158 = getelementptr inbounds [3 x i32], ptr @switch.table.max77620_probe.78, i32 0, i32 %40
  %42 = ptrtoint ptr %switch.gep158 to i32
  call void @__asan_load4_noabort(i32 %42)
  %switch.load159 = load i32, ptr %switch.gep158, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load159, i32 %37)
  %cmp3.not9.i.i.i = icmp ult i32 %switch.load159, %37
  br i1 %cmp3.not9.i.i.i, label %if.end.i.i.i, label %switch.lookup157.if.end16.i.i_crit_edge

switch.lookup157.if.end16.i.i_crit_edge:          ; preds = %switch.lookup157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.end.i.i.i:                                     ; preds = %switch.lookup157
  %mul.i.i.i = shl i32 %switch.load159, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %37)
  %cmp3.not.i.i.i = icmp slt i32 %mul.i.i.i, %37
  br i1 %cmp3.not.i.i.i, label %if.end.i.i.i.1, label %if.end.i.i.i.if.end16.i.i_crit_edge

if.end.i.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.end.i.i.i.1:                                   ; preds = %if.end.i.i.i
  %mul.i.i.i.1 = shl i32 %switch.load159, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i.1, i32 %37)
  %cmp3.not.i.i.i.1 = icmp slt i32 %mul.i.i.i.1, %37
  br i1 %cmp3.not.i.i.i.1, label %if.end.i.i.i.2, label %if.end.i.i.i.1.if.end16.i.i_crit_edge

if.end.i.i.i.1.if.end16.i.i_crit_edge:            ; preds = %if.end.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.end.i.i.i.2:                                   ; preds = %if.end.i.i.i.1
  %mul.i.i.i.2 = shl i32 %switch.load159, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i.2, i32 %37)
  %cmp3.not.i.i.i.2 = icmp slt i32 %mul.i.i.i.2, %37
  br i1 %cmp3.not.i.i.i.2, label %if.end.i.i.i.3, label %if.end.i.i.i.2.if.end16.i.i_crit_edge

if.end.i.i.i.2.if.end16.i.i_crit_edge:            ; preds = %if.end.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.end.i.i.i.3:                                   ; preds = %if.end.i.i.i.2
  %mul.i.i.i.3 = shl i32 %switch.load159, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i.3, i32 %37)
  %cmp3.not.i.i.i.3 = icmp slt i32 %mul.i.i.i.3, %37
  br i1 %cmp3.not.i.i.i.3, label %if.end.i.i.i.4, label %if.end.i.i.i.3.if.end16.i.i_crit_edge

if.end.i.i.i.3.if.end16.i.i_crit_edge:            ; preds = %if.end.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.end.i.i.i.4:                                   ; preds = %if.end.i.i.i.3
  %mul.i.i.i.4 = shl i32 %switch.load159, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i.4, i32 %37)
  %cmp3.not.i.i.i.4 = icmp slt i32 %mul.i.i.i.4, %37
  br i1 %cmp3.not.i.i.i.4, label %if.end.i.i.i.5, label %if.end.i.i.i.4.if.end16.i.i_crit_edge

if.end.i.i.i.4.if.end16.i.i_crit_edge:            ; preds = %if.end.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.end.i.i.i.5:                                   ; preds = %if.end.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i.i.5 = shl i32 %switch.load159, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i.5, i32 %37)
  %cmp3.not.i.i.i.5 = icmp slt i32 %mul.i.i.i.5, %37
  %spec.select = select i1 %cmp3.not.i.i.i.5, i32 56, i32 48
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.end.i.i.i.5, %if.end.i.i.i.4.if.end16.i.i_crit_edge, %if.end.i.i.i.3.if.end16.i.i_crit_edge, %if.end.i.i.i.2.if.end16.i.i_crit_edge, %if.end.i.i.i.1.if.end16.i.i_crit_edge, %if.end.i.i.i.if.end16.i.i_crit_edge, %switch.lookup157.if.end16.i.i_crit_edge, %if.then10.i.i.if.end16.i.i_crit_edge, %if.end8.i.i.if.end16.i.i_crit_edge
  %mask.0.i.i = phi i32 [ 0, %if.end8.i.i.if.end16.i.i_crit_edge ], [ 56, %if.then10.i.i.if.end16.i.i_crit_edge ], [ 56, %switch.lookup157.if.end16.i.i_crit_edge ], [ 56, %if.end.i.i.i.5 ], [ 56, %if.end.i.i.i.4.if.end16.i.i_crit_edge ], [ 56, %if.end.i.i.i.3.if.end16.i.i_crit_edge ], [ 56, %if.end.i.i.i.2.if.end16.i.i_crit_edge ], [ 56, %if.end.i.i.i.1.if.end16.i.i_crit_edge ], [ 56, %if.end.i.i.i.if.end16.i.i_crit_edge ]
  %config.0.i.i = phi i32 [ 0, %if.end8.i.i.if.end16.i.i_crit_edge ], [ -176, %if.then10.i.i.if.end16.i.i_crit_edge ], [ 0, %switch.lookup157.if.end16.i.i_crit_edge ], [ 8, %if.end.i.i.i.if.end16.i.i_crit_edge ], [ 16, %if.end.i.i.i.1.if.end16.i.i_crit_edge ], [ 24, %if.end.i.i.i.2.if.end16.i.i_crit_edge ], [ 32, %if.end.i.i.i.3.if.end16.i.i_crit_edge ], [ 40, %if.end.i.i.i.4.if.end16.i.i_crit_edge ], [ %spec.select, %if.end.i.i.i.5 ]
  %call.i.i123.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %fps_child.0107.i, ptr noundef nonnull @.str.56, ptr noundef nonnull %param_val.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i123.i.i)
  %tobool18.not.i.i = icmp sgt i32 %call.i.i123.i.i, -1
  br i1 %tobool18.not.i.i, label %if.then19.i.i, label %if.end16.i.i.if.end27.i.i_crit_edge

if.end16.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %param_val.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %param_val.i.i, align 4
  %45 = call i32 @llvm.umin.i32(i32 %44, i32 %switch.load156) #7
  %arrayidx26.i.i = getelementptr %struct.max77620_chip, ptr %call.i, i32 0, i32 7, i32 %fps_id.0130.lcssa.i.i
  %46 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx26.i.i, align 4
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then19.i.i, %if.end16.i.i.if.end27.i.i_crit_edge
  %call.i.i124.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %fps_child.0107.i, ptr noundef nonnull @.str.57, ptr noundef nonnull %param_val.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i124.i.i)
  %tobool29.not.i.i = icmp sgt i32 %call.i.i124.i.i, -1
  br i1 %tobool29.not.i.i, label %if.then30.i.i, label %if.end27.i.i.if.end45.i.i_crit_edge

if.end27.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i.i

if.then30.i.i:                                    ; preds = %if.end27.i.i
  %47 = ptrtoint ptr %param_val.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %param_val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp31.i.i = icmp ugt i32 %48, 2
  br i1 %cmp31.i.i, label %do.end35.i.i, label %if.end36.i.i

do.end35.i.i:                                     ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.59, i32 noundef %fps_id.0130.lcssa.i.i) #10
  br label %if.then9.i

if.end36.i.i:                                     ; preds = %if.then30.i.i
  %or37.i.i = or i32 %mask.0.i.i, 6
  %shl38.i.i = shl nuw nsw i32 %48, 1
  %or39.i.i = or i32 %shl38.i.i, %config.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp40.i.i = icmp eq i32 %48, 2
  br i1 %cmp40.i.i, label %if.then41.i.i, label %if.end36.i.i.if.end45.i.i_crit_edge

if.end36.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i.i

if.then41.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or42.i.i = or i32 %mask.0.i.i, 7
  %or43.i.i = or i32 %or39.i.i, 1
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then41.i.i, %if.end36.i.i.if.end45.i.i_crit_edge, %if.end27.i.i.if.end45.i.i_crit_edge
  %mask.1.i.i = phi i32 [ %mask.0.i.i, %if.end27.i.i.if.end45.i.i_crit_edge ], [ %or42.i.i, %if.then41.i.i ], [ %or37.i.i, %if.end36.i.i.if.end45.i.i_crit_edge ]
  %config.1.i.i = phi i32 [ %config.0.i.i, %if.end27.i.i.if.end45.i.i_crit_edge ], [ %or43.i.i, %if.then41.i.i ], [ %or39.i.i, %if.end36.i.i.if.end45.i.i_crit_edge ]
  %49 = ptrtoint ptr %sleep_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sleep_enable.i.i, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool46.not.i.i = icmp eq i8 %50, 0
  br i1 %tobool46.not.i.i, label %land.lhs.true.i.i, label %if.end45.i.i.if.end61.i.i_crit_edge

if.end45.i.i.if.end61.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i.i

land.lhs.true.i.i:                                ; preds = %if.end45.i.i
  %51 = ptrtoint ptr %enable_global_lpm.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %enable_global_lpm.i.i, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool47.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool47.not.i.i, label %if.then48.i.i, label %land.lhs.true.i.i.if.end61.i.i_crit_edge

land.lhs.true.i.i.if.end61.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i.i

if.then48.i.i:                                    ; preds = %land.lhs.true.i.i
  %call.i.i125.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %fps_child.0107.i, ptr noundef nonnull @.str.61, ptr noundef nonnull %param_val.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i125.i.i)
  %tobool50.not.i.i = icmp sgt i32 %call.i.i125.i.i, -1
  br i1 %tobool50.not.i.i, label %if.then51.i.i, label %if.then48.i.i.if.end61.i.i_crit_edge

if.then48.i.i.if.end61.i.i_crit_edge:             ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i.i

if.then51.i.i:                                    ; preds = %if.then48.i.i
  %53 = ptrtoint ptr %param_val.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %param_val.i.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %54, label %if.then51.i.i.if.end61.i.i_crit_edge [
    i32 0, label %if.then53.i.i
    i32 1, label %if.then56.i.i
  ]

if.then51.i.i.if.end61.i.i_crit_edge:             ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i.i

if.then53.i.i:                                    ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %sleep_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %sleep_enable.i.i, align 4
  br label %if.end61.i.i

if.then56.i.i:                                    ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %enable_global_lpm.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %enable_global_lpm.i.i, align 1
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.then56.i.i, %if.then53.i.i, %if.then51.i.i.if.end61.i.i_crit_edge, %if.then48.i.i.if.end61.i.i_crit_edge, %land.lhs.true.i.i.if.end61.i.i_crit_edge, %if.end45.i.i.if.end61.i.i_crit_edge
  %58 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmap, align 4
  %add.i.i = add nuw nsw i32 %fps_id.0130.lcssa.i.i, 67
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef %add.i.i, i32 noundef %mask.1.i.i, i32 noundef %config.1.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp63.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp63.i.i, label %do.end67.i.i, label %for.inc11.i

do.end67.i.i:                                     ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.63, i32 noundef %call.i.i.i) #10
  br label %if.then9.i

if.then9.i:                                       ; preds = %do.end67.i.i, %do.end35.i.i, %do.end.i.i, %for.body6.i.if.then9.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %do.end35.i.i ], [ %call.i.i.i, %do.end67.i.i ], [ -22, %do.end.i.i ], [ -22, %for.body6.i.if.then9.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %fps_name.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param_val.i.i) #7
  call void @of_node_put(ptr noundef nonnull %fps_child.0107.i) #7
  br label %cleanup

for.inc11.i:                                      ; preds = %if.end61.i.i
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %fps_name.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param_val.i.i) #7
  %call12.i = call ptr @of_get_next_child(ptr noundef nonnull %call.i98, ptr noundef nonnull %fps_child.0107.i) #7
  %cmp5.not.i = icmp eq ptr %call12.i, null
  br i1 %cmp5.not.i, label %for.inc11.i.for.end13.i_crit_edge, label %for.inc11.i.for.body6.i_crit_edge

for.inc11.i.for.body6.i_crit_edge:                ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i

for.inc11.i.for.end13.i_crit_edge:                ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13.i

for.end13.i:                                      ; preds = %for.inc11.i.for.end13.i_crit_edge, %if.end.i.for.end13.i_crit_edge
  %enable_global_lpm.i = getelementptr inbounds %struct.max77620_chip, ptr %call.i, i32 0, i32 5
  %60 = ptrtoint ptr %enable_global_lpm.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %enable_global_lpm.i, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool14.not.i = icmp eq i8 %61, 0
  %conv.i = select i1 %tobool14.not.i, i32 0, i32 32
  %62 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmap, align 4
  %call.i90.i = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 66, i32 noundef 32, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90.i)
  %cmp17.i = icmp slt i32 %call.i90.i, 0
  br i1 %cmp17.i, label %do.end.i, label %for.end13.i.skip_fps.i_crit_edge

for.end13.i.skip_fps.i_crit_edge:                 ; preds = %for.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_fps.i

do.end.i:                                         ; preds = %for.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.44, i32 noundef %call.i90.i) #10
  br label %cleanup

skip_fps.i:                                       ; preds = %for.end13.i.skip_fps.i_crit_edge, %if.end32.skip_fps.i_crit_edge
  %64 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp21.i = icmp eq i32 %65, 2
  br i1 %cmp21.i, label %skip_fps.i.if.end36_crit_edge, label %if.end24.i

skip_fps.i.if.end36_crit_edge:                    ; preds = %skip_fps.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end24.i:                                       ; preds = %skip_fps.i
  %66 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmap, align 4
  %call.i91.i = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 66, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %cmp27.i = icmp slt i32 %call.i91.i, 0
  br i1 %cmp27.i, label %do.end32.i, label %if.end33.i

do.end32.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.47, i32 noundef %call.i91.i) #10
  br label %cleanup

if.end33.i:                                       ; preds = %if.end24.i
  %68 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp35.i = icmp eq i32 %69, 1
  br i1 %cmp35.i, label %land.lhs.true.i, label %if.end33.i.if.end36_crit_edge

if.end33.i.if.end36_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true.i:                                  ; preds = %if.end33.i
  %sleep_enable.i = getelementptr inbounds %struct.max77620_chip, ptr %call.i, i32 0, i32 4
  %70 = ptrtoint ptr %sleep_enable.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %sleep_enable.i, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool37.not.i = icmp eq i8 %71, 0
  br i1 %tobool37.not.i, label %land.lhs.true.i.if.end36_crit_edge, label %if.then39.i

land.lhs.true.i.if.end36_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then39.i:                                      ; preds = %land.lhs.true.i
  %72 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmap, align 4
  %call.i92.i = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 65, i32 noundef 28, i32 noundef 28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %cmp44.i = icmp slt i32 %call.i92.i, 0
  br i1 %cmp44.i, label %do.end49.i, label %if.then39.i.if.end36_crit_edge

if.then39.i.if.end36_crit_edge:                   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end49.i:                                       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.50, i32 noundef %call.i92.i) #10
  br label %cleanup

if.end36:                                         ; preds = %if.then39.i.if.end36_crit_edge, %land.lhs.true.i.if.end36_crit_edge, %if.end33.i.if.end36_crit_edge, %skip_fps.i.if.end36_crit_edge
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  %76 = ptrtoint ptr %top_irq_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %top_irq_data, align 4
  %call39 = call ptr @regmap_irq_get_domain(ptr noundef %77) #7
  %call40 = call i32 @devm_mfd_add_devices(ptr noundef %75, i32 noundef -1, ptr noundef nonnull %switch.load151, i32 noundef %switch.load153, ptr noundef null, i32 noundef 0, ptr noundef %call39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.14, i32 noundef %call40) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end36
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %80 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %of_node, align 8
  %call.i.i99 = call ptr @of_find_property(ptr noundef %81, ptr noundef nonnull @.str.65, ptr noundef null) #7
  %tobool.i.i.not = icmp eq ptr %call.i.i99, null
  br i1 %tobool.i.i.not, label %if.end47.cleanup_crit_edge, label %land.lhs.true

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %82 = load ptr, ptr @pm_power_off, align 4
  %tobool51.not = icmp eq ptr %82, null
  br i1 %tobool51.not, label %if.then52, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call.i, ptr @max77620_scratch, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @max77620_pm_power_off, ptr @pm_power_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %land.lhs.true.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %do.end45, %do.end49.i, %do.end32.i, %do.end.i, %if.then9.i, %do.end30, %if.end18.cleanup_crit_edge, %if.then11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %13, %if.then11 ], [ %call25, %do.end30 ], [ %call40, %do.end45 ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ %call.i92.i, %do.end49.i ], [ %call.i91.i, %do.end32.i ], [ %call.i90.i, %do.end.i ], [ %retval.0.i.ph.i, %if.then9.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77620_read_es_version(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  %cid_val = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !204
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cid_val) #7
  %1 = getelementptr inbounds [6 x i8], ptr %cid_val, i32 0, i32 4
  %2 = getelementptr inbounds [6 x i8], ptr %cid_val, i32 0, i32 5
  %rmap = getelementptr inbounds %struct.max77620_chip, ptr %chip, i32 0, i32 1
  %3 = call ptr @memset(ptr %cid_val, i32 255, i32 6)
  br label %for.body

for.body:                                         ; preds = %do.end10.for.body_crit_edge, %entry
  %i.035 = phi i32 [ 88, %entry ], [ %inc, %do.end10.for.body_crit_edge ]
  %4 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmap, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef %i.035, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %do.end, label %do.body2

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef %call) #10
  br label %cleanup

do.body2:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77620_read_es_version.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max77620_read_es_version, %if.then6)) #7
          to label %do.end10 [label %if.then6], !srcloc !206

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %sub = add nsw i32 %i.035, -88
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77620_read_es_version.__UNIQUE_ID_ddebug292, ptr noundef %9, ptr noundef nonnull @.str.32, i32 noundef %sub, i32 noundef %11) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %conv = trunc i32 %13 to i8
  %sub11 = add nsw i32 %i.035, -88
  %arrayidx = getelementptr [6 x i8], ptr %cid_val, i32 0, i32 %sub11
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 94
  br i1 %exitcond.not, label %do.end14, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end14:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  %conv17 = zext i8 %18 to i32
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %2, align 1
  %21 = lshr i8 %20, 4
  %22 = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.34, i32 noundef %conv17, i32 noundef %22) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cid_val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77620_pm_power_off() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @max77620_scratch, align 4
  %rmap = getelementptr inbounds %struct.max77620_chip, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 65, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_irq_global_mask(ptr nocapture noundef readonly %irq_drv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmap = getelementptr inbounds %struct.max77620_chip, ptr %irq_drv_data, i32 0, i32 1
  %0 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 14, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %irq_drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_drv_data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.39, i32 noundef %call.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_irq_global_unmask(ptr nocapture noundef readonly %irq_drv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmap = getelementptr inbounds %struct.max77620_chip, ptr %irq_drv_data, i32 0, i32 1
  %0 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 14, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %irq_drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_drv_data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %call.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_i2c_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chip_id.i.i = getelementptr inbounds %struct.max77620_chip, ptr %1, i32 0, i32 3
  %rmap.i = getelementptr inbounds %struct.max77620_chip, ptr %1, i32 0, i32 1
  %arrayidx = getelementptr %struct.max77620_chip, ptr %1, i32 0, i32 7, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %switch.lookup, label %if.end.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.max77620_i2c_suspend, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %3)
  %cmp3.not9.i.i = icmp ult i32 %switch.load, %3
  br i1 %cmp3.not9.i.i, label %if.end.i.i, label %switch.lookup.max77620_get_fps_period_reg_value.exit.i_crit_edge

switch.lookup.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i:                                       ; preds = %switch.lookup
  %mul.i.i = shl i32 %switch.load, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %3)
  %cmp3.not.i.i = icmp slt i32 %mul.i.i, %3
  br i1 %cmp3.not.i.i, label %if.end.i.i.170, label %if.end.i.i.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.i.i.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i.170:                                   ; preds = %if.end.i.i
  %mul.i.i.165 = shl i32 %switch.load, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.165, i32 %3)
  %cmp3.not.i.i.168 = icmp slt i32 %mul.i.i.165, %3
  br i1 %cmp3.not.i.i.168, label %if.end.i.i.278, label %if.end.i.i.170.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.i.i.170.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end.i.i.170
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i.278:                                   ; preds = %if.end.i.i.170
  %mul.i.i.273 = shl i32 %switch.load, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.273, i32 %3)
  %cmp3.not.i.i.276 = icmp slt i32 %mul.i.i.273, %3
  br i1 %cmp3.not.i.i.276, label %if.end.i.i.3, label %if.end.i.i.278.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.i.i.278.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end.i.i.278
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i.3:                                     ; preds = %if.end.i.i.278
  %mul.i.i.3 = shl i32 %switch.load, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.3, i32 %3)
  %cmp3.not.i.i.3 = icmp slt i32 %mul.i.i.3, %3
  br i1 %cmp3.not.i.i.3, label %if.end.i.i.4, label %if.end.i.i.3.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.i.i.3.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i.4:                                     ; preds = %if.end.i.i.3
  %mul.i.i.4 = shl i32 %switch.load, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.4, i32 %3)
  %cmp3.not.i.i.4 = icmp slt i32 %mul.i.i.4, %3
  br i1 %cmp3.not.i.i.4, label %if.end.i.i.5, label %if.end.i.i.4.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.i.i.4.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i.5:                                     ; preds = %if.end.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i.5 = shl i32 %switch.load, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.5, i32 %3)
  %cmp3.not.i.i.5 = icmp slt i32 %mul.i.i.5, %3
  %spec.select = select i1 %cmp3.not.i.i.5, i32 56, i32 48
  br label %max77620_get_fps_period_reg_value.exit.i

max77620_get_fps_period_reg_value.exit.i:         ; preds = %if.end.i.i.5, %if.end.i.i.4.max77620_get_fps_period_reg_value.exit.i_crit_edge, %if.end.i.i.3.max77620_get_fps_period_reg_value.exit.i_crit_edge, %if.end.i.i.278.max77620_get_fps_period_reg_value.exit.i_crit_edge, %if.end.i.i.170.max77620_get_fps_period_reg_value.exit.i_crit_edge, %if.end.i.i.max77620_get_fps_period_reg_value.exit.i_crit_edge, %switch.lookup.max77620_get_fps_period_reg_value.exit.i_crit_edge, %if.end.max77620_get_fps_period_reg_value.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -176, %if.end.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 0, %switch.lookup.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 8, %if.end.i.i.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 16, %if.end.i.i.170.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 24, %if.end.i.i.278.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 32, %if.end.i.i.3.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 40, %if.end.i.i.4.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ %spec.select, %if.end.i.i.5 ]
  %8 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 67, i32 noundef 56, i32 noundef %retval.0.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %max77620_get_fps_period_reg_value.exit.i.max77620_set_fps_period.exit.thread_crit_edge, label %max77620_get_fps_period_reg_value.exit.i.for.inc_crit_edge

max77620_get_fps_period_reg_value.exit.i.for.inc_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

max77620_get_fps_period_reg_value.exit.i.max77620_set_fps_period.exit.thread_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_set_fps_period.exit.thread

max77620_set_fps_period.exit.thread:              ; preds = %max77620_get_fps_period_reg_value.exit.i.2.max77620_set_fps_period.exit.thread_crit_edge, %max77620_get_fps_period_reg_value.exit.i.1.max77620_set_fps_period.exit.thread_crit_edge, %max77620_get_fps_period_reg_value.exit.i.max77620_set_fps_period.exit.thread_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i, %max77620_get_fps_period_reg_value.exit.i.max77620_set_fps_period.exit.thread_crit_edge ], [ %call.i.i.1, %max77620_get_fps_period_reg_value.exit.i.1.max77620_set_fps_period.exit.thread_crit_edge ], [ %call.i.i.2, %max77620_get_fps_period_reg_value.exit.i.2.max77620_set_fps_period.exit.thread_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.71, i32 noundef %call.i.i.lcssa) #10
  br label %cleanup

for.inc:                                          ; preds = %max77620_get_fps_period_reg_value.exit.i.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.max77620_chip, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.1 = icmp slt i32 %13, 0
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %14 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %switch.lookup57, label %if.end.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

switch.lookup57:                                  ; preds = %if.end.1
  %switch.gep58 = getelementptr inbounds [3 x i32], ptr @switch.table.max77620_i2c_suspend.79, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep58 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load59 = load i32, ptr %switch.gep58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load59, i32 %13)
  %cmp3.not9.i.i.1 = icmp ult i32 %switch.load59, %13
  br i1 %cmp3.not9.i.i.1, label %if.end.i.i.1, label %switch.lookup57.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

switch.lookup57.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %switch.lookup57
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1:                                     ; preds = %switch.lookup57
  %mul.i.i.1 = shl i32 %switch.load59, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1, i32 %13)
  %cmp3.not.i.i.1 = icmp slt i32 %mul.i.i.1, %13
  br i1 %cmp3.not.i.i.1, label %if.end.i.i.1.1, label %if.end.i.i.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.i.i.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1.1:                                   ; preds = %if.end.i.i.1
  %mul.i.i.1.1 = shl i32 %switch.load59, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1.1, i32 %13)
  %cmp3.not.i.i.1.1 = icmp slt i32 %mul.i.i.1.1, %13
  br i1 %cmp3.not.i.i.1.1, label %if.end.i.i.1.2, label %if.end.i.i.1.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.i.i.1.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.i.i.1.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1.2:                                   ; preds = %if.end.i.i.1.1
  %mul.i.i.1.2 = shl i32 %switch.load59, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1.2, i32 %13)
  %cmp3.not.i.i.1.2 = icmp slt i32 %mul.i.i.1.2, %13
  br i1 %cmp3.not.i.i.1.2, label %if.end.i.i.1.3, label %if.end.i.i.1.2.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.i.i.1.2.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.i.i.1.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1.3:                                   ; preds = %if.end.i.i.1.2
  %mul.i.i.1.3 = shl i32 %switch.load59, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1.3, i32 %13)
  %cmp3.not.i.i.1.3 = icmp slt i32 %mul.i.i.1.3, %13
  br i1 %cmp3.not.i.i.1.3, label %if.end.i.i.1.4, label %if.end.i.i.1.3.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.i.i.1.3.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.i.i.1.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1.4:                                   ; preds = %if.end.i.i.1.3
  %mul.i.i.1.4 = shl i32 %switch.load59, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1.4, i32 %13)
  %cmp3.not.i.i.1.4 = icmp slt i32 %mul.i.i.1.4, %13
  br i1 %cmp3.not.i.i.1.4, label %if.end.i.i.1.5, label %if.end.i.i.1.4.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.i.i.1.4.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.i.i.1.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1.5:                                   ; preds = %if.end.i.i.1.4
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i.1.5 = shl i32 %switch.load59, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1.5, i32 %13)
  %cmp3.not.i.i.1.5 = icmp slt i32 %mul.i.i.1.5, %13
  %spec.select79 = select i1 %cmp3.not.i.i.1.5, i32 56, i32 48
  br label %max77620_get_fps_period_reg_value.exit.i.1

max77620_get_fps_period_reg_value.exit.i.1:       ; preds = %if.end.i.i.1.5, %if.end.i.i.1.4.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %if.end.i.i.1.3.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %if.end.i.i.1.2.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %if.end.i.i.1.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %if.end.i.i.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %switch.lookup57.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %if.end.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge
  %retval.0.i.i.1 = phi i32 [ -176, %if.end.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 0, %switch.lookup57.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 8, %if.end.i.i.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 16, %if.end.i.i.1.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 24, %if.end.i.i.1.2.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 32, %if.end.i.i.1.3.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 40, %if.end.i.i.1.4.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ %spec.select79, %if.end.i.i.1.5 ]
  %18 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmap.i, align 4
  %call.i.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 68, i32 noundef 56, i32 noundef %retval.0.i.i.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp.i.1, label %max77620_get_fps_period_reg_value.exit.i.1.max77620_set_fps_period.exit.thread_crit_edge, label %max77620_get_fps_period_reg_value.exit.i.1.for.inc.1_crit_edge

max77620_get_fps_period_reg_value.exit.i.1.for.inc.1_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

max77620_get_fps_period_reg_value.exit.i.1.max77620_set_fps_period.exit.thread_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_set_fps_period.exit.thread

for.inc.1:                                        ; preds = %max77620_get_fps_period_reg_value.exit.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.max77620_chip, ptr %1, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.2 = icmp slt i32 %21, 0
  br i1 %cmp1.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %22 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %switch.lookup60, label %if.end.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

switch.lookup60:                                  ; preds = %if.end.2
  %switch.gep61 = getelementptr inbounds [3 x i32], ptr @switch.table.max77620_i2c_suspend.80, i32 0, i32 %23
  %25 = ptrtoint ptr %switch.gep61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load62 = load i32, ptr %switch.gep61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load62, i32 %21)
  %cmp3.not9.i.i.2 = icmp ult i32 %switch.load62, %21
  br i1 %cmp3.not9.i.i.2, label %if.end.i.i.2, label %switch.lookup60.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

switch.lookup60.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %switch.lookup60
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2:                                     ; preds = %switch.lookup60
  %mul.i.i.2 = shl i32 %switch.load62, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2, i32 %21)
  %cmp3.not.i.i.2 = icmp slt i32 %mul.i.i.2, %21
  br i1 %cmp3.not.i.i.2, label %if.end.i.i.2.1, label %if.end.i.i.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.i.i.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2.1:                                   ; preds = %if.end.i.i.2
  %mul.i.i.2.1 = shl i32 %switch.load62, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2.1, i32 %21)
  %cmp3.not.i.i.2.1 = icmp slt i32 %mul.i.i.2.1, %21
  br i1 %cmp3.not.i.i.2.1, label %if.end.i.i.2.2, label %if.end.i.i.2.1.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.i.i.2.1.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.i.i.2.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2.2:                                   ; preds = %if.end.i.i.2.1
  %mul.i.i.2.2 = shl i32 %switch.load62, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2.2, i32 %21)
  %cmp3.not.i.i.2.2 = icmp slt i32 %mul.i.i.2.2, %21
  br i1 %cmp3.not.i.i.2.2, label %if.end.i.i.2.3, label %if.end.i.i.2.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.i.i.2.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.i.i.2.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2.3:                                   ; preds = %if.end.i.i.2.2
  %mul.i.i.2.3 = shl i32 %switch.load62, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2.3, i32 %21)
  %cmp3.not.i.i.2.3 = icmp slt i32 %mul.i.i.2.3, %21
  br i1 %cmp3.not.i.i.2.3, label %if.end.i.i.2.4, label %if.end.i.i.2.3.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.i.i.2.3.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.i.i.2.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2.4:                                   ; preds = %if.end.i.i.2.3
  %mul.i.i.2.4 = shl i32 %switch.load62, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2.4, i32 %21)
  %cmp3.not.i.i.2.4 = icmp slt i32 %mul.i.i.2.4, %21
  br i1 %cmp3.not.i.i.2.4, label %if.end.i.i.2.5, label %if.end.i.i.2.4.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.i.i.2.4.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.i.i.2.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2.5:                                   ; preds = %if.end.i.i.2.4
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i.2.5 = shl i32 %switch.load62, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2.5, i32 %21)
  %cmp3.not.i.i.2.5 = icmp slt i32 %mul.i.i.2.5, %21
  %spec.select80 = select i1 %cmp3.not.i.i.2.5, i32 56, i32 48
  br label %max77620_get_fps_period_reg_value.exit.i.2

max77620_get_fps_period_reg_value.exit.i.2:       ; preds = %if.end.i.i.2.5, %if.end.i.i.2.4.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %if.end.i.i.2.3.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %if.end.i.i.2.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %if.end.i.i.2.1.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %if.end.i.i.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %switch.lookup60.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %if.end.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge
  %retval.0.i.i.2 = phi i32 [ -176, %if.end.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 0, %switch.lookup60.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 8, %if.end.i.i.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 16, %if.end.i.i.2.1.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 24, %if.end.i.i.2.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 32, %if.end.i.i.2.3.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 40, %if.end.i.i.2.4.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ %spec.select80, %if.end.i.i.2.5 ]
  %26 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmap.i, align 4
  %call.i.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 69, i32 noundef 56, i32 noundef %retval.0.i.i.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.i.2, 0
  br i1 %cmp.i.2, label %max77620_get_fps_period_reg_value.exit.i.2.max77620_set_fps_period.exit.thread_crit_edge, label %max77620_get_fps_period_reg_value.exit.i.2.for.inc.2_crit_edge

max77620_get_fps_period_reg_value.exit.i.2.for.inc.2_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

max77620_get_fps_period_reg_value.exit.i.2.max77620_set_fps_period.exit.thread_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_set_fps_period.exit.thread

for.inc.2:                                        ; preds = %max77620_get_fps_period_reg_value.exit.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %28 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp8 = icmp eq i32 %29, 1
  br i1 %cmp8, label %for.inc.2.out_crit_edge, label %if.end10

for.inc.2.out_crit_edge:                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %for.inc.2
  %sleep_enable = getelementptr inbounds %struct.max77620_chip, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %sleep_enable to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sleep_enable, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  %cond = select i1 %tobool.not, i32 0, i32 4
  %32 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmap.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 65, i32 noundef 4, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %call.i) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %34 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp16 = icmp eq i32 %35, 2
  br i1 %cmp16, label %if.end14.out_crit_edge, label %if.end18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end18:                                         ; preds = %if.end14
  %36 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmap.i, align 4
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 66, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp21 = icmp slt i32 %call.i52, 0
  br i1 %cmp21, label %do.end25, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %call.i52) #10
  br label %cleanup

out:                                              ; preds = %if.end18.out_crit_edge, %if.end14.out_crit_edge, %for.inc.2.out_crit_edge
  %irq = getelementptr i8, ptr %dev, i32 932
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %39) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end25, %do.end, %max77620_set_fps_period.exit.thread
  %retval.0 = phi i32 [ 0, %out ], [ %call.i, %do.end ], [ %call.i52, %do.end25 ], [ %call.i.i.lcssa, %max77620_set_fps_period.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chip_id.i.i = getelementptr inbounds %struct.max77620_chip, ptr %1, i32 0, i32 3
  %rmap.i = getelementptr inbounds %struct.max77620_chip, ptr %1, i32 0, i32 1
  %arrayidx = getelementptr %struct.max77620_chip, ptr %1, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %switch.lookup, label %if.end.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.max77620_i2c_resume, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %3)
  %cmp3.not9.i.i = icmp ult i32 %switch.load, %3
  br i1 %cmp3.not9.i.i, label %if.end.i.i, label %switch.lookup.max77620_get_fps_period_reg_value.exit.i_crit_edge

switch.lookup.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i:                                       ; preds = %switch.lookup
  %mul.i.i = shl i32 %switch.load, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %3)
  %cmp3.not.i.i = icmp slt i32 %mul.i.i, %3
  br i1 %cmp3.not.i.i, label %if.end.i.i.153, label %if.end.i.i.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.i.i.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i.153:                                   ; preds = %if.end.i.i
  %mul.i.i.148 = shl i32 %switch.load, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.148, i32 %3)
  %cmp3.not.i.i.151 = icmp slt i32 %mul.i.i.148, %3
  br i1 %cmp3.not.i.i.151, label %if.end.i.i.261, label %if.end.i.i.153.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.i.i.153.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end.i.i.153
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i.261:                                   ; preds = %if.end.i.i.153
  %mul.i.i.256 = shl i32 %switch.load, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.256, i32 %3)
  %cmp3.not.i.i.259 = icmp slt i32 %mul.i.i.256, %3
  br i1 %cmp3.not.i.i.259, label %if.end.i.i.3, label %if.end.i.i.261.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.i.i.261.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end.i.i.261
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i.3:                                     ; preds = %if.end.i.i.261
  %mul.i.i.3 = shl i32 %switch.load, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.3, i32 %3)
  %cmp3.not.i.i.3 = icmp slt i32 %mul.i.i.3, %3
  br i1 %cmp3.not.i.i.3, label %if.end.i.i.4, label %if.end.i.i.3.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.i.i.3.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i.4:                                     ; preds = %if.end.i.i.3
  %mul.i.i.4 = shl i32 %switch.load, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.4, i32 %3)
  %cmp3.not.i.i.4 = icmp slt i32 %mul.i.i.4, %3
  br i1 %cmp3.not.i.i.4, label %if.end.i.i.5, label %if.end.i.i.4.max77620_get_fps_period_reg_value.exit.i_crit_edge

if.end.i.i.4.max77620_get_fps_period_reg_value.exit.i_crit_edge: ; preds = %if.end.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i

if.end.i.i.5:                                     ; preds = %if.end.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i.5 = shl i32 %switch.load, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.5, i32 %3)
  %cmp3.not.i.i.5 = icmp slt i32 %mul.i.i.5, %3
  %spec.select = select i1 %cmp3.not.i.i.5, i32 56, i32 48
  br label %max77620_get_fps_period_reg_value.exit.i

max77620_get_fps_period_reg_value.exit.i:         ; preds = %if.end.i.i.5, %if.end.i.i.4.max77620_get_fps_period_reg_value.exit.i_crit_edge, %if.end.i.i.3.max77620_get_fps_period_reg_value.exit.i_crit_edge, %if.end.i.i.261.max77620_get_fps_period_reg_value.exit.i_crit_edge, %if.end.i.i.153.max77620_get_fps_period_reg_value.exit.i_crit_edge, %if.end.i.i.max77620_get_fps_period_reg_value.exit.i_crit_edge, %switch.lookup.max77620_get_fps_period_reg_value.exit.i_crit_edge, %if.end.max77620_get_fps_period_reg_value.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -176, %if.end.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 0, %switch.lookup.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 8, %if.end.i.i.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 16, %if.end.i.i.153.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 24, %if.end.i.i.261.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 32, %if.end.i.i.3.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ 40, %if.end.i.i.4.max77620_get_fps_period_reg_value.exit.i_crit_edge ], [ %spec.select, %if.end.i.i.5 ]
  %8 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 67, i32 noundef 56, i32 noundef %retval.0.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %max77620_get_fps_period_reg_value.exit.i.max77620_set_fps_period.exit.thread_crit_edge, label %max77620_get_fps_period_reg_value.exit.i.for.inc_crit_edge

max77620_get_fps_period_reg_value.exit.i.for.inc_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

max77620_get_fps_period_reg_value.exit.i.max77620_set_fps_period.exit.thread_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_set_fps_period.exit.thread

max77620_set_fps_period.exit.thread:              ; preds = %max77620_get_fps_period_reg_value.exit.i.2.max77620_set_fps_period.exit.thread_crit_edge, %max77620_get_fps_period_reg_value.exit.i.1.max77620_set_fps_period.exit.thread_crit_edge, %max77620_get_fps_period_reg_value.exit.i.max77620_set_fps_period.exit.thread_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i, %max77620_get_fps_period_reg_value.exit.i.max77620_set_fps_period.exit.thread_crit_edge ], [ %call.i.i.1, %max77620_get_fps_period_reg_value.exit.i.1.max77620_set_fps_period.exit.thread_crit_edge ], [ %call.i.i.2, %max77620_get_fps_period_reg_value.exit.i.2.max77620_set_fps_period.exit.thread_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.71, i32 noundef %call.i.i.lcssa) #10
  br label %cleanup

for.inc:                                          ; preds = %max77620_get_fps_period_reg_value.exit.i.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.max77620_chip, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.1 = icmp slt i32 %13, 0
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %14 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %switch.lookup40, label %if.end.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

switch.lookup40:                                  ; preds = %if.end.1
  %switch.gep41 = getelementptr inbounds [3 x i32], ptr @switch.table.max77620_i2c_resume.81, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load42 = load i32, ptr %switch.gep41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load42, i32 %13)
  %cmp3.not9.i.i.1 = icmp ult i32 %switch.load42, %13
  br i1 %cmp3.not9.i.i.1, label %if.end.i.i.1, label %switch.lookup40.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

switch.lookup40.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %switch.lookup40
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1:                                     ; preds = %switch.lookup40
  %mul.i.i.1 = shl i32 %switch.load42, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1, i32 %13)
  %cmp3.not.i.i.1 = icmp slt i32 %mul.i.i.1, %13
  br i1 %cmp3.not.i.i.1, label %if.end.i.i.1.1, label %if.end.i.i.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.i.i.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1.1:                                   ; preds = %if.end.i.i.1
  %mul.i.i.1.1 = shl i32 %switch.load42, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1.1, i32 %13)
  %cmp3.not.i.i.1.1 = icmp slt i32 %mul.i.i.1.1, %13
  br i1 %cmp3.not.i.i.1.1, label %if.end.i.i.1.2, label %if.end.i.i.1.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.i.i.1.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.i.i.1.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1.2:                                   ; preds = %if.end.i.i.1.1
  %mul.i.i.1.2 = shl i32 %switch.load42, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1.2, i32 %13)
  %cmp3.not.i.i.1.2 = icmp slt i32 %mul.i.i.1.2, %13
  br i1 %cmp3.not.i.i.1.2, label %if.end.i.i.1.3, label %if.end.i.i.1.2.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.i.i.1.2.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.i.i.1.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1.3:                                   ; preds = %if.end.i.i.1.2
  %mul.i.i.1.3 = shl i32 %switch.load42, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1.3, i32 %13)
  %cmp3.not.i.i.1.3 = icmp slt i32 %mul.i.i.1.3, %13
  br i1 %cmp3.not.i.i.1.3, label %if.end.i.i.1.4, label %if.end.i.i.1.3.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.i.i.1.3.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.i.i.1.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1.4:                                   ; preds = %if.end.i.i.1.3
  %mul.i.i.1.4 = shl i32 %switch.load42, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1.4, i32 %13)
  %cmp3.not.i.i.1.4 = icmp slt i32 %mul.i.i.1.4, %13
  br i1 %cmp3.not.i.i.1.4, label %if.end.i.i.1.5, label %if.end.i.i.1.4.max77620_get_fps_period_reg_value.exit.i.1_crit_edge

if.end.i.i.1.4.max77620_get_fps_period_reg_value.exit.i.1_crit_edge: ; preds = %if.end.i.i.1.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.1

if.end.i.i.1.5:                                   ; preds = %if.end.i.i.1.4
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i.1.5 = shl i32 %switch.load42, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.1.5, i32 %13)
  %cmp3.not.i.i.1.5 = icmp slt i32 %mul.i.i.1.5, %13
  %spec.select62 = select i1 %cmp3.not.i.i.1.5, i32 56, i32 48
  br label %max77620_get_fps_period_reg_value.exit.i.1

max77620_get_fps_period_reg_value.exit.i.1:       ; preds = %if.end.i.i.1.5, %if.end.i.i.1.4.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %if.end.i.i.1.3.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %if.end.i.i.1.2.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %if.end.i.i.1.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %if.end.i.i.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %switch.lookup40.max77620_get_fps_period_reg_value.exit.i.1_crit_edge, %if.end.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge
  %retval.0.i.i.1 = phi i32 [ -176, %if.end.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 0, %switch.lookup40.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 8, %if.end.i.i.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 16, %if.end.i.i.1.1.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 24, %if.end.i.i.1.2.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 32, %if.end.i.i.1.3.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ 40, %if.end.i.i.1.4.max77620_get_fps_period_reg_value.exit.i.1_crit_edge ], [ %spec.select62, %if.end.i.i.1.5 ]
  %18 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmap.i, align 4
  %call.i.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 68, i32 noundef 56, i32 noundef %retval.0.i.i.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp.i.1, label %max77620_get_fps_period_reg_value.exit.i.1.max77620_set_fps_period.exit.thread_crit_edge, label %max77620_get_fps_period_reg_value.exit.i.1.for.inc.1_crit_edge

max77620_get_fps_period_reg_value.exit.i.1.for.inc.1_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

max77620_get_fps_period_reg_value.exit.i.1.max77620_set_fps_period.exit.thread_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_set_fps_period.exit.thread

for.inc.1:                                        ; preds = %max77620_get_fps_period_reg_value.exit.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.max77620_chip, ptr %1, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.2 = icmp slt i32 %21, 0
  br i1 %cmp1.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %22 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %switch.lookup43, label %if.end.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

switch.lookup43:                                  ; preds = %if.end.2
  %switch.gep44 = getelementptr inbounds [3 x i32], ptr @switch.table.max77620_i2c_resume.82, i32 0, i32 %23
  %25 = ptrtoint ptr %switch.gep44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load45 = load i32, ptr %switch.gep44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load45, i32 %21)
  %cmp3.not9.i.i.2 = icmp ult i32 %switch.load45, %21
  br i1 %cmp3.not9.i.i.2, label %if.end.i.i.2, label %switch.lookup43.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

switch.lookup43.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %switch.lookup43
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2:                                     ; preds = %switch.lookup43
  %mul.i.i.2 = shl i32 %switch.load45, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2, i32 %21)
  %cmp3.not.i.i.2 = icmp slt i32 %mul.i.i.2, %21
  br i1 %cmp3.not.i.i.2, label %if.end.i.i.2.1, label %if.end.i.i.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.i.i.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2.1:                                   ; preds = %if.end.i.i.2
  %mul.i.i.2.1 = shl i32 %switch.load45, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2.1, i32 %21)
  %cmp3.not.i.i.2.1 = icmp slt i32 %mul.i.i.2.1, %21
  br i1 %cmp3.not.i.i.2.1, label %if.end.i.i.2.2, label %if.end.i.i.2.1.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.i.i.2.1.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.i.i.2.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2.2:                                   ; preds = %if.end.i.i.2.1
  %mul.i.i.2.2 = shl i32 %switch.load45, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2.2, i32 %21)
  %cmp3.not.i.i.2.2 = icmp slt i32 %mul.i.i.2.2, %21
  br i1 %cmp3.not.i.i.2.2, label %if.end.i.i.2.3, label %if.end.i.i.2.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.i.i.2.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.i.i.2.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2.3:                                   ; preds = %if.end.i.i.2.2
  %mul.i.i.2.3 = shl i32 %switch.load45, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2.3, i32 %21)
  %cmp3.not.i.i.2.3 = icmp slt i32 %mul.i.i.2.3, %21
  br i1 %cmp3.not.i.i.2.3, label %if.end.i.i.2.4, label %if.end.i.i.2.3.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.i.i.2.3.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.i.i.2.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2.4:                                   ; preds = %if.end.i.i.2.3
  %mul.i.i.2.4 = shl i32 %switch.load45, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2.4, i32 %21)
  %cmp3.not.i.i.2.4 = icmp slt i32 %mul.i.i.2.4, %21
  br i1 %cmp3.not.i.i.2.4, label %if.end.i.i.2.5, label %if.end.i.i.2.4.max77620_get_fps_period_reg_value.exit.i.2_crit_edge

if.end.i.i.2.4.max77620_get_fps_period_reg_value.exit.i.2_crit_edge: ; preds = %if.end.i.i.2.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_get_fps_period_reg_value.exit.i.2

if.end.i.i.2.5:                                   ; preds = %if.end.i.i.2.4
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i.2.5 = shl i32 %switch.load45, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.2.5, i32 %21)
  %cmp3.not.i.i.2.5 = icmp slt i32 %mul.i.i.2.5, %21
  %spec.select63 = select i1 %cmp3.not.i.i.2.5, i32 56, i32 48
  br label %max77620_get_fps_period_reg_value.exit.i.2

max77620_get_fps_period_reg_value.exit.i.2:       ; preds = %if.end.i.i.2.5, %if.end.i.i.2.4.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %if.end.i.i.2.3.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %if.end.i.i.2.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %if.end.i.i.2.1.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %if.end.i.i.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %switch.lookup43.max77620_get_fps_period_reg_value.exit.i.2_crit_edge, %if.end.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge
  %retval.0.i.i.2 = phi i32 [ -176, %if.end.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 0, %switch.lookup43.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 8, %if.end.i.i.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 16, %if.end.i.i.2.1.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 24, %if.end.i.i.2.2.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 32, %if.end.i.i.2.3.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ 40, %if.end.i.i.2.4.max77620_get_fps_period_reg_value.exit.i.2_crit_edge ], [ %spec.select63, %if.end.i.i.2.5 ]
  %26 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmap.i, align 4
  %call.i.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 69, i32 noundef 56, i32 noundef %retval.0.i.i.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.i.2, 0
  br i1 %cmp.i.2, label %max77620_get_fps_period_reg_value.exit.i.2.max77620_set_fps_period.exit.thread_crit_edge, label %max77620_get_fps_period_reg_value.exit.i.2.for.inc.2_crit_edge

max77620_get_fps_period_reg_value.exit.i.2.for.inc.2_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

max77620_get_fps_period_reg_value.exit.i.2.max77620_set_fps_period.exit.thread_crit_edge: ; preds = %max77620_get_fps_period_reg_value.exit.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77620_set_fps_period.exit.thread

for.inc.2:                                        ; preds = %max77620_get_fps_period_reg_value.exit.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %28 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chip_id.i.i, align 4
  %.off = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %for.inc.2.out_crit_edge, label %if.end12

for.inc.2.out_crit_edge:                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end12:                                         ; preds = %for.inc.2
  %30 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmap.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 66, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  br i1 %cmp14, label %do.end, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %call.i) #10
  br label %cleanup

out:                                              ; preds = %if.end12.out_crit_edge, %for.inc.2.out_crit_edge
  %irq = getelementptr i8, ptr %dev, i32 932
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %33) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %max77620_set_fps_period.exit.thread
  %retval.0 = phi i32 [ 0, %out ], [ %call.i, %do.end ], [ %call.i.i.lcssa, %max77620_set_fps_period.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !111, !112, !113, !114, !116, !118, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !149, !150, !151, !152, !154, !156, !158, !160, !161, !162, !164, !166, !167, !168, !170, !172, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !193}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__initcall__kmod_max77620__293_705_max77620_driver_init6, !1, !"__initcall__kmod_max77620__293_705_max77620_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/max77620.c", i32 705, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/max77620.c", i32 699, i32 11}
!4 = !{ptr @max77620_driver, !5, !"max77620_driver", i1 false, i1 false}
!5 = !{!"../drivers/mfd/max77620.c", i32 697, i32 26}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mfd/max77620.c", i32 531, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @max77620_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @max77620_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @max77620_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/mfd/max77620.c", i32 535, i32 15}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/max77620.c", i32 538, i32 3}
!19 = !{ptr @max77620_probe._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @max77620_probe._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/max77620.c", i32 552, i32 3}
!23 = !{ptr @max77620_probe._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @max77620_probe._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/max77620.c", i32 564, i32 3}
!27 = !{ptr @max77620_probe._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max77620_probe._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/max77620.c", i32 70, i32 12}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/max77620.c", i32 71, i32 12}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/max77620.c", i32 72, i32 12}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/max77620.c", i32 73, i32 12}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/max77620.c", i32 75, i32 11}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/max77620.c", i32 79, i32 11}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/max77620.c", i32 83, i32 11}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/max77620.c", i32 87, i32 11}
!45 = !{ptr @max77620_children, !46, !"max77620_children", i1 false, i1 false}
!46 = !{!"../drivers/mfd/max77620.c", i32 69, i32 30}
!47 = !{ptr @gpio_resources, !48, !"gpio_resources", i1 false, i1 false}
!48 = !{!"../drivers/mfd/max77620.c", i32 39, i32 30}
!49 = !{ptr @rtc_resources, !50, !"rtc_resources", i1 false, i1 false}
!50 = !{!"../drivers/mfd/max77620.c", i32 47, i32 30}
!51 = !{ptr @power_resources, !52, !"power_resources", i1 false, i1 false}
!52 = !{!"../drivers/mfd/max77620.c", i32 43, i32 30}
!53 = !{ptr @thermal_resources, !54, !"thermal_resources", i1 false, i1 false}
!54 = !{!"../drivers/mfd/max77620.c", i32 51, i32 30}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/max77620.c", i32 172, i32 10}
!57 = !{ptr @max77620_regmap_config, !58, !"max77620_regmap_config", i1 false, i1 false}
!58 = !{!"../drivers/mfd/max77620.c", i32 171, i32 35}
!59 = !{ptr @max77620_writable_table, !60, !"max77620_writable_table", i1 false, i1 false}
!60 = !{!"../drivers/mfd/max77620.c", i32 156, i32 41}
!61 = !{ptr @max77620_writable_ranges, !62, !"max77620_writable_ranges", i1 false, i1 false}
!62 = !{!"../drivers/mfd/max77620.c", i32 152, i32 34}
!63 = !{ptr @max77620_readable_table, !64, !"max77620_readable_table", i1 false, i1 false}
!64 = !{!"../drivers/mfd/max77620.c", i32 137, i32 41}
!65 = !{ptr @max77620_readable_ranges, !66, !"max77620_readable_ranges", i1 false, i1 false}
!66 = !{!"../drivers/mfd/max77620.c", i32 133, i32 34}
!67 = !{ptr @max77620_volatile_table, !68, !"max77620_volatile_table", i1 false, i1 false}
!68 = !{!"../drivers/mfd/max77620.c", i32 166, i32 41}
!69 = !{ptr @max77620_cacheable_ranges, !70, !"max77620_cacheable_ranges", i1 false, i1 false}
!70 = !{!"../drivers/mfd/max77620.c", i32 161, i32 34}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/max77620.c", i32 94, i32 12}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/max77620.c", i32 96, i32 12}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mfd/max77620.c", i32 107, i32 11}
!77 = !{ptr @max20024_children, !78, !"max20024_children", i1 false, i1 false}
!78 = !{!"../drivers/mfd/max77620.c", i32 93, i32 30}
!79 = !{ptr @max20024_regmap_config, !80, !"max20024_regmap_config", i1 false, i1 false}
!80 = !{!"../drivers/mfd/max77620.c", i32 183, i32 35}
!81 = !{ptr @max20024_readable_table, !82, !"max20024_readable_table", i1 false, i1 false}
!82 = !{!"../drivers/mfd/max77620.c", i32 147, i32 41}
!83 = !{ptr @max20024_readable_ranges, !84, !"max20024_readable_ranges", i1 false, i1 false}
!84 = !{!"../drivers/mfd/max77620.c", i32 142, i32 34}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/max77620.c", i32 116, i32 12}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mfd/max77620.c", i32 127, i32 11}
!89 = !{ptr @max77663_children, !90, !"max77663_children", i1 false, i1 false}
!90 = !{!"../drivers/mfd/max77620.c", i32 113, i32 30}
!91 = !{ptr @max77663_regmap_config, !92, !"max77663_regmap_config", i1 false, i1 false}
!92 = !{!"../drivers/mfd/max77620.c", i32 212, i32 35}
!93 = !{ptr @max77663_writable_table, !94, !"max77663_writable_table", i1 false, i1 false}
!94 = !{!"../drivers/mfd/max77620.c", i32 207, i32 41}
!95 = !{ptr @max77663_writable_ranges, !96, !"max77663_writable_ranges", i1 false, i1 false}
!96 = !{!"../drivers/mfd/max77620.c", i32 203, i32 34}
!97 = !{ptr @max77663_readable_table, !98, !"max77663_readable_table", i1 false, i1 false}
!98 = !{!"../drivers/mfd/max77620.c", i32 198, i32 41}
!99 = !{ptr @max77663_readable_ranges, !100, !"max77663_readable_ranges", i1 false, i1 false}
!100 = !{!"../drivers/mfd/max77620.c", i32 194, i32 34}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mfd/max77620.c", i32 471, i32 4}
!103 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @max77620_read_es_version._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @max77620_read_es_version._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mfd/max77620.c", i32 474, i32 3}
!108 = !{ptr @max77620_read_es_version.__UNIQUE_ID_ddebug292, !107, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!109 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mfd/max77620.c", i32 480, i32 2}
!111 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @max77620_read_es_version._entry.33, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @max77620_read_es_version._entry_ptr.36, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mfd/max77620.c", i32 258, i32 10}
!116 = !{ptr @max77620_top_irq_chip, !117, !"max77620_top_irq_chip", i1 false, i1 false}
!117 = !{!"../drivers/mfd/max77620.c", i32 257, i32 31}
!118 = !{ptr @max77620_top_irqs, !119, !"max77620_top_irqs", i1 false, i1 false}
!119 = !{!"../drivers/mfd/max77620.c", i32 56, i32 32}
!120 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mfd/max77620.c", i32 239, i32 3}
!122 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @max77620_irq_global_mask._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @max77620_irq_global_mask._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mfd/max77620.c", i32 252, i32 3}
!127 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @max77620_irq_global_unmask._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @max77620_irq_global_unmask._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mfd/max77620.c", i32 414, i32 46}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mfd/max77620.c", i32 430, i32 3}
!134 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @max77620_initialise_fps._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @max77620_initialise_fps._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mfd/max77620.c", i32 443, i32 3}
!139 = !{ptr @max77620_initialise_fps._entry.46, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @max77620_initialise_fps._entry_ptr.48, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mfd/max77620.c", i32 453, i32 4}
!143 = !{ptr @max77620_initialise_fps._entry.49, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @max77620_initialise_fps._entry_ptr.51, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mfd/max77620.c", i32 337, i32 21}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mfd/max77620.c", i32 343, i32 3}
!149 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @max77620_config_fps._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @max77620_config_fps._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mfd/max77620.c", i32 347, i32 37}
!154 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mfd/max77620.c", i32 358, i32 37}
!156 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mfd/max77620.c", i32 364, i32 37}
!158 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mfd/max77620.c", i32 368, i32 4}
!160 = !{ptr @max77620_config_fps._entry.58, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @max77620_config_fps._entry_ptr.60, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mfd/max77620.c", i32 381, i32 5}
!164 = !{ptr @.str.63, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mfd/max77620.c", i32 394, i32 3}
!166 = !{ptr @max77620_config_fps._entry.62, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @max77620_config_fps._entry_ptr.64, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../include/linux/of.h", i32 1548, i32 35}
!170 = !{ptr @max77620_scratch, !171, !"max77620_scratch", i1 false, i1 false}
!171 = !{!"../drivers/mfd/max77620.c", i32 37, i32 30}
!172 = !{ptr @max77620_pm_ops, !173, !"max77620_pm_ops", i1 false, i1 false}
!173 = !{!"../drivers/mfd/max77620.c", i32 693, i32 32}
!174 = !{ptr @.str.66, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mfd/max77620.c", i32 625, i32 3}
!176 = !{ptr @.str.67, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @max77620_i2c_suspend._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @max77620_i2c_suspend._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mfd/max77620.c", i32 636, i32 3}
!181 = !{ptr @max77620_i2c_suspend._entry.68, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @max77620_i2c_suspend._entry_ptr.70, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.71, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mfd/max77620.c", i32 588, i32 3}
!185 = !{ptr @.str.72, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @max77620_set_fps_period._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @max77620_set_fps_period._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.73, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mfd/max77620.c", i32 675, i32 3}
!190 = !{ptr @.str.74, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @max77620_i2c_resume._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @max77620_i2c_resume._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @max77620_id, !194, !"max77620_id", i1 false, i1 false}
!194 = !{!"../drivers/mfd/max77620.c", i32 686, i32 35}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{!"auto-init"}
!205 = !{i8 0, i8 2}
!206 = !{i64 2149004345, i64 2149004350, i64 2149004363, i64 2149004407, i64 2149004441, i64 2149004462}
