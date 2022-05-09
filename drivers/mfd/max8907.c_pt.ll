; ModuleID = '/llk/IR_all_yes/drivers/mfd/max8907.c_pt.bc'
source_filename = "../drivers/mfd/max8907.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.max8907_platform_data = type { [29 x ptr], i8 }
%struct.max8907 = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_max8907__288_334_max8907_i2c_init4 = internal global ptr @max8907_i2c_init, section ".initcall4.init", align 4
@max8907_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max8907_i2c_probe, ptr @max8907_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max8907_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8907_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max8907_i2c_exit = internal global ptr @max8907_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [55 x i8] c"max8907.description=MAX8907 multi-function core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [51 x i8] c"max8907.author=Gyungoh Yoo <jack.yoo@maxim-ic.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [33 x i8] c"max8907.file=drivers/mfd/max8907\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"max8907.license=GPL v2\00", section ".modinfo", align 1
@max8907_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Failed to register I2C driver: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max8907_i2c_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/max8907.c\00", [42 x i8] zeroinitializer }, align 32
@max8907_i2c_init._entry_ptr = internal global ptr @max8907_i2c_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8907\00", [24 x i8] zeroinitializer }, align 32
@max8907_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8907\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max8907_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8907\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"maxim,system-power-controller\00", [34 x i8] zeroinitializer }, align 32
@max8907_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max8907_regmap_gen_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @max8907_gen_is_writeable_reg, ptr null, ptr @max8907_gen_is_volatile_reg, ptr @max8907_gen_is_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 158, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"max8907:210:(&max8907_regmap_gen_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@max8907_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 213, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gen regmap init failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8907_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8907_i2c_probe._entry_ptr = internal global ptr @max8907_i2c_probe._entry, section ".printk_index", align 4
@max8907_i2c_probe._key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max8907_regmap_rtc_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @max8907_rtc_is_writeable_reg, ptr null, ptr @max8907_rtc_is_volatile_reg, ptr @max8907_rtc_is_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 30, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"max8907:224:(&max8907_regmap_rtc_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@max8907_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 227, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtc regmap init failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@max8907_i2c_probe._entry_ptr.14 = internal global ptr @max8907_i2c_probe._entry.12, section ".printk_index", align 4
@max8907_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.2, i32 236, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to add chg irq chip: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@max8907_i2c_probe._entry_ptr.17 = internal global ptr @max8907_i2c_probe._entry.15, section ".printk_index", align 4
@max8907_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.2, i32 244, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to add on off irq chip: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@max8907_i2c_probe._entry_ptr.20 = internal global ptr @max8907_i2c_probe._entry.18, section ".printk_index", align 4
@max8907_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.2, i32 252, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to add rtc irq chip: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@max8907_i2c_probe._entry_ptr.23 = internal global ptr @max8907_i2c_probe._entry.21, section ".printk_index", align 4
@max8907_cells = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@max8907_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str.2, i32 259, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add MFD devices %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max8907_i2c_probe._entry_ptr.26 = internal global ptr @max8907_i2c_probe._entry.24, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@max8907_pm_off = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8907 chg\00", [20 x i8] zeroinitializer }, align 32
@max8907_chg_irqs = internal constant { [11 x %struct.regmap_irq], [116 x i8] } { [11 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }], [116 x i8] zeroinitializer }, align 32
@max8907_chg_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.27, i32 0, i32 0, ptr null, i32 0, i32 126, i32 128, i32 0, i32 0, i32 128, i32 0, ptr null, i32 1, i8 0, i8 0, i32 2, ptr @max8907_chg_irqs, i32 11, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max8907 on_off\00", [17 x i8] zeroinitializer }, align 32
@max8907_on_off_irqs = internal constant { [10 x %struct.regmap_irq], [88 x i8] } { [10 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }], [88 x i8] zeroinitializer }, align 32
@max8907_on_off_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.29, i32 0, i32 0, ptr null, i32 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, ptr null, i32 12, i8 0, i8 0, i32 2, ptr @max8907_on_off_irqs, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8907 rtc\00", [20 x i8] zeroinitializer }, align 32
@max8907_rtc_irqs = internal constant { [2 x %struct.regmap_irq], [56 x i8] } { [2 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@max8907_rtc_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.31, i32 0, i32 0, ptr null, i32 0, i32 28, i32 29, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max8907_rtc_irqs, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8907-regulator\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8907-rtc\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 13, i64 126, i64 127, i64 130]
@__sancov_gen_cov_switch_values.35 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 13, i64 126, i64 127, i64 130]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 13, i64 126, i64 127]
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"max8907_i2c_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 314, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 330, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 316, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"max8907_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 301, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"max8907_i2c_id\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 308, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 196, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"max8907_regmap_gen_config\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 60, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 209, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 213, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [26 x i8] c"max8907_regmap_rtc_config\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 105, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 223, i32 24 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 227, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 236, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 244, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 252, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [14 x i8] c"max8907_cells\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 22, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 259, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"max8907_pm_off\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 177, i32 24 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 130, i32 10 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"max8907_chg_irqs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 115, i32 32 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"max8907_chg_irq_chip\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 129, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 154, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"max8907_on_off_irqs\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 140, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant [24 x i8] c"max8907_on_off_irq_chip\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 153, i32 37 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 169, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"max8907_rtc_irqs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 163, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant [21 x i8] c"max8907_rtc_irq_chip\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 168, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 23, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [25 x i8] c"../drivers/mfd/max8907.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 24, i32 12 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max8907_i2c_exit, ptr @__initcall__kmod_max8907__288_334_max8907_i2c_init4, ptr @max8907_i2c_exit, ptr @max8907_i2c_init._entry, ptr @max8907_i2c_init._entry_ptr, ptr @max8907_i2c_probe._entry, ptr @max8907_i2c_probe._entry.12, ptr @max8907_i2c_probe._entry.15, ptr @max8907_i2c_probe._entry.18, ptr @max8907_i2c_probe._entry.21, ptr @max8907_i2c_probe._entry.24, ptr @max8907_i2c_probe._entry_ptr, ptr @max8907_i2c_probe._entry_ptr.14, ptr @max8907_i2c_probe._entry_ptr.17, ptr @max8907_i2c_probe._entry_ptr.20, ptr @max8907_i2c_probe._entry_ptr.23, ptr @max8907_i2c_probe._entry_ptr.26, ptr @max8907_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @max8907_of_match, ptr @max8907_i2c_id, ptr @.str.4, ptr @max8907_i2c_probe._key, ptr @max8907_regmap_gen_config, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @max8907_i2c_probe._key.10, ptr @max8907_regmap_rtc_config, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @max8907_cells, ptr @.str.25, ptr @max8907_pm_off, ptr @.str.27, ptr @max8907_chg_irqs, ptr @max8907_chg_irq_chip, ptr @.str.29, ptr @max8907_on_off_irqs, ptr @max8907_on_off_irq_chip, ptr @.str.31, ptr @max8907_rtc_irqs, ptr @max8907_rtc_irq_chip, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_regmap_gen_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_i2c_probe._key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_regmap_rtc_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_cells to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_pm_off to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_chg_irqs to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_chg_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_on_off_irqs to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_on_off_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_rtc_irqs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8907_rtc_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8907_i2c_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8907_i2c_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8907_i2c_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @max8907_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8907_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pm_off1 = getelementptr inbounds %struct.max8907_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pm_off1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_off1, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2 = icmp ne i8 %3, 0
  br label %if.end10

if.else:                                          ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.else.if.end10_crit_edge, label %if.then5

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i, null
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.else.if.end10_crit_edge, %if.then
  %pm_off.0.shrunk = phi i1 [ %tobool2, %if.then ], [ %tobool.i, %if.then5 ], [ false, %if.else.if.end10_crit_edge ]
  %call.i165 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 124, i32 noundef 3520) #5
  %tobool13.not = icmp eq ptr %call.i165, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %call.i165 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i165, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %i2c_gen = getelementptr inbounds %struct.max8907, ptr %call.i165, i32 0, i32 2
  %7 = ptrtoint ptr %i2c_gen to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %i2c, ptr %i2c_gen, align 4
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i165, ptr %driver_data.i, align 4
  %call19 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @max8907_regmap_gen_config, ptr noundef nonnull @max8907_i2c_probe._key, ptr noundef nonnull @.str.5) #5
  %regmap_gen = getelementptr inbounds %struct.max8907, ptr %call.i165, i32 0, i32 4
  %9 = ptrtoint ptr %regmap_gen to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call19, ptr %regmap_gen, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %10) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %call27 = tail call ptr @i2c_new_dummy_device(ptr noundef %12, i16 noundef zeroext 104) #5
  %i2c_rtc = getelementptr inbounds %struct.max8907, ptr %call.i165, i32 0, i32 3
  %13 = ptrtoint ptr %i2c_rtc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call27, ptr %i2c_rtc, align 4
  %cmp.i166 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %driver_data.i.i167 = getelementptr inbounds %struct.i2c_client, ptr %call27, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i167 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i165, ptr %driver_data.i.i167, align 4
  %16 = ptrtoint ptr %i2c_rtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_rtc, align 4
  %call37 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %17, ptr noundef nonnull @max8907_regmap_rtc_config, ptr noundef nonnull @max8907_i2c_probe._key.10, ptr noundef nonnull @.str.11) #5
  %regmap_rtc = getelementptr inbounds %struct.max8907, ptr %call.i165, i32 0, i32 5
  %18 = ptrtoint ptr %regmap_rtc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call37, ptr %regmap_rtc, align 4
  %cmp.i168 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then40, label %if.end47

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %19) #8
  br label %err_regmap_rtc

if.end47:                                         ; preds = %if.end33
  %20 = ptrtoint ptr %regmap_gen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap_gen, align 4
  %22 = ptrtoint ptr %i2c_gen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gen, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %irqc_chg = getelementptr inbounds %struct.max8907, ptr %call.i165, i32 0, i32 6
  %call50 = tail call i32 @regmap_add_irq_chip(ptr noundef %21, i32 noundef %25, i32 noundef 8320, i32 noundef -1, ptr noundef nonnull @max8907_chg_irq_chip, ptr noundef %irqc_chg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp.not = icmp eq i32 %call50, 0
  br i1 %cmp.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call50) #8
  br label %err_regmap_rtc

if.end56:                                         ; preds = %if.end47
  %26 = ptrtoint ptr %regmap_gen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap_gen, align 4
  %28 = ptrtoint ptr %i2c_gen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_gen, align 4
  %irq59 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %irq59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq59, align 4
  %irqc_on_off = getelementptr inbounds %struct.max8907, ptr %call.i165, i32 0, i32 7
  %call60 = tail call i32 @regmap_add_irq_chip(ptr noundef %27, i32 noundef %31, i32 noundef 8320, i32 noundef -1, ptr noundef nonnull @max8907_on_off_irq_chip, ptr noundef %irqc_on_off) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, 0
  br i1 %cmp61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call60) #8
  br label %err_irqc_on_off

if.end67:                                         ; preds = %if.end56
  %32 = ptrtoint ptr %regmap_rtc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap_rtc, align 4
  %34 = ptrtoint ptr %i2c_gen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_gen, align 4
  %irq70 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %irq70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq70, align 4
  %irqc_rtc = getelementptr inbounds %struct.max8907, ptr %call.i165, i32 0, i32 8
  %call71 = tail call i32 @regmap_add_irq_chip(ptr noundef %33, i32 noundef %37, i32 noundef 8320, i32 noundef -1, ptr noundef nonnull @max8907_rtc_irq_chip, ptr noundef %irqc_rtc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72.not = icmp eq i32 %call71, 0
  br i1 %cmp72.not, label %if.end78, label %do.end76

do.end76:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call71) #8
  br label %err_irqc_rtc

if.end78:                                         ; preds = %if.end67
  %38 = ptrtoint ptr %call.i165 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i165, align 4
  %call80 = tail call i32 @mfd_add_devices(ptr noundef %39, i32 noundef -1, ptr noundef nonnull @max8907_cells, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81.not = icmp eq i32 %call80, 0
  br i1 %cmp81.not, label %if.end87, label %do.end85

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call80) #8
  %40 = ptrtoint ptr %i2c_gen to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_gen, align 4
  %irq93 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %irq93 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq93, align 4
  %44 = ptrtoint ptr %irqc_rtc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irqc_rtc, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %43, ptr noundef %45) #5
  br label %err_irqc_rtc

if.end87:                                         ; preds = %if.end78
  br i1 %pm_off.0.shrunk, label %land.lhs.true, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %46 = load ptr, ptr @pm_power_off, align 4
  %tobool89.not = icmp eq ptr %46, null
  br i1 %tobool89.not, label %if.then90, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then90:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %call.i165, ptr @max8907_pm_off, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @max8907_power_off, ptr @pm_power_off, align 4
  br label %cleanup

err_irqc_rtc:                                     ; preds = %do.end85, %do.end76
  %ret.0 = phi i32 [ %call71, %do.end76 ], [ %call80, %do.end85 ]
  %47 = ptrtoint ptr %i2c_gen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_gen, align 4
  %irq96 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %irq96 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq96, align 4
  %51 = ptrtoint ptr %irqc_on_off to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %irqc_on_off, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %50, ptr noundef %52) #5
  br label %err_irqc_on_off

err_irqc_on_off:                                  ; preds = %err_irqc_rtc, %do.end65
  %ret.1 = phi i32 [ %call60, %do.end65 ], [ %ret.0, %err_irqc_rtc ]
  %53 = ptrtoint ptr %i2c_gen to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c_gen, align 4
  %irq99 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %irq99 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq99, align 4
  %57 = ptrtoint ptr %irqc_chg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %irqc_chg, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %56, ptr noundef %58) #5
  br label %err_regmap_rtc

err_regmap_rtc:                                   ; preds = %err_irqc_on_off, %do.end54, %if.then40
  %ret.2 = phi i32 [ %19, %if.then40 ], [ %call50, %do.end54 ], [ %ret.1, %err_irqc_on_off ]
  %59 = ptrtoint ptr %i2c_rtc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c_rtc, align 4
  tail call void @i2c_unregister_device(ptr noundef %60) #5
  br label %cleanup

cleanup:                                          ; preds = %err_regmap_rtc, %if.then90, %land.lhs.true.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.then30, %if.then22, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then90 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ], [ %10, %if.then22 ], [ %14, %if.then30 ], [ %ret.2, %err_regmap_rtc ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8907_i2c_remove(ptr nocapture noundef readonly %i2c) #3 align 64 {
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
  %i2c_gen = getelementptr inbounds %struct.max8907, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %i2c_gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gen, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %irqc_rtc = getelementptr inbounds %struct.max8907, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %irqc_rtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irqc_rtc, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %7, ptr noundef %9) #5
  %10 = ptrtoint ptr %i2c_gen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gen, align 4
  %irq2 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq2, align 4
  %irqc_on_off = getelementptr inbounds %struct.max8907, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %irqc_on_off to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irqc_on_off, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %13, ptr noundef %15) #5
  %16 = ptrtoint ptr %i2c_gen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_gen, align 4
  %irq4 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq4, align 4
  %irqc_chg = getelementptr inbounds %struct.max8907, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %irqc_chg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irqc_chg, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %19, ptr noundef %21) #5
  %i2c_rtc = getelementptr inbounds %struct.max8907, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %i2c_rtc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_rtc, align 4
  tail call void @i2c_unregister_device(ptr noundef %23) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8907_power_off() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @max8907_pm_off, align 4
  %regmap_gen = getelementptr inbounds %struct.max8907, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %regmap_gen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap_gen, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 15, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_gen_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default.i [
    i32 1, label %entry.max8907_gen_is_volatile_reg.exit_crit_edge
    i32 3, label %entry.max8907_gen_is_volatile_reg.exit_crit_edge1
    i32 13, label %entry.max8907_gen_is_volatile_reg.exit_crit_edge2
    i32 126, label %entry.max8907_gen_is_volatile_reg.exit_crit_edge3
    i32 127, label %entry.max8907_gen_is_volatile_reg.exit_crit_edge4
    i32 130, label %entry.max8907_gen_is_volatile_reg.exit_crit_edge5
  ]

entry.max8907_gen_is_volatile_reg.exit_crit_edge5: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8907_gen_is_volatile_reg.exit

entry.max8907_gen_is_volatile_reg.exit_crit_edge4: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8907_gen_is_volatile_reg.exit

entry.max8907_gen_is_volatile_reg.exit_crit_edge3: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8907_gen_is_volatile_reg.exit

entry.max8907_gen_is_volatile_reg.exit_crit_edge2: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8907_gen_is_volatile_reg.exit

entry.max8907_gen_is_volatile_reg.exit_crit_edge1: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8907_gen_is_volatile_reg.exit

entry.max8907_gen_is_volatile_reg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8907_gen_is_volatile_reg.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8907_gen_is_volatile_reg.exit

max8907_gen_is_volatile_reg.exit:                 ; preds = %sw.default.i, %entry.max8907_gen_is_volatile_reg.exit_crit_edge, %entry.max8907_gen_is_volatile_reg.exit_crit_edge1, %entry.max8907_gen_is_volatile_reg.exit_crit_edge2, %entry.max8907_gen_is_volatile_reg.exit_crit_edge3, %entry.max8907_gen_is_volatile_reg.exit_crit_edge4, %entry.max8907_gen_is_volatile_reg.exit_crit_edge5
  %retval.0.i = phi i1 [ true, %sw.default.i ], [ false, %entry.max8907_gen_is_volatile_reg.exit_crit_edge ], [ false, %entry.max8907_gen_is_volatile_reg.exit_crit_edge1 ], [ false, %entry.max8907_gen_is_volatile_reg.exit_crit_edge2 ], [ false, %entry.max8907_gen_is_volatile_reg.exit_crit_edge3 ], [ false, %entry.max8907_gen_is_volatile_reg.exit_crit_edge4 ], [ false, %entry.max8907_gen_is_volatile_reg.exit_crit_edge5 ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_gen_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 3, label %entry.return_crit_edge1
    i32 13, label %entry.return_crit_edge2
    i32 126, label %entry.return_crit_edge3
    i32 127, label %entry.return_crit_edge4
    i32 130, label %entry.return_crit_edge5
  ]

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_gen_is_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 13, label %entry.return_crit_edge1
    i32 126, label %entry.return_crit_edge2
    i32 127, label %entry.return_crit_edge3
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_rtc_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -26
  %switch.and = and i32 %0, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_rtc_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %reg)
  %cmp = icmp ult i32 %reg, 8
  %0 = add i32 %reg, -26
  %switch.and = and i32 %0, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %retval.0 = or i1 %cmp, %switch.selectcmp
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_rtc_is_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %reg)
  %cond = icmp eq i32 %reg, 28
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !28, !29, !30, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_max8907__288_334_max8907_i2c_init4, !1, !"__initcall__kmod_max8907__288_334_max8907_i2c_init4", i1 false, i1 false}
!1 = !{!"../drivers/mfd/max8907.c", i32 334, i32 1}
!2 = !{ptr @__exitcall_max8907_i2c_exit, !3, !"__exitcall_max8907_i2c_exit", i1 false, i1 false}
!3 = !{!"../drivers/mfd/max8907.c", i32 340, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/mfd/max8907.c", i32 342, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/mfd/max8907.c", i32 343, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/mfd/max8907.c", i32 344, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/max8907.c", i32 330, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @max8907_i2c_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @max8907_i2c_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/max8907.c", i32 316, i32 11}
!19 = !{ptr @max8907_i2c_driver, !20, !"max8907_i2c_driver", i1 false, i1 false}
!20 = !{!"../drivers/mfd/max8907.c", i32 314, i32 26}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/max8907.c", i32 196, i32 6}
!23 = !{ptr @max8907_i2c_probe._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/mfd/max8907.c", i32 209, i32 24}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/max8907.c", i32 213, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @max8907_i2c_probe._entry, !27, !"_entry", i1 false, i1 false}
!32 = !{ptr @max8907_i2c_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @max8907_i2c_probe._key.10, !34, !"_key", i1 false, i1 false}
!34 = !{!"../drivers/mfd/max8907.c", i32 223, i32 24}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/max8907.c", i32 227, i32 3}
!38 = !{ptr @max8907_i2c_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @max8907_i2c_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/max8907.c", i32 236, i32 3}
!42 = !{ptr @max8907_i2c_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @max8907_i2c_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/max8907.c", i32 244, i32 3}
!46 = !{ptr @max8907_i2c_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @max8907_i2c_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/max8907.c", i32 252, i32 3}
!50 = !{ptr @max8907_i2c_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @max8907_i2c_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/max8907.c", i32 259, i32 3}
!54 = !{ptr @max8907_i2c_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @max8907_i2c_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @max8907_regmap_gen_config, !57, !"max8907_regmap_gen_config", i1 false, i1 false}
!57 = !{!"../drivers/mfd/max8907.c", i32 60, i32 35}
!58 = !{ptr @max8907_regmap_rtc_config, !59, !"max8907_regmap_rtc_config", i1 false, i1 false}
!59 = !{!"../drivers/mfd/max8907.c", i32 105, i32 35}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/max8907.c", i32 130, i32 10}
!62 = !{ptr @max8907_chg_irq_chip, !63, !"max8907_chg_irq_chip", i1 false, i1 false}
!63 = !{!"../drivers/mfd/max8907.c", i32 129, i32 37}
!64 = !{ptr @max8907_chg_irqs, !65, !"max8907_chg_irqs", i1 false, i1 false}
!65 = !{!"../drivers/mfd/max8907.c", i32 115, i32 32}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/max8907.c", i32 154, i32 10}
!68 = !{ptr @max8907_on_off_irq_chip, !69, !"max8907_on_off_irq_chip", i1 false, i1 false}
!69 = !{!"../drivers/mfd/max8907.c", i32 153, i32 37}
!70 = !{ptr @max8907_on_off_irqs, !71, !"max8907_on_off_irqs", i1 false, i1 false}
!71 = !{!"../drivers/mfd/max8907.c", i32 140, i32 32}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mfd/max8907.c", i32 169, i32 10}
!74 = !{ptr @max8907_rtc_irq_chip, !75, !"max8907_rtc_irq_chip", i1 false, i1 false}
!75 = !{!"../drivers/mfd/max8907.c", i32 168, i32 37}
!76 = !{ptr @max8907_rtc_irqs, !77, !"max8907_rtc_irqs", i1 false, i1 false}
!77 = !{!"../drivers/mfd/max8907.c", i32 163, i32 32}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mfd/max8907.c", i32 23, i32 12}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/max8907.c", i32 24, i32 12}
!82 = !{ptr @max8907_cells, !83, !"max8907_cells", i1 false, i1 false}
!83 = !{!"../drivers/mfd/max8907.c", i32 22, i32 30}
!84 = !{ptr @max8907_pm_off, !85, !"max8907_pm_off", i1 false, i1 false}
!85 = !{!"../drivers/mfd/max8907.c", i32 177, i32 24}
!86 = !{ptr @max8907_of_match, !87, !"max8907_of_match", i1 false, i1 false}
!87 = !{!"../drivers/mfd/max8907.c", i32 301, i32 34}
!88 = !{ptr @max8907_i2c_id, !89, !"max8907_i2c_id", i1 false, i1 false}
!89 = !{!"../drivers/mfd/max8907.c", i32 308, i32 35}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i8 0, i8 2}
