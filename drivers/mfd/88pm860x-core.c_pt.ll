; ModuleID = '/llk/IR_all_yes/drivers/mfd/88pm860x-core.c_pt.bc'
source_filename = "../drivers/mfd/88pm860x-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pm8606_osc_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_pm8606_osc_enable\09\09\09\09"
module asm "\09.long\09__crc_pm8606_osc_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm8606_osc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22pm8606_osc_enable\22\09\09\09\09\09"
module asm "__kstrtabns_pm8606_osc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pm8606_osc_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_pm8606_osc_disable\09\09\09\09"
module asm "\09.long\09__crc_pm8606_osc_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm8606_osc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22pm8606_osc_disable\22\09\09\09\09\09"
module asm "__kstrtabns_pm8606_osc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pm860x_irq_data = type { i32, i32, i32, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.charger_regulator = type { ptr, ptr, i32, ptr, i32, %struct.attribute_group, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, [4 x ptr], ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.pm860x_chip = type { ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.pm860x_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.pm860x_backlight_pdata = type { i32, i32 }
%struct.pm860x_led_pdata = type { i32 }
%struct.charger_desc = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@pm8606_osc_enable.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"88pm860x\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm8606_osc_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mfd/88pm860x-core.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(B): client=0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@pm8606_osc_enable.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(B): vote=0x%x status=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@pm8606_osc_enable.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(A): vote=0x%x status=%d ret=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_pm8606_osc_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm8606_osc_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_pm8606_osc_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm8606_osc_enable to i32), ptr @__kstrtab_pm8606_osc_enable, ptr @__kstrtabns_pm8606_osc_enable }, section "___ksymtab+pm8606_osc_enable", align 4
@pm8606_osc_disable.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.3, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm8606_osc_disable\00", [45 x i8] zeroinitializer }, align 32
@pm8606_osc_disable.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.4, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pm8606_osc_disable.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.5, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_pm8606_osc_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm8606_osc_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_pm8606_osc_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm8606_osc_disable to i32), ptr @__kstrtab_pm8606_osc_disable, ptr @__kstrtabns_pm8606_osc_disable }, section "___ksymtab+pm8606_osc_disable", align 4
@__initcall__kmod_88pm860x__294_1272_pm860x_i2c_init4 = internal global ptr @pm860x_i2c_init, section ".initcall4.init", align 4
@pm860x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @pm860x_remove, ptr @pm860x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm860x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm860x_pm_ops, ptr null, ptr null }, ptr @pm860x_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pm860x_i2c_exit = internal global ptr @pm860x_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [54 x i8] c"88pm860x.description=PMIC Driver for Marvell 88PM860x\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [60 x i8] c"88pm860x.author=Haojian Zhuang <haojian.zhuang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [35 x i8] c"88pm860x.file=drivers/mfd/88pm860x\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [21 x i8] c"88pm860x.license=GPL\00", section ".modinfo", align 1
@pm860x_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Failed to register 88PM860x I2C driver: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pm860x_i2c_init\00", [16 x i8] zeroinitializer }, align 32
@pm860x_i2c_init._entry_ptr = internal global ptr @pm860x_i2c_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"88PM860x\00", [23 x i8] zeroinitializer }, align 32
@pm860x_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,88pm860x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pm860x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm860x_suspend, ptr @pm860x_resume, ptr @pm860x_suspend, ptr @pm860x_resume, ptr @pm860x_suspend, ptr @pm860x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pm860x_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"88PM860x\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pm860x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016No platform data in %s!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pm860x_probe\00", [19 x i8] zeroinitializer }, align 32
@pm860x_probe._entry_ptr = internal global ptr @pm860x_probe._entry, section ".printk_index", align 4
@pm860x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pm860x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"88pm860x_core:1160:(&pm860x_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@pm860x_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 1164, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm860x_probe._entry_ptr.17 = internal global ptr @pm860x_probe._entry.13, section ".printk_index", align 4
@pm860x_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 1185, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to allocate I2C companion device\0A\00", [55 x i8] zeroinitializer }, align 32
@pm860x_probe._entry_ptr.20 = internal global ptr @pm860x_probe._entry.18, section ".printk_index", align 4
@pm860x_probe._key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"88pm860x_core:1189:(&pm860x_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@pm860x_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 1193, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@pm860x_probe._entry_ptr.24 = internal global ptr @pm860x_probe._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"marvell,88pm860x-irq-read-clr\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"marvell,88pm860x-slave-addr\00", [36 x i8] zeroinitializer }, align 32
@pm860x_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1126, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Not found \22marvell,88pm860x-slave-addr\22 property\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pm860x_dt_init\00", [17 x i8] zeroinitializer }, align 32
@pm860x_dt_init._entry_ptr = internal global ptr @pm860x_dt_init._entry, section ".printk_index", align 4
@device_osc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->osc_lock\00", [16 x i8] zeroinitializer }, align 32
@bk_devs = internal global { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.32, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 3, ptr @bk0_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.32, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 3, ptr @bk1_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.32, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 3, ptr @bk2_resources, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@device_bk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 766, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add backlight subdev\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device_bk_init\00", [17 x i8] zeroinitializer }, align 32
@device_bk_init._entry_ptr = internal global ptr @device_bk_init._entry, section ".printk_index", align 4
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"88pm860x-backlight\00", [45 x i8] zeroinitializer }, align 32
@bk0_resources = internal constant { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 2, i32 2, ptr @.str.33, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 3, i32 3, ptr @.str.34, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 3, i32 3, ptr @.str.35, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@bk1_resources = internal constant { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 4, i32 4, ptr @.str.33, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 5, i32 5, ptr @.str.34, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 5, i32 5, ptr @.str.35, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@bk2_resources = internal constant { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 6, i32 6, ptr @.str.33, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 7, i32 7, ptr @.str.34, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 5, i32 5, ptr @.str.35, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"duty cycle\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"always on\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"current\00", [24 x i8] zeroinitializer }, align 32
@led_devs = internal global { [6 x %struct.mfd_cell], [144 x i8] } { [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.38, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @led0_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @led1_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @led2_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 3, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @led3_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 4, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @led4_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 5, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @led5_resources, i8 0, i8 0, ptr null, i32 0 }], [144 x i8] zeroinitializer }, align 32
@device_led_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 786, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to add led subdev\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device_led_init\00", [16 x i8] zeroinitializer }, align 32
@device_led_init._entry_ptr = internal global ptr @device_led_init._entry, section ".printk_index", align 4
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"88pm860x-led\00", [19 x i8] zeroinitializer }, align 32
@led0_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 13, i32 13, ptr @.str.39, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 12, i32 12, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@led1_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 14, i32 14, ptr @.str.39, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 12, i32 12, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@led2_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 15, i32 15, ptr @.str.39, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 12, i32 12, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@led3_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 9, i32 9, ptr @.str.39, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 8, i32 8, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@led4_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 10, i32 10, ptr @.str.39, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 8, i32 8, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@led5_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 11, i32 11, ptr @.str.39, i32 768, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 8, i32 8, ptr @.str.40, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blink\00", [26 x i8] zeroinitializer }, align 32
@device_8607_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 991, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read CHIP ID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device_8607_init\00", [47 x i8] zeroinitializer }, align 32
@device_8607_init._entry_ptr = internal global ptr @device_8607_init._entry, section ".printk_index", align 4
@device_8607_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 998, ptr @.str.45, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Marvell 88PM8607 (ID: %02x) detected\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@device_8607_init._entry_ptr.46 = internal global ptr @device_8607_init._entry.43, section ".printk_index", align 4
@device_8607_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.2, i32 1003, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to detect Marvell 88PM8607. Chip ID: %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@device_8607_init._entry_ptr.49 = internal global ptr @device_8607_init._entry.47, section ".printk_index", align 4
@device_8607_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.42, ptr @.str.2, i32 1009, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read BUCK3 register: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@device_8607_init._entry_ptr.52 = internal global ptr @device_8607_init._entry.50, section ".printk_index", align 4
@device_8607_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.42, ptr @.str.2, i32 1017, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read MISC1 register: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@device_8607_init._entry_ptr.55 = internal global ptr @device_8607_init._entry.53, section ".printk_index", align 4
@device_8607_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.42, ptr @.str.2, i32 1027, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to access MISC1:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@device_8607_init._entry_ptr.58 = internal global ptr @device_8607_init._entry.56, section ".printk_index", align 4
@device_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@device_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 623, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate interrupts, ret:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device_irq_init\00", [16 x i8] zeroinitializer }, align 32
@device_irq_init._entry_ptr = internal global ptr @device_irq_init._entry, section ".printk_index", align 4
@pm860x_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @pm860x_irq_domain_map, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@device_irq_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 636, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@device_irq_init._entry_ptr.64 = internal global ptr @device_irq_init._entry.62, section ".printk_index", align 4
@pm860x_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr @pm860x_irq_enable, ptr @pm860x_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm860x_irq_lock, ptr @pm860x_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@pm860x_irqs = internal global { [22 x %struct.pm860x_irq_data], [64 x i8] } { [22 x %struct.pm860x_irq_data] [%struct.pm860x_irq_data { i32 3, i32 6, i32 0, i32 1 }, %struct.pm860x_irq_data { i32 3, i32 6, i32 0, i32 2 }, %struct.pm860x_irq_data { i32 3, i32 6, i32 0, i32 4 }, %struct.pm860x_irq_data { i32 3, i32 6, i32 0, i32 8 }, %struct.pm860x_irq_data { i32 3, i32 6, i32 0, i32 16 }, %struct.pm860x_irq_data { i32 3, i32 6, i32 0, i32 32 }, %struct.pm860x_irq_data { i32 4, i32 7, i32 0, i32 1 }, %struct.pm860x_irq_data { i32 4, i32 7, i32 0, i32 2 }, %struct.pm860x_irq_data { i32 4, i32 7, i32 0, i32 4 }, %struct.pm860x_irq_data { i32 4, i32 7, i32 0, i32 8 }, %struct.pm860x_irq_data { i32 4, i32 7, i32 0, i32 16 }, %struct.pm860x_irq_data { i32 4, i32 7, i32 0, i32 32 }, %struct.pm860x_irq_data { i32 4, i32 7, i32 0, i32 64 }, %struct.pm860x_irq_data { i32 4, i32 7, i32 0, i32 128 }, %struct.pm860x_irq_data { i32 5, i32 8, i32 0, i32 1 }, %struct.pm860x_irq_data { i32 5, i32 8, i32 0, i32 2 }, %struct.pm860x_irq_data { i32 5, i32 8, i32 0, i32 4 }, %struct.pm860x_irq_data { i32 5, i32 8, i32 0, i32 8 }, %struct.pm860x_irq_data { i32 5, i32 8, i32 0, i32 16 }, %struct.pm860x_irq_data { i32 5, i32 8, i32 0, i32 32 }, %struct.pm860x_irq_data { i32 5, i32 8, i32 0, i32 64 }, %struct.pm860x_irq_data { i32 5, i32 8, i32 0, i32 128 }], [64 x i8] zeroinitializer }, align 32
@pm860x_irq_sync_unlock.cached.0 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@pm860x_irq_sync_unlock.cached.1 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@pm860x_irq_sync_unlock.cached.2 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@pm860x_irq_sync_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 519, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wrong IRQ\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pm860x_irq_sync_unlock\00", [41 x i8] zeroinitializer }, align 32
@pm860x_irq_sync_unlock._entry_ptr = internal global ptr @pm860x_irq_sync_unlock._entry, section ".printk_index", align 4
@reg_devs = internal global { [16 x %struct.mfd_cell], [352 x i8] } { [16 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.69, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @buck1_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @buck2_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @buck3_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 3, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo1_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 4, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo2_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 5, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo3_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 6, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo4_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 7, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo5_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 8, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo6_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 9, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo7_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 10, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo8_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 11, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo9_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 12, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo10_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 13, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo12_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 14, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo_vibrator_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.69, i32 15, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @ldo14_resources, i8 0, i8 0, ptr null, i32 0 }], [352 x i8] zeroinitializer }, align 32
@device_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 865, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add regulator subdev\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device_regulator_init\00", [42 x i8] zeroinitializer }, align 32
@device_regulator_init._entry_ptr = internal global ptr @device_regulator_init._entry, section ".printk_index", align 4
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"88pm860x-regulator\00", [45 x i8] zeroinitializer }, align 32
@buck1_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 36, i32 36, ptr @.str.70, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@buck2_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 37, i32 37, ptr @.str.70, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@buck3_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 38, i32 38, ptr @.str.70, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo1_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 16, i32 16, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo2_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 17, i32 17, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo3_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 18, i32 18, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo4_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 19, i32 19, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo5_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 20, i32 20, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo6_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 21, i32 21, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo7_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 22, i32 22, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo8_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 23, i32 23, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo9_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 24, i32 24, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo10_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 25, i32 25, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo12_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 26, i32 26, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo_vibrator_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 40, i32 40, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@ldo14_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 27, i32 27, ptr @.str.71, i32 768, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"buck set\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo set\00", [24 x i8] zeroinitializer }, align 32
@rtc_devs = internal global { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.74, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@rtc_resources = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 4, i32 4, ptr @.str.75, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@device_rtc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 886, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to add rtc subdev\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device_rtc_init\00", [16 x i8] zeroinitializer }, align 32
@device_rtc_init._entry_ptr = internal global ptr @device_rtc_init._entry, section ".printk_index", align 4
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"88pm860x-rtc\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@onkey_devs = internal global { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.78, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@onkey_resources = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.79, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@device_onkey_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 966, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add onkey subdev\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_onkey_init\00", [46 x i8] zeroinitializer }, align 32
@device_onkey_init._entry_ptr = internal global ptr @device_onkey_init._entry, section ".printk_index", align 4
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"88pm860x-onkey\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"onkey\00", [26 x i8] zeroinitializer }, align 32
@touch_devs = internal global { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.82, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@touch_resources = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 15, i32 15, ptr @.str.83, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@device_touch_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 905, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add touch subdev\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_touch_init\00", [46 x i8] zeroinitializer }, align 32
@device_touch_init._entry_ptr = internal global ptr @device_touch_init._entry, section ".printk_index", align 4
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"88pm860x-touch\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"touch\00", [26 x i8] zeroinitializer }, align 32
@power_devs = internal global { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.95, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.96, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.97, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.98, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [64 x i8] zeroinitializer }, align 32
@battery_resources = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 5, i32 5, ptr @.str.99, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 3, i32 3, ptr @.str.100, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@device_power_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 923, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add battery subdev\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_power_init\00", [46 x i8] zeroinitializer }, align 32
@device_power_init._entry_ptr = internal global ptr @device_power_init._entry, section ".printk_index", align 4
@charger_resources = internal global { [7 x %struct.resource], [32 x i8] } { [7 x %struct.resource] [%struct.resource { i32 2, i32 2, ptr @.str.101, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 20, i32 20, ptr @.str.102, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 19, i32 19, ptr @.str.103, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 21, i32 21, ptr @.str.104, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 11, i32 11, ptr @.str.105, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 6, i32 6, ptr @.str.106, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 7, i32 7, ptr @.str.107, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@device_power_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 932, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add charger subdev\0A\00", [34 x i8] zeroinitializer }, align 32
@device_power_init._entry_ptr.88 = internal global ptr @device_power_init._entry.86, section ".printk_index", align 4
@preg_init_data = internal global { %struct.regulator_init_data, [60 x i8] } { %struct.regulator_init_data { ptr null, %struct.regulation_constraints zeroinitializer, i32 1, ptr @preg_supply, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@device_power_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 939, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to add preg subdev\0A\00", [37 x i8] zeroinitializer }, align 32
@device_power_init._entry_ptr.91 = internal global ptr @device_power_init._entry.89, section ".printk_index", align 4
@chg_desc_regulator_data = internal global { [1 x %struct.charger_regulator], [48 x i8] } { [1 x %struct.charger_regulator] [%struct.charger_regulator { ptr @.str.108, ptr null, i32 0, ptr null, i32 0, %struct.attribute_group zeroinitializer, %struct.device_attribute zeroinitializer, %struct.device_attribute zeroinitializer, %struct.device_attribute zeroinitializer, [4 x ptr] zeroinitializer, ptr null }], [48 x i8] zeroinitializer }, align 32
@device_power_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.2, i32 951, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to add chg-manager subdev\0A\00", [62 x i8] zeroinitializer }, align 32
@device_power_init._entry_ptr.94 = internal global ptr @device_power_init._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"88pm860x-battery\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"88pm860x-charger\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"88pm860x-preg\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"charger-manager\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"columb counter\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"charger detect\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"charging done\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"charging timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"charging fault\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"battery temperature\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"battery voltage\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vchg voltage\00", [19 x i8] zeroinitializer }, align 32
@preg_supply = internal global { [1 x %struct.regulator_consumer_supply], [24 x i8] } { [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.98, ptr @.str.108 }], [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"preg\00", [27 x i8] zeroinitializer }, align 32
@codec_devs = internal global { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.111, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@codec_resources = internal global { [4 x %struct.resource], [32 x i8] } { [4 x %struct.resource] [%struct.resource { i32 18, i32 18, ptr @.str.112, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 17, i32 17, ptr @.str.113, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 16, i32 16, ptr @.str.114, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 14, i32 14, ptr @.str.115, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@device_codec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 980, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add codec subdev\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_codec_init\00", [46 x i8] zeroinitializer }, align 32
@device_codec_init._entry_ptr = internal global ptr @device_codec_init._entry, section ".printk_index", align 4
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"88pm860x-codec\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"micin\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hook\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"headset\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audio-short\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 80]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 658, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 659, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 683, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 699, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"pm860x_driver\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1252, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1269, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1254, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant [14 x i8] c"pm860x_dt_ids\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1246, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant [14 x i8] c"pm860x_pm_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1238, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"pm860x_id_table\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1240, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1150, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"pm860x_regmap_config\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1109, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1160, i32 17 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1163, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1184, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1188, i32 28 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1192, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1120, i32 26 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1122, i32 33 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1125, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 738, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [8 x i8] c"bk_devs\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 168, i32 24 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 766, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 170, i32 11 }
@___asan_gen_.245 = private unnamed_addr constant [14 x i8] c"bk0_resources\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 29, i32 30 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"bk1_resources\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 34, i32 30 }
@___asan_gen_.251 = private unnamed_addr constant [14 x i8] c"bk2_resources\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 39, i32 30 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 30, i32 9 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 31, i32 9 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 32, i32 9 }
@___asan_gen_.263 = private unnamed_addr constant [9 x i8] c"led_devs\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 187, i32 24 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 786, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 189, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant [15 x i8] c"led0_resources\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 45, i32 30 }
@___asan_gen_.281 = private unnamed_addr constant [15 x i8] c"led1_resources\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 50, i32 30 }
@___asan_gen_.284 = private unnamed_addr constant [15 x i8] c"led2_resources\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 55, i32 30 }
@___asan_gen_.287 = private unnamed_addr constant [15 x i8] c"led3_resources\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 60, i32 30 }
@___asan_gen_.290 = private unnamed_addr constant [15 x i8] c"led4_resources\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 65, i32 30 }
@___asan_gen_.293 = private unnamed_addr constant [15 x i8] c"led5_resources\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 70, i32 30 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 47, i32 13 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 48, i32 13 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 991, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 997, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1001, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1009, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1017, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 1027, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 615, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 622, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [22 x i8] c"pm860x_irq_domain_ops\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 562, i32 36 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 636, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant [16 x i8] c"pm860x_irq_chip\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 544, i32 24 }
@___asan_gen_.371 = private unnamed_addr constant [12 x i8] c"pm860x_irqs\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 349, i32 31 }
@___asan_gen_.374 = private unnamed_addr constant [32 x i8] c"pm860x_irq_sync_unlock.cached.0\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [32 x i8] c"pm860x_irq_sync_unlock.cached.1\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [32 x i8] c"pm860x_irq_sync_unlock.cached.2\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 519, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant [9 x i8] c"reg_devs\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 221, i32 24 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 865, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 223, i32 11 }
@___asan_gen_.401 = private unnamed_addr constant [16 x i8] c"buck1_resources\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 76, i32 30 }
@___asan_gen_.404 = private unnamed_addr constant [16 x i8] c"buck2_resources\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 79, i32 30 }
@___asan_gen_.407 = private unnamed_addr constant [16 x i8] c"buck3_resources\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 82, i32 30 }
@___asan_gen_.410 = private unnamed_addr constant [15 x i8] c"ldo1_resources\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 85, i32 30 }
@___asan_gen_.413 = private unnamed_addr constant [15 x i8] c"ldo2_resources\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 88, i32 30 }
@___asan_gen_.416 = private unnamed_addr constant [15 x i8] c"ldo3_resources\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 91, i32 30 }
@___asan_gen_.419 = private unnamed_addr constant [15 x i8] c"ldo4_resources\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 94, i32 30 }
@___asan_gen_.422 = private unnamed_addr constant [15 x i8] c"ldo5_resources\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 97, i32 30 }
@___asan_gen_.425 = private unnamed_addr constant [15 x i8] c"ldo6_resources\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 100, i32 30 }
@___asan_gen_.428 = private unnamed_addr constant [15 x i8] c"ldo7_resources\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 103, i32 30 }
@___asan_gen_.431 = private unnamed_addr constant [15 x i8] c"ldo8_resources\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 106, i32 30 }
@___asan_gen_.434 = private unnamed_addr constant [15 x i8] c"ldo9_resources\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 109, i32 30 }
@___asan_gen_.437 = private unnamed_addr constant [16 x i8] c"ldo10_resources\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 112, i32 30 }
@___asan_gen_.440 = private unnamed_addr constant [16 x i8] c"ldo12_resources\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 115, i32 30 }
@___asan_gen_.443 = private unnamed_addr constant [23 x i8] c"ldo_vibrator_resources\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 118, i32 30 }
@___asan_gen_.446 = private unnamed_addr constant [16 x i8] c"ldo14_resources\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 121, i32 30 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 77, i32 15 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 86, i32 15 }
@___asan_gen_.455 = private unnamed_addr constant [9 x i8] c"rtc_devs\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 337, i32 24 }
@___asan_gen_.458 = private unnamed_addr constant [14 x i8] c"rtc_resources\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 164, i32 24 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 886, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 338, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 165, i32 35 }
@___asan_gen_.476 = private unnamed_addr constant [11 x i8] c"onkey_devs\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 309, i32 24 }
@___asan_gen_.479 = private unnamed_addr constant [16 x i8] c"onkey_resources\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 129, i32 24 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 966, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 310, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 130, i32 39 }
@___asan_gen_.497 = private unnamed_addr constant [11 x i8] c"touch_devs\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 305, i32 24 }
@___asan_gen_.500 = private unnamed_addr constant [16 x i8] c"touch_resources\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 125, i32 24 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 905, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 306, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 126, i32 35 }
@___asan_gen_.518 = private unnamed_addr constant [11 x i8] c"power_devs\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 330, i32 24 }
@___asan_gen_.521 = private unnamed_addr constant [18 x i8] c"battery_resources\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 145, i32 24 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 923, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant [18 x i8] c"charger_resources\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 150, i32 24 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 932, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant [15 x i8] c"preg_init_data\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 321, i32 35 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 939, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant [24 x i8] c"chg_desc_regulator_data\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 326, i32 33 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 951, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 331, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 332, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 333, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 334, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 146, i32 35 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 147, i32 35 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 151, i32 37 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 152, i32 47 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 154, i32 47 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 156, i32 47 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 158, i32 47 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 160, i32 37 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 161, i32 37 }
@___asan_gen_.599 = private unnamed_addr constant [12 x i8] c"preg_supply\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 317, i32 41 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 318, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant [11 x i8] c"codec_devs\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 313, i32 24 }
@___asan_gen_.608 = private unnamed_addr constant [16 x i8] c"codec_resources\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 133, i32 24 }
@___asan_gen_.611 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 980, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 314, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 135, i32 43 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 137, i32 43 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 139, i32 43 }
@___asan_gen_.632 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.633 = private constant [31 x i8] c"../drivers/mfd/88pm860x-core.c\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 141, i32 51 }
@llvm.compiler.used = appending global [209 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_pm860x_i2c_exit, ptr @__initcall__kmod_88pm860x__294_1272_pm860x_i2c_init4, ptr @__ksymtab_pm8606_osc_disable, ptr @__ksymtab_pm8606_osc_enable, ptr @device_8607_init._entry, ptr @device_8607_init._entry.43, ptr @device_8607_init._entry.47, ptr @device_8607_init._entry.50, ptr @device_8607_init._entry.53, ptr @device_8607_init._entry.56, ptr @device_8607_init._entry_ptr, ptr @device_8607_init._entry_ptr.46, ptr @device_8607_init._entry_ptr.49, ptr @device_8607_init._entry_ptr.52, ptr @device_8607_init._entry_ptr.55, ptr @device_8607_init._entry_ptr.58, ptr @device_bk_init._entry, ptr @device_bk_init._entry_ptr, ptr @device_codec_init._entry, ptr @device_codec_init._entry_ptr, ptr @device_irq_init._entry, ptr @device_irq_init._entry.62, ptr @device_irq_init._entry_ptr, ptr @device_irq_init._entry_ptr.64, ptr @device_led_init._entry, ptr @device_led_init._entry_ptr, ptr @device_onkey_init._entry, ptr @device_onkey_init._entry_ptr, ptr @device_power_init._entry, ptr @device_power_init._entry.86, ptr @device_power_init._entry.89, ptr @device_power_init._entry.92, ptr @device_power_init._entry_ptr, ptr @device_power_init._entry_ptr.88, ptr @device_power_init._entry_ptr.91, ptr @device_power_init._entry_ptr.94, ptr @device_regulator_init._entry, ptr @device_regulator_init._entry_ptr, ptr @device_rtc_init._entry, ptr @device_rtc_init._entry_ptr, ptr @device_touch_init._entry, ptr @device_touch_init._entry_ptr, ptr @pm860x_dt_init._entry, ptr @pm860x_dt_init._entry_ptr, ptr @pm860x_i2c_exit, ptr @pm860x_i2c_init._entry, ptr @pm860x_i2c_init._entry_ptr, ptr @pm860x_irq_sync_unlock._entry, ptr @pm860x_irq_sync_unlock._entry_ptr, ptr @pm860x_probe._entry, ptr @pm860x_probe._entry.13, ptr @pm860x_probe._entry.18, ptr @pm860x_probe._entry.23, ptr @pm860x_probe._entry_ptr, ptr @pm860x_probe._entry_ptr.17, ptr @pm860x_probe._entry_ptr.20, ptr @pm860x_probe._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pm860x_driver, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pm860x_dt_ids, ptr @pm860x_pm_ops, ptr @pm860x_id_table, ptr @.str.10, ptr @.str.11, ptr @pm860x_probe._key, ptr @pm860x_regmap_config, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @pm860x_probe._key.21, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @device_osc_init.__key, ptr @.str.29, ptr @bk_devs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @bk0_resources, ptr @bk1_resources, ptr @bk2_resources, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @led_devs, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @led0_resources, ptr @led1_resources, ptr @led2_resources, ptr @led3_resources, ptr @led4_resources, ptr @led5_resources, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @device_irq_init.__key, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pm860x_irq_domain_ops, ptr @.str.63, ptr @pm860x_irq_chip, ptr @pm860x_irqs, ptr @pm860x_irq_sync_unlock.cached.0, ptr @pm860x_irq_sync_unlock.cached.1, ptr @pm860x_irq_sync_unlock.cached.2, ptr @.str.65, ptr @.str.66, ptr @reg_devs, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @buck1_resources, ptr @buck2_resources, ptr @buck3_resources, ptr @ldo1_resources, ptr @ldo2_resources, ptr @ldo3_resources, ptr @ldo4_resources, ptr @ldo5_resources, ptr @ldo6_resources, ptr @ldo7_resources, ptr @ldo8_resources, ptr @ldo9_resources, ptr @ldo10_resources, ptr @ldo12_resources, ptr @ldo_vibrator_resources, ptr @ldo14_resources, ptr @.str.70, ptr @.str.71, ptr @rtc_devs, ptr @rtc_resources, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @onkey_devs, ptr @onkey_resources, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @touch_devs, ptr @touch_resources, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @power_devs, ptr @battery_resources, ptr @.str.84, ptr @.str.85, ptr @charger_resources, ptr @.str.87, ptr @preg_init_data, ptr @.str.90, ptr @chg_desc_regulator_data, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @preg_supply, ptr @.str.108, ptr @codec_devs, ptr @codec_resources, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], section "llvm.metadata"
@0 = internal global [174 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_probe._key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_osc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bk_devs to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_bk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bk0_resources to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bk1_resources to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bk2_resources to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_devs to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_led_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led0_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led1_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led2_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led3_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led4_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led5_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_8607_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_8607_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_8607_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_8607_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_8607_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_8607_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_irq_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_irqs to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_irq_sync_unlock.cached.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_irq_sync_unlock.cached.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_irq_sync_unlock.cached.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_irq_sync_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_devs to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck1_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck2_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck3_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo1_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo2_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo3_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo4_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo5_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo6_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo7_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo8_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo9_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo10_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo12_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vibrator_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo14_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_rtc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onkey_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onkey_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_onkey_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @touch_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @touch_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_touch_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_devs to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_power_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_resources to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_power_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preg_init_data to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_power_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chg_desc_regulator_data to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_power_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preg_supply to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_resources to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_codec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8606_osc_enable(ptr noundef %chip, i16 noundef zeroext %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %client1 = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 3
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 4
  %cond.in = select i1 %cmp, ptr %client1, ptr %companion
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8606_osc_enable.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8606_osc_enable, %if.then)) #6
          to label %do.body4 [label %if.then], !srcloc !353

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %conv = zext i16 %client to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8606_osc_enable.__UNIQUE_ID_ddebug288, ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv) #6
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8606_osc_enable.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8606_osc_enable, %if.then16)) #6
          to label %do.end22 [label %if.then16], !srcloc !353

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %osc_vote = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 9
  %7 = ptrtoint ptr %osc_vote to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %osc_vote, align 4
  %conv18 = zext i16 %8 to i32
  %osc_status = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 15
  %9 = ptrtoint ptr %osc_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %osc_status, align 1
  %conv19 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8606_osc_enable.__UNIQUE_ID_ddebug289, ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv18, i32 noundef %conv19) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then16, %do.body4
  %osc_lock = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %osc_lock, i32 noundef 0) #6
  %osc_vote24 = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 9
  %11 = ptrtoint ptr %osc_vote24 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %osc_vote24, align 4
  %or86 = or i16 %12, %client
  store i16 %or86, ptr %osc_vote24, align 4
  %osc_status27 = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 15
  %13 = ptrtoint ptr %osc_status27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %osc_status27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp29.not = icmp eq i8 %14, 1
  br i1 %cmp29.not, label %do.end22.if.end42_crit_edge, label %if.then31

do.end22.if.end42_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then31:                                        ; preds = %do.end22
  %15 = ptrtoint ptr %osc_status27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %osc_status27, align 1
  %call33 = tail call i32 @pm860x_set_bits(ptr noundef %cond, i32 noundef 21, i8 noundef zeroext 2, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then31.out_crit_edge

if.then31.out_crit_edge:                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end36:                                         ; preds = %if.then31
  %call37 = tail call i32 @pm860x_set_bits(ptr noundef %cond, i32 noundef 22, i8 noundef zeroext 16, i8 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %osc_status27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %osc_status27, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.end40, %do.end22.if.end42_crit_edge
  tail call void @mutex_unlock(ptr noundef %osc_lock) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8606_osc_enable.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8606_osc_enable, %if.then56)) #6
          to label %cleanup [label %if.then56], !srcloc !353

if.then56:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %19 = ptrtoint ptr %osc_vote24 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %osc_vote24, align 4
  %conv59 = zext i16 %20 to i32
  %21 = ptrtoint ptr %osc_status27 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %osc_status27, align 1
  %conv61 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8606_osc_enable.__UNIQUE_ID_ddebug290, ptr noundef %18, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %conv59, i32 noundef %conv61, i32 noundef -5) #6
  br label %cleanup

out:                                              ; preds = %if.end36.out_crit_edge, %if.then31.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %osc_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then56, %if.end42
  %retval.0 = phi i32 [ -5, %out ], [ 0, %if.then56 ], [ 0, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8606_osc_disable(ptr noundef %chip, i16 noundef zeroext %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %client1 = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 3
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 4
  %cond.in = select i1 %cmp, ptr %client1, ptr %companion
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8606_osc_disable.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8606_osc_disable, %if.then)) #6
          to label %do.body4 [label %if.then], !srcloc !353

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %conv = zext i16 %client to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8606_osc_disable.__UNIQUE_ID_ddebug291, ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef %conv) #6
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8606_osc_disable.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8606_osc_disable, %if.then16)) #6
          to label %do.end22 [label %if.then16], !srcloc !353

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %osc_vote = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 9
  %7 = ptrtoint ptr %osc_vote to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %osc_vote, align 4
  %conv18 = zext i16 %8 to i32
  %osc_status = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 15
  %9 = ptrtoint ptr %osc_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %osc_status, align 1
  %conv19 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8606_osc_disable.__UNIQUE_ID_ddebug292, ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %conv18, i32 noundef %conv19) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then16, %do.body4
  %osc_lock = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %osc_lock, i32 noundef 0) #6
  %neg = xor i16 %client, -1
  %osc_vote24 = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 9
  %11 = ptrtoint ptr %osc_vote24 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %osc_vote24, align 4
  %and = and i16 %12, %neg
  store i16 %and, ptr %osc_vote24, align 4
  %osc_status27 = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 15
  %13 = ptrtoint ptr %osc_status27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %osc_status27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp29.not = icmp ne i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and)
  %cmp33 = icmp eq i16 %and, 0
  %or.cond = select i1 %cmp29.not, i1 %cmp33, i1 false
  br i1 %or.cond, label %if.then35, label %do.end22.if.end46_crit_edge

do.end22.if.end46_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then35:                                        ; preds = %do.end22
  %15 = ptrtoint ptr %osc_status27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %osc_status27, align 1
  %call37 = tail call i32 @pm860x_set_bits(ptr noundef %cond, i32 noundef 21, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then35.out_crit_edge

if.then35.out_crit_edge:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end40:                                         ; preds = %if.then35
  %call41 = tail call i32 @pm860x_set_bits(ptr noundef %cond, i32 noundef 22, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.out_crit_edge

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %osc_status27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %osc_status27, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %do.end22.if.end46_crit_edge
  tail call void @mutex_unlock(ptr noundef %osc_lock) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8606_osc_disable.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8606_osc_disable, %if.then60)) #6
          to label %cleanup [label %if.then60], !srcloc !353

if.then60:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %19 = ptrtoint ptr %osc_vote24 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %osc_vote24, align 4
  %conv63 = zext i16 %20 to i32
  %21 = ptrtoint ptr %osc_status27 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %osc_status27, align 1
  %conv65 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8606_osc_disable.__UNIQUE_ID_ddebug293, ptr noundef %18, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %conv63, i32 noundef %conv65, i32 noundef -5) #6
  br label %cleanup

out:                                              ; preds = %if.end40.out_crit_edge, %if.then35.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %osc_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then60, %if.end46
  %retval.0 = phi i32 [ -5, %out ], [ 0, %if.then60 ], [ 0, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_i2c_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pm860x_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_i2c_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @pm860x_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core_irq.i.i = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %core_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %entry.pm860x_device_exit.exit_crit_edge, label %if.then.i.i

entry.pm860x_device_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm860x_device_exit.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #6
  br label %pm860x_device_exit.exit

pm860x_device_exit.exit:                          ; preds = %if.then.i.i, %entry.pm860x_device_exit.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @mfd_remove_devices(ptr noundef %5) #6
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %companion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %companion, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %pm860x_device_exit.exit.if.end_crit_edge, label %if.then

pm860x_device_exit.exit.if.end_crit_edge:         ; preds = %pm860x_device_exit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %pm860x_device_exit.exit
  call void @__sanitizer_cov_trace_pc() #8
  %regmap_companion = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %regmap_companion to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_companion, align 4
  tail call void @regmap_exit(ptr noundef %9) #6
  %10 = ptrtoint ptr %companion to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %companion, align 4
  tail call void @i2c_unregister_device(ptr noundef %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %pm860x_device_exit.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_probe(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp ne ptr %3, null
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i131 = tail call ptr @of_get_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.25, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i131, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_mode.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %call.i, i32 0, i32 24
  %4 = ptrtoint ptr %irq_mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %irq_mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %companion_addr.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %call.i, i32 0, i32 22
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.26, ptr noundef %companion_addr.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool2.not.i, label %if.end.i.if.end16_crit_edge, label %do.end.i

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  %5 = ptrtoint ptr %companion_addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %companion_addr.i, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  br i1 %tobool2.not, label %do.end, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %do.end.i, %if.end.i.if.end16_crit_edge
  %pdata.0 = phi ptr [ %1, %if.else.if.end16_crit_edge ], [ %call.i, %if.end.i.if.end16_crit_edge ], [ %call.i, %do.end.i ]
  %call.i132 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 240, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i132, null
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %cmp.i = icmp eq ptr %client, null
  br i1 %cmp.i, label %if.end20.verify_addr.exit_crit_edge, label %for.cond.preheader.i

if.end20.verify_addr.exit_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_addr.exit

for.cond.preheader.i:                             ; preds = %if.end20
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr.i, align 2
  %8 = and i16 %7, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %8)
  %switch.i = icmp eq i16 %8, 16
  br i1 %switch.i, label %for.cond.preheader.i.verify_addr.exit_crit_edge, label %for.cond.1.i

for.cond.preheader.i.verify_addr.exit_crit_edge:  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_addr.exit

for.cond.1.i:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = add i16 %7, -48
  %switch.and.i = and i16 %9, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.i = icmp eq i16 %switch.and.i, 0
  %10 = select i1 %switch.selectcmp.i, i32 2, i32 0
  br label %verify_addr.exit

verify_addr.exit:                                 ; preds = %for.cond.1.i, %for.cond.preheader.i.verify_addr.exit_crit_edge, %if.end20.verify_addr.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end20.verify_addr.exit_crit_edge ], [ 1, %for.cond.preheader.i.verify_addr.exit_crit_edge ], [ %10, %for.cond.1.i ]
  %id = getelementptr inbounds %struct.pm860x_chip, ptr %call.i132, i32 0, i32 10
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %id, align 4
  %call23 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @pm860x_regmap_config, ptr noundef nonnull @pm860x_probe._key, ptr noundef nonnull @.str.12) #6
  %regmap = getelementptr inbounds %struct.pm860x_chip, ptr %call.i132, i32 0, i32 5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23, ptr %regmap, align 4
  %cmp.i133 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then26, label %if.end33

if.then26:                                        ; preds = %verify_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %13) #9
  br label %cleanup

if.end33:                                         ; preds = %verify_addr.exit
  %client34 = getelementptr inbounds %struct.pm860x_chip, ptr %call.i132, i32 0, i32 3
  %14 = ptrtoint ptr %client34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %client, ptr %client34, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %call.i132 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %call.i132, align 4
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i132, ptr %driver_data.i.i, align 4
  %companion_addr = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata.0, i32 0, i32 22
  %17 = ptrtoint ptr %companion_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %companion_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool38.not = icmp eq i32 %18, 0
  br i1 %tobool38.not, label %if.end33.if.end76_crit_edge, label %land.lhs.true39

if.end33.if.end76_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true39:                                  ; preds = %if.end33
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr, align 2
  %conv = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp41.not = icmp eq i32 %18, %conv
  br i1 %cmp41.not, label %land.lhs.true39.if.end76_crit_edge, label %if.then43

land.lhs.true39.if.end76_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then43:                                        ; preds = %land.lhs.true39
  %companion_addr45 = getelementptr inbounds %struct.pm860x_chip, ptr %call.i132, i32 0, i32 8
  %21 = ptrtoint ptr %companion_addr45 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %companion_addr45, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %conv48 = trunc i32 %18 to i16
  %call49 = tail call ptr @i2c_new_dummy_device(ptr noundef %23, i16 noundef zeroext %conv48) #6
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %call.i132, i32 0, i32 4
  %24 = ptrtoint ptr %companion to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call49, ptr %companion, align 4
  %cmp.i134 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %do.end55, label %if.end59

do.end55:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  %25 = ptrtoint ptr %companion to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %companion, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end59:                                         ; preds = %if.then43
  %call62 = tail call ptr @__regmap_init_i2c(ptr noundef %call49, ptr noundef nonnull @pm860x_regmap_config, ptr noundef nonnull @pm860x_probe._key.21, ptr noundef nonnull @.str.22) #6
  %regmap_companion = getelementptr inbounds %struct.pm860x_chip, ptr %call.i132, i32 0, i32 6
  %28 = ptrtoint ptr %regmap_companion to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call62, ptr %regmap_companion, align 4
  %cmp.i135 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then65, label %if.end74

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call62 to i32
  %30 = ptrtoint ptr %companion to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %companion, align 4
  %dev72 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.14, i32 noundef %29) #9
  %32 = ptrtoint ptr %companion to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %companion, align 4
  tail call void @i2c_unregister_device(ptr noundef %33) #6
  br label %cleanup

if.end74:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %companion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %companion, align 4
  %driver_data.i.i136 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4, i32 8
  %36 = ptrtoint ptr %driver_data.i.i136 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i132, ptr %driver_data.i.i136, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end74, %land.lhs.true39.if.end76_crit_edge, %if.end33.if.end76_crit_edge
  %core_irq.i = getelementptr inbounds %struct.pm860x_chip, ptr %call.i132, i32 0, i32 13
  %37 = ptrtoint ptr %core_irq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %core_irq.i, align 4
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %if.end76.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

if.end76.sw.epilog.i_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %client34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client34, align 4
  tail call fastcc void @device_8606_init(ptr noundef nonnull %call.i132, ptr noundef %42, ptr noundef nonnull %pdata.0) #6
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %client34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client34, align 4
  tail call fastcc void @device_8607_init(ptr noundef nonnull %call.i132, ptr noundef %44, ptr noundef nonnull %pdata.0) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i, %if.end76.sw.epilog.i_crit_edge
  %companion.i = getelementptr inbounds %struct.pm860x_chip, ptr %call.i132, i32 0, i32 4
  %45 = ptrtoint ptr %companion.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %companion.i, align 4
  %tobool.not.i137 = icmp eq ptr %46, null
  br i1 %tobool.not.i137, label %sw.epilog.i.cleanup_crit_edge, label %if.then.i138

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i138:                                     ; preds = %sw.epilog.i
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %48, label %if.then.i138.cleanup_crit_edge [
    i32 2, label %sw.bb4.i
    i32 1, label %sw.bb6.i
  ]

if.then.i138.cleanup_crit_edge:                   ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @device_8606_init(ptr noundef nonnull %call.i132, ptr noundef nonnull %46, ptr noundef nonnull %pdata.0) #6
  br label %cleanup

sw.bb6.i:                                         ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @device_8607_init(ptr noundef nonnull %call.i132, ptr noundef nonnull %46, ptr noundef nonnull %pdata.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6.i, %sw.bb4.i, %if.then.i138.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %if.then65, %do.end55, %if.then26, %if.end16.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then26 ], [ %27, %do.end55 ], [ %29, %if.then65 ], [ -22, %do.end ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ 0, %sw.epilog.i.cleanup_crit_edge ], [ 0, %if.then.i138.cleanup_crit_edge ], [ 0, %sw.bb4.i ], [ 0, %sw.bb6.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @device_8606_init(ptr nocapture noundef readonly %chip, ptr noundef %i2c, ptr noundef %pdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %osc_lock.i = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %osc_lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @device_osc_init.__key) #6
  %call1.i = tail call i32 @pm860x_set_bits(ptr noundef %i2c, i32 noundef 21, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  %call2.i = tail call i32 @pm860x_set_bits(ptr noundef %i2c, i32 noundef 22, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  %osc_vote.i = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %osc_vote.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %osc_vote.i, align 4
  %osc_status.i = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %osc_status.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %osc_status.i, align 1
  %tobool.not.i = icmp eq ptr %pdata, null
  br i1 %tobool.not.i, label %entry.if.end9.i_crit_edge, label %land.lhs.true.i

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %num_backlights.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 27
  %6 = ptrtoint ptr %num_backlights.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_backlights.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i = icmp ugt i32 %7, 3
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %num_backlights.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %num_backlights.i, align 4
  br label %for.body.i.preheader

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp524.not.i = icmp eq i32 %7, 0
  br i1 %cmp524.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.end.i.for.body.i.preheader_crit_edge

if.end.i.for.body.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

for.body.i.preheader:                             ; preds = %if.end.i.for.body.i.preheader_crit_edge, %if.end.thread.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata, align 4
  %arrayidx.i = getelementptr %struct.pm860x_backlight_pdata, ptr %10, i32 %i.025.i
  %platform_data.i = getelementptr [3 x %struct.mfd_cell], ptr @bk_devs, i32 0, i32 %i.025.i, i32 7
  %11 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.i, ptr %platform_data.i, align 4
  %pdata_size.i = getelementptr [3 x %struct.mfd_cell], ptr @bk_devs, i32 0, i32 %i.025.i, i32 8
  %12 = ptrtoint ptr %pdata_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %pdata_size.i, align 8
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %13 = ptrtoint ptr %num_backlights.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_backlights.i, align 4
  %cmp5.i = icmp slt i32 %inc.i, %14
  br i1 %cmp5.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end9.i_crit_edge

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end9.i:                                        ; preds = %for.body.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge, %land.lhs.true.i.if.end9.i_crit_edge, %entry.if.end9.i_crit_edge
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @mfd_add_devices(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @bk_devs, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp slt i32 %call.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end9.i.device_bk_init.exit_crit_edge

if.end9.i.device_bk_init.exit_crit_edge:          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_bk_init.exit

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.30) #9
  br label %device_bk_init.exit

device_bk_init.exit:                              ; preds = %do.end.i, %if.end9.i.device_bk_init.exit_crit_edge
  br i1 %tobool.not.i, label %device_bk_init.exit.if.end9.i19_crit_edge, label %land.lhs.true.i5

device_bk_init.exit.if.end9.i19_crit_edge:        ; preds = %device_bk_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i19

land.lhs.true.i5:                                 ; preds = %device_bk_init.exit
  %led.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 1
  %19 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %led.i, align 4
  %tobool1.not.i4 = icmp eq ptr %20, null
  br i1 %tobool1.not.i4, label %land.lhs.true.i5.if.end9.i19_crit_edge, label %if.then.i7

land.lhs.true.i5.if.end9.i19_crit_edge:           ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i19

if.then.i7:                                       ; preds = %land.lhs.true.i5
  %num_leds.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 26
  %21 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp.i6 = icmp ugt i32 %22, 6
  br i1 %cmp.i6, label %if.end.thread.i8, label %if.end.i9

if.end.thread.i8:                                 ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %num_leds.i, align 4
  br label %for.body.i16.preheader

if.end.i9:                                        ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp525.not.i = icmp eq i32 %22, 0
  br i1 %cmp525.not.i, label %if.end.i9.if.end9.i19_crit_edge, label %if.end.i9.for.body.i16.preheader_crit_edge

if.end.i9.for.body.i16.preheader_crit_edge:       ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i16.preheader

if.end.i9.if.end9.i19_crit_edge:                  ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i19

for.body.i16.preheader:                           ; preds = %if.end.i9.for.body.i16.preheader_crit_edge, %if.end.thread.i8
  br label %for.body.i16

for.body.i16:                                     ; preds = %for.body.i16.for.body.i16_crit_edge, %for.body.i16.preheader
  %i.026.i = phi i32 [ %inc.i14, %for.body.i16.for.body.i16_crit_edge ], [ 0, %for.body.i16.preheader ]
  %24 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %led.i, align 4
  %arrayidx.i11 = getelementptr %struct.pm860x_led_pdata, ptr %25, i32 %i.026.i
  %platform_data.i12 = getelementptr [6 x %struct.mfd_cell], ptr @led_devs, i32 0, i32 %i.026.i, i32 7
  %26 = ptrtoint ptr %platform_data.i12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i11, ptr %platform_data.i12, align 4
  %pdata_size.i13 = getelementptr [6 x %struct.mfd_cell], ptr @led_devs, i32 0, i32 %i.026.i, i32 8
  %27 = ptrtoint ptr %pdata_size.i13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %pdata_size.i13, align 8
  %inc.i14 = add nuw nsw i32 %i.026.i, 1
  %28 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_leds.i, align 4
  %cmp5.i15 = icmp slt i32 %inc.i14, %29
  br i1 %cmp5.i15, label %for.body.i16.for.body.i16_crit_edge, label %for.body.i16.if.end9.i19_crit_edge

for.body.i16.if.end9.i19_crit_edge:               ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i19

for.body.i16.for.body.i16_crit_edge:              ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i16

if.end9.i19:                                      ; preds = %for.body.i16.if.end9.i19_crit_edge, %if.end.i9.if.end9.i19_crit_edge, %land.lhs.true.i5.if.end9.i19_crit_edge, %device_bk_init.exit.if.end9.i19_crit_edge
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip, align 4
  %call.i17 = tail call i32 @mfd_add_devices(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @led_devs, i32 noundef 6, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp10.i18 = icmp slt i32 %call.i17, 0
  br i1 %cmp10.i18, label %do.end.i20, label %if.end9.i19.device_led_init.exit_crit_edge

if.end9.i19.device_led_init.exit_crit_edge:       ; preds = %if.end9.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_led_init.exit

do.end.i20:                                       ; preds = %if.end9.i19
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.36) #9
  br label %device_led_init.exit

device_led_init.exit:                             ; preds = %do.end.i20, %if.end9.i19.device_led_init.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @device_8607_init(ptr noundef %chip, ptr noundef %i2c, ptr noundef readonly %pdata) unnamed_addr #0 align 64 {
entry:
  %status_buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm860x_reg_read(ptr noundef %i2c, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %call) #9
  br label %out

if.end:                                           ; preds = %entry
  %2 = trunc i32 %call to i8
  %trunc = and i8 %2, -16
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %trunc, label %do.end7 [
    i8 64, label %if.end.do.end3_crit_edge
    i8 80, label %if.end.do.end3_crit_edge127
  ]

if.end.do.end3_crit_edge127:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

if.end.do.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end3:                                          ; preds = %if.end.do.end3_crit_edge, %if.end.do.end3_crit_edge127
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.44, i32 noundef %call) #9
  %call9 = tail call i32 @pm860x_reg_read(ptr noundef %i2c, i32 noundef 38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end16

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.48, i32 noundef %call) #9
  br label %out

do.end14:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.51, i32 noundef %call9) #9
  br label %out

if.end16:                                         ; preds = %do.end3
  %and17 = and i32 %call9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %buck3_double = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 7
  %10 = ptrtoint ptr %buck3_double to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %buck3_double, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %call20 = tail call i32 @pm860x_reg_read(ptr noundef %i2c, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.54, i32 noundef %call20) #9
  br label %out

if.end27:                                         ; preds = %if.end19
  %tobool28.not = icmp eq ptr %pdata, null
  br i1 %tobool28.not, label %if.end27.if.else_crit_edge, label %land.lhs.true

if.end27.if.else_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end27
  %i2c_port = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 23
  %13 = ptrtoint ptr %i2c_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i2c_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp29 = icmp eq i32 %14, 1
  br i1 %cmp29, label %land.lhs.true.if.end31_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end27.if.else_crit_edge
  br label %if.end31

if.end31:                                         ; preds = %if.else, %land.lhs.true.if.end31_crit_edge
  %data.0 = phi i8 [ 0, %if.else ], [ 8, %land.lhs.true.if.end31_crit_edge ]
  %call32 = tail call i32 @pm860x_set_bits(ptr noundef %i2c, i32 noundef 12, i8 noundef zeroext 8, i8 noundef zeroext %data.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.57, i32 noundef %call32) #9
  br label %out

if.end40:                                         ; preds = %if.end31
  %id.i = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 10
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i = icmp eq i32 %18, 2
  %client.i = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 3
  %companion.i = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 4
  %cond.in.i = select i1 %cmp.i, ptr %client.i, ptr %companion.i
  %19 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %status_buf.i) #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %cond.i, i32 0, i32 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %cond.i, i32 0, i32 4, i32 27
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i, align 8
  %irq_mode.i = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 11
  %22 = ptrtoint ptr %irq_mode.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %irq_mode.i, align 4
  br i1 %tobool28.not, label %if.end40.if.end.i_crit_edge, label %land.lhs.true.i

if.end40.if.end.i_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end40
  %irq_mode1.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 24
  %23 = ptrtoint ptr %irq_mode1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq_mode1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.not.i = icmp eq i32 %24, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %irq_mode.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %irq_mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end40.if.end.i_crit_edge
  %data.0.i = phi i8 [ 2, %if.then.i ], [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ 0, %if.end40.if.end.i_crit_edge ]
  %call.i = tail call i32 @pm860x_set_bits(ptr noundef %cond.i, i32 noundef 12, i8 noundef zeroext 7, i8 noundef zeroext %data.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %if.end.i.device_irq_init.exit.thread123_crit_edge, label %if.end8.i

if.end.i.device_irq_init.exit.thread123_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_irq_init.exit.thread123

if.end8.i:                                        ; preds = %if.end.i
  %26 = call ptr @memset(ptr %status_buf.i, i32 0, i32 3)
  %call10.i = call i32 @pm860x_bulk_write(ptr noundef %cond.i, i32 noundef 6, i32 noundef 3, ptr noundef nonnull %status_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end8.i.device_irq_init.exit.thread123_crit_edge, label %if.end14.i

if.end8.i.device_irq_init.exit.thread123_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_irq_init.exit.thread123

if.end14.i:                                       ; preds = %if.end8.i
  %27 = ptrtoint ptr %irq_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool16.not.i = icmp eq i32 %28, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = call ptr @memset(ptr %status_buf.i, i32 255, i32 3)
  %call20.i = call i32 @pm860x_bulk_write(ptr noundef %cond.i, i32 noundef 3, i32 noundef 3, ptr noundef nonnull %status_buf.i) #6
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %call22.i = call i32 @pm860x_bulk_read(ptr noundef %cond.i, i32 noundef 3, i32 noundef 3, ptr noundef nonnull %status_buf.i) #6
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then17.i
  %ret.0.i = phi i32 [ %call20.i, %if.then17.i ], [ %call22.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp24.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp24.i, label %if.end23.i.device_irq_init.exit.thread123_crit_edge, label %do.body.i

if.end23.i.device_irq_init.exit.thread123_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_irq_init.exit.thread123

do.body.i:                                        ; preds = %if.end23.i
  %irq_lock.i = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 1
  call void @__mutex_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @device_irq_init.__key) #6
  br i1 %tobool28.not, label %do.body.i.if.end34.i_crit_edge, label %land.lhs.true29.i

do.body.i.if.end34.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

land.lhs.true29.i:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_base30.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 25
  %30 = ptrtoint ptr %irq_base30.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq_base30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool31.not.i = icmp eq i32 %31, 0
  %spec.select.i = select i1 %tobool31.not.i, i32 -1, i32 %31
  br label %if.end34.i

if.end34.i:                                       ; preds = %land.lhs.true29.i, %do.body.i.if.end34.i_crit_edge
  %irq_base.0.i = phi i32 [ -1, %do.body.i.if.end34.i_crit_edge ], [ %spec.select.i, %land.lhs.true29.i ]
  %call35.i = call i32 @__irq_alloc_descs(i32 noundef %irq_base.0.i, i32 noundef 0, i32 noundef 22, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  %irq_base36.i = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 12
  %32 = ptrtoint ptr %irq_base36.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call35.i, ptr %irq_base36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp38.i = icmp slt i32 %call35.i, 0
  br i1 %cmp38.i, label %do.end43.i, label %if.end46.i

do.end43.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.60, i32 noundef %call35.i) #9
  br label %device_irq_init.exit.thread123

if.end46.i:                                       ; preds = %if.end34.i
  %call48.i = call ptr @irq_domain_add_legacy(ptr noundef %21, i32 noundef 22, i32 noundef %call35.i, i32 noundef 0, ptr noundef nonnull @pm860x_irq_domain_ops, ptr noundef %chip) #6
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %cond.i, i32 0, i32 6
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i, align 4
  %core_irq.i = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 13
  %35 = ptrtoint ptr %core_irq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %core_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool50.not.i = icmp eq i32 %34, 0
  br i1 %tobool50.not.i, label %device_irq_init.exit, label %if.end52.i

if.end52.i:                                       ; preds = %if.end46.i
  %call55.i = call i32 @request_threaded_irq(i32 noundef %34, ptr noundef null, ptr noundef nonnull @pm860x_irq, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %device_irq_init.exit.thread, label %device_irq_init.exit.thread119

device_irq_init.exit.thread:                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status_buf.i) #6
  br label %if.end45

device_irq_init.exit.thread119:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.63, i32 noundef %call55.i) #9
  %38 = ptrtoint ptr %core_irq.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %core_irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status_buf.i) #6
  br label %if.end45

device_irq_init.exit.thread123:                   ; preds = %do.end43.i, %if.end23.i.device_irq_init.exit.thread123_crit_edge, %if.end8.i.device_irq_init.exit.thread123_crit_edge, %if.end.i.device_irq_init.exit.thread123_crit_edge
  %core_irq64.i125 = getelementptr inbounds %struct.pm860x_chip, ptr %chip, i32 0, i32 13
  %39 = ptrtoint ptr %core_irq64.i125 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %core_irq64.i125, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status_buf.i) #6
  br label %out

device_irq_init.exit:                             ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %core_irq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %core_irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status_buf.i) #6
  br label %if.end45

if.end45:                                         ; preds = %device_irq_init.exit, %device_irq_init.exit.thread119, %device_irq_init.exit.thread
  br i1 %tobool28.not, label %if.end45.device_rtc_init.exit_crit_edge, label %if.end.i84

if.end45.device_rtc_init.exit_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_rtc_init.exit

if.end.i84:                                       ; preds = %if.end45
  %buck1.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 5
  %41 = ptrtoint ptr %buck1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buck1.i, align 4
  %tobool.not.i83 = icmp eq ptr %42, null
  br i1 %tobool.not.i83, label %if.end.i84.if.end3.i_crit_edge, label %if.then1.i

if.end.i84.if.end3.i_crit_edge:                   ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %42, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 0, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 0, i32 8), align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i84.if.end3.i_crit_edge
  %buck2.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 6
  %43 = ptrtoint ptr %buck2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buck2.i, align 4
  %tobool4.not.i = icmp eq ptr %44, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end7.i_crit_edge, label %if.then5.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %44, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 1, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 1, i32 8), align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end7.i_crit_edge
  %buck3.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 7
  %45 = ptrtoint ptr %buck3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buck3.i, align 4
  %tobool8.not.i = icmp eq ptr %46, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then9.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %46, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 2, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 2, i32 8), align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end11.i_crit_edge
  %ldo1.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 8
  %47 = ptrtoint ptr %ldo1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ldo1.i, align 4
  %tobool12.not.i = icmp eq ptr %48, null
  br i1 %tobool12.not.i, label %if.end11.i.if.end15.i_crit_edge, label %if.then13.i

if.end11.i.if.end15.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %48, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 3, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 3, i32 8), align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end15.i_crit_edge
  %ldo2.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 9
  %49 = ptrtoint ptr %ldo2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ldo2.i, align 4
  %tobool16.not.i85 = icmp eq ptr %50, null
  br i1 %tobool16.not.i85, label %if.end15.i.if.end19.i_crit_edge, label %if.then17.i86

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then17.i86:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %50, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 4, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 4, i32 8), align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i86, %if.end15.i.if.end19.i_crit_edge
  %ldo3.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 10
  %51 = ptrtoint ptr %ldo3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ldo3.i, align 4
  %tobool20.not.i = icmp eq ptr %52, null
  br i1 %tobool20.not.i, label %if.end19.i.if.end23.i87_crit_edge, label %if.then21.i

if.end19.i.if.end23.i87_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i87

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %52, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 5, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 5, i32 8), align 8
  br label %if.end23.i87

if.end23.i87:                                     ; preds = %if.then21.i, %if.end19.i.if.end23.i87_crit_edge
  %ldo4.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 11
  %53 = ptrtoint ptr %ldo4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ldo4.i, align 4
  %tobool24.not.i = icmp eq ptr %54, null
  br i1 %tobool24.not.i, label %if.end23.i87.if.end27.i_crit_edge, label %if.then25.i

if.end23.i87.if.end27.i_crit_edge:                ; preds = %if.end23.i87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end23.i87
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %54, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 6, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 6, i32 8), align 8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end23.i87.if.end27.i_crit_edge
  %ldo5.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 12
  %55 = ptrtoint ptr %ldo5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ldo5.i, align 4
  %tobool28.not.i = icmp eq ptr %56, null
  br i1 %tobool28.not.i, label %if.end27.i.if.end31.i_crit_edge, label %if.then29.i

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %56, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 7, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 7, i32 8), align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end31.i_crit_edge
  %ldo6.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 13
  %57 = ptrtoint ptr %ldo6.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ldo6.i, align 4
  %tobool32.not.i = icmp eq ptr %58, null
  br i1 %tobool32.not.i, label %if.end31.i.if.end35.i_crit_edge, label %if.then33.i

if.end31.i.if.end35.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %58, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 8, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 8, i32 8), align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.end31.i.if.end35.i_crit_edge
  %ldo7.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 14
  %59 = ptrtoint ptr %ldo7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ldo7.i, align 4
  %tobool36.not.i = icmp eq ptr %60, null
  br i1 %tobool36.not.i, label %if.end35.i.if.end39.i_crit_edge, label %if.then37.i

if.end35.i.if.end39.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %60, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 9, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 9, i32 8), align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then37.i, %if.end35.i.if.end39.i_crit_edge
  %ldo8.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 15
  %61 = ptrtoint ptr %ldo8.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ldo8.i, align 4
  %tobool40.not.i = icmp eq ptr %62, null
  br i1 %tobool40.not.i, label %if.end39.i.if.end43.i_crit_edge, label %if.then41.i

if.end39.i.if.end43.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then41.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %62, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 10, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 10, i32 8), align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %if.end39.i.if.end43.i_crit_edge
  %ldo9.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 16
  %63 = ptrtoint ptr %ldo9.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ldo9.i, align 4
  %tobool44.not.i = icmp eq ptr %64, null
  br i1 %tobool44.not.i, label %if.end43.i.if.end47.i_crit_edge, label %if.then45.i

if.end43.i.if.end47.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %64, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 11, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 11, i32 8), align 8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then45.i, %if.end43.i.if.end47.i_crit_edge
  %ldo10.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 17
  %65 = ptrtoint ptr %ldo10.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ldo10.i, align 4
  %tobool48.not.i = icmp eq ptr %66, null
  br i1 %tobool48.not.i, label %if.end47.i.if.end51.i_crit_edge, label %if.then49.i

if.end47.i.if.end51.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then49.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %66, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 12, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 12, i32 8), align 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %if.end47.i.if.end51.i_crit_edge
  %ldo12.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 18
  %67 = ptrtoint ptr %ldo12.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ldo12.i, align 4
  %tobool52.not.i = icmp eq ptr %68, null
  br i1 %tobool52.not.i, label %if.end51.i.if.end55.i_crit_edge, label %if.then53.i

if.end51.i.if.end55.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

if.then53.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %68, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 13, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 13, i32 8), align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then53.i, %if.end51.i.if.end55.i_crit_edge
  %ldo_vibrator.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 19
  %69 = ptrtoint ptr %ldo_vibrator.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ldo_vibrator.i, align 4
  %tobool56.not.i88 = icmp eq ptr %70, null
  br i1 %tobool56.not.i88, label %if.end55.i.if.end59.i_crit_edge, label %if.then57.i

if.end55.i.if.end59.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %70, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 14, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 14, i32 8), align 8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then57.i, %if.end55.i.if.end59.i_crit_edge
  %ldo14.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 20
  %71 = ptrtoint ptr %ldo14.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ldo14.i, align 4
  %tobool60.not.i = icmp eq ptr %72, null
  br i1 %tobool60.not.i, label %if.end59.i.if.end63.i_crit_edge, label %if.then61.i

if.end59.i.if.end63.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %72, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 15, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([16 x %struct.mfd_cell], ptr @reg_devs, i32 0, i32 15, i32 8), align 8
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end59.i.if.end63.i_crit_edge
  %73 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chip, align 4
  %call.i89 = call i32 @mfd_add_devices(ptr noundef %74, i32 noundef 0, ptr noundef nonnull @reg_devs, i32 noundef 16, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp64.i = icmp slt i32 %call.i89, 0
  br i1 %cmp64.i, label %do.end.i, label %if.end63.i.if.end.i93_crit_edge

if.end63.i.if.end.i93_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i93

do.end.i:                                         ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.67) #9
  br label %if.end.i93

if.end.i93:                                       ; preds = %do.end.i, %if.end63.i.if.end.i93_crit_edge
  %rtc.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 2
  %77 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rtc.i, align 4
  store ptr %78, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @rtc_devs, i32 0, i32 0, i32 7), align 4
  store i32 8, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @rtc_devs, i32 0, i32 0, i32 8), align 8
  store i32 1, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @rtc_devs, i32 0, i32 0, i32 14), align 8
  store ptr @rtc_resources, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @rtc_devs, i32 0, i32 0, i32 15), align 4
  %79 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chip, align 4
  %81 = ptrtoint ptr %irq_base36.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %irq_base36.i, align 4
  %call.i91 = call i32 @mfd_add_devices(ptr noundef %80, i32 noundef 0, ptr noundef nonnull @rtc_devs, i32 noundef 1, ptr noundef nonnull @rtc_resources, i32 noundef %82, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp.i92 = icmp slt i32 %call.i91, 0
  br i1 %cmp.i92, label %do.end.i94, label %if.end.i93.device_rtc_init.exit_crit_edge

if.end.i93.device_rtc_init.exit_crit_edge:        ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_rtc_init.exit

do.end.i94:                                       ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.72) #9
  br label %device_rtc_init.exit

device_rtc_init.exit:                             ; preds = %do.end.i94, %if.end.i93.device_rtc_init.exit_crit_edge, %if.end45.device_rtc_init.exit_crit_edge
  store i32 1, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @onkey_devs, i32 0, i32 0, i32 14), align 8
  store ptr @onkey_resources, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @onkey_devs, i32 0, i32 0, i32 15), align 4
  %85 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chip, align 4
  %87 = ptrtoint ptr %irq_base36.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq_base36.i, align 4
  %call.i96 = call i32 @mfd_add_devices(ptr noundef %86, i32 noundef 0, ptr noundef nonnull @onkey_devs, i32 noundef 1, ptr noundef nonnull @onkey_resources, i32 noundef %88, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp.i97 = icmp slt i32 %call.i96, 0
  br i1 %cmp.i97, label %do.end.i98, label %device_rtc_init.exit.device_onkey_init.exit_crit_edge

device_rtc_init.exit.device_onkey_init.exit_crit_edge: ; preds = %device_rtc_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_onkey_init.exit

do.end.i98:                                       ; preds = %device_rtc_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.76) #9
  br label %device_onkey_init.exit

device_onkey_init.exit:                           ; preds = %do.end.i98, %device_rtc_init.exit.device_onkey_init.exit_crit_edge
  br i1 %tobool28.not, label %device_onkey_init.exit.device_power_init.exit_crit_edge, label %if.end.i103

device_onkey_init.exit.device_power_init.exit_crit_edge: ; preds = %device_onkey_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_power_init.exit

if.end.i103:                                      ; preds = %device_onkey_init.exit
  %touch.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 3
  %91 = ptrtoint ptr %touch.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %touch.i, align 4
  store ptr %92, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @touch_devs, i32 0, i32 0, i32 7), align 4
  store i32 36, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @touch_devs, i32 0, i32 0, i32 8), align 8
  store i32 1, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @touch_devs, i32 0, i32 0, i32 14), align 8
  store ptr @touch_resources, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @touch_devs, i32 0, i32 0, i32 15), align 4
  %93 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %chip, align 4
  %95 = ptrtoint ptr %irq_base36.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq_base36.i, align 4
  %call.i102 = call i32 @mfd_add_devices(ptr noundef %94, i32 noundef 0, ptr noundef nonnull @touch_devs, i32 noundef 1, ptr noundef nonnull @touch_resources, i32 noundef %96, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp1.i = icmp slt i32 %call.i102, 0
  br i1 %cmp1.i, label %do.end.i104, label %if.end.i103.if.end.i109_crit_edge

if.end.i103.if.end.i109_crit_edge:                ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i109

do.end.i104:                                      ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.80) #9
  br label %if.end.i109

if.end.i109:                                      ; preds = %do.end.i104, %if.end.i103.if.end.i109_crit_edge
  %power.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 4
  %99 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %power.i, align 4
  store ptr %100, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 0, i32 7), align 4
  store i32 8, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 0, i32 8), align 8
  store i32 2, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 0, i32 14), align 8
  store ptr @battery_resources, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 0, i32 15), align 4
  %101 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %chip, align 4
  %103 = ptrtoint ptr %irq_base36.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %irq_base36.i, align 4
  %call.i107 = call i32 @mfd_add_devices(ptr noundef %102, i32 noundef 0, ptr noundef nonnull @power_devs, i32 noundef 1, ptr noundef nonnull @battery_resources, i32 noundef %104, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp1.i108 = icmp slt i32 %call.i107, 0
  br i1 %cmp1.i108, label %do.end.i110, label %if.end.i109.if.end4.i_crit_edge

if.end.i109.if.end4.i_crit_edge:                  ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

do.end.i110:                                      ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.84) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i110, %if.end.i109.if.end4.i_crit_edge
  %107 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %power.i, align 4
  store ptr %108, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 1, i32 7), align 4
  store i32 8, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 1, i32 8), align 8
  store i32 7, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 1, i32 14), align 8
  store ptr @charger_resources, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 1, i32 15), align 4
  %109 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %chip, align 4
  %111 = ptrtoint ptr %irq_base36.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %irq_base36.i, align 4
  %call8.i = call i32 @mfd_add_devices(ptr noundef %110, i32 noundef 0, ptr noundef getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 1), i32 noundef 1, ptr noundef nonnull @charger_resources, i32 noundef %112, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end13.i, label %if.end4.i.if.end15.i111_crit_edge

if.end4.i.if.end15.i111_crit_edge:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i111

do.end13.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.87) #9
  br label %if.end15.i111

if.end15.i111:                                    ; preds = %do.end13.i, %if.end4.i.if.end15.i111_crit_edge
  store ptr @preg_init_data, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 2, i32 7), align 4
  store i32 228, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 2, i32 8), align 8
  %115 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %chip, align 4
  %117 = ptrtoint ptr %irq_base36.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %irq_base36.i, align 4
  %call18.i = call i32 @mfd_add_devices(ptr noundef %116, i32 noundef 0, ptr noundef getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 2), i32 noundef 1, ptr noundef null, i32 noundef %118, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %do.end23.i, label %if.end15.i111.if.end25.i_crit_edge

if.end15.i111.if.end25.i_crit_edge:               ; preds = %if.end15.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

do.end23.i:                                       ; preds = %if.end15.i111
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.90) #9
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end23.i, %if.end15.i111.if.end25.i_crit_edge
  %chg_desc.i = getelementptr inbounds %struct.pm860x_platform_data, ptr %pdata, i32 0, i32 21
  %121 = ptrtoint ptr %chg_desc.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %chg_desc.i, align 4
  %tobool.not.i112 = icmp eq ptr %122, null
  br i1 %tobool.not.i112, label %if.end25.i.device_power_init.exit_crit_edge, label %if.then26.i

if.end25.i.device_power_init.exit_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_power_init.exit

if.then26.i:                                      ; preds = %if.end25.i
  %charger_regulators.i = getelementptr inbounds %struct.charger_desc, ptr %122, i32 0, i32 10
  %123 = ptrtoint ptr %charger_regulators.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @chg_desc_regulator_data, ptr %charger_regulators.i, align 4
  %124 = ptrtoint ptr %chg_desc.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %chg_desc.i, align 4
  %num_charger_regulators.i = getelementptr inbounds %struct.charger_desc, ptr %125, i32 0, i32 9
  %126 = ptrtoint ptr %num_charger_regulators.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %num_charger_regulators.i, align 4
  %127 = load ptr, ptr %chg_desc.i, align 4
  store ptr %127, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 3, i32 7), align 4
  store i32 80, ptr getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 3, i32 8), align 8
  %128 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %chip, align 4
  %130 = ptrtoint ptr %irq_base36.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %irq_base36.i, align 4
  %call32.i = call i32 @mfd_add_devices(ptr noundef %129, i32 noundef 0, ptr noundef getelementptr inbounds ([4 x %struct.mfd_cell], ptr @power_devs, i32 0, i32 3), i32 noundef 1, ptr noundef null, i32 noundef %131, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %do.end37.i, label %if.then26.i.device_power_init.exit_crit_edge

if.then26.i.device_power_init.exit_crit_edge:     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_power_init.exit

do.end37.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %132 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.93) #9
  br label %device_power_init.exit

device_power_init.exit:                           ; preds = %do.end37.i, %if.then26.i.device_power_init.exit_crit_edge, %if.end25.i.device_power_init.exit_crit_edge, %device_onkey_init.exit.device_power_init.exit_crit_edge
  store i32 4, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @codec_devs, i32 0, i32 0, i32 14), align 8
  store ptr @codec_resources, ptr getelementptr inbounds ([1 x %struct.mfd_cell], ptr @codec_devs, i32 0, i32 0, i32 15), align 4
  %134 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %chip, align 4
  %call.i113 = call i32 @mfd_add_devices(ptr noundef %135, i32 noundef 0, ptr noundef nonnull @codec_devs, i32 noundef 1, ptr noundef nonnull @codec_resources, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp.i114 = icmp slt i32 %call.i113, 0
  br i1 %cmp.i114, label %do.end.i115, label %device_power_init.exit.out_crit_edge

device_power_init.exit.out_crit_edge:             ; preds = %device_power_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end.i115:                                      ; preds = %device_power_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.109) #9
  br label %out

out:                                              ; preds = %do.end.i115, %device_power_init.exit.out_crit_edge, %device_irq_init.exit.thread123, %do.end38, %do.end25, %do.end14, %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_bulk_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_bulk_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.pm860x_chip, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %client = getelementptr inbounds %struct.pm860x_chip, ptr %data, i32 0, i32 3
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %data, i32 0, i32 4
  %cond.in = select i1 %cmp, ptr %client, ptr %companion
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  %irq_base = getelementptr inbounds %struct.pm860x_chip, ptr %data, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %value.017 = phi i32 [ 0, %entry ], [ %value.1, %for.inc.for.body_crit_edge ]
  %read_reg.016 = phi i32 [ -1, %entry ], [ %read_reg.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %i.018
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %read_reg.016, i32 %4)
  %cmp2.not = icmp eq i32 %read_reg.016, %4
  br i1 %cmp2.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pm860x_reg_read(ptr noundef %cond, i32 noundef %4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %read_reg.1 = phi i32 [ %4, %if.then ], [ %read_reg.016, %for.body.if.end_crit_edge ]
  %value.1 = phi i32 [ %call, %if.then ], [ %value.017, %for.body.if.end_crit_edge ]
  %enable = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %i.018, i32 2
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable, align 4
  %and = and i32 %6, %value.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_base, align 4
  %add = add i32 %8, %i.018
  tail call void @handle_nested_irq(i32 noundef %add) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_irq_domain_map(ptr nocapture noundef readonly %d, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @pm860x_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 1024) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pm860x_irq_enable(ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %offs = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %1, i32 3
  %2 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offs, align 4
  %enable = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %1, i32 2
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %enable, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pm860x_irq_disable(ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %enable = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_irq_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_lock = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_irq_sync_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %id = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %client = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 3
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 4
  %cond.in = select i1 %cmp, ptr %client, ptr %companion
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load ptr, ptr %cond.in, align 4
  %mask.sroa.0.0.copyload = load i8, ptr @pm860x_irq_sync_unlock.cached.0, align 1
  %mask.sroa.7.0.copyload = load i8, ptr @pm860x_irq_sync_unlock.cached.1, align 1
  %mask.sroa.11.0.copyload = load i8, ptr @pm860x_irq_sync_unlock.cached.2, align 1
  br label %for.body5

for.cond39.preheader:                             ; preds = %for.inc36
  %5 = load i8, ptr @pm860x_irq_sync_unlock.cached.0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1186, i8 %5)
  %cmp47.not = icmp eq i8 %conv1186, %5
  br i1 %cmp47.not, label %for.cond39.preheader.for.inc53_crit_edge, label %if.then

for.cond39.preheader.for.inc53_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc53

for.body5:                                        ; preds = %for.inc36.for.body5_crit_edge, %entry
  %i.191 = phi i32 [ 0, %entry ], [ %inc37, %for.inc36.for.body5_crit_edge ]
  %conv358290 = phi i8 [ %mask.sroa.11.0.copyload, %entry ], [ %conv3581, %for.inc36.for.body5_crit_edge ]
  %conv238589 = phi i8 [ %mask.sroa.7.0.copyload, %entry ], [ %conv2384, %for.inc36.for.body5_crit_edge ]
  %conv118788 = phi i8 [ %mask.sroa.0.0.copyload, %entry ], [ %conv1186, %for.inc36.for.body5_crit_edge ]
  %mask_reg = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %i.191, i32 1
  %6 = ptrtoint ptr %mask_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_reg, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %7, label %do.end [
    i32 6, label %sw.bb
    i32 7, label %sw.bb12
    i32 8, label %sw.bb24
  ]

sw.bb:                                            ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  %offs = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %i.191, i32 3
  %9 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offs, align 4
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, -1
  %conv8 = and i8 %conv118788, %12
  %enable = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %i.191, i32 2
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  %15 = trunc i32 %14 to i8
  %conv11 = or i8 %conv8, %15
  br label %for.inc36

sw.bb12:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  %offs13 = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %i.191, i32 3
  %16 = ptrtoint ptr %offs13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offs13, align 4
  %18 = trunc i32 %17 to i8
  %19 = xor i8 %18, -1
  %conv18 = and i8 %conv238589, %19
  %enable19 = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %i.191, i32 2
  %20 = ptrtoint ptr %enable19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enable19, align 4
  %22 = trunc i32 %21 to i8
  %conv23 = or i8 %conv18, %22
  br label %for.inc36

sw.bb24:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  %offs25 = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %i.191, i32 3
  %23 = ptrtoint ptr %offs25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offs25, align 4
  %25 = trunc i32 %24 to i8
  %26 = xor i8 %25, -1
  %conv30 = and i8 %conv358290, %26
  %enable31 = getelementptr [22 x %struct.pm860x_irq_data], ptr @pm860x_irqs, i32 0, i32 %i.191, i32 2
  %27 = ptrtoint ptr %enable31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enable31, align 4
  %29 = trunc i32 %28 to i8
  %conv35 = or i8 %conv30, %29
  br label %for.inc36

do.end:                                           ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.65) #9
  br label %for.inc36

for.inc36:                                        ; preds = %do.end, %sw.bb24, %sw.bb12, %sw.bb
  %conv1186 = phi i8 [ %conv11, %sw.bb ], [ %conv118788, %sw.bb12 ], [ %conv118788, %sw.bb24 ], [ %conv118788, %do.end ]
  %conv2384 = phi i8 [ %conv238589, %sw.bb ], [ %conv23, %sw.bb12 ], [ %conv238589, %sw.bb24 ], [ %conv238589, %do.end ]
  %conv3581 = phi i8 [ %conv358290, %sw.bb ], [ %conv358290, %sw.bb12 ], [ %conv35, %sw.bb24 ], [ %conv358290, %do.end ]
  %inc37 = add nuw nsw i32 %i.191, 1
  %exitcond.not = icmp eq i32 %inc37, 22
  br i1 %exitcond.not, label %for.cond39.preheader, label %for.inc36.for.body5_crit_edge

for.inc36.for.body5_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5

if.then:                                          ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #8
  store i8 %conv1186, ptr @pm860x_irq_sync_unlock.cached.0, align 1
  %call52 = tail call i32 @pm860x_reg_write(ptr noundef %cond, i32 noundef 6, i8 noundef zeroext %conv1186) #6
  br label %for.inc53

for.inc53:                                        ; preds = %if.then, %for.cond39.preheader.for.inc53_crit_edge
  %32 = load i8, ptr @pm860x_irq_sync_unlock.cached.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv2384, i8 %32)
  %cmp47.not.1 = icmp eq i8 %conv2384, %32
  br i1 %cmp47.not.1, label %for.inc53.for.inc53.1_crit_edge, label %if.then.1

for.inc53.for.inc53.1_crit_edge:                  ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc53.1

if.then.1:                                        ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #8
  store i8 %conv2384, ptr @pm860x_irq_sync_unlock.cached.1, align 1
  %call52.1 = tail call i32 @pm860x_reg_write(ptr noundef %cond, i32 noundef 7, i8 noundef zeroext %conv2384) #6
  br label %for.inc53.1

for.inc53.1:                                      ; preds = %if.then.1, %for.inc53.for.inc53.1_crit_edge
  %33 = load i8, ptr @pm860x_irq_sync_unlock.cached.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv3581, i8 %33)
  %cmp47.not.2 = icmp eq i8 %conv3581, %33
  br i1 %cmp47.not.2, label %for.inc53.1.for.inc53.2_crit_edge, label %if.then.2

for.inc53.1.for.inc53.2_crit_edge:                ; preds = %for.inc53.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc53.2

if.then.2:                                        ; preds = %for.inc53.1
  call void @__sanitizer_cov_trace_pc() #8
  store i8 %conv3581, ptr @pm860x_irq_sync_unlock.cached.2, align 1
  %call52.2 = tail call i32 @pm860x_reg_write(ptr noundef %cond, i32 noundef 8, i8 noundef zeroext %conv3581) #6
  br label %for.inc53.2

for.inc53.2:                                      ; preds = %if.then.2, %for.inc53.1.for.inc53.2_crit_edge
  %irq_lock = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %irq_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %wakeup_flag = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %wakeup_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wakeup_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %core_irq = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %core_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %wakeup_flag = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %wakeup_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wakeup_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %core_irq = getelementptr inbounds %struct.pm860x_chip, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %core_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !71, !73, !74, !75, !76, !78, !80, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !169, !171, !173, !175, !176, !177, !178, !180, !181, !182, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !226, !227, !228, !230, !232, !234, !236, !238, !239, !240, !241, !243, !245, !247, !249, !251, !252, !253, !254, !256, !258, !260, !262, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !322, !323, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/88pm860x-core.c", i32 658, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @pm8606_osc_enable.__UNIQUE_ID_ddebug288, !1, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mfd/88pm860x-core.c", i32 659, i32 2}
!8 = !{ptr @pm8606_osc_enable.__UNIQUE_ID_ddebug289, !7, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mfd/88pm860x-core.c", i32 683, i32 2}
!11 = !{ptr @pm8606_osc_enable.__UNIQUE_ID_ddebug290, !10, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!12 = !{ptr @__ksymtab_pm8606_osc_enable, !13, !"__ksymtab_pm8606_osc_enable", i1 false, i1 false}
!13 = !{!"../drivers/mfd/88pm860x-core.c", i32 691, i32 1}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/88pm860x-core.c", i32 699, i32 2}
!16 = !{ptr @pm8606_osc_disable.__UNIQUE_ID_ddebug291, !15, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!17 = !{ptr @pm8606_osc_disable.__UNIQUE_ID_ddebug292, !18, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!18 = !{!"../drivers/mfd/88pm860x-core.c", i32 700, i32 2}
!19 = !{ptr @pm8606_osc_disable.__UNIQUE_ID_ddebug293, !20, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!20 = !{!"../drivers/mfd/88pm860x-core.c", i32 724, i32 2}
!21 = !{ptr @__ksymtab_pm8606_osc_disable, !22, !"__ksymtab_pm8606_osc_disable", i1 false, i1 false}
!22 = !{!"../drivers/mfd/88pm860x-core.c", i32 732, i32 1}
!23 = !{ptr @__initcall__kmod_88pm860x__294_1272_pm860x_i2c_init4, !24, !"__initcall__kmod_88pm860x__294_1272_pm860x_i2c_init4", i1 false, i1 false}
!24 = !{!"../drivers/mfd/88pm860x-core.c", i32 1272, i32 1}
!25 = !{ptr @__exitcall_pm860x_i2c_exit, !26, !"__exitcall_pm860x_i2c_exit", i1 false, i1 false}
!26 = !{!"../drivers/mfd/88pm860x-core.c", i32 1278, i32 1}
!27 = !{ptr @__UNIQUE_ID_description295, !28, !"__UNIQUE_ID_description295", i1 false, i1 false}
!28 = !{!"../drivers/mfd/88pm860x-core.c", i32 1280, i32 1}
!29 = !{ptr @__UNIQUE_ID_author296, !30, !"__UNIQUE_ID_author296", i1 false, i1 false}
!30 = !{!"../drivers/mfd/88pm860x-core.c", i32 1281, i32 1}
!31 = !{ptr @__UNIQUE_ID_file297, !32, !"__UNIQUE_ID_file297", i1 false, i1 false}
!32 = !{!"../drivers/mfd/88pm860x-core.c", i32 1282, i32 1}
!33 = !{ptr @__UNIQUE_ID_license298, !32, !"__UNIQUE_ID_license298", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/88pm860x-core.c", i32 1269, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pm860x_i2c_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pm860x_i2c_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/88pm860x-core.c", i32 1254, i32 11}
!41 = !{ptr @pm860x_driver, !42, !"pm860x_driver", i1 false, i1 false}
!42 = !{!"../drivers/mfd/88pm860x-core.c", i32 1252, i32 26}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/88pm860x-core.c", i32 1150, i32 3}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pm860x_probe._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @pm860x_probe._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @pm860x_probe._key, !49, !"_key", i1 false, i1 false}
!49 = !{!"../drivers/mfd/88pm860x-core.c", i32 1160, i32 17}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/88pm860x-core.c", i32 1163, i32 3}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pm860x_probe._entry.13, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @pm860x_probe._entry_ptr.17, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/88pm860x-core.c", i32 1184, i32 4}
!59 = !{ptr @pm860x_probe._entry.18, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @pm860x_probe._entry_ptr.20, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @pm860x_probe._key.21, !62, !"_key", i1 false, i1 false}
!62 = !{!"../drivers/mfd/88pm860x-core.c", i32 1188, i32 28}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pm860x_probe._entry.23, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/mfd/88pm860x-core.c", i32 1192, i32 4}
!66 = !{ptr @pm860x_probe._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/88pm860x-core.c", i32 1120, i32 26}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mfd/88pm860x-core.c", i32 1122, i32 33}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/88pm860x-core.c", i32 1125, i32 3}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @pm860x_dt_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @pm860x_dt_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @pm860x_regmap_config, !77, !"pm860x_regmap_config", i1 false, i1 false}
!77 = !{!"../drivers/mfd/88pm860x-core.c", i32 1109, i32 35}
!78 = !{ptr @device_osc_init.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/mfd/88pm860x-core.c", i32 738, i32 2}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mfd/88pm860x-core.c", i32 766, i32 3}
!83 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @device_bk_init._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @device_bk_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/88pm860x-core.c", i32 170, i32 11}
!88 = !{ptr @bk_devs, !89, !"bk_devs", i1 false, i1 false}
!89 = !{!"../drivers/mfd/88pm860x-core.c", i32 168, i32 24}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/88pm860x-core.c", i32 30, i32 9}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mfd/88pm860x-core.c", i32 31, i32 9}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mfd/88pm860x-core.c", i32 32, i32 9}
!96 = !{ptr @bk0_resources, !97, !"bk0_resources", i1 false, i1 false}
!97 = !{!"../drivers/mfd/88pm860x-core.c", i32 29, i32 30}
!98 = !{ptr @bk1_resources, !99, !"bk1_resources", i1 false, i1 false}
!99 = !{!"../drivers/mfd/88pm860x-core.c", i32 34, i32 30}
!100 = !{ptr @bk2_resources, !101, !"bk2_resources", i1 false, i1 false}
!101 = !{!"../drivers/mfd/88pm860x-core.c", i32 39, i32 30}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mfd/88pm860x-core.c", i32 786, i32 3}
!104 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @device_led_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @device_led_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mfd/88pm860x-core.c", i32 189, i32 11}
!109 = !{ptr @led_devs, !110, !"led_devs", i1 false, i1 false}
!110 = !{!"../drivers/mfd/88pm860x-core.c", i32 187, i32 24}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mfd/88pm860x-core.c", i32 47, i32 13}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mfd/88pm860x-core.c", i32 48, i32 13}
!115 = !{ptr @led0_resources, !116, !"led0_resources", i1 false, i1 false}
!116 = !{!"../drivers/mfd/88pm860x-core.c", i32 45, i32 30}
!117 = !{ptr @led1_resources, !118, !"led1_resources", i1 false, i1 false}
!118 = !{!"../drivers/mfd/88pm860x-core.c", i32 50, i32 30}
!119 = !{ptr @led2_resources, !120, !"led2_resources", i1 false, i1 false}
!120 = !{!"../drivers/mfd/88pm860x-core.c", i32 55, i32 30}
!121 = !{ptr @led3_resources, !122, !"led3_resources", i1 false, i1 false}
!122 = !{!"../drivers/mfd/88pm860x-core.c", i32 60, i32 30}
!123 = !{ptr @led4_resources, !124, !"led4_resources", i1 false, i1 false}
!124 = !{!"../drivers/mfd/88pm860x-core.c", i32 65, i32 30}
!125 = !{ptr @led5_resources, !126, !"led5_resources", i1 false, i1 false}
!126 = !{!"../drivers/mfd/88pm860x-core.c", i32 70, i32 30}
!127 = !{ptr @.str.41, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mfd/88pm860x-core.c", i32 991, i32 3}
!129 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @device_8607_init._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @device_8607_init._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mfd/88pm860x-core.c", i32 997, i32 3}
!134 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @device_8607_init._entry.43, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @device_8607_init._entry_ptr.46, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mfd/88pm860x-core.c", i32 1001, i32 3}
!139 = !{ptr @device_8607_init._entry.47, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @device_8607_init._entry_ptr.49, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mfd/88pm860x-core.c", i32 1009, i32 3}
!143 = !{ptr @device_8607_init._entry.50, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @device_8607_init._entry_ptr.52, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mfd/88pm860x-core.c", i32 1017, i32 3}
!147 = !{ptr @device_8607_init._entry.53, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @device_8607_init._entry_ptr.55, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mfd/88pm860x-core.c", i32 1027, i32 3}
!151 = !{ptr @device_8607_init._entry.56, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @device_8607_init._entry_ptr.58, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @device_irq_init.__key, !154, !"__key", i1 false, i1 false}
!154 = !{!"../drivers/mfd/88pm860x-core.c", i32 615, i32 2}
!155 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mfd/88pm860x-core.c", i32 622, i32 3}
!158 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @device_irq_init._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @device_irq_init._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mfd/88pm860x-core.c", i32 636, i32 3}
!163 = !{ptr @device_irq_init._entry.62, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @device_irq_init._entry_ptr.64, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @pm860x_irq_domain_ops, !166, !"pm860x_irq_domain_ops", i1 false, i1 false}
!166 = !{!"../drivers/mfd/88pm860x-core.c", i32 562, i32 36}
!167 = !{ptr @pm860x_irq_chip, !168, !"pm860x_irq_chip", i1 false, i1 false}
!168 = !{!"../drivers/mfd/88pm860x-core.c", i32 544, i32 24}
!169 = !{ptr @pm860x_irqs, !170, !"pm860x_irqs", i1 false, i1 false}
!170 = !{!"../drivers/mfd/88pm860x-core.c", i32 349, i32 31}
!171 = distinct !{null, !172, !"cached", i1 false, i1 false}
!172 = !{!"../drivers/mfd/88pm860x-core.c", i32 495, i32 23}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mfd/88pm860x-core.c", i32 519, i32 4}
!175 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @pm860x_irq_sync_unlock._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @pm860x_irq_sync_unlock._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.67, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mfd/88pm860x-core.c", i32 865, i32 3}
!180 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @device_regulator_init._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @device_regulator_init._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.69, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mfd/88pm860x-core.c", i32 223, i32 11}
!185 = !{ptr @reg_devs, !186, !"reg_devs", i1 false, i1 false}
!186 = !{!"../drivers/mfd/88pm860x-core.c", i32 221, i32 24}
!187 = !{ptr @.str.70, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mfd/88pm860x-core.c", i32 77, i32 15}
!189 = !{ptr @buck1_resources, !190, !"buck1_resources", i1 false, i1 false}
!190 = !{!"../drivers/mfd/88pm860x-core.c", i32 76, i32 30}
!191 = !{ptr @buck2_resources, !192, !"buck2_resources", i1 false, i1 false}
!192 = !{!"../drivers/mfd/88pm860x-core.c", i32 79, i32 30}
!193 = !{ptr @buck3_resources, !194, !"buck3_resources", i1 false, i1 false}
!194 = !{!"../drivers/mfd/88pm860x-core.c", i32 82, i32 30}
!195 = !{ptr @.str.71, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/mfd/88pm860x-core.c", i32 86, i32 15}
!197 = !{ptr @ldo1_resources, !198, !"ldo1_resources", i1 false, i1 false}
!198 = !{!"../drivers/mfd/88pm860x-core.c", i32 85, i32 30}
!199 = !{ptr @ldo2_resources, !200, !"ldo2_resources", i1 false, i1 false}
!200 = !{!"../drivers/mfd/88pm860x-core.c", i32 88, i32 30}
!201 = !{ptr @ldo3_resources, !202, !"ldo3_resources", i1 false, i1 false}
!202 = !{!"../drivers/mfd/88pm860x-core.c", i32 91, i32 30}
!203 = !{ptr @ldo4_resources, !204, !"ldo4_resources", i1 false, i1 false}
!204 = !{!"../drivers/mfd/88pm860x-core.c", i32 94, i32 30}
!205 = !{ptr @ldo5_resources, !206, !"ldo5_resources", i1 false, i1 false}
!206 = !{!"../drivers/mfd/88pm860x-core.c", i32 97, i32 30}
!207 = !{ptr @ldo6_resources, !208, !"ldo6_resources", i1 false, i1 false}
!208 = !{!"../drivers/mfd/88pm860x-core.c", i32 100, i32 30}
!209 = !{ptr @ldo7_resources, !210, !"ldo7_resources", i1 false, i1 false}
!210 = !{!"../drivers/mfd/88pm860x-core.c", i32 103, i32 30}
!211 = !{ptr @ldo8_resources, !212, !"ldo8_resources", i1 false, i1 false}
!212 = !{!"../drivers/mfd/88pm860x-core.c", i32 106, i32 30}
!213 = !{ptr @ldo9_resources, !214, !"ldo9_resources", i1 false, i1 false}
!214 = !{!"../drivers/mfd/88pm860x-core.c", i32 109, i32 30}
!215 = !{ptr @ldo10_resources, !216, !"ldo10_resources", i1 false, i1 false}
!216 = !{!"../drivers/mfd/88pm860x-core.c", i32 112, i32 30}
!217 = !{ptr @ldo12_resources, !218, !"ldo12_resources", i1 false, i1 false}
!218 = !{!"../drivers/mfd/88pm860x-core.c", i32 115, i32 30}
!219 = !{ptr @ldo_vibrator_resources, !220, !"ldo_vibrator_resources", i1 false, i1 false}
!220 = !{!"../drivers/mfd/88pm860x-core.c", i32 118, i32 30}
!221 = !{ptr @ldo14_resources, !222, !"ldo14_resources", i1 false, i1 false}
!222 = !{!"../drivers/mfd/88pm860x-core.c", i32 121, i32 30}
!223 = !{ptr @.str.72, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/mfd/88pm860x-core.c", i32 886, i32 3}
!225 = !{ptr @.str.73, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @device_rtc_init._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @device_rtc_init._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.74, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/mfd/88pm860x-core.c", i32 338, i32 3}
!230 = !{ptr @rtc_devs, !231, !"rtc_devs", i1 false, i1 false}
!231 = !{!"../drivers/mfd/88pm860x-core.c", i32 337, i32 24}
!232 = !{ptr @.str.75, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/mfd/88pm860x-core.c", i32 165, i32 35}
!234 = !{ptr @rtc_resources, !235, !"rtc_resources", i1 false, i1 false}
!235 = !{!"../drivers/mfd/88pm860x-core.c", i32 164, i32 24}
!236 = !{ptr @.str.76, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mfd/88pm860x-core.c", i32 966, i32 3}
!238 = !{ptr @.str.77, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @device_onkey_init._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @device_onkey_init._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.78, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mfd/88pm860x-core.c", i32 310, i32 3}
!243 = !{ptr @onkey_devs, !244, !"onkey_devs", i1 false, i1 false}
!244 = !{!"../drivers/mfd/88pm860x-core.c", i32 309, i32 24}
!245 = !{ptr @.str.79, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mfd/88pm860x-core.c", i32 130, i32 39}
!247 = !{ptr @onkey_resources, !248, !"onkey_resources", i1 false, i1 false}
!248 = !{!"../drivers/mfd/88pm860x-core.c", i32 129, i32 24}
!249 = !{ptr @.str.80, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/mfd/88pm860x-core.c", i32 905, i32 3}
!251 = !{ptr @.str.81, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @device_touch_init._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @device_touch_init._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.82, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/mfd/88pm860x-core.c", i32 306, i32 3}
!256 = !{ptr @touch_devs, !257, !"touch_devs", i1 false, i1 false}
!257 = !{!"../drivers/mfd/88pm860x-core.c", i32 305, i32 24}
!258 = !{ptr @.str.83, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/mfd/88pm860x-core.c", i32 126, i32 35}
!260 = !{ptr @touch_resources, !261, !"touch_resources", i1 false, i1 false}
!261 = !{!"../drivers/mfd/88pm860x-core.c", i32 125, i32 24}
!262 = !{ptr @.str.84, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/mfd/88pm860x-core.c", i32 923, i32 3}
!264 = !{ptr @.str.85, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @device_power_init._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @device_power_init._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.87, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/mfd/88pm860x-core.c", i32 932, i32 3}
!269 = !{ptr @device_power_init._entry.86, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @device_power_init._entry_ptr.88, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.90, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/mfd/88pm860x-core.c", i32 939, i32 3}
!273 = !{ptr @device_power_init._entry.89, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @device_power_init._entry_ptr.91, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.93, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/mfd/88pm860x-core.c", i32 951, i32 4}
!277 = !{ptr @device_power_init._entry.92, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @device_power_init._entry_ptr.94, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.95, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/mfd/88pm860x-core.c", i32 331, i32 3}
!281 = !{ptr @.str.96, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/mfd/88pm860x-core.c", i32 332, i32 3}
!283 = !{ptr @.str.97, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/mfd/88pm860x-core.c", i32 333, i32 3}
!285 = !{ptr @.str.98, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/mfd/88pm860x-core.c", i32 334, i32 3}
!287 = !{ptr @power_devs, !288, !"power_devs", i1 false, i1 false}
!288 = !{!"../drivers/mfd/88pm860x-core.c", i32 330, i32 24}
!289 = !{ptr @.str.99, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/mfd/88pm860x-core.c", i32 146, i32 35}
!291 = !{ptr @.str.100, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/mfd/88pm860x-core.c", i32 147, i32 35}
!293 = !{ptr @battery_resources, !294, !"battery_resources", i1 false, i1 false}
!294 = !{!"../drivers/mfd/88pm860x-core.c", i32 145, i32 24}
!295 = !{ptr @.str.101, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/mfd/88pm860x-core.c", i32 151, i32 37}
!297 = !{ptr @.str.102, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/mfd/88pm860x-core.c", i32 152, i32 47}
!299 = !{ptr @.str.103, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/mfd/88pm860x-core.c", i32 154, i32 47}
!301 = !{ptr @.str.104, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mfd/88pm860x-core.c", i32 156, i32 47}
!303 = !{ptr @.str.105, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/mfd/88pm860x-core.c", i32 158, i32 47}
!305 = !{ptr @.str.106, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/mfd/88pm860x-core.c", i32 160, i32 37}
!307 = !{ptr @.str.107, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/mfd/88pm860x-core.c", i32 161, i32 37}
!309 = !{ptr @charger_resources, !310, !"charger_resources", i1 false, i1 false}
!310 = !{!"../drivers/mfd/88pm860x-core.c", i32 150, i32 24}
!311 = !{ptr @preg_init_data, !312, !"preg_init_data", i1 false, i1 false}
!312 = !{!"../drivers/mfd/88pm860x-core.c", i32 321, i32 35}
!313 = !{ptr @.str.108, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/mfd/88pm860x-core.c", i32 318, i32 2}
!315 = !{ptr @preg_supply, !316, !"preg_supply", i1 false, i1 false}
!316 = !{!"../drivers/mfd/88pm860x-core.c", i32 317, i32 41}
!317 = !{ptr @chg_desc_regulator_data, !318, !"chg_desc_regulator_data", i1 false, i1 false}
!318 = !{!"../drivers/mfd/88pm860x-core.c", i32 326, i32 33}
!319 = !{ptr @.str.109, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/mfd/88pm860x-core.c", i32 980, i32 3}
!321 = !{ptr @.str.110, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @device_codec_init._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @device_codec_init._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.111, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/mfd/88pm860x-core.c", i32 314, i32 3}
!326 = !{ptr @codec_devs, !327, !"codec_devs", i1 false, i1 false}
!327 = !{!"../drivers/mfd/88pm860x-core.c", i32 313, i32 24}
!328 = !{ptr @.str.112, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/mfd/88pm860x-core.c", i32 135, i32 43}
!330 = !{ptr @.str.113, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/mfd/88pm860x-core.c", i32 137, i32 43}
!332 = !{ptr @.str.114, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/mfd/88pm860x-core.c", i32 139, i32 43}
!334 = !{ptr @.str.115, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/mfd/88pm860x-core.c", i32 141, i32 51}
!336 = !{ptr @codec_resources, !337, !"codec_resources", i1 false, i1 false}
!337 = !{!"../drivers/mfd/88pm860x-core.c", i32 133, i32 24}
!338 = !{ptr @pm860x_dt_ids, !339, !"pm860x_dt_ids", i1 false, i1 false}
!339 = !{!"../drivers/mfd/88pm860x-core.c", i32 1246, i32 34}
!340 = !{ptr @pm860x_pm_ops, !341, !"pm860x_pm_ops", i1 false, i1 false}
!341 = !{!"../drivers/mfd/88pm860x-core.c", i32 1238, i32 8}
!342 = !{ptr @pm860x_id_table, !343, !"pm860x_id_table", i1 false, i1 false}
!343 = !{!"../drivers/mfd/88pm860x-core.c", i32 1240, i32 35}
!344 = !{i32 1, !"wchar_size", i32 2}
!345 = !{i32 1, !"min_enum_size", i32 4}
!346 = !{i32 8, !"branch-target-enforcement", i32 0}
!347 = !{i32 8, !"sign-return-address", i32 0}
!348 = !{i32 8, !"sign-return-address-all", i32 0}
!349 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!350 = !{i32 7, !"uwtable", i32 1}
!351 = !{i32 7, !"frame-pointer", i32 2}
!352 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!353 = !{i64 2148723906, i64 2148723911, i64 2148723924, i64 2148723968, i64 2148724002, i64 2148724023}
