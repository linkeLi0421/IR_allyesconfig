; ModuleID = '/llk/IR_all_yes/drivers/regulator/act8865-regulator.c_pt.bc'
source_filename = "../drivers/regulator/act8865-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.act8865 = type { ptr, i32, i32 }
%struct.act8865_platform_data = type { i32, ptr }
%struct.act8865_regulator_data = type { i32, ptr, ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_act8865_regulator__288_797_act8865_pmic_driver_init6 = internal global ptr @act8865_pmic_driver_init, section ".initcall6.init", align 4
@act8865_pmic_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @act8865_pmic_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @act8865_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_act8865_pmic_driver_exit = internal global ptr @act8865_pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [75 x i8] c"act8865_regulator.description=active-semi act88xx voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [61 x i8] c"act8865_regulator.author=Wenyou Yang <wenyou.yang@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [59 x i8] c"act8865_regulator.file=drivers/regulator/act8865-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [33 x i8] c"act8865_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"act8865\00", [24 x i8] zeroinitializer }, align 32
@act8865_ids = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"act8600\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"act8846\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"act8865\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@act8865_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"active-semi,act8600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"active-semi,act8846\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"active-semi,act8865\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"active-semi,vsel-high\00", [42 x i8] zeroinitializer }, align 32
@act8600_regulators = internal constant { [10 x %struct.regulator_desc], [632 x i8] } { [10 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.20, ptr @.str.21, ptr @.str.20, i8 0, ptr @.str.22, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 16, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.22, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 32, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.22, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr @.str.22, ptr null, i32 3, i8 0, i32 256, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8600_sudcdc_voltage_ranges, ptr null, i32 5, ptr null, ptr null, i32 0, i32 0, i32 64, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.29, ptr @.str.28, i8 0, ptr @.str.22, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.30, ptr @.str.29, ptr @.str.30, i8 0, ptr @.str.22, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.31, ptr @.str.29, ptr @.str.31, i8 0, ptr @.str.22, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 112, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.32, ptr @.str.29, ptr @.str.32, i8 0, ptr @.str.22, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 128, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.33, i8 0, ptr @.str.22, ptr null, i32 8, i8 0, i32 1, i32 0, ptr @act8865_fixed_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 3300000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 145, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.34, i8 0, ptr @.str.22, ptr null, i32 9, i8 0, i32 1, i32 0, ptr @act8865_fixed_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1200000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 145, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [632 x i8] zeroinitializer }, align 32
@act8600_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr @act8600_write_ranges_table, ptr @act8600_read_ranges_table, ptr @act8600_volatile_ranges_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@act8846_regulators = internal constant { [12 x %struct.regulator_desc], [720 x i8] } { [12 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.35, ptr @.str.21, ptr @.str.35, i8 0, ptr @.str.22, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 16, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.36, ptr @.str.24, ptr @.str.36, i8 0, ptr @.str.22, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 32, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.37, ptr @.str.26, ptr @.str.37, i8 0, ptr @.str.22, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.38, ptr @.str.39, ptr @.str.38, i8 0, ptr @.str.22, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.40, ptr @.str.41, ptr @.str.40, i8 0, ptr @.str.22, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.42, ptr @.str.41, ptr @.str.42, i8 0, ptr @.str.22, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 88, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 89, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 89, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.43, ptr @.str.41, ptr @.str.43, i8 0, ptr @.str.22, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.44, ptr @.str.45, ptr @.str.44, i8 0, ptr @.str.22, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 104, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 105, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 105, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.46, ptr @.str.45, ptr @.str.46, i8 0, ptr @.str.22, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 112, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.47, ptr @.str.48, ptr @.str.47, i8 0, ptr @.str.22, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 128, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.49, ptr @.str.48, ptr @.str.49, i8 0, ptr @.str.22, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 144, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 145, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 145, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.50, ptr @.str.48, ptr @.str.50, i8 0, ptr @.str.22, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 160, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 161, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 161, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }], [720 x i8] zeroinitializer }, align 32
@act8865_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@act8865_alt_regulators = internal constant { [7 x %struct.regulator_desc], [436 x i8] } { [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.51, ptr @.str.21, ptr @.str.51, i8 0, ptr @.str.22, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 33, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.52, ptr @.str.24, ptr @.str.52, i8 0, ptr @.str.22, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.53, ptr @.str.26, ptr @.str.53, i8 0, ptr @.str.22, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.54, ptr @.str.55, ptr @.str.54, i8 0, ptr @.str.22, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.56, ptr @.str.55, ptr @.str.56, i8 0, ptr @.str.22, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.57, ptr @.str.58, ptr @.str.57, i8 0, ptr @.str.22, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.59, ptr @.str.58, ptr @.str.59, i8 0, ptr @.str.22, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 100, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }], [436 x i8] zeroinitializer }, align 32
@act8865_regulators = internal constant { [7 x %struct.regulator_desc], [436 x i8] } { [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.51, ptr @.str.21, ptr @.str.51, i8 0, ptr @.str.22, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 32, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.52, ptr @.str.24, ptr @.str.52, i8 0, ptr @.str.22, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.53, ptr @.str.26, ptr @.str.53, i8 0, ptr @.str.22, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @act8865_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.54, ptr @.str.55, ptr @.str.54, i8 0, ptr @.str.22, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.56, ptr @.str.55, ptr @.str.56, i8 0, ptr @.str.22, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.57, ptr @.str.58, ptr @.str.57, i8 0, ptr @.str.22, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }, %struct.regulator_desc { ptr @.str.59, ptr @.str.58, ptr @.str.59, i8 0, ptr @.str.22, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @act8865_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @act8865_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 100, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @act8865_of_map_mode }], [436 x i8] zeroinitializer }, align 32
@act8865_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 712, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid device id %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"act8865_pmic_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/act8865-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@act8865_pmic_probe._entry_ptr = internal global ptr @act8865_pmic_probe._entry, section ".printk_index", align 4
@act8865_pmic_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"act8865_regulator:720:(regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@act8865_pmic_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 723, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@act8865_pmic_probe._entry_ptr.10 = internal global ptr @act8865_pmic_probe._entry.8, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@act8865_i2c_client = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@act8865_pmic_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 734, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to set poweroff capability, already defined\0A\00", [44 x i8] zeroinitializer }, align 32
@act8865_pmic_probe._entry_ptr.13 = internal global ptr @act8865_pmic_probe._entry.11, section ".printk_index", align 4
@act8865_pmic_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 760, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@act8865_pmic_probe._entry_ptr.16 = internal global ptr @act8865_pmic_probe._entry.14, section ".printk_index", align 4
@act8865_pmic_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 769, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to probe charger\00", [40 x i8] zeroinitializer }, align 32
@act8865_pmic_probe._entry_ptr.19 = internal global ptr @act8865_pmic_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC1\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vp1\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@act8865_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @act8865_set_mode, ptr @act8865_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @act8865_set_suspend_enable, ptr @act8865_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@act8865_voltage_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 23, i32 25000 }, %struct.linear_range { i32 1200000, i32 24, i32 47, i32 50000 }, %struct.linear_range { i32 2400000, i32 48, i32 63, i32 100000 }], [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC2\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vp2\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC3\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vp3\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SUDCDC_REG4\00", [20 x i8] zeroinitializer }, align 32
@act8600_sudcdc_voltage_ranges = internal constant { [5 x %struct.linear_range], [48 x i8] } { [5 x %struct.linear_range] [%struct.linear_range { i32 3000000, i32 0, i32 63, i32 0 }, %struct.linear_range { i32 3000000, i32 64, i32 159, i32 100000 }, %struct.linear_range { i32 12600000, i32 160, i32 191, i32 200000 }, %struct.linear_range { i32 19000000, i32 192, i32 247, i32 400000 }, %struct.linear_range { i32 41400000, i32 248, i32 255, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"inl\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG9\00", [23 x i8] zeroinitializer }, align 32
@act8865_fixed_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDO_REG10\00", [22 x i8] zeroinitializer }, align 32
@act8600_write_ranges_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @act8600_reg_ranges, i32 18, ptr @act8600_reg_ro_ranges, i32 2 }, [16 x i8] zeroinitializer }, align 32
@act8600_read_ranges_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @act8600_reg_ranges, i32 18, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@act8600_volatile_ranges_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @act8600_reg_volatile_ranges, i32 13, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@act8600_reg_ranges = internal constant { [18 x %struct.regmap_range], [48 x i8] } { [18 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 1 }, %struct.regmap_range { i32 16, i32 16 }, %struct.regmap_range { i32 18, i32 18 }, %struct.regmap_range { i32 32, i32 32 }, %struct.regmap_range { i32 34, i32 34 }, %struct.regmap_range { i32 48, i32 48 }, %struct.regmap_range { i32 50, i32 50 }, %struct.regmap_range { i32 64, i32 65 }, %struct.regmap_range { i32 80, i32 81 }, %struct.regmap_range { i32 96, i32 97 }, %struct.regmap_range { i32 112, i32 113 }, %struct.regmap_range { i32 128, i32 129 }, %struct.regmap_range { i32 145, i32 145 }, %struct.regmap_range { i32 161, i32 161 }, %struct.regmap_range { i32 168, i32 170 }, %struct.regmap_range { i32 176, i32 176 }, %struct.regmap_range { i32 178, i32 178 }, %struct.regmap_range { i32 193, i32 193 }], [48 x i8] zeroinitializer }, align 32
@act8600_reg_ro_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 170, i32 170 }, %struct.regmap_range { i32 193, i32 193 }], [16 x i8] zeroinitializer }, align 32
@act8600_reg_volatile_ranges = internal constant { [13 x %struct.regmap_range], [56 x i8] } { [13 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 1 }, %struct.regmap_range { i32 18, i32 18 }, %struct.regmap_range { i32 34, i32 34 }, %struct.regmap_range { i32 50, i32 50 }, %struct.regmap_range { i32 65, i32 65 }, %struct.regmap_range { i32 81, i32 81 }, %struct.regmap_range { i32 97, i32 97 }, %struct.regmap_range { i32 113, i32 113 }, %struct.regmap_range { i32 129, i32 129 }, %struct.regmap_range { i32 168, i32 168 }, %struct.regmap_range { i32 170, i32 170 }, %struct.regmap_range { i32 176, i32 176 }, %struct.regmap_range { i32 193, i32 193 }], [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REG1\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REG2\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REG3\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REG4\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vp4\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REG5\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inl1\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REG6\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REG7\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REG8\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inl2\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REG9\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"REG10\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inl3\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"REG11\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"REG12\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DCDC_REG1\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DCDC_REG2\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DCDC_REG3\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG1\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inl45\00", [26 x i8] zeroinitializer }, align 32
@act8865_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @act8865_set_mode, ptr @act8865_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @act8865_set_suspend_enable, ptr @act8865_set_suspend_disable, ptr null, ptr null, ptr @regulator_set_pull_down_regmap }, [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG2\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG3\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inl67\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG4\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system-power-controller\00", [40 x i8] zeroinitializer }, align 32
@act8600_charger_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.61, i32 1, ptr null, i32 0, ptr @act8600_charger_properties, i32 1, ptr @act8600_charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"act8600-charger\00", [16 x i8] zeroinitializer }, align 32
@act8600_charger_properties = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@switch.table.act8865_of_map_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 8], [20 x i8] zeroinitializer }, align 32
@switch.table.act8865_set_mode = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 34, i32 50, i32 66, i32 81, i32 85, i32 97, i32 101], [36 x i8] zeroinitializer }, align 32
@switch.table.act8865_get_mode = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 34, i32 50, i32 66, i32 81, i32 85, i32 97, i32 101], [36 x i8] zeroinitializer }, align 32
@switch.table.act8865_set_suspend_enable = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 36, i32 52, i32 68, i32 82, i32 86, i32 98, i32 102], [36 x i8] zeroinitializer }, align 32
@switch.table.act8865_set_suspend_enable.62 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 184, i32 184, i32 184, i32 248, i32 248, i32 248, i32 248], [36 x i8] zeroinitializer }, align 32
@switch.table.act8865_set_suspend_disable = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 36, i32 52, i32 68, i32 82, i32 86, i32 98, i32 102], [36 x i8] zeroinitializer }, align 32
@switch.table.act8865_set_suspend_disable.63 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 168, i32 168, i32 168, i32 232, i32 232, i32 232, i32 232], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 6, i64 16, i64 32]
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"act8865_pmic_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 789, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 791, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"act8865_ids\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 781, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"act8865_dt_ids\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 553, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 677, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"act8600_regulators\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 465, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant [22 x i8] c"act8600_regmap_config\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 209, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"act8846_regulators\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 517, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant [22 x i8] c"act8865_regmap_config\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 218, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant [23 x i8] c"act8865_alt_regulators\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 542, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"act8865_regulators\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 532, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 712, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 720, i32 20 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 723, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"act8865_i2c_client\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 575, i32 27 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 734, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 760, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 769, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 466, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [12 x i8] c"act8865_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 402, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant [23 x i8] c"act8865_voltage_ranges\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 223, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 467, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 468, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 470, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant [30 x i8] c"act8600_sudcdc_voltage_ranges\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 229, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 485, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 486, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 487, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 488, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 490, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant [22 x i8] c"act8865_fixed_ldo_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 431, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 503, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant [27 x i8] c"act8600_write_ranges_table\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 192, i32 41 }
@___asan_gen_.210 = private unnamed_addr constant [26 x i8] c"act8600_read_ranges_table\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 199, i32 41 }
@___asan_gen_.213 = private unnamed_addr constant [30 x i8] c"act8600_volatile_ranges_table\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 204, i32 41 }
@___asan_gen_.216 = private unnamed_addr constant [19 x i8] c"act8600_reg_ranges\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 150, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant [22 x i8] c"act8600_reg_ro_ranges\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 171, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant [28 x i8] c"act8600_reg_volatile_ranges\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 176, i32 34 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 518, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 519, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 520, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 521, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 522, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 523, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 524, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 525, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 526, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 527, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 528, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 529, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 543, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 544, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 545, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 546, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [16 x i8] c"act8865_ldo_ops\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 416, i32 35 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 547, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 548, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 549, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1548, i32 35 }
@___asan_gen_.306 = private unnamed_addr constant [21 x i8] c"act8600_charger_desc\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 633, i32 39 }
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 634, i32 10 }
@___asan_gen_.312 = private unnamed_addr constant [27 x i8] c"act8600_charger_properties\00", align 1
@___asan_gen_.313 = private constant [41 x i8] c"../drivers/regulator/act8865-regulator.c\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 629, i32 35 }
@___asan_gen_.315 = private unnamed_addr constant [33 x i8] c"switch.table.act8865_of_map_mode\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [30 x i8] c"switch.table.act8865_set_mode\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [30 x i8] c"switch.table.act8865_get_mode\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [40 x i8] c"switch.table.act8865_set_suspend_enable\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [43 x i8] c"switch.table.act8865_set_suspend_enable.62\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [41 x i8] c"switch.table.act8865_set_suspend_disable\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [44 x i8] c"switch.table.act8865_set_suspend_disable.63\00", align 1
@llvm.compiler.used = appending global [102 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_act8865_pmic_driver_exit, ptr @__initcall__kmod_act8865_regulator__288_797_act8865_pmic_driver_init6, ptr @act8865_pmic_driver_exit, ptr @act8865_pmic_probe._entry, ptr @act8865_pmic_probe._entry.11, ptr @act8865_pmic_probe._entry.14, ptr @act8865_pmic_probe._entry.17, ptr @act8865_pmic_probe._entry.8, ptr @act8865_pmic_probe._entry_ptr, ptr @act8865_pmic_probe._entry_ptr.10, ptr @act8865_pmic_probe._entry_ptr.13, ptr @act8865_pmic_probe._entry_ptr.16, ptr @act8865_pmic_probe._entry_ptr.19, ptr @act8865_pmic_driver, ptr @.str, ptr @act8865_ids, ptr @act8865_dt_ids, ptr @.str.1, ptr @act8600_regulators, ptr @act8600_regmap_config, ptr @act8846_regulators, ptr @act8865_regmap_config, ptr @act8865_alt_regulators, ptr @act8865_regulators, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @act8865_pmic_probe._key, ptr @.str.7, ptr @.str.9, ptr @act8865_i2c_client, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @act8865_ops, ptr @act8865_voltage_ranges, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @act8600_sudcdc_voltage_ranges, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @act8865_fixed_ldo_ops, ptr @.str.34, ptr @act8600_write_ranges_table, ptr @act8600_read_ranges_table, ptr @act8600_volatile_ranges_table, ptr @act8600_reg_ranges, ptr @act8600_reg_ro_ranges, ptr @act8600_reg_volatile_ranges, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @act8865_ldo_ops, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @act8600_charger_desc, ptr @.str.61, ptr @act8600_charger_properties, ptr @switch.table.act8865_of_map_mode, ptr @switch.table.act8865_set_mode, ptr @switch.table.act8865_get_mode, ptr @switch.table.act8865_set_suspend_enable, ptr @switch.table.act8865_set_suspend_enable.62, ptr @switch.table.act8865_set_suspend_disable, ptr @switch.table.act8865_set_suspend_disable.63], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_pmic_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8600_regulators to i32), i32 2440, i32 3072, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8600_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8846_regulators to i32), i32 2928, i32 3648, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_alt_regulators to i32), i32 1708, i32 2144, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_regulators to i32), i32 1708, i32 2144, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_pmic_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_pmic_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_i2c_client to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_pmic_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_pmic_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_pmic_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_voltage_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8600_sudcdc_voltage_ranges to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_fixed_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8600_write_ranges_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8600_read_ranges_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8600_volatile_ranges_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8600_reg_ranges to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8600_reg_ro_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8600_reg_volatile_ranges to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8865_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8600_charger_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act8600_charger_properties to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.act8865_of_map_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.act8865_set_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.act8865_get_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.act8865_set_suspend_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.act8865_set_suspend_enable.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.act8865_set_suspend_disable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.act8865_set_suspend_disable.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @act8865_pmic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @act8865_pmic_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @act8865_pmic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @act8865_pmic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @act8865_pmic_probe(ptr noundef %client, ptr nocapture noundef readonly %i2c_id) #2 align 64 {
entry:
  %cfg.i = alloca %struct.power_supply_config, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_match_device(ptr noundef nonnull @act8865_dt_ids, ptr noundef %dev1) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup89_crit_edge, label %cleanup

if.then.cleanup89_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %tobool6 = icmp ne ptr %call5, null
  %lnot.ext = zext i1 %tobool6 to i32
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %i2c_id, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %cleanup
  %pdata.0 = phi ptr [ null, %cleanup ], [ %10, %if.else ]
  %type.1 = phi i32 [ %4, %cleanup ], [ %8, %if.else ]
  %voltage_select.1 = phi i32 [ %lnot.ext, %cleanup ], [ 0, %if.else ]
  %11 = zext i32 %type.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type.1, label %do.end [
    i32 0, label %if.end9.sw.epilog_crit_edge
    i32 2, label %sw.bb10
    i32 1, label %sw.bb11
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %voltage_select.1)
  %tobool12.not = icmp eq i32 %voltage_select.1, 0
  %act8865_regulators.act8865_alt_regulators = select i1 %tobool12.not, ptr @act8865_regulators, ptr @act8865_alt_regulators
  br label %sw.epilog

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %type.1) #10
  br label %cleanup89

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %if.end9.sw.epilog_crit_edge
  %regulators.1 = phi ptr [ %act8865_regulators.act8865_alt_regulators, %sw.bb11 ], [ @act8846_regulators, %sw.bb10 ], [ @act8600_regulators, %if.end9.sw.epilog_crit_edge ]
  %num_regulators.1 = phi i32 [ 7, %sw.bb11 ], [ 12, %sw.bb10 ], [ 10, %if.end9.sw.epilog_crit_edge ]
  %regmap_config.0 = phi ptr [ @act8865_regmap_config, %sw.bb11 ], [ @act8865_regmap_config, %sw.bb10 ], [ @act8600_regmap_config, %if.end9.sw.epilog_crit_edge ]
  %cmp = phi i1 [ false, %sw.bb11 ], [ false, %sw.bb10 ], [ true, %if.end9.sw.epilog_crit_edge ]
  %off_reg.0 = phi i32 [ 1, %sw.bb11 ], [ 195, %sw.bb10 ], [ -1, %if.end9.sw.epilog_crit_edge ]
  %off_mask.0 = phi i32 [ 32, %sw.bb11 ], [ 24, %sw.bb10 ], [ -1, %if.end9.sw.epilog_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %sw.epilog.cleanup89_crit_edge, label %if.end19

sw.epilog.cleanup89_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end19:                                         ; preds = %sw.epilog
  %call20 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull %regmap_config.0, ptr noundef nonnull @act8865_pmic_probe._key, ptr noundef nonnull @.str.7) #7
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call20, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %13) #10
  br label %cleanup89

if.end29:                                         ; preds = %if.end19
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.60, ptr noundef null) #7
  %tobool.i.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.i.not, label %if.end29.if.end42_crit_edge, label %if.then32

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then32:                                        ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %16 = load ptr, ptr @pm_power_off, align 4
  %tobool33.not = icmp ne ptr %16, null
  %brmerge = or i1 %cmp, %tobool33.not
  br i1 %brmerge, label %do.end40, label %if.then34

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %client, ptr @act8865_i2c_client, align 4
  %off_reg35 = getelementptr inbounds %struct.act8865, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %off_reg35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %off_reg.0, ptr %off_reg35, align 4
  %off_mask36 = getelementptr inbounds %struct.act8865, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %off_mask36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %off_mask.0, ptr %off_mask36, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @act8865_power_off, ptr @pm_power_off, align 4
  br label %if.end42

do.end40:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.then34, %if.end29.if.end42_crit_edge
  %driver_data45 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %regmap47 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %tobool48.not = icmp eq ptr %pdata.0, null
  %regulators.i = getelementptr inbounds %struct.act8865_platform_data, ptr %pdata.0, i32 0, i32 1
  %init_data54 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %of_node56 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %19 = getelementptr inbounds i8, ptr %config, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end42
  %i.0158 = phi i32 [ 0, %if.end42 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.regulator_desc, ptr %regulators.1, i32 %i.0158
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %20 = call ptr @memset(ptr %19, i32 0, i32 20)
  %21 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev1, ptr %config, align 4
  %22 = ptrtoint ptr %driver_data45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data45, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %25 = ptrtoint ptr %regmap47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %regmap47, align 4
  br i1 %tobool48.not, label %for.body.if.end58_crit_edge, label %if.then49

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then49:                                        ; preds = %for.body
  %id50 = getelementptr %struct.regulator_desc, ptr %regulators.1, i32 %i.0158, i32 6
  %26 = ptrtoint ptr %id50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id50, align 4
  %28 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pdata.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp10.i = icmp sgt i32 %29, 0
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %if.then49.if.end58_crit_edge

if.then49.if.end58_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

for.body.lr.ph.i:                                 ; preds = %if.then49
  %30 = ptrtoint ptr %regulators.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regulators.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.cond.i.if.end58_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.if.end58_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.act8865_regulator_data, ptr %31, i32 %i.011.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %27)
  %cmp2.i = icmp eq i32 %33, %27
  br i1 %cmp2.i, label %act8865_get_regulator_data.exit, label %for.cond.i

act8865_get_regulator_data.exit:                  ; preds = %for.body.i
  %tobool52.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool52.not, label %act8865_get_regulator_data.exit.if.end58_crit_edge, label %if.then53

act8865_get_regulator_data.exit.if.end58_crit_edge: ; preds = %act8865_get_regulator_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then53:                                        ; preds = %act8865_get_regulator_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %init_data = getelementptr %struct.act8865_regulator_data, ptr %31, i32 %i.011.i, i32 2
  %34 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_data, align 4
  %36 = ptrtoint ptr %init_data54 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %init_data54, align 4
  %of_node55 = getelementptr %struct.act8865_regulator_data, ptr %31, i32 %i.011.i, i32 3
  %37 = ptrtoint ptr %of_node55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node55, align 4
  %39 = ptrtoint ptr %of_node56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %of_node56, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %act8865_get_regulator_data.exit.if.end58_crit_edge, %for.cond.i.if.end58_crit_edge, %if.then49.if.end58_crit_edge, %for.body.if.end58_crit_edge
  %call59 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx, ptr noundef nonnull %config) #7
  %cmp.i147 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %cleanup67.thread, label %for.inc

cleanup67.thread:                                 ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %41) #10
  %42 = ptrtoint ptr %call59 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  br label %cleanup89

for.inc:                                          ; preds = %if.end58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  %inc = add nuw nsw i32 %i.0158, 1
  %exitcond.not = icmp eq i32 %inc, %num_regulators.1
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.1)
  %cmp72 = icmp eq i32 %type.1, 0
  br i1 %cmp72, label %if.then73, label %if.end85

if.then73:                                        ; preds = %for.end
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg.i) #7
  %45 = getelementptr inbounds %struct.power_supply_config, ptr %cfg.i, i32 0, i32 1
  %46 = getelementptr inbounds %struct.power_supply_config, ptr %cfg.i, i32 0, i32 2
  %47 = getelementptr inbounds %struct.power_supply_config, ptr %cfg.i, i32 0, i32 3
  %48 = getelementptr inbounds %struct.power_supply_config, ptr %cfg.i, i32 0, i32 4
  %49 = getelementptr inbounds %struct.power_supply_config, ptr %cfg.i, i32 0, i32 5
  %50 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node, align 8
  %52 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %cfg.i, align 4
  %53 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %45, align 4
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %44, ptr %46, align 4
  %55 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %47, align 4
  %56 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %48, align 4
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %49, align 4
  %call.i148 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @act8600_charger_desc, ptr noundef nonnull %cfg.i) #7
  %cmp.i.i.i = icmp ugt ptr %call.i148, inttoptr (i32 -4096 to ptr)
  %58 = ptrtoint ptr %call.i148 to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %58, i32 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp76 = icmp slt i32 %spec.select.i.i, 0
  br i1 %cmp76, label %if.then77, label %if.end85.thread

if.end85.thread:                                  ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i154 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %59 = ptrtoint ptr %driver_data.i.i154 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %driver_data.i.i154, align 4
  br label %cleanup89

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %spec.select.i.i)
  %cmp78.not = icmp eq i32 %spec.select.i.i, -517
  br i1 %cmp78.not, label %if.then77.cleanup89_crit_edge, label %do.end82

if.then77.cleanup89_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

do.end82:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %cleanup89

if.end85:                                         ; preds = %for.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.1)
  %cmp86.not = icmp eq i32 %type.1, 1
  br i1 %cmp86.not, label %cond.false, label %if.end85.cleanup89_crit_edge

if.end85.cleanup89_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

cond.false:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %call88 = call i32 @regmap_write(ptr noundef %62, i32 noundef 11, i32 noundef 239) #7
  br label %cleanup89

cleanup89:                                        ; preds = %cond.false, %if.end85.cleanup89_crit_edge, %do.end82, %if.then77.cleanup89_crit_edge, %if.end85.thread, %cleanup67.thread, %if.then23, %sw.epilog.cleanup89_crit_edge, %do.end, %if.then.cleanup89_crit_edge
  %retval.4 = phi i32 [ -22, %do.end ], [ %13, %if.then23 ], [ -12, %sw.epilog.cleanup89_crit_edge ], [ %58, %do.end82 ], [ -517, %if.then77.cleanup89_crit_edge ], [ %call88, %cond.false ], [ 0, %if.end85.cleanup89_crit_edge ], [ %42, %cleanup67.thread ], [ 0, %if.end85.thread ], [ -19, %if.then.cleanup89_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @act8865_power_off() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @act8865_i2c_client, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %off_reg = getelementptr inbounds %struct.act8865, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %off_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %off_reg, align 4
  %off_mask = getelementptr inbounds %struct.act8865, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %off_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %off_mask, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %6, i32 noundef %8) #7
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  br label %while.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @act8865_of_map_mode(i32 noundef %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.act8865_of_map_mode, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @act8865_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %2 = icmp ult i32 %call, 7
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_set_mode, i32 0, i32 %call
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %mode, label %switch.lookup.cleanup_crit_edge [
    i32 1, label %switch.lookup.sw.bb8_crit_edge
    i32 2, label %switch.lookup.sw.bb8_crit_edge23
    i32 8, label %sw.bb9
  ]

switch.lookup.sw.bb8_crit_edge23:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

switch.lookup.sw.bb8_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %switch.lookup.sw.bb8_crit_edge, %switch.lookup.sw.bb8_crit_edge23
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp ult i32 %call, 3
  br label %sw.epilog14

sw.bb9:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp10 = icmp ugt i32 %call, 2
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.bb9, %sw.bb8
  %cmp10.sink = phi i1 [ %cmp10, %sw.bb9 ], [ %cmp, %sw.bb8 ]
  %spec.select22 = select i1 %cmp10.sink, i32 32, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %switch.load, i32 noundef 32, i32 noundef %spec.select22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog14, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog14 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @act8865_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %3 = icmp ult i32 %call, 7
  br i1 %3, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_get_mode, i32 0, i32 %call
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call8 = call i32 @regmap_read(ptr noundef %1, i32 noundef %switch.load, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp ult i32 %call, 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true12

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool9.not, label %land.lhs.true.if.else16_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.else16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else16

land.lhs.true12:                                  ; preds = %if.end
  br i1 %tobool9.not, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.else16_crit_edge

land.lhs.true12.if.else16_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else16

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else16:                                        ; preds = %land.lhs.true12.if.else16_crit_edge, %land.lhs.true.if.else16_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %if.else16 ], [ -22, %entry.cleanup_crit_edge ], [ %call8, %switch.lookup.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 2, %land.lhs.true12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @act8865_set_suspend_enable(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %id2.i = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %4 = icmp ult i32 %3, 7
  br i1 %4, label %switch.lookup, label %entry.act8865_set_suspend_state.exit_crit_edge

entry.act8865_set_suspend_state.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %act8865_set_suspend_state.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap1.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %5 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap1.i, align 4
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_set_suspend_enable, i32 0, i32 %3
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep1 = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_set_suspend_enable.62, i32 0, i32 %3
  %8 = ptrtoint ptr %switch.gep1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load2 = load i32, ptr %switch.gep1, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %switch.load, i32 noundef %switch.load2) #7
  br label %act8865_set_suspend_state.exit

act8865_set_suspend_state.exit:                   ; preds = %switch.lookup, %entry.act8865_set_suspend_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %switch.lookup ], [ -22, %entry.act8865_set_suspend_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @act8865_set_suspend_disable(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %id2.i = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %4 = icmp ult i32 %3, 7
  br i1 %4, label %switch.lookup, label %entry.act8865_set_suspend_state.exit_crit_edge

entry.act8865_set_suspend_state.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %act8865_set_suspend_state.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap1.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %5 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap1.i, align 4
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_set_suspend_disable, i32 0, i32 %3
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep1 = getelementptr inbounds [7 x i32], ptr @switch.table.act8865_set_suspend_disable.63, i32 0, i32 %3
  %8 = ptrtoint ptr %switch.gep1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load2 = load i32, ptr %switch.gep1, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %switch.load, i32 noundef %switch.load2) #7
  br label %act8865_set_suspend_state.exit

act8865_set_suspend_state.exit:                   ; preds = %switch.lookup, %entry.act8865_set_suspend_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %switch.lookup ], [ -22, %entry.act8865_set_suspend_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_pull_down_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @act8600_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %psp)
  %cond = icmp eq i32 %psp, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !169
  %call.i = call i32 @regmap_read(ptr noundef %call, i32 noundef 170, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %act8600_charger_get_status.exit, label %if.end.i

if.end.i:                                         ; preds = %sw.bb
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i, align 4
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, 48
  %trunc.i = trunc i8 %4 to i6
  %5 = zext i6 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.65)
  switch i6 %trunc.i, label %if.end12.i [
    i6 -32, label %if.end.i.if.end_crit_edge
    i6 16, label %cleanup.fold.split.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %6 = icmp eq i8 %4, 0
  %spec.select.i = select i1 %6, i32 2, i32 0
  br label %if.end

cleanup.fold.split.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

act8600_charger_get_status.exit:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end:                                           ; preds = %cleanup.fold.split.i, %if.end12.i, %if.end.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 3, %cleanup.fold.split.i ], [ %spec.select.i, %if.end12.i ], [ 1, %if.end.i.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i.ph, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %act8600_charger_get_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %act8600_charger_get_status.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !54, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !105, !106, !108, !110, !112, !113, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !137, !139, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__initcall__kmod_act8865_regulator__288_797_act8865_pmic_driver_init6, !1, !"__initcall__kmod_act8865_regulator__288_797_act8865_pmic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/act8865-regulator.c", i32 797, i32 1}
!2 = !{ptr @__exitcall_act8865_pmic_driver_exit, !1, !"__exitcall_act8865_pmic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/act8865-regulator.c", i32 799, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/act8865-regulator.c", i32 800, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/act8865-regulator.c", i32 801, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/act8865-regulator.c", i32 791, i32 11}
!12 = !{ptr @act8865_pmic_driver, !13, !"act8865_pmic_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/act8865-regulator.c", i32 789, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/act8865-regulator.c", i32 677, i32 10}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/act8865-regulator.c", i32 712, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @act8865_pmic_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @act8865_pmic_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @act8865_pmic_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/regulator/act8865-regulator.c", i32 720, i32 20}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/act8865-regulator.c", i32 723, i32 3}
!29 = !{ptr @act8865_pmic_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @act8865_pmic_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/act8865-regulator.c", i32 734, i32 4}
!33 = !{ptr @act8865_pmic_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @act8865_pmic_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/act8865-regulator.c", i32 760, i32 4}
!37 = !{ptr @act8865_pmic_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @act8865_pmic_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/act8865-regulator.c", i32 769, i32 5}
!41 = !{ptr @act8865_pmic_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @act8865_pmic_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @act8865_dt_ids, !44, !"act8865_dt_ids", i1 false, i1 false}
!44 = !{!"../drivers/regulator/act8865-regulator.c", i32 553, i32 34}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/act8865-regulator.c", i32 466, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/act8865-regulator.c", i32 467, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/act8865-regulator.c", i32 468, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/act8865-regulator.c", i32 470, i32 11}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/act8865-regulator.c", i32 485, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/act8865-regulator.c", i32 486, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/act8865-regulator.c", i32 487, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/act8865-regulator.c", i32 488, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/act8865-regulator.c", i32 490, i32 11}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/act8865-regulator.c", i32 503, i32 11}
!70 = !{ptr @act8600_regulators, !71, !"act8600_regulators", i1 false, i1 false}
!71 = !{!"../drivers/regulator/act8865-regulator.c", i32 465, i32 36}
!72 = !{ptr @act8865_ops, !73, !"act8865_ops", i1 false, i1 false}
!73 = !{!"../drivers/regulator/act8865-regulator.c", i32 402, i32 35}
!74 = !{ptr @act8865_voltage_ranges, !75, !"act8865_voltage_ranges", i1 false, i1 false}
!75 = !{!"../drivers/regulator/act8865-regulator.c", i32 223, i32 34}
!76 = !{ptr @act8600_sudcdc_voltage_ranges, !77, !"act8600_sudcdc_voltage_ranges", i1 false, i1 false}
!77 = !{!"../drivers/regulator/act8865-regulator.c", i32 229, i32 34}
!78 = !{ptr @act8865_fixed_ldo_ops, !79, !"act8865_fixed_ldo_ops", i1 false, i1 false}
!79 = !{!"../drivers/regulator/act8865-regulator.c", i32 431, i32 35}
!80 = !{ptr @act8600_regmap_config, !81, !"act8600_regmap_config", i1 false, i1 false}
!81 = !{!"../drivers/regulator/act8865-regulator.c", i32 209, i32 35}
!82 = !{ptr @act8600_write_ranges_table, !83, !"act8600_write_ranges_table", i1 false, i1 false}
!83 = !{!"../drivers/regulator/act8865-regulator.c", i32 192, i32 41}
!84 = !{ptr @act8600_reg_ranges, !85, !"act8600_reg_ranges", i1 false, i1 false}
!85 = !{!"../drivers/regulator/act8865-regulator.c", i32 150, i32 34}
!86 = !{ptr @act8600_reg_ro_ranges, !87, !"act8600_reg_ro_ranges", i1 false, i1 false}
!87 = !{!"../drivers/regulator/act8865-regulator.c", i32 171, i32 34}
!88 = !{ptr @act8600_read_ranges_table, !89, !"act8600_read_ranges_table", i1 false, i1 false}
!89 = !{!"../drivers/regulator/act8865-regulator.c", i32 199, i32 41}
!90 = !{ptr @act8600_volatile_ranges_table, !91, !"act8600_volatile_ranges_table", i1 false, i1 false}
!91 = !{!"../drivers/regulator/act8865-regulator.c", i32 204, i32 41}
!92 = !{ptr @act8600_reg_volatile_ranges, !93, !"act8600_reg_volatile_ranges", i1 false, i1 false}
!93 = !{!"../drivers/regulator/act8865-regulator.c", i32 176, i32 34}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/act8865-regulator.c", i32 518, i32 2}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/act8865-regulator.c", i32 519, i32 2}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/act8865-regulator.c", i32 520, i32 2}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/regulator/act8865-regulator.c", i32 521, i32 2}
!102 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/regulator/act8865-regulator.c", i32 522, i32 2}
!105 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/act8865-regulator.c", i32 523, i32 2}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/act8865-regulator.c", i32 524, i32 2}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/act8865-regulator.c", i32 525, i32 2}
!112 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/regulator/act8865-regulator.c", i32 526, i32 2}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/regulator/act8865-regulator.c", i32 527, i32 2}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/act8865-regulator.c", i32 528, i32 2}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/regulator/act8865-regulator.c", i32 529, i32 2}
!122 = !{ptr @act8846_regulators, !123, !"act8846_regulators", i1 false, i1 false}
!123 = !{!"../drivers/regulator/act8865-regulator.c", i32 517, i32 36}
!124 = !{ptr @act8865_regmap_config, !125, !"act8865_regmap_config", i1 false, i1 false}
!125 = !{!"../drivers/regulator/act8865-regulator.c", i32 218, i32 35}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/regulator/act8865-regulator.c", i32 543, i32 2}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/regulator/act8865-regulator.c", i32 544, i32 2}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/regulator/act8865-regulator.c", i32 545, i32 2}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/regulator/act8865-regulator.c", i32 546, i32 2}
!134 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/regulator/act8865-regulator.c", i32 547, i32 2}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/regulator/act8865-regulator.c", i32 548, i32 2}
!139 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/regulator/act8865-regulator.c", i32 549, i32 2}
!142 = !{ptr @act8865_alt_regulators, !143, !"act8865_alt_regulators", i1 false, i1 false}
!143 = !{!"../drivers/regulator/act8865-regulator.c", i32 542, i32 36}
!144 = !{ptr @act8865_ldo_ops, !145, !"act8865_ldo_ops", i1 false, i1 false}
!145 = !{!"../drivers/regulator/act8865-regulator.c", i32 416, i32 35}
!146 = !{ptr @act8865_regulators, !147, !"act8865_regulators", i1 false, i1 false}
!147 = !{!"../drivers/regulator/act8865-regulator.c", i32 532, i32 36}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/linux/of.h", i32 1548, i32 35}
!150 = !{ptr @act8865_i2c_client, !151, !"act8865_i2c_client", i1 false, i1 false}
!151 = !{!"../drivers/regulator/act8865-regulator.c", i32 575, i32 27}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/regulator/act8865-regulator.c", i32 634, i32 10}
!154 = !{ptr @act8600_charger_desc, !155, !"act8600_charger_desc", i1 false, i1 false}
!155 = !{!"../drivers/regulator/act8865-regulator.c", i32 633, i32 39}
!156 = !{ptr @act8600_charger_properties, !157, !"act8600_charger_properties", i1 false, i1 false}
!157 = !{!"../drivers/regulator/act8865-regulator.c", i32 629, i32 35}
!158 = !{ptr @act8865_ids, !159, !"act8865_ids", i1 false, i1 false}
!159 = !{!"../drivers/regulator/act8865-regulator.c", i32 781, i32 35}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{!"auto-init"}
