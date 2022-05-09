; ModuleID = '/llk/IR_all_yes/drivers/regulator/lp3972.c_pt.bc'
source_filename = "../drivers/regulator/lp3972.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.lp3972 = type { ptr, %struct.mutex, ptr }
%struct.lp3972_platform_data = type { i32, ptr }
%struct.lp3972_regulator_subdev = type { i32, ptr }

@__initcall__kmod_lp3972__291_558_lp3972_module_init4 = internal global ptr @lp3972_module_init, section ".initcall4.init", align 4
@lp3972_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp3972_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp3972_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp3972_module_exit = internal global ptr @lp3972_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file292 = internal constant [37 x i8] c"lp3972.file=drivers/regulator/lp3972\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [19 x i8] c"lp3972.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [44 x i8] c"lp3972.author=Axel Lin <axel.lin@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [38 x i8] c"lp3972.description=LP3972 PMIC driver\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp3972\00", [25 x i8] zeroinitializer }, align 32
@lp3972_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp3972\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lp3972_i2c_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp3972_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/regulator/lp3972.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No platform init data supplied\0A\00", [32 x i8] zeroinitializer }, align 32
@lp3972_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&lp3972->io_lock\00", [47 x i8] zeroinitializer }, align 32
@lp3972_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 525, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chip reported: val = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp3972_i2c_probe._entry_ptr = internal global ptr @lp3972_i2c_probe._entry, section ".printk_index", align 4
@lp3972_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 528, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to detect device. ret = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@lp3972_i2c_probe._entry_ptr.10 = internal global ptr @lp3972_i2c_probe._entry.8, section ".printk_index", align 4
@regulators = internal constant { [8 x %struct.regulator_desc], [480 x i8] } { [8 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 13, i32 0, ptr @lp3972_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo1_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @lp3972_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo23_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 16, i32 0, ptr @lp3972_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo23_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @lp3972_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo4_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 32, i32 0, ptr @lp3972_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo5_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 32, i32 0, ptr @lp3972_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @buck1_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 26, i32 0, ptr @lp3972_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @buck23_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 26, i32 0, ptr @lp3972_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @buck23_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [480 x i8] zeroinitializer }, align 32
@setup_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 490, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulator init failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"setup_regulators\00", [47 x i8] zeroinitializer }, align 32
@setup_regulators._entry_ptr = internal global ptr @setup_regulators._entry, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@lp3972_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @lp3972_ldo_set_voltage_sel, ptr null, ptr @lp3972_ldo_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lp3972_ldo_enable, ptr @lp3972_ldo_disable, ptr @lp3972_ldo_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ldo1_voltage_map = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 1700000, i32 1725000, i32 1750000, i32 1775000, i32 1800000, i32 1825000, i32 1850000, i32 1875000, i32 1900000, i32 1925000, i32 1950000, i32 1975000, i32 2000000], [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@ldo23_voltage_map = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1800000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3100000, i32 3200000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@ldo4_voltage_map = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1500000, i32 1800000, i32 1900000, i32 2500000, i32 2800000, i32 3000000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@ldo5_voltage_map = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000], [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC1\00", [26 x i8] zeroinitializer }, align 32
@lp3972_dcdc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @lp3972_dcdc_set_voltage_sel, ptr null, ptr @lp3972_dcdc_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lp3972_dcdc_enable, ptr @lp3972_dcdc_disable, ptr @lp3972_dcdc_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@buck1_voltage_map = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 725000, i32 750000, i32 775000, i32 800000, i32 825000, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC2\00", [26 x i8] zeroinitializer }, align 32
@buck23_voltage_map = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 0, i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1800000, i32 1900000, i32 2500000, i32 2800000, i32 3000000, i32 3300000], [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC3\00", [26 x i8] zeroinitializer }, align 32
@ldo_vol_ctl_addr = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 50, i32 57, i32 58, i32 58, i32 41], [44 x i8] zeroinitializer }, align 32
@lp3972_set_bits.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lp3972_set_bits\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg write 0x%02x -> 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@lp3972_reg_read.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 48, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lp3972_reg_read\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg read 0x%02x -> 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@ldo_output_enable_mask = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 4, i32 8, i32 16, i32 4], [44 x i8] zeroinitializer }, align 32
@ldo_output_enable_addr = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 130, i32 18, i32 18, i32 18, i32 16], [44 x i8] zeroinitializer }, align 32
@buck_base_addr = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 35, i32 133, i32 134], [20 x i8] zeroinitializer }, align 32
@buck_vol_enable_addr = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 130, i32 130], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"lp3972_i2c_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 546, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 548, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"lp3972_i2c_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 540, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 507, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 518, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 525, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 528, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 395, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 489, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 397, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"lp3972_ldo_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 304, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"ldo1_voltage_map\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 71, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 406, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"ldo23_voltage_map\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 76, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 415, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 424, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"ldo4_voltage_map\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 81, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 433, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"ldo5_voltage_map\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 86, i32 27 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 442, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"lp3972_dcdc_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 385, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"buck1_voltage_map\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 93, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 451, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"buck23_voltage_map\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 100, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 460, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"ldo_vol_ctl_addr\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 123, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 213, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 194, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"ldo_output_enable_mask\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 107, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"ldo_output_enable_addr\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 115, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant [15 x i8] c"buck_base_addr\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 137, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"buck_vol_enable_addr\00", align 1
@___asan_gen_.152 = private constant [30 x i8] c"../drivers/regulator/lp3972.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 131, i32 18 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_lp3972_module_exit, ptr @__initcall__kmod_lp3972__291_558_lp3972_module_init4, ptr @lp3972_i2c_probe._entry, ptr @lp3972_i2c_probe._entry.8, ptr @lp3972_i2c_probe._entry_ptr, ptr @lp3972_i2c_probe._entry_ptr.10, ptr @lp3972_module_exit, ptr @setup_regulators._entry, ptr @setup_regulators._entry_ptr, ptr @lp3972_i2c_driver, ptr @.str, ptr @lp3972_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @lp3972_i2c_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @regulators, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @lp3972_ldo_ops, ptr @ldo1_voltage_map, ptr @.str.14, ptr @ldo23_voltage_map, ptr @.str.15, ptr @.str.16, ptr @ldo4_voltage_map, ptr @.str.17, ptr @ldo5_voltage_map, ptr @.str.18, ptr @lp3972_dcdc_ops, ptr @buck1_voltage_map, ptr @.str.19, ptr @buck23_voltage_map, ptr @.str.20, ptr @ldo_vol_ctl_addr, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ldo_output_enable_mask, ptr @ldo_output_enable_addr, ptr @buck_base_addr, ptr @buck_vol_enable_addr], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3972_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3972_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3972_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3972_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3972_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 1952, i32 2432, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3972_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo1_voltage_map to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo23_voltage_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo4_voltage_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo5_voltage_map to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3972_dcdc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck1_voltage_map to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck23_voltage_map to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vol_ctl_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_output_enable_mask to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_output_enable_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_base_addr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_vol_enable_addr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp3972_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp3972_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lp3972_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %config.i = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3972_i2c_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3972_i2c_probe, %cleanup)) #6
          to label %if.then6 [label %cleanup], !srcloc !101

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3972_i2c_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %i2c14 = getelementptr inbounds %struct.lp3972, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %i2c14 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %i2c14, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %io_lock = getelementptr inbounds %struct.lp3972, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %io_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @lp3972_i2c_probe.__key) #6
  %call.i65 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext -128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp1.i = icmp slt i32 %call.i65, 0
  br i1 %cmp1.i, label %if.end13.do.end35_crit_edge, label %land.lhs.true

if.end13.do.end35_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

land.lhs.true:                                    ; preds = %if.end13
  %and = and i32 %call.i65, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp21.not = icmp eq i32 %and, 2
  br i1 %cmp21.not, label %if.end37, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv = and i32 %call.i65, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %conv) #9
  br label %do.end35

do.end35:                                         ; preds = %if.then23, %if.end13.do.end35_crit_edge
  %ret.0.ph = phi i32 [ %call.i65, %if.end13.do.end35_crit_edge ], [ -19, %if.then23 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %ret.0.ph) #9
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21.i = icmp sgt i32 %5, 0
  br i1 %cmp21.i, label %for.body.lr.ph.i, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

for.body.lr.ph.i:                                 ; preds = %if.end37
  %regulators.i = getelementptr inbounds %struct.lp3972_platform_data, ptr %1, i32 0, i32 1
  %init_data.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %regulators.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulators.i, align 4
  %arrayidx.i = getelementptr %struct.lp3972_regulator_subdev, ptr %7, i32 %i.022.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #6
  %8 = call ptr @memset(ptr %init_data.i, i32 0, i32 20)
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %config.i, align 4
  %initdata.i = getelementptr %struct.lp3972_regulator_subdev, ptr %7, i32 %i.022.i, i32 1
  %12 = ptrtoint ptr %initdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %initdata.i, align 4
  %14 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %init_data.i, align 4
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i, align 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr [8 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %17
  %call.i67 = call ptr @devm_regulator_register(ptr noundef %10, ptr noundef %arrayidx3.i, ptr noundef nonnull %config.i) #6
  %cmp.i.i = icmp ugt ptr %call.i67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %setup_regulators.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end42_crit_edge

for.inc.i.if.end42_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

setup_regulators.exit:                            ; preds = %for.body.i
  %20 = ptrtoint ptr %call.i67 to i32
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef %20) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  %cmp39 = icmp slt ptr %call.i67, null
  br i1 %cmp39, label %setup_regulators.exit.cleanup_crit_edge, label %setup_regulators.exit.if.end42_crit_edge

setup_regulators.exit.if.end42_crit_edge:         ; preds = %setup_regulators.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

setup_regulators.exit.cleanup_crit_edge:          ; preds = %setup_regulators.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %setup_regulators.exit.if.end42_crit_edge, %for.inc.i.if.end42_crit_edge, %if.end37.if.end42_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %setup_regulators.exit.cleanup_crit_edge, %do.end35, %if.end8.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ %ret.0.ph, %do.end35 ], [ 0, %if.end42 ], [ -19, %if.then6 ], [ -12, %if.end8.cleanup_crit_edge ], [ %20, %setup_regulators.exit.cleanup_crit_edge ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_ldo_set_voltage_sel(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %and = shl i32 %call1, 2
  %shl = and i32 %and, 4
  %arrayidx = getelementptr [5 x i32], ptr @ldo_vol_ctl_addr, i32 0, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %1 to i8
  %2 = and i32 %call1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %cond = select i1 %tobool.not, i32 31, i32 15
  %shl2 = shl nuw nsw i32 %cond, %shl
  %conv3 = trunc i32 %shl2 to i16
  %shl4 = shl i32 %selector, %shl
  %conv5 = trunc i32 %shl4 to i16
  %call6 = tail call fastcc i32 @lp3972_set_bits(ptr noundef %call, i8 noundef zeroext %conv, i16 noundef zeroext %conv3, i16 noundef zeroext %conv5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 4, label %if.end.sw.bb_crit_edge39
  ]

if.end.sw.bb_crit_edge39:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool8.not = icmp eq i32 %call1, 0
  %cond9 = select i1 %tobool8.not, i32 6, i32 4
  %shl10 = shl nuw nsw i32 3, %cond9
  %conv11 = trunc i32 %shl10 to i16
  %shl12 = shl nuw nsw i32 1, %cond9
  %conv13 = trunc i32 %shl12 to i16
  %call14 = tail call fastcc i32 @lp3972_set_bits(ptr noundef %call, i8 noundef zeroext 32, i16 noundef zeroext %conv11, i16 noundef zeroext %conv13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %sw.bb
  %io_lock.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %if.end17.lp3972_set_bits.exit_crit_edge, label %if.then.i

if.end17.lp3972_set_bits.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3972_set_bits.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = trunc i32 %call.i.i to i16
  %neg.i = xor i16 %conv11, -1
  %and.i = and i16 %conv.i.i, %neg.i
  %6 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c.i, align 4
  %conv.i26.i = trunc i16 %and.i to i8
  %call.i27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 32, i8 noundef zeroext %conv.i26.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3972_set_bits.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3972_ldo_set_voltage_sel, %lp3972_set_bits.exit)) #6
          to label %if.then11.i [label %lp3972_set_bits.exit], !srcloc !101

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3972_set_bits.__UNIQUE_ID_ddebug289, ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef 0) #6
  br label %lp3972_set_bits.exit

lp3972_set_bits.exit:                             ; preds = %if.then11.i, %if.then.i, %if.end17.lp3972_set_bits.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i27.i, %if.then11.i ], [ %call.i.i, %if.end17.lp3972_set_bits.exit_crit_edge ], [ %call.i27.i, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %lp3972_set_bits.exit, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %entry.cleanup_crit_edge ], [ %call14, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %ret.0.i, %lp3972_set_bits.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_ldo_get_voltage_sel(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %arrayidx = getelementptr [5 x i32], ptr @ldo_vol_ctl_addr, i32 0, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv2 = trunc i32 %1 to i8
  %io_lock.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv2) #6
  %4 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3972_reg_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3972_ldo_get_voltage_sel, %lp3972_reg_read.exit)) #6
          to label %if.then.i [label %lp3972_reg_read.exit], !srcloc !101

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %conv.i = and i32 %1, 255
  %7 = and i32 %4, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3972_reg_read.__UNIQUE_ID_ddebug288, ptr noundef %6, ptr noundef nonnull @.str.24, i32 noundef %conv.i, i32 noundef %7) #6
  br label %lp3972_reg_read.exit

lp3972_reg_read.exit:                             ; preds = %if.then.i, %entry
  %8 = and i32 %call1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  %conv5 = and i32 %4, 255
  %and = shl i32 %call1, 2
  %shl = and i32 %and, 4
  %shr = lshr i32 %conv5, %shl
  %conv6 = select i1 %tobool.not, i32 31, i32 15
  %and7 = and i32 %shr, %conv6
  ret i32 %and7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_ldo_enable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %arrayidx = getelementptr [5 x i32], ptr @ldo_output_enable_mask, i32 0, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %1 to i16
  %arrayidx2 = getelementptr [5 x i32], ptr @ldo_output_enable_addr, i32 0, i32 %call1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %conv3 = trunc i32 %3 to i8
  %call4 = tail call fastcc i32 @lp3972_set_bits(ptr noundef %call, i8 noundef zeroext %conv3, i16 noundef zeroext %conv, i16 noundef zeroext %conv)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_ldo_disable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %arrayidx = getelementptr [5 x i32], ptr @ldo_output_enable_mask, i32 0, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [5 x i32], ptr @ldo_output_enable_addr, i32 0, i32 %call1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %conv3 = trunc i32 %3 to i8
  %io_lock.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %conv3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %entry.lp3972_set_bits.exit_crit_edge, label %if.then.i

entry.lp3972_set_bits.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3972_set_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %1 to i8
  %conv.i.i = trunc i32 %call.i.i to i8
  %neg.i = xor i8 %conv, -1
  %and.i = and i8 %conv.i.i, %neg.i
  %6 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c.i, align 4
  %call.i27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %conv3, i8 noundef zeroext %and.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3972_set_bits.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3972_ldo_disable, %lp3972_set_bits.exit)) #6
          to label %if.then11.i [label %lp3972_set_bits.exit], !srcloc !101

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %conv12.i = and i32 %3, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3972_set_bits.__UNIQUE_ID_ddebug289, ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef %conv12.i, i32 noundef 0) #6
  br label %lp3972_set_bits.exit

lp3972_set_bits.exit:                             ; preds = %if.then11.i, %if.then.i, %entry.lp3972_set_bits.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i27.i, %if.then11.i ], [ %call.i.i, %entry.lp3972_set_bits.exit_crit_edge ], [ %call.i27.i, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_ldo_is_enabled(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %arrayidx = getelementptr [5 x i32], ptr @ldo_output_enable_mask, i32 0, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [5 x i32], ptr @ldo_output_enable_addr, i32 0, i32 %call1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %conv3 = trunc i32 %3 to i8
  %io_lock.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %conv3) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3972_reg_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3972_ldo_is_enabled, %lp3972_reg_read.exit)) #6
          to label %if.then.i [label %lp3972_reg_read.exit], !srcloc !101

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %conv.i = and i32 %3, 255
  %9 = and i32 %6, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3972_reg_read.__UNIQUE_ID_ddebug288, ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef %conv.i, i32 noundef %9) #6
  br label %lp3972_reg_read.exit

lp3972_reg_read.exit:                             ; preds = %if.then.i, %entry
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  %conv6 = and i32 %6, 255
  %and = and i32 %conv6, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lp3972_set_bits(ptr noundef %lp3972, i8 noundef zeroext %reg, i16 noundef zeroext %mask, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lock = getelementptr inbounds %struct.lp3972, ptr %lp3972, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #6
  %i2c = getelementptr inbounds %struct.lp3972, ptr %lp3972, i32 0, i32 2
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %call.i to i16
  %neg = xor i16 %mask, -1
  %and = and i16 %conv.i, %neg
  %or = or i16 %and, %val
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %conv.i26 = trunc i16 %or to i8
  %call.i27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %reg, i8 noundef zeroext %conv.i26) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3972_set_bits.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3972_set_bits, %if.end15)) #6
          to label %if.then11 [label %if.end15], !srcloc !101

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %lp3972 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lp3972, align 4
  %conv12 = zext i8 %reg to i32
  %6 = and i16 %val, 255
  %and14 = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3972_set_bits.__UNIQUE_ID_ddebug289, ptr noundef %5, ptr noundef nonnull @.str.22, i32 noundef %conv12, i32 noundef %and14) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then, %entry.if.end15_crit_edge
  %ret.0 = phi i32 [ %call.i27, %if.then11 ], [ %call.i, %entry.if.end15_crit_edge ], [ %call.i27, %if.then ]
  tail call void @mutex_unlock(ptr noundef %io_lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_dcdc_set_voltage_sel(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %sub = add i32 %call1, -5
  %arrayidx = getelementptr [3 x i32], ptr @buck_base_addr, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %1 to i8
  %conv2 = trunc i32 %selector to i16
  %call3 = tail call fastcc i32 @lp3972_set_bits(ptr noundef %call, i8 noundef zeroext %conv, i16 noundef zeroext 31, i16 noundef zeroext %conv2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %io_lock.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %if.end6.cleanup.sink.split_crit_edge, label %if.then.i

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %if.end6
  %conv.i.i = trunc i32 %call.i.i to i8
  %and.i = and i8 %conv.i.i, -4
  %or.i = or i8 %and.i, 1
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %call.i27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 32, i8 noundef zeroext %or.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3972_set_bits.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3972_dcdc_set_voltage_sel, %lp3972_set_bits.exit)) #6
          to label %if.then11.i [label %lp3972_set_bits.exit], !srcloc !101

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3972_set_bits.__UNIQUE_ID_ddebug289, ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef 1) #6
  br label %lp3972_set_bits.exit

lp3972_set_bits.exit:                             ; preds = %if.then11.i, %if.then.i
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool8.not = icmp eq i32 %call.i27.i, 0
  br i1 %tobool8.not, label %if.end10, label %lp3972_set_bits.exit.cleanup_crit_edge

lp3972_set_bits.exit.cleanup_crit_edge:           ; preds = %lp3972_set_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %lp3972_set_bits.exit
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %8 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c.i, align 4
  %call.i.i24 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %cmp1.i.i25 = icmp slt i32 %call.i.i24, 0
  br i1 %cmp1.i.i25, label %if.end10.cleanup.sink.split_crit_edge, label %if.then.i30

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then.i30:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i26 = trunc i32 %call.i.i24 to i8
  %and.i27 = and i8 %conv.i.i26, -4
  %10 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c.i, align 4
  %call.i27.i29 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 32, i8 noundef zeroext %and.i27) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3972_set_bits.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3972_dcdc_set_voltage_sel, %cleanup.sink.split)) #6
          to label %if.then11.i31 [label %cleanup.sink.split], !srcloc !101

if.then11.i31:                                    ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3972_set_bits.__UNIQUE_ID_ddebug289, ptr noundef %13, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef 0) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then11.i31, %if.then.i30, %if.end10.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i.i, %if.end6.cleanup.sink.split_crit_edge ], [ %call.i27.i29, %if.then11.i31 ], [ %call.i.i24, %if.end10.cleanup.sink.split_crit_edge ], [ %call.i27.i29, %if.then.i30 ]
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lp3972_set_bits.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i27.i, %lp3972_set_bits.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_dcdc_get_voltage_sel(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %sub = add i32 %call1, -5
  %arrayidx = getelementptr [3 x i32], ptr @buck_base_addr, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %1 to i8
  %io_lock.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #6
  %4 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3972_reg_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3972_dcdc_get_voltage_sel, %lp3972_reg_read.exit)) #6
          to label %if.then.i [label %lp3972_reg_read.exit], !srcloc !101

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %conv.i = and i32 %1, 255
  %7 = and i32 %4, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3972_reg_read.__UNIQUE_ID_ddebug288, ptr noundef %6, ptr noundef nonnull @.str.24, i32 noundef %conv.i, i32 noundef %7) #6
  br label %lp3972_reg_read.exit

lp3972_reg_read.exit:                             ; preds = %if.then.i, %entry
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  %8 = and i32 %4, 31
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_dcdc_enable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %sub = add i32 %call1, -5
  %mul = shl i32 %sub, 1
  %shl = shl nuw i32 1, %mul
  %conv = trunc i32 %shl to i16
  %arrayidx = getelementptr [3 x i32], ptr @buck_vol_enable_addr, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv2 = trunc i32 %1 to i8
  %call3 = tail call fastcc i32 @lp3972_set_bits(ptr noundef %call, i8 noundef zeroext %conv2, i16 noundef zeroext %conv, i16 noundef zeroext %conv)
  %conv5 = and i32 %call3, 65535
  ret i32 %conv5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_dcdc_disable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %sub = add i32 %call1, -5
  %arrayidx = getelementptr [3 x i32], ptr @buck_vol_enable_addr, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv2 = trunc i32 %1 to i8
  %io_lock.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %entry.lp3972_set_bits.exit_crit_edge, label %if.then.i

entry.lp3972_set_bits.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3972_set_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %sub, 1
  %shl = shl nuw i32 1, %mul
  %conv = trunc i32 %shl to i8
  %conv.i.i = trunc i32 %call.i.i to i8
  %neg.i = xor i8 %conv, -1
  %and.i = and i8 %conv.i.i, %neg.i
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %call.i27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv2, i8 noundef zeroext %and.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3972_set_bits.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3972_dcdc_disable, %lp3972_set_bits.exit)) #6
          to label %if.then11.i [label %lp3972_set_bits.exit], !srcloc !101

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %conv12.i = and i32 %1, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3972_set_bits.__UNIQUE_ID_ddebug289, ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef %conv12.i, i32 noundef 0) #6
  br label %lp3972_set_bits.exit

lp3972_set_bits.exit:                             ; preds = %if.then11.i, %if.then.i, %entry.lp3972_set_bits.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i27.i, %if.then11.i ], [ %call.i.i, %entry.lp3972_set_bits.exit_crit_edge ], [ %call.i27.i, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  %conv5 = and i32 %ret.0.i, 65535
  ret i32 %conv5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3972_dcdc_is_enabled(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %sub = add i32 %call1, -5
  %arrayidx = getelementptr [3 x i32], ptr @buck_vol_enable_addr, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv2 = trunc i32 %1 to i8
  %io_lock.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3972, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv2) #6
  %4 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3972_reg_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3972_dcdc_is_enabled, %lp3972_reg_read.exit)) #6
          to label %if.then.i [label %lp3972_reg_read.exit], !srcloc !101

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %conv.i = and i32 %1, 255
  %7 = and i32 %4, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3972_reg_read.__UNIQUE_ID_ddebug288, ptr noundef %6, ptr noundef nonnull @.str.24, i32 noundef %conv.i, i32 noundef %7) #6
  br label %lp3972_reg_read.exit

lp3972_reg_read.exit:                             ; preds = %if.then.i, %entry
  %mul = shl i32 %sub, 1
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  %conv5 = and i32 %4, 255
  %8 = lshr i32 %conv5, %mul
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_lp3972__291_558_lp3972_module_init4, !1, !"__initcall__kmod_lp3972__291_558_lp3972_module_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/lp3972.c", i32 558, i32 1}
!2 = !{ptr @__exitcall_lp3972_module_exit, !3, !"__exitcall_lp3972_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/lp3972.c", i32 564, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/regulator/lp3972.c", i32 566, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author294, !8, !"__UNIQUE_ID_author294", i1 false, i1 false}
!8 = !{!"../drivers/regulator/lp3972.c", i32 567, i32 1}
!9 = !{ptr @__UNIQUE_ID_description295, !10, !"__UNIQUE_ID_description295", i1 false, i1 false}
!10 = !{!"../drivers/regulator/lp3972.c", i32 568, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/lp3972.c", i32 548, i32 11}
!13 = !{ptr @lp3972_i2c_driver, !14, !"lp3972_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/lp3972.c", i32 546, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/lp3972.c", i32 507, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lp3972_i2c_probe.__UNIQUE_ID_ddebug290, !16, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!20 = !{ptr @lp3972_i2c_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/regulator/lp3972.c", i32 518, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/lp3972.c", i32 525, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lp3972_i2c_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @lp3972_i2c_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/lp3972.c", i32 528, i32 3}
!31 = !{ptr @lp3972_i2c_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @lp3972_i2c_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/lp3972.c", i32 489, i32 4}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @setup_regulators._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @setup_regulators._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/lp3972.c", i32 397, i32 11}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/lp3972.c", i32 406, i32 11}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/lp3972.c", i32 415, i32 11}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/lp3972.c", i32 424, i32 11}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/lp3972.c", i32 433, i32 11}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/lp3972.c", i32 442, i32 11}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/lp3972.c", i32 451, i32 11}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/lp3972.c", i32 460, i32 11}
!54 = !{ptr @regulators, !55, !"regulators", i1 false, i1 false}
!55 = !{!"../drivers/regulator/lp3972.c", i32 395, i32 36}
!56 = !{ptr @lp3972_ldo_ops, !57, !"lp3972_ldo_ops", i1 false, i1 false}
!57 = !{!"../drivers/regulator/lp3972.c", i32 304, i32 35}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/lp3972.c", i32 213, i32 3}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @lp3972_set_bits.__UNIQUE_ID_ddebug289, !59, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!62 = !{ptr @ldo_vol_ctl_addr, !63, !"ldo_vol_ctl_addr", i1 false, i1 false}
!63 = !{!"../drivers/regulator/lp3972.c", i32 123, i32 18}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/lp3972.c", i32 194, i32 2}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @lp3972_reg_read.__UNIQUE_ID_ddebug288, !65, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!68 = !{ptr @ldo_output_enable_mask, !69, !"ldo_output_enable_mask", i1 false, i1 false}
!69 = !{!"../drivers/regulator/lp3972.c", i32 107, i32 18}
!70 = !{ptr @ldo_output_enable_addr, !71, !"ldo_output_enable_addr", i1 false, i1 false}
!71 = !{!"../drivers/regulator/lp3972.c", i32 115, i32 18}
!72 = !{ptr @ldo1_voltage_map, !73, !"ldo1_voltage_map", i1 false, i1 false}
!73 = !{!"../drivers/regulator/lp3972.c", i32 71, i32 27}
!74 = !{ptr @ldo23_voltage_map, !75, !"ldo23_voltage_map", i1 false, i1 false}
!75 = !{!"../drivers/regulator/lp3972.c", i32 76, i32 27}
!76 = !{ptr @ldo4_voltage_map, !77, !"ldo4_voltage_map", i1 false, i1 false}
!77 = !{!"../drivers/regulator/lp3972.c", i32 81, i32 27}
!78 = !{ptr @ldo5_voltage_map, !79, !"ldo5_voltage_map", i1 false, i1 false}
!79 = !{!"../drivers/regulator/lp3972.c", i32 86, i32 27}
!80 = !{ptr @lp3972_dcdc_ops, !81, !"lp3972_dcdc_ops", i1 false, i1 false}
!81 = !{!"../drivers/regulator/lp3972.c", i32 385, i32 35}
!82 = !{ptr @buck_base_addr, !83, !"buck_base_addr", i1 false, i1 false}
!83 = !{!"../drivers/regulator/lp3972.c", i32 137, i32 18}
!84 = !{ptr @buck_vol_enable_addr, !85, !"buck_vol_enable_addr", i1 false, i1 false}
!85 = !{!"../drivers/regulator/lp3972.c", i32 131, i32 18}
!86 = !{ptr @buck1_voltage_map, !87, !"buck1_voltage_map", i1 false, i1 false}
!87 = !{!"../drivers/regulator/lp3972.c", i32 93, i32 27}
!88 = !{ptr @buck23_voltage_map, !89, !"buck23_voltage_map", i1 false, i1 false}
!89 = !{!"../drivers/regulator/lp3972.c", i32 100, i32 27}
!90 = !{ptr @lp3972_i2c_id, !91, !"lp3972_i2c_id", i1 false, i1 false}
!91 = !{!"../drivers/regulator/lp3972.c", i32 540, i32 35}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148159680, i64 2148159685, i64 2148159698, i64 2148159742, i64 2148159776, i64 2148159797}
